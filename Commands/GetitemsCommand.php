<?php


namespace Longman\TelegramBot\Commands\UserCommands;
use PDO;
use PDOException;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\ServerResponse;

require_once "utils.php";

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

        $user_role = getUserRole($username, $user_id);
        
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