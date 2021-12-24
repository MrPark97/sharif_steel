#!/usr/bin/env php
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
 * This file is used to set the webhook.
 */

// Load composer
require_once __DIR__ . '/vendor/autoload.php';

// Load all configuration options
/** @var array $config */
$config = require __DIR__ . '/config.php';

use Longman\TelegramBot\Request;
use Longman\TelegramBot\Entities\BotCommand;

function getUserAndAdminCommands($telegram): array
{
    /** @var Command[] $all_commands */
    $all_commands = $telegram->getCommandsList();

    // Only get enabled Admin and User commands that are allowed to be shown.
    $commands = array_filter($all_commands, function ($command): bool {
        return !$command->isSystemCommand() && $command->showInHelp() && $command->isEnabled();
    });

    // Filter out all User commands
    $user_commands = array_filter($commands, function ($command): bool {
        return $command->isUserCommand();
    });

    // Filter out all Admin commands
    $admin_commands = array_filter($commands, function ($command): bool {
        return $command->isAdminCommand();
    });

    ksort($commands);
    ksort($user_commands);
    ksort($admin_commands);

    return [$commands, $user_commands, $admin_commands];
}

try {
    // Create Telegram API object
    $telegram = new Longman\TelegramBot\Telegram($config['api_key'], $config['bot_username']);
    $telegram->addCommandsPaths($config['commands']['paths']);

    [$all_commands, $user_commands, $admin_commands] = getUserAndAdminCommands($telegram);

    // If no command parameter is passed, show the list.
    $commands = array();
    foreach ($user_commands as $user_command) {
        array_push($commands, new BotCommand(['command'=>$user_command->getName(), 'description'=>$user_command->getDescription()]));
    }

    if (count($admin_commands) > 0) {
        foreach ($admin_commands as $admin_command) {
            array_push($commands, new BotCommand(['command'=>$user_command->getName(), 'description'=>$admin_command->getDescription()]));
        }
    }
    print_r($commands);

    // Set the webhook
    $result = Request::setMyCommands(['commands'=>$commands]);
    print_r($result);
    echo $result->getDescription();
} catch (Longman\TelegramBot\Exception\TelegramException $e) {
    echo $e->getMessage();
}
