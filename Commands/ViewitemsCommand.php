<?php


namespace Longman\TelegramBot\Commands\UserCommands;
use PDO;
use PDOException;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\ServerResponse;

require_once "utils.php";

class ViewitemsCommand extends UserCommand
{
    protected $name = 'viewitems';                      // Your command's name
    protected $description = 'Показать все товара сообщением в чате';              // Your command description
    protected $usage = '/viewitems';                    // Usage of your command
    protected $version = '1.0.0';                       // Version of your command

    public function execute(): ServerResponse
    {
        $message = $this->getMessage();            // Get Message object

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID

        $from       = $message->getFrom();
        $user_id    = $from->getId();
        $username = "@".$from->getUsername();
        $name = $from->getFirstName();

        $user_role = getUserRole($username, $user_id, $name);
        if($user_role != 1) {
            return Request::emptyResponse(); 
        }

        // and somewhere latr:
        $all_items = getItems(0);

        $data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'text'    => $all_items,                // Set message to send
        ];

        return Request::sendMessage($data);        // Send message!
    }
}