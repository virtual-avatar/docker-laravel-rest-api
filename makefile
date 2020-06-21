docker-up:
	docker-compose up -d
	docker exec -it laravel_app_1 php artisan migrate
	docker exec -it laravel_app_1 php artisan db:seed --class=ContactsTableSeeder

docker-down:
	docker-compose down --remove-orphans

docker-build:
	docker-compose up --build -d

init:
	docker run --rm -v "$(PWD):/app" composer install
	docker-compose up --build -d 
#	docker exec  -it laravel_app_1 php artisan migrate
#	docker exec  -it laravel_app_1 php artisan db:seed --class=ContactsTableSeeder

#wipe-db:
#	docker exec -it laravel_app_1  php artisan db:wipe

seed-db:
	docker exec -it laravel_app_1 php artisan migrate
	docker exec -it laravel_app_1 php artisan db:seed --class=ContactsTableSeeder
