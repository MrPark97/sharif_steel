<?php


namespace Longman\TelegramBot\Commands\UserCommands;
use PDO;
use PDOException;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\ServerResponse;

// Load all configuration options
/** @var array $config */
$config = require __DIR__ . '/../config.php';
require_once "utils.php";
require_once "Models/Sales.php";

use Models\Sales;

class GetsalesCommand extends UserCommand
{
    protected $name = 'getsales';                      // Your command's name
    protected $description = 'Get sales';              // Your command description
    protected $usage = '/getsales';                    // Usage of your command
    protected $version = '1.0.0';                      // Version of your command

    public function execute(): ServerResponse
    {
        global $config;   
        $message = $this->getMessage();            // Get Message object

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID
        $from = $message->getFrom();
        $user_id = $from->getId();
        $clean_username = $from->getUsername();
        $name = $from->getFirstName();
        $message_text = $message->text;
        $clean_msg_text = mb_substr($message_text, mb_strlen($this->usage)+1);

        if(mb_strlen($message_text) != mb_strlen($this->usage)) {
            $cleaned_sales_params = array();
            $sales_params = explode(' ', $clean_msg_text);

            foreach($sales_params as $sales_param) {
                if($sales_param != "") {
                    array_push($cleaned_sales_params, $sales_param);
                }
            }
            if(count($cleaned_sales_params) == 1) {
                $sales_date = $cleaned_sales_params[0];
                if(validateDate($sales_date)) {
                    $sales = new Sales($sales_date, $clean_username, true);
                    if($sales->getFilename() == "") {
                        return Request::emptyResponse();
                    }
                    print($sales->getFilename());
                    $data = [                                  // Set up the new message data
                        'chat_id' => $chat_id,                 // Set Chat ID to send the message to
                        'document'=> Request::encodeFile('C:/xampp/htdocs/sharif_steel/'.$sales->getFilename()),
                    ];
            
                    return Request::sendDocument($data);        // Send message!
                }
                else {
                    return Request::emptyResponse();
                }
            }
            else {
                return Request::emptyResponse();
            }
        }

        $sales = new Sales(date("d.m.Y"), $clean_username, true);
        if($sales->getFilename() == "") {
            return Request::emptyResponse();
        }
        $data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'document'=> Request::encodeFile('C:/xampp/htdocs/sharif_steel/'.$sales->getFilename()),
        ];

        return Request::sendDocument($data);        // Send message!
    }
}