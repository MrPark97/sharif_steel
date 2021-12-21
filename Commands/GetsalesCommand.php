<?php

namespace Longman\TelegramBot\Commands\UserCommands;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Entities\InputMedia\InputMediaDocument;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Request;
use Models\Sales;

// Load all configuration options
/** @var array $config */
$config = require __DIR__ . '/../config.php';
require_once "utils.php";
require_once "Models/Sales.php";

class GetsalesCommand extends UserCommand
{
    protected $name = 'getsales'; // Your command's name
    protected $description = 'Get sales'; // Your command description
    protected $usage = '/getsales'; // Usage of your command
    protected $version = '1.0.0'; // Version of your command

    public function execute(): ServerResponse
    {
        global $config;
        $message = $this->getMessage(); // Get Message object

        $chat_id = $message->getChat()->getId(); // Get the current Chat ID
        $from = $message->getFrom();
        $user_id = $from->getId();
        $clean_username = $from->getUsername();
        $username = "@" . $from->getUsername();
        $name = $from->getFirstName();

        $user_role = getUserRole($username, $user_id, $name);
        $reduced = true;

        if ($user_role < 1 || $user_role > 5) {
            return Request::emptyResponse();
        }

        if ($user_role != 4 && $user_role != 5) {
            $reduced = false;
        }

        if($user_role != 4) {
            $clean_username = "";
        }

        $message_text = $message->text;
        $clean_msg_text = mb_substr($message_text, mb_strlen($this->usage) + 1);

        if (mb_strlen($message_text) != mb_strlen($this->usage)) {
            $cleaned_sales_params = array();
            $sales_params = explode(' ', $clean_msg_text);

            foreach ($sales_params as $sales_param) {
                if ($sales_param != "") {
                    array_push($cleaned_sales_params, $sales_param);
                }
            }
            if (count($cleaned_sales_params) == 1) {
                $sales_date = $cleaned_sales_params[0];
                if (validateDate($sales_date)) {
                    $sales = new Sales(date("d.m.Y"), $clean_username, $reduced);
                    $filenames = $sales->getFilenames();

                    if ($sales->getFilename() == "" || count($filenames) == 0) {
                        return Request::emptyResponse();
                    }

                    $inputMediaDocuments = array();
                    foreach($filenames as $filename) {
                        array_push($inputMediaDocuments, new InputMediaDocument(['media' => $filename]));
                    }

                    return Request::sendMediaGroup([
                        'chat_id' => $chat_id,
                        'media' => $inputMediaDocuments,
                    ]);
                } else {
                    return Request::emptyResponse();
                }
            } else {
                return Request::emptyResponse();
            }
        }

        $sales = new Sales(date("d.m.Y"), $clean_username, $reduced);
        $filenames = $sales->getFilenames();
        if ($sales->getFilename() == "" || count($filenames) == 0) {
            return Request::emptyResponse();
        }

        $inputMediaDocuments = array();
        foreach($filenames as $filename) {
            array_push($inputMediaDocuments, new InputMediaDocument(['media' => $filename]));
        }

        return Request::sendMediaGroup([
            'chat_id' => $chat_id,
            'media' => $inputMediaDocuments,
        ]);
    }
}
