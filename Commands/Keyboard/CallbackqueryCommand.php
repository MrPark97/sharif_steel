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

/**
 * Callback query command
 *
 * This command handles all callback queries sent via inline keyboard buttons.
 *
 * @see InlinekeyboardCommand.php
 */

namespace Longman\TelegramBot\Commands\SystemCommands;

use PDO;
use Longman\TelegramBot\Commands\SystemCommand;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\InlineKeyboard;
use Longman\TelegramBot\Entities\Keyboard;

require_once "utils.php";

// Load all configuration options
/** @var array $config */
$config = require_once 'config.php';

class CallbackqueryCommand extends SystemCommand
{
    /**
     * @var string
     */
    protected $name = 'callbackquery';

    /**
     * @var string
     */
    protected $description = 'Handle the callback query';

    /**
     * @var string
     */
    protected $version = '1.2.0';

    /**
     * Main command execution
     *
     * @return ServerResponse
     * @throws \Exception
     */
    public function execute(): ServerResponse
    {
        global $config;
        // Callback query data can be fetched and handled accordingly.
        $callback_query = $this->getCallbackQuery();
        $callback_data  = $callback_query->getData();

        $message = $callback_query->getMessage();            // Get Message object
        $from       = $callback_query->getFrom();
        $user_id    = $from->getId();

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID

        if(strpos($callback_data, "sale_category") === 0) {
            $sale_category = substr($callback_data, mb_strlen("sale_category_"));
            $items_text = getItems(intval($sale_category));

            $data = [                                  // Set up the new message data
                'chat_id' => $chat_id,                 // Set Chat ID to send the message to
                'text'=> $items_text,
            ];

            return Request::sendMessage($data);
        } else if(strpos($callback_data, "sale_item_cash") === 0) {
            $is_cash = intval(substr($callback_data, mb_strlen("sale_item_cash_")));
            updateSaleCash($user_id, $is_cash);

            $inline_keyboard = new InlineKeyboard([
                ['text' => 'Оплачено', 'callback_data' => 'sale_item_paid_1'],
                ['text' => 'Не оплачено', 'callback_data' => 'sale_item_paid_0'],
            ]);

            $data = [
                'chat_id' => $chat_id,
                'text'    => 'Выберите статус оплаты',
                'reply_markup' => $inline_keyboard,
            ];

            return Request::sendMessage($data);
        } else if(strpos($callback_data, "sale_item_paid") === 0) {
            $is_paid = intval(substr($callback_data, mb_strlen("sale_item_paid_")));
            updateSalePaid($user_id, $is_paid);

            $data = [
                'chat_id' => $chat_id,
                'text'    => 'Напишите комментарий',
                'reply_markup' => Keyboard::forceReply(),
            ];

            return Request::sendMessage($data);
        } else if(strpos($callback_data, "purchase_item_cash") === 0) {
            $is_cash = intval(substr($callback_data, mb_strlen("purchase_item_cash_")));
            updatePurchaseCash($user_id, $is_cash);

            $inline_keyboard = new InlineKeyboard([
                ['text' => 'Оплачено', 'callback_data' => 'purchase_item_paid_1'],
                ['text' => 'Не оплачено', 'callback_data' => 'purchase_item_paid_0'],
            ]);

            $data = [
                'chat_id' => $chat_id,
                'text'    => 'Выберите статус оплаты',
                'reply_markup' => $inline_keyboard,
            ];

            return Request::sendMessage($data);
        } else if(strpos($callback_data, "purchase_item_paid") === 0) {
            $is_paid = intval(substr($callback_data, mb_strlen("purchase_item_paid_")));
            updatePurchasePaid($user_id, $is_paid);

            $data = [
                'chat_id' => $chat_id,
                'text'    => 'Напишите комментарий для прихода',
                'reply_markup' => Keyboard::forceReply(),
            ];

            return Request::sendMessage($data);
        } else if(strpos($callback_data, "unbook") === 0) {
            $params = explode(' ',$callback_data);
            $ts = $params[1];
            $filename = $params[2];

            $dir = $config['data_directory'].'/'.date("Y/F/d", $ts);

            $table = fopen($dir.'/'.$filename,'r');
            $temp_table = fopen($dir.'/'.$ts.'_temp.csv','w');
            $unbook_item_id = 0;
            $unbook_amount = 0;

            while(($data = fgetcsv($table, 0, ';')) !== false) {
                if($data[0] == $ts){ // this is if you need the first column in a row
                    $unbook_item_id = $data[1];
                    $unbook_amount = $data[4];
                    continue;
                }
                fputcsv($temp_table, $data, ';');
            }
            fclose($table);
            fclose($temp_table);
            rename($dir.'/'.$ts.'_temp.csv', $dir.'/'.$filename);

            $conn = new PDO("mysql:host=" . $config['mysql']['host'].";dbname=" . $config['mysql']['database'], $config['mysql']['user'], $config['mysql']['password']);
            // set the PDO error mode to exception
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $sql = "UPDATE sharif_items SET booked=booked-(:booked) WHERE id=(:id)";
            $sth = $conn->prepare($sql, array(PDO::ATTR_CURSOR => PDO::CURSOR_FWDONLY));
            $sth->execute(array(':id'=>$unbook_item_id, ':booked'=>$unbook_amount));


            $data = [
                'chat_id' => $chat_id,
                'text'    => 'Успешно снято с брони',
            ];

            return Request::sendMessage($data);
        }

        return $callback_query->answer([
            'text'       => 'Content of the callback data: ' . $callback_data,
            'show_alert' => (bool) random_int(0, 1), // Randomly show (or not) as an alert.
            'cache_time' => 5,
        ]);
    }
}
