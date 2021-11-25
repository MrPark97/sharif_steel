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
use Longman\TelegramBot\Exception\TelegramException;

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
        ]);

        return $this->replyToChat('Выберите категорию', [
            'reply_markup' => $inline_keyboard,
        ]);
    }
}
