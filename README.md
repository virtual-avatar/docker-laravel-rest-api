# laravel-rest-api
laravel v7, docker, CRUD, REST API

#### Задание:
Cоздать простое приложение RESTful PHP, которое получает данные из базы данных и скрипт, который будет извлекать данные из внешнего API и заполнять базу данных. Приложение должно быть упаковано в docker-compose (база данных + приложение PHP).

REST API должно удовлетворять следующие возможности:
Получение списка 
Получение по Id
Редактирование по Id
Удаление по Id

REST API должно работать с БД (mysql).

Создать скрипт который будет наполнять БД случайными данными пользователей мужского пола (100 человек) при старте контейнера.

#### Подготовка:

git clone https://github.com/virtual-avatar/docker-laravel-rest-api.git

cd /"Ваш_каталог"/laravel

Установить docker docker-compose make :

apt-get -y  update

apt-get -y  install docker docker-compose make

Создать необходимые контейнеры

make init

проверить что создались и запустились

docker ps

После остановить

make docker-down

#### Рабочий запуск:

make docker-up

Приложение доступно по адресу:

http://"ВАШ_API":8080/contacts
