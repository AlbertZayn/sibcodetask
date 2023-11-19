<?
require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Личные данные");

// Вывод количества баллов
global $USER;
$userId = $USER->GetID();

$userPoints = 0;

if ($userId > 0) {
    $user = CUser::GetByID($userId)->Fetch();
    $userPoints = $user['points'];
}

echo "User Points: " . $userPoints;

//Форма списание и начисления баллов
echo '<form method="POST" action="">
    	<label for="withdrawAmount">Списать баллы:</label>
    	<input type="number" name="withdrawAmount" id="withdrawAmount" min="0" max="<?= $userPoints ?>">
    	<button type="submit" name="withdrawPoints">Списать</button>

    	<label for="depositAmount">Начислить баллы:</label>
    	<input type="number" name="depositAmount" id="depositAmount" min="0">
    	<button type="submit" name="depositPoints">Начислить</button>
	</form>';

// PointsModel - sql запросы на списание и начисление баллов
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    global $USER;
    $userId = $USER->GetID();

    if (isset($_POST["withdrawPoints"])) {
        $withdrawAmount = intval($_POST["withdrawAmount"]);
        if ($withdrawAmount > 0) {
            $user = CUser::GetByID($userId)->Fetch();
            $userPoints = $user['points'];

            if ($withdrawAmount <= $userPoints) {
                $userWithdraw = new CUser;
                $fieldsWithdraw = array(
                    "points" => $userPoints - $withdrawAmount,
                );
                $userWithdraw->Update($userId, $fieldsWithdraw);

                AddTransaction($userId, $withdrawAmount, 'withdraw');

                LocalRedirect($APPLICATION->GetCurPageParam('', array()));
            }
        }
    } elseif (isset($_POST["depositPoints"])) {
        $depositAmount = intval($_POST["depositAmount"]);
        if ($depositAmount > 0) {
            $user = CUser::GetByID($userId)->Fetch();
            $userPoints = $user['points'];

            $userDeposit = new CUser;
            $fieldsDeposit = array(
                "points" => $userPoints + $depositAmount,
            );
            $userDeposit->Update($userId, $fieldsDeposit);

            AddTransaction($userId, $depositAmount, 'deposit');

            LocalRedirect($APPLICATION->GetCurPageParam('', array()));
        }
    }
}

// PointsView - Вывод истории транзакций с пагинацией
ShowTransactionHistory($userId, $APPLICATION);

function AddTransaction($userId, $amount, $type) {
    global $DB;

    $DB->Query("
        INSERT INTO transactions (user_id, amount, type, timestamp)
        VALUES ($userId, $amount, '$type', NOW())
    ");
}

function ShowTransactionHistory($userId, $application) {
    global $DB;

    $pageSize = 10;
    $currentPage = isset($_GET['page']) ? intval($_GET['page']) : 1;

    $offset = ($currentPage - 1) * $pageSize;

    $res = $DB->Query("
        SELECT *
        FROM transactions
        WHERE user_id = $userId
        ORDER BY timestamp DESC
        LIMIT $offset, $pageSize
    ");

    while ($row = $res->Fetch()) {
        echo "Transaction ID: {$row['id']}, Amount: {$row['amount']}, Type: {$row['type']}, Timestamp: {$row['timestamp']}<br>";
    }

    // Пагинация
    $totalTransactions = $DB->Query("
        SELECT COUNT(*) as count
        FROM transactions
        WHERE user_id = $userId
    ")->Fetch()['count'];

    $totalPages = ceil($totalTransactions / $pageSize);

    for ($i = 1; $i <= $totalPages; $i++) {
        $url = $application->GetCurPageParam("page=$i", array("page"));
        echo "<a href=\"$url\">$i</a> ";
    }
}

?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>