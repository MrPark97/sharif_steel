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
 * Inline query command
 *
 * Command that handles inline queries and returns a list of results.
 */

namespace Longman\TelegramBot\Commands\SystemCommands;

use Longman\TelegramBot\Commands\SystemCommand;
use Longman\TelegramBot\Entities\InlineQuery\InlineQueryResultArticle;
use Longman\TelegramBot\Entities\InlineQuery\InlineQueryResultContact;
use Longman\TelegramBot\Entities\InlineQuery\InlineQueryResultLocation;
use Longman\TelegramBot\Entities\InlineQuery\InlineQueryResultVenue;
use Longman\TelegramBot\Entities\InputMessageContent\InputTextMessageContent;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Entities\InlineKeyboard;

require_once "utils.php";

class InlinequeryCommand extends SystemCommand
{
    /**
     * @var string
     */
    protected $name = 'inlinequery';

    /**
     * @var string
     */
    protected $description = 'Handle inline query';

    /**
     * @var string
     */
    protected $version = '1.2.0';

    /**
     * Main command execution
     *
     * @return ServerResponse
     */
    public function execute(): ServerResponse
    {
        $inline_query = $this->getInlineQuery();
        $query        = $inline_query->getQuery();
        $from       = $inline_query->getFrom();
        $user_id    = $from->getId();
        $username = "@".$from->getUsername();
        $name = $from->getFirstName();
        
        $user_role = getUserRole($username, $user_id, $name);
        if($user_role < 1 || $user_role > 6) {
            return Request::emptyResponse(); 
        }

        $results = [];
        if($query != '') {
            $searchResults = searchResults($query);
            foreach($searchResults as $searchResult) {
                // https://core.telegram.org/bots/api#inlinequeryresultarticle
                $results[] = new InlineQueryResultArticle([
                    'id'                    => $searchResult['id'],
                    'title'                 => $searchResult['name'],

                    // Here you can put any other Input...MessageContent you like.
                    // It will keep the style of an article, but post the specific message type back to the user.
                    'input_message_content' => new InputTextMessageContent([
                        'message_text' => $searchResult['id'].' '.$searchResult['name'],
                    ]),
                ]);
            }
        }

        return $inline_query->answer($results);
    }
}
