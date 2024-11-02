# HW01
### Сервера:
```
team-35-jn
team-35-nn
team-35-dn-00
Team-35-dn-01
```

### Установка
1. Заходим на ```team-35-jn``` под пользователем ```team```.
2. Устанавливаем ```ssh-keygen``` в ```.ssh/id_ed25519```
```
ssh-keygen
```

3. Загружаем репозиторий (предварительно добавляем открытый ключ к пользователю) и копируем в домашнюю директорию
```
git clone git@github.com:EkaterinaAdishcheva/BIG_DATA_HW01.git
mv BIG_DATA_HW01/* .
```            

4. Запускаем установочный скрипт, во время установки нужно указывать пароль ```team```:
```
bash install_hadoop.sh
```
### Описание файлов
* [hosts](hosts) - файлы для конфигурации хостов
* [ansible.cfg](ansible.cfg), [hosts.txt](hosts.txt) - файлы для конфигурации ```ansible```
* [core-site.xml](core-site.xml), [hdfs-site.xml](hdfs-site.xml), [workers](workers) - файлы для конфигурации ```hadoop```
* [del_users.yaml](del_users.yaml) - плейбук для удаления пользователей
* [install_hadoop.yaml](install_hadoop.yaml) - плейбук для установки ```hadoop```
* [start_hadoop.yaml](start_hadoop.yaml) - плейбук для запуска сервисов ```hadoop```
* [stop_hadoop.yaml](stop_hadoop.yaml) - плейбук для остановки сервисов ```hadoop```
* [nn](nn) - файл для конфигурации ```nginx```
* [install_hadoop.sh](install_hadoop.sh) - основной скрипт


Интерфейс ```hadoop```: http://176.109.91.34:9870/
