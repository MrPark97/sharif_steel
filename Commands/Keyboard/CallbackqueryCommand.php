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

use Longman\TelegramBot\Commands\SystemCommand;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\InlineKeyboard;
use Longman\TelegramBot\Entities\Keyboard;

require_once "utils.php";

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
            updateItemCash($user_id, $is_cash);

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
            updateItemPaid($user_id, $is_paid);

            $data = [
                'chat_id' => $chat_id,
                'text'    => 'Напишите комментарий',
                'reply_markup' => Keyboard::forceReply(),
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
