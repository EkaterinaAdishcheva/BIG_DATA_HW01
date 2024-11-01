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

6. Загружаем репозиторий (предварительно добавляем открытый ключ в репозиторий)
```
git clone git@github.com:EkaterinaAdishcheva/BIG_DATA_HW01.git
mv BIG_DATA_HW01/* .
```            

3. Добавляем имена хостов в /etc/hosts:
```
sudo vim /etc/hosts
```

сам текст файла
```
   192.168.1.142 team-35-jn
   192.168.1.143 team-35-nn
   192.168.1.144 team-35-dn-0
   192.168.1.145 team-35-dn-1
```

4. Загружаем архив
```
wget "https://dlcdn.apache.org/hadoop/common/hadoop-3.4.0/hadoop-3.4.0.tar.gz" 
```
5. Устанавливаем ```ansible``` и ```sshpass:```
```
sudo apt-get install ansible
sudo apt install sshpass
```
7. Запускаем скрипт для установки и запуска ```hadoop```
```
ansible-playbook install_hadoop.yaml -vvv
ansible-playbook start_hadoop.yaml
```
8. Останавливаем ```hadoop```
```
ansible-playbook stop_hadoop.yaml
```

   
* ```del_users.yaml``` - удаляет старых пользователей hadoop*
* ```install_hadoop.yaml``` - основной скрипт 
* ```start_hadoop.yaml``` - запуск демонов 
* ```stop_hadoop.yaml``` - остановка демонов
* ```ansible.cfg``` и ```hosts.txt``` конфигурация ```ansible```
* ```workers```, ```core-site.xml```, ```hdfs-site.xml``` - конфигурации ```hadoop```.


### Настройка Nginx
```
sudo rm /etc/nginx/sites-enabled/nn
sudo rm /etc/nginx/sites-enabled/ya
sudo rm /etc/nginx/sites-enabled/dh
```
```
sudo cp nn /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/nn /etc/nginx/sites-enabled/nn
sudo systemctl reload nginx
```
Интерфейс ```hadoop```: http://176.109.91.34:9870/

