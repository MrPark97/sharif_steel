<?php

namespace Longman\TelegramBot\Commands\UserCommands;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Entities\InlineKeyboard;
use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\ServerResponse;

class InlineTestCommand extends UserCommand
{
    protected $name = 'inlinetest';                      // Your command's name
    protected $description = 'A command for test'; // Your command description
    protected $usage = '/inlinetest';                    // Usage of your command
    protected $version = '1.0.0';                  // Version of your command

    public function execute(): ServerResponse
    {
        $inline_keyboard = new InlineKeyboard([
            ['text' => 'Yes', 'callback_data' => '1'],
            ['text' => 'No', 'callback_data' => '2'],
        ], [
            ['text' => 'I don`t know', 'callback_data' => '3'],
        ]);

        return $this->replyToChat('Выберите ответ', [
            'reply_markup' => $inline_keyboard,
        ]);
    }
}