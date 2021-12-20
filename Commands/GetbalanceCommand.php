<?php


namespace Longman\TelegramBot\Commands\UserCommands;
use PDO;
use PDOException;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\ServerResponse;

require_once "Models/Balance.php";

// Load all configuration options
/** @var array $config */
$config = require __DIR__ . '/../config.php';

use Models\Balance;

class GetbalanceCommand extends UserCommand
{
    protected $name = 'getbalance';                      // Your command's name
    protected $description = 'Get stock leftovers';              // Your command description
    protected $usage = '/getbalance';                    // Usage of your command
    protected $version = '1.0.0';                      // Version of your command

    public function execute(): ServerResponse
    {
        global $config;   
        $message = $this->getMessage();            // Get Message object

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID
        $from       = $message->getFrom();
        $user_id    = $from->getId();
        $username = "@".$from->getUsername();
        $name = $from->getFirstName();
        
        $balance = new Balance();

        $data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'document'=> Request::encodeFile($balance->getFilename()),
        ];

        return Request::sendDocument($data);        // Send message!
    }
}