***

### Тестовое задание

Разработать мини-приложение для транзакций пользователя Битрикс. У каждого нового пользователя по умолчанию при регистрации начисляется баллы и их можно списывать, начислять и видеть историю операций:
1.	Установить демоверсию Битрикс Управление сайтом редакции Стандарт без шаблона.
2.	Сделать главную страницу и закрыть ее авторизацией/регистрацией по Email.
3.	На главной странице вывести текущий баланс баллов, который при регистрации равен 1000 для каждого пользователя.
4.	Ниже вывести форму с полем для ввода количества баллов для списания и кнопку Списать, а также поле для ввода количества баллов для начисления и кнопку Начислить.
5.	Ниже вывести историю транзакций – когда (дата и время) и сколько выведено/начислено средств. Показывать 10 последних записей и сделать постраничную пагинацию.
6.	Списание возможно только в пределах доступных баллов, в минус списать нельзя.

Подготовить динамическое API в Swagger, которое будет выводить JSON ответы:
1.	Сделать запрос и выводить баланс пользователя по id
2.	Сделать запрос и выводить историю операций пользователя по id

По мере готовности должны быть коммиты в git. Визуальная часть не важна.
После выполнения задания, необходимо опубликовать проект на бесплатном или тестовом хостинге, отправить публичные ссылки на проект, на swagger-ui и git
