<?php

namespace Longman\TelegramBot\Commands\UserCommands;
use PDO;
use PDOException;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\ServerResponse;

require_once "utils.php";

class GrantdirectorCommand extends UserCommand
{
    protected $name = 'grantdirector';                      // Your command's name
    protected $description = 'Grant Director Role';              // Your command description
    protected $usage = '/grantdirector';                    // Usage of your command
    protected $version = '1.0.0';                       // Version of your command

    public function execute(): ServerResponse
    {
        $message = $this->getMessage();            // Get Message object

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID
        $message_text = $message->text;
        $accountant_username = mb_substr($message_text,mb_strlen($this->usage)+1);   // 15 - длина названия комманды
        $from       = $message->getFrom();
        $user_id    = $from->getId();
        $username = "@".$from->getUsername();
        $name = $from->getFirstName();
        $answer_text = "Роль директора $accountant_username выдана";

        $user_role = getUserRole($username, $user_id, $name);
        if($user_role != 1) {
            return Request::emptyResponse(); 
        }
        if(!isValidUsername($accountant_username)) {
            $answer_text = "Неверно указан @username";
        }
        else {
            try {
                // Load all configuration options
                /** @var array $config */
                $config = require __DIR__ . '/../config.php';
                $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
                // set the PDO error mode to exception
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "INSERT INTO sharif_waiting_roles (username, role) VALUES (:username, :role)";
                $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
                $sth->execute(array(':username' => $accountant_username, ':role' => 2));
            } catch(PDOException $e) {
                $answer_text = 'Ошибка базы данных';
            } catch (Exception $e) {
                // not a MySQL exception
                $e->getMessage();
            }
        }
   
        
        $data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'text'    => $answer_text,            // Set message to send
        ];

        return Request::sendMessage($data);        // Send message!
    }
}