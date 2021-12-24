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
use Longman\TelegramBot\Entities\Keyboard;

require_once "utils.php";

class BookCommand extends UserCommand
{
    /**
     * @var string
     */
    protected $name = 'book';

    /**
     * @var string
     */
    protected $description = 'Бронирование товара';

    /**
     * @var string
     */
    protected $usage = '/book <ID товара> <Количество (кг)>';

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
        $clean_msg_text = mb_substr($message_text, mb_strlen($this->name)+2);

        $from       = $message->getFrom();
        $user_id    = $from->getId();
        $username = "@".$from->getUsername();
        $name = $from->getFirstName();

        $user_role = getUserRole($username, $user_id, $name);

        if($user_role != 1 && $user_role != 4) {
            return Request::emptyResponse();
        }

        $error_data = [                                  // Set up the new message data
            'chat_id' => $chat_id,                 // Set Chat ID to send the message to
            'emoji'    => "🎰",            // Set message to send
        ];
        
        if(mb_strlen($message_text) != mb_strlen($this->usage)) {
            $cleaned_book_params = array();
            $book_params = explode(' ', $clean_msg_text);

            print_r($book_params);
            foreach($book_params as $book_param) {
                if($book_param != "") {
                    $int_book_param = intval($book_param);
                    if($int_book_param > 0) {
                        array_push($cleaned_book_params, $int_book_param);
                    } else {
                        return Request::sendDice($error_data);
                    }
                }
            }
            if(count($cleaned_book_params) == 2) {
                $item_id = $cleaned_book_params[0];
                $item_amount = $cleaned_book_params[1];
                if(isValidId($item_id)) {
                    bookItem($user_id, $item_id, $item_amount);

                    $data = [
                        'chat_id' => $chat_id,
                        'text'    => 'Напишите комментарий для бронирования',
                        'reply_markup' => Keyboard::forceReply(),
                    ];
        
                    return Request::sendMessage($data);
                } else {
                    return Request::sendDice($error_data);
                }
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
