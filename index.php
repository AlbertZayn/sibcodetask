<?
require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("1С-Битрикс: Управление сайтом");
?><a href="/bitrix/admin/">Перейти&nbsp;в Панель Управления</a>.<br>
 <br>
<br>
 <?$APPLICATION->IncludeComponent(
	"bitrix:system.auth.form",
	"",
	Array(
		"FORGOT_PASSWORD_URL" => "/bitrix/auth/forget.php",
		"PROFILE_URL" => "/bitrix/auth/personal.php",
		"REGISTER_URL" => "/bitrix/auth/registration.php",
		"SHOW_ERRORS" => "N"
	)
);?><br>
<br>
 <br>
 <a href="https://u2343679.isp.regruhosting.ru/bitrix/admin/"></a><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>