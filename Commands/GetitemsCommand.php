<?php


namespace Longman\TelegramBot\Commands\UserCommands;
use PDO;
use PDOException;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\ServerResponse;


class GetitemsCommand extends UserCommand
{
    protected $name = 'getitems';                      // Your command's name
    protected $description = 'Get Items';              // Your command description
    protected $usage = '/getitems';                    // Usage of your command
    protected $version = '1.0.0';                      // Version of your command

    public function execute(): ServerResponse
    {   
        $message = $this->getMessage();            // Get Message object

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID
        $from       = $message->getFrom();
        $user_id    = $from->getId();
        $username = "@".$from->getUsername();
        $name = $from->getFirstName();
        $user_role = 0;

        // Load all configuration options
        /** @var array $config */
        $config = require __DIR__ . '/../config.php';
        $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));

        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $data = $conn->query("SELECT * FROM sharif_waiting_roles WHERE username='$username'")->fetchAll();
        if(count($data) == 1) {
            try {
                $sql = "INSERT INTO sharif_users (id, name, role, username) VALUES (:id, :name, :role, :username)";
                $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
                $sth->execute(array(':id' => $user_id, 'name' => $name, ':role' => $data[0]['role'], ':username' => $username));

                $user_role = $data[0]['role'];
                $conn->exec("DELETE FROM sharif_waiting_roles WHERE username='$username'");
            } catch(PDOException $e) {
                $answer_text = 'Ошибка базы данных';
            } catch (Exception $e) {
                // not a MySQL exception
                $e->getMessage();
            }
        } else {
            $data = $conn->query("SELECT * FROM sharif_users WHERE id=$user_id")->fetchAll();
            if(count($data) == 1) {
                $user_role = $data[0]['role'];
            }
        }
        if($user_role != 1) {
            $data = [                                  // Set up the new message data
                'chat_id' => $chat_id,                 // Set Chat ID to send the message to
                'text'=> 'Не имеешь права',
            ];

            return Request::sendMessage($data); 
        }

        // set the PDO error mode to exception
        file_put_contents('test.csv', "ID;name\n",);
        $data = $conn->query("SELECT * FROM sharif_items ORDER BY id")->fetchAll();
        $array_id_and_name = [];

        foreach ($data as $row) {
            $row_content = $row['id'].';'.$row['name']."\n";
            $row_content = iconv("UTF-8", "windows-1251//IGNORE", $row_content);
            file_put_contents('test.csv', $row_content, FILE_APPEND);
        }
        

        $data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'document'=> Request::encodeFile('test.csv'),
        ];

        return Request::sendDocument($data);        // Send message!
    }
}