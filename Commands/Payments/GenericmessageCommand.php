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
 * Generic message command
 *
 * Gets executed when any type of message is sent.
 */

namespace Longman\TelegramBot\Commands\SystemCommands;

use Longman\TelegramBot\Commands\SystemCommand;
use Longman\TelegramBot\Commands\UserCommands\PaymentCommand;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Request;

require_once "utils.php";
require_once "Models/SaleItem.php";
require_once "Models/PurchaseItem.php";

use Models\SaleItem;
use Models\PurchaseItem;

class GenericmessageCommand extends SystemCommand
{
    /**
     * @var string
     */
    protected $name = 'genericmessage';

    /**
     * @var string
     */
    protected $description = 'Handle generic message';

    /**
     * @var string
     */
    protected $version = '0.1.0';

    /**
     * Main command execution
     *
     * @return ServerResponse
     */
    public function execute(): ServerResponse
    {
        $message = $this->getMessage();
        $from = $message->getFrom();
        $user_id = $from->getId();
        $username = "@".$from->getUsername();

        if($reply_to_message = $message->getReplyToMessage()) {
            if($reply_to_message_text = $reply_to_message->getText()) {
                if($reply_to_message_text == 'Напишите комментарий') {
                    $tempSaleData = getTempSaleData($user_id);
                    $saleItem = new SaleItem($tempSaleData, $username, $message->getDate(), $message->getText());
                    $saleItem->saveData();
                } else if($reply_to_message_text == 'Напишите комментарий для прихода') {
                    $tempPurchaseData = getTempPurchaseData($user_id);
                    $purchaseItem = new PurchaseItem($tempPurchaseData, $message->getDate(), $message->getText());
                    $purchaseItem->saveData();
                }
            }
        }

        // Handle successful payment
        if ($payment = $message->getSuccessfulPayment()) {
            return PaymentCommand::handleSuccessfulPayment($payment, $user_id);
        }

        return Request::emptyResponse();
    }
}
