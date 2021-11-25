<?php


namespace Longman\TelegramBot\Commands\UserCommands;
use PDO;
use PDOException;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\ServerResponse;

class ViewitemsCommand extends UserCommand
{
    protected $name = 'viewitems';                      // Your command's name
    protected $description = 'View Items';              // Your command description
    protected $usage = '/viewitems';                    // Usage of your command
    protected $version = '1.0.0';                       // Version of your command

    public function execute(): ServerResponse
    {
        $message = $this->getMessage();            // Get Message object

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID


        // Load all configuration options
        /** @var array $config */
        $config = require __DIR__ . '/../config.php';
        $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $data = $conn->query("SELECT * FROM sharif_items ORDER BY id")->fetchAll();
        // and somewhere later:
        $all_items = '';
        foreach ($data as $row) {
            $cur_row = "";

            if ($row['id'] % 1000 == 1 && $row['id'] != 1001) {
                $cur_row .= "\n";
            }

            $cur_row .= $row['id'] . ". " . $row['name'] . "\n";
            
            $border = mb_strlen($all_items)%4096;
            if(($border + mb_strlen($cur_row)) > 4096) {
                $border = 4096-$border;
                for($i=0; $i<$border; $i++) {
                    $all_items .= ' ';
                }
            }
            $all_items .=  $cur_row;
            
        }

        $data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'text'    => $all_items,                // Set message to send
        ];

        return Request::sendMessage($data);        // Send message!
    }
}