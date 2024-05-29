drop database if exists ecdb;
create database ecdb;
use ecdb;
create table if not exists mst_user(
id int(11) not null auto_increment,
user_name varchar(25) not null,
password varchar(25) not null,
full_name varchar(50) not null,
is_admin TiNYINT(1) not null default 0,
primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table if not exists mst_goods(
id int(11) not null auto_increment,
goods_name varchar(255) COLLATE utf8_unicode_ci NOT NULL,
price int(11) default 0,
created_at datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

create table if not exists tbl_purchase(
id int(11) not null auto_increment,
user_id int(11) not null,
goods_id int(11) not null,
goods_name varchar(255) not null,
item_count int(11) default 0,
total int(11) default 0,
created_at datetime not null DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into mst_user
(user_name, password, full_name, is_admin)
values
('taro', 'taropw', 'Taro Yamada',0),
('jiro', 'jiropw', 'Jiro Tanaka',0),
('ichiro', 'ichiropw', 'Ichiro Hayashi',0),
('admin', 'admin', 'Administrator',1);

insert into mst_goods
(goods_name, price)
values
('Tシャツ', 1000),
('スニーカー', 1500),
('コート', 12000);