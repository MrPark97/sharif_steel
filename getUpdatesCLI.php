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
 * This file is used to run the bot with the getUpdates method.
 */
// Add you bot's API key and name

// Load composer
require_once __DIR__ . '/vendor/autoload.php';

use Longman\TelegramBot\Entities\Update;
use Longman\TelegramBot\Entities\Chat;
use Longman\TelegramBot\Entities\CallbackQuery;
use Longman\TelegramBot\Request;

// Load all configuration options
/** @var array $config */
$config = require_once __DIR__ . '/config.php';

try {
    // Create Telegram API object
    $telegram = new Longman\TelegramBot\Telegram($config['api_key'], $config['bot_username']);

    /**
     * Check `hook.php` for configuration code to be added here.
     */
    
    $telegram->setDownloadPath($config['paths']['download']);
    $telegram->addCommandsPaths($config['commands']['paths']);
    $telegram->enableMySql($config['mysql']);
    //$telegram->useGetUpdatesWithoutDatabase();
    // Handle telegram getUpdates request
    $server_response = $telegram->handleGetUpdates();

    if ($server_response->isOk()) {
        $results = $server_response->getResult();
        $update_count = count($results);
        
        echo date('Y-m-d H:i:s') . ' - Processed ' . $update_count . ' updates';
    } else {
        echo date('Y-m-d H:i:s') . ' - Failed to fetch updates' . PHP_EOL;
        echo $server_response->printError();
    }

} catch (Longman\TelegramBot\Exception\TelegramException $e) {
    // Log telegram errors
    Longman\TelegramBot\TelegramLog::error($e);

    // Uncomment this to output any errors (ONLY FOR DEVELOPMENT!)
    // echo $e;
} catch (Longman\TelegramBot\Exception\TelegramLogException $e) {
    // Uncomment this to output log initialisation errors (ONLY FOR DEVELOPMENT!)
    // echo $e;
}
