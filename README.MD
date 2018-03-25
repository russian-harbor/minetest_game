# Russian Harbor Game - Русская Гавань
## [russian_harbor_game]

Русскоязычный сабгейм майнтеста Русская Гавань.
Сборка различных модов и перевод на русский язык.

Игра основана на игре `minetest_game` находящаяся тут:
https://github.com/minetest/minetest_game

## Install - Установка

Для установки сабгейма на сервере, довольно склонировать данный репозиторий в папку: `../games/`

Не скачивайте игру в формате zip, так как в архиве будут отсутствовать дополнительные моды (submodules).

### Клонирование игры

Перейдите в папку `games` вашей установки **minetest**, например:

	$ cd /usr/local/share/minetest/games

Склонируйте репозиторий:

	$ git clone --depth 1 --recursive git@github.com:russian-harbor/russian_harbor_game.git

После установки убедитесь что открыта ветвь `russian-harbor-game`:

	$ cd russian_harbor_game
	$ git checkout russian-harbor-game

Для обновления игры в любое время запустите:

	$ git pull

Для обновления игры включая всех модов (submodules):

	$ git pull --recurse-submodules

### Конфигурация игры

После установки вам необходимо настроить конфигурацию сервера/игры.
Информация сдесь: https://wiki.minetest.net/Minetest.conf.

Если это единственная игра на вашем minetest сервере, то можно заменить конфигурационный фаил
`~/.minetest/minetest.conf` с тем который в этом репозитории.

Или же при запуске сервера задайте опцию для использования своего конфигурационного файла:

	$ minetest --server --worldname your_world --config /path/to/minetest.conf

### Требования для этой игры

Чтобы запустить эту иргу, вам необходимо установить движок **minetest**:

	https://github.com/minetest/minetest/

Эта игра совместима с версией движка `v0.4.16`

## Licensing - Лицензия

See - Смотрите LICENSE.txt
