<?php

/**
 * This file is part of the PHP Telegram Bot example-bot package.
 * https://github.com/php-telegram-bot/example-bot/
 *
 * (c) PHP Telegram Bot Team
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace Longman\TelegramBot\Commands\UserCommands;

/**
 * User "/inlinekeyboard" command
 *
 * Display an inline keyboard with a few buttons.
 *
 * This command requires CallbackqueryCommand to work!
 *
 * @see CallbackqueryCommand.php
 */

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Entities\InlineKeyboard;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Exception\TelegramException;

require_once "utils.php";
// Load all configuration options
/** @var array $config */
$config = require_once 'config.php';

class UnbookCommand extends UserCommand
{
    /**
     * @var string
     */
    protected $name = 'unbook';

    /**
     * @var string
     */
    protected $description = 'Unbook item';

    /**
     * @var string
     */
    protected $usage = '/unbook';

    /**
     * @var string
     */
    protected $version = '0.2.0';

    /**
     * Main command execution
     *
     * @return ServerResponse
     * @throws TelegramException
     */
    public function execute(): ServerResponse
    {
        global $config;
        $message = $this->getMessage();                           // Get Message object
        $chat_id = $message->getChat()->getId();                  // Get the current Chat ID
        $message_text = $message->text;

        $from       = $message->getFrom();
        $user_id    = $from->getId();

        $error_data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'emoji'    => "🎰",            // Set message to send
        ];

        $inlineKeyboardArray = array();
        
        foreach(range(2021, date("Y")) as $year) {
            foreach(getMonths() as $month) {
                foreach(range(1,31) as $day) {
                    if($day < 10) {
                        $day = '0'.$day;
                    }
                    $cur_dir = $config['data_directory']."/".$year.'/'.$month.'/'.$day;
                    if(is_dir($cur_dir)) {
                        foreach(scandir($cur_dir) as $filename) {
                            if(strpos($filename, "user_reservations") === 0) {
                                $row = 1;
                                if (($handle = fopen($cur_dir.'/'.$filename, "r")) !== false) {
                                    while (($data = fgetcsv($handle, 0, ";")) !== false) {
                                        if($row > 1) {
                                            array_push($inlineKeyboardArray, [['text' => $data[3].' '.iconv("windows-1251", "UTF-8//IGNORE", $data[2].' '.$data[5]).' '.$data[4].'кг.', 'callback_data' => 'unbook '.$data[0].' '.$filename],]);
                                        }
                                        $row++;
                                    }
                                    fclose($handle);
                                }
                            }
                        }
                    }
                }
            }
        }
        $inline_keyboard = new InlineKeyboard(...$inlineKeyboardArray);

        return $this->replyToChat('Снять с бронирования товар:', [
            'reply_markup' => $inline_keyboard,
        ]);
    }
}
