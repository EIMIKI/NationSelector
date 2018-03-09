create database if not exists nationsDb;
use nationsDb;
  create table if not exists nations(
    nation_name varchar(20) not null,
    primary key (nation_name),
    area_id int not null,
    ideology_id int not null,
    team_id int not null,
    sea tinyint not null,
    nf tinyint not null
  )engine=Innodb;

insert into nations(nation_name,area_id,ideology_id,team_id,sea,nf) values("アメリカ",1,1,4,1,1);
insert into nations(nation_name,area_id,ideology_id,team_id,sea,nf) values("イギリス",3,1,1,1,1);
insert into nations(nation_name,area_id,ideology_id,team_id,sea,nf) values("フランス",3,1,4,1,1);
insert into nations(nation_name,area_id,ideology_id,team_id,sea,nf) values("オーストリア",3,4,4,2,2);
