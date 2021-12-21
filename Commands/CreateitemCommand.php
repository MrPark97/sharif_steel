<?php

namespace Longman\TelegramBot\Commands\UserCommands;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Request;
use PDO;
use PDOException;

class CreateitemCommand extends UserCommand
{
    protected $name = 'createitem'; // Your command's name
    protected $description = 'Create Item'; // Your command description
    protected $usage = '/createitem'; // Usage of your command
    protected $version = '1.0.0'; // Version of your command

    public function execute(): ServerResponse
    {
        $message = $this->getMessage(); // Get Message object
        $chat_id = $message->getChat()->getId(); // Get the current Chat ID
        $message_text = $message->text;

        $from = $message->getFrom();
        $user_id = $from->getId();
        $username = "@" . $from->getUsername();

        $user_role = getUserRole($username, $user_id);

        if ($user_role != 1) {
            return Request::emptyResponse();
        }

        $id_and_name_str = mb_substr($message_text, 12); // 12 - длина названия комманды
        $id_and_name = explode(' ', $id_and_name_str, 2); // разбиваем строки на ID и name

        $id_and_name[0] = (int) $id_and_name[0];
        $answer_text = 'Новая запись успешно добавлена';

        if ($id_and_name[0] <= 1000) {
            $answer_text = 'Некорректный ID';
        } else if (strlen($id_and_name[1]) <= 0) {
            $answer_text = 'Некорректное имя';
        } else {
            try {
                // Load all configuration options
                /** @var array $config */
                $config = require __DIR__ . '/../config.php';
                $conn = new PDO("mysql:host=" . $config['mysql']['host'] . ";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
                // set the PDO error mode to exception
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "INSERT INTO sharif_items (id, name) VALUES (:id, :name)";
                $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
                $sth->execute(array(':id' => $id_and_name[0], ':name' => $id_and_name[1]));
            } catch (PDOException $e) {
                $answer_text = 'Ошибка базы данных';
            } catch (Exception $e) {
                // not a MySQL exception
                $e->getMessage();
            }
        }

        $data = [ // Set up the new message data
            'chat_id' => $chat_id, // Set Chat ID to send the message to
            'text' => $answer_text, // Set message to send
        ];

        return Request::sendMessage($data); // Send message!
    }
}
