
create user root@'%' identified by 'root';
grant all on *.* to root@'%' with grant option;

drop user root@'localhost';

flush privileges;
