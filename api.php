<?php
require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/header.php");
$APPLICATION->SetTitle("API");

use Bitrix\Main\Application;
use Bitrix\Main\Context;
use Bitrix\Main\Web\Json;

$request = Context::getCurrent()->getRequest();

$requestUri = $_SERVER['REQUEST_URI'];
$userId = intval($request->get("user_id"));

if ($userId > 0) {
    $user = CUser::GetByID($userId)->Fetch();

    if ($user) {
        if (strpos($requestUri, '/api.php/balance') !== false) {
            $response = [
                'user_id' => $userId,
                'balance' => $user['points'],
            ];
        } elseif (strpos($requestUri, '/api.php/transaction-history') !== false) {
            $transactionHistory = getTransactionHistory($userId);
            $response = [
                'user_id' => $userId,
                'transaction_history' => $transactionHistory,
            ];
        } else {
            echo Json::encode(['error' => 'Invalid endpoint']);
            exit();
        }

        echo Json::encode($response);
    } else {
        echo Json::encode(['error' => 'User not found']);
    }
} else {
    echo Json::encode(['error' => 'Invalid user_id']);
}

function getTransactionHistory($userId)
{
    global $DB;

    $res = $DB->Query("
        SELECT *
        FROM transactions
        WHERE user_id = $userId
        ORDER BY timestamp DESC
        LIMIT 10
    ");

    $transactionHistory = [];
    while ($row = $res->Fetch()) {
        $transactionHistory[] = [
            'id' => $row['id'],
            'amount' => $row['amount'],
            'type' => $row['type'],
            'timestamp' => $row['timestamp'],
        ];
    }

    return $transactionHistory;
}

require($_SERVER["DOCUMENT_ROOT"] . "/bitrix/footer.php");
?>