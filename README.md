****HW01****
**Условия:**
    team-35-jn
    team-35-nn
    team-35-dn-00
    Team-35-dn-01

Пароль team: ******
Пользователь hadoop, доступ только по ключу ssh 

1. Установка
Добавляем имена hosts в /etc/hosts под пользователем team (sudo):
192.168.1.142 team-35-jn
192.168.1.143 team-35-nn
192.168.1.144 team-35-dn-0
192.168.1.145 team-35-dn-1

2. Устанавливаем ssh-keygen в .ssh/id_ed25519

3. Загружаем архив
wget "https://dlcdn.apache.org/hadoop/common/hadoop-3.4.0/hadoop-3.4.0.tar.gz" 

4. Устанавливаем ansible
sudo apt-get install ansible
Настраиваем ansible: редактируем ansible.cfg, hosts.txt

5. Создаем файлы, которые нужно скопировать в директорию /opt/hadoop/hadoop-3.4.0/etc/hadoop/:
workers
core-site.xml
hdfs-site.xml


del_users.yaml - Удаляем старых пользователей hadoop*  
install_hadoop.yaml - Основной скрипт 
start_hadoop.yaml - Запуск демонов 
stop_hadoop.yaml - Остановка демонов

http://176.109.91.34:9870/

*Start:*
ansible-playbook del_users.yaml install_hadoop.yaml start_hadoop.yaml
*Stop:*
ansible-playbook stop_hadoop.yaml
