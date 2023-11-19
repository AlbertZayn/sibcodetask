<?
require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Личные данные");

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

            LocalRedirect($APPLICATION->GetCurPageParam('', array()));
        }
    }
}

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


?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>