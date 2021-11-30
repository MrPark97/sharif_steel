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
use Longman\TelegramBot\Entities\InlineKeyboard;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Exception\TelegramException;

require_once "utils.php";

class SaleCommand extends UserCommand
{
    /**
     * @var string
     */
    protected $name = 'sale';

    /**
     * @var string
     */
    protected $description = 'Sale item';

    /**
     * @var string
     */
    protected $usage = '/sale';

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
        $message = $this->getMessage();                           // Get Message object
        $chat_id = $message->getChat()->getId();                  // Get the current Chat ID
        $message_text = $message->text;
        $clean_msg_text = mb_substr($message_text, mb_strlen($this->usage)+1);

        $from       = $message->getFrom();
        $user_id    = $from->getId();

        $error_data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'emoji'    => "🎰",            // Set message to send
        ];
        
        if(mb_strlen($message_text) != mb_strlen($this->usage)) {
            $cleaned_sale_params = array();
            $sale_params = explode(' ', $clean_msg_text);

            print_r($sale_params);
            foreach($sale_params as $sale_param) {
                if($sale_param != "") {
                    $int_sale_param = intval($sale_param);
                    if($int_sale_param > 0) {
                        array_push($cleaned_sale_params, $int_sale_param);
                    } else {
                        return Request::sendDice($error_data);
                    }
                }
            }
            if(count($cleaned_sale_params) == 2) {
                $item_id = $cleaned_sale_params[0];
                $item_amount = $cleaned_sale_params[1];
                var_dump(isValidId($item_id));

                insertItem($user_id, $item_id, $item_amount);

                $inline_keyboard = new InlineKeyboard([
                    ['text' => 'Наличные', 'callback_data' => 'sale_item_cash_1'],
                    ['text' => 'Перечислением', 'callback_data' => 'sale_item_cash_0'],
                ]);
                
                return $this->replyToChat('Выберите метод оплаты:', [
                    'reply_markup' => $inline_keyboard,
                ]);
            } else {
                return Request::sendDice($error_data);
            }
        }
        $inline_keyboard = new InlineKeyboard([
            ['text' => '1', 'callback_data' => 'sale_category_1'],
            ['text' => '2', 'callback_data' => 'sale_category_2'],
            ['text' => '3', 'callback_data' => 'sale_category_3'],
        ], [
            ['text' => '4', 'callback_data' => 'sale_category_4'],
            ['text' => '5', 'callback_data' => 'sale_category_5'],
            ['text' => '6', 'callback_data' => 'sale_category_6'],
        ], [
            ['text' => '7', 'callback_data' => 'sale_category_7'],
            ['text' => 'Все категории', 'callback_data' => 'sale_category_0'],
            ['text' => '🔍 Поиск', 'switch_inline_query_current_chat' => ''],
        ]);

        return $this->replyToChat('Выберите категорию', [
            'reply_markup' => $inline_keyboard,
        ]);
    }
}
