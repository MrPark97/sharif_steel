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

        $chat_id = $message->getChat()->getId();   // Get the current Chat ID

        if(strpos($callback_data, "sale_category") === 0) {
            $sale_category = substr($callback_data, mb_strlen("sale_category_"));
            $items_text = getItems(intval($sale_category));

            $data = [                                  // Set up the new message data
                'chat_id' => $chat_id,                 // Set Chat ID to send the message to
                'text'=> $items_text,
            ];

            return Request::sendMessage($data);
        }

        return $callback_query->answer([
            'text'       => 'Content of the callback data: ' . $items_text,
            'show_alert' => (bool) random_int(0, 1), // Randomly show (or not) as an alert.
            'cache_time' => 5,
        ]);
    }
}
