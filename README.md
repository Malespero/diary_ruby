# README

This README would normally document whatever steps are necessary to get the
application up and running.

Реализован CRUD для моделей Diary и Note, а так же сами модели;
Все необходимые поля проверяются, и в случае нарушения условий в базу ничего не пишется;
Note связан с Diary one-to-many;
worker, удаляющий старые записи - old_deleter_worker; специально для него у модели добавлен scope old;
web UI для sidekiq на роуте /sidekiq, логины-пароли в .env;
сиды генерируют необходимые дневники по команде rails db:seed;
все приложение запускается через docker-compose up --build; после одного раза build можно не добавлять, пока не будет манипуляций с докером. 
