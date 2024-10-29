### HW01
## Сервера:
```
team-35-jn
team-35-nn
team-35-dn-00
Team-35-dn-01
```

## Установка

1. Добавляем имена hosts в /etc/hosts под пользователем team (sudo):
```
192.168.1.142 team-35-jn
192.168.1.143 team-35-nn
192.168.1.144 team-35-dn-0
192.168.1.145 team-35-dn-1
```
3. Устанавливаем ```ssh-keygen``` в ```.ssh/id_ed25519```

4. Загружаем архив
```
wget "https://dlcdn.apache.org/hadoop/common/hadoop-3.4.0/hadoop-3.4.0.tar.gz" 
```
5. Устанавливаем ```ansible```
```
sudo apt-get install ansible
```

6. Настраиваем ```ansible```: редактируем ```ansible.cfg```, ```hosts.txt```

7. Создаем файлы, которые нужно скопировать в директорию ```/opt/hadoop/hadoop-3.4.0/etc/hadoop/```:
```
workers
core-site.xml
hdfs-site.xml
```

* ```del_users.yaml``` - удаляет старых пользователей hadoop*
* ```install_hadoop.yaml``` - основной скрипт 
* ```start_hadoop.yaml``` - запуск демонов 
* ```stop_hadoop.yaml``` - остановка демонов

Интерфейс Hadoop: http://176.109.91.34:9870/

*Start:*
ansible-playbook del_users.yaml install_hadoop.yaml start_hadoop.yaml
*Stop:*
ansible-playbook stop_hadoop.yaml
