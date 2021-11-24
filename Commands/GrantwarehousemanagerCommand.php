<?php

namespace Longman\TelegramBot\Commands\UserCommands;
use PDO;
use PDOException;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\ServerResponse;

class GrantwarehousemanagerCommand extends UserCommand
{
    protected $name = 'grantwarehousemanager';                      // Your command's name
    protected $description = 'Grant Warehouse Manager Role';              // Your command description
    protected $usage = '/grantwarehousemanager';                    // Usage of your command
    protected $version = '1.0.0';                       // Version of your command

    public function execute(): ServerResponse
    {
        $message = $this->getMessage();            // Get Message object

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID
        $message_text = $message->text;
        $username = mb_substr($message_text,23);   // 23 - длина названия комманды
        $answer_text = "Роль заведующий складом $username выдана";

        try {
            // Load all configuration options
            /** @var array $config */
            $config = require __DIR__ . '/../config.php';
            $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
            // set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $sql = "INSERT INTO sharif_waiting_roles (username, role) VALUES (:username, :role)";
            $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
            $sth->execute(array(':username' => $username, ':role' => 5));
            } catch(PDOException $e) {
                $answer_text = 'Ошибка базы данных';
            } catch (Exception $e) {
                // not a MySQL exception
                $e->getMessage();
            }
        
        $data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'text'    => $answer_text,            // Set message to send
        ];

        return Request::sendMessage($data);        // Send message!
    }
}