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
require_once "Models/Purchases.php";

use Models\Purchases;

class GetpurchasesCommand extends UserCommand
{
    protected $name = 'getpurchases';                      // Your command's name
    protected $description = 'Get purchases';              // Your command description
    protected $usage = '/getpurchases';                    // Usage of your command
    protected $version = '1.0.0';                      // Version of your command

    public function execute(): ServerResponse
    {
        global $config;   
        $message = $this->getMessage();            // Get Message object

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID
        $from = $message->getFrom();
        $user_id = $from->getId();
        $username = "@".$from->getUsername();
        $name = $from->getFirstName();
        $message_text = $message->text;
        $clean_msg_text = mb_substr($message_text, mb_strlen($this->usage)+1);

        if(mb_strlen($message_text) != mb_strlen($this->usage)) {
            $cleaned_purchases_params = array();
            $purchases_params = explode(' ', $clean_msg_text);

            foreach($purchases_params as $purchases_param) {
                if($purchases_param != "") {
                    array_push($cleaned_purchases_params, $purchases_param);
                }
            }
            if(count($cleaned_purchases_params) == 1) {
                $purchases_date = $cleaned_purchases_params[0];
                if(validateDate($purchases_date)) {
                    $purchases = new Purchases($purchases_date, true);
                    if($purchases->getFilename() == "") {
                        return Request::emptyResponse();
                    }
                    print($purchases->getFilename());
                    $data = [                                  // Set up the new message data
                        'chat_id' => $chat_id,                 // Set Chat ID to send the message to
                        'document'=> Request::encodeFile($purchases->getFilename()),
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

        $purchases = new Purchases(date("d.m.Y"), false);
        if($purchases->getFilename() == "") {
            return Request::emptyResponse();
        }
        $data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'document'=> Request::encodeFile($purchases->getFilename()),
        ];

        return Request::sendDocument($data);        // Send message!
    }
}