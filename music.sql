drop table MUSIC;
create table MUSIC (
Authors		VARCHAR2(20) NOT NULL,
CD_Title	VARCHAR2(15),
PRIMARY KEY (Authors, CD_Title) );

insert into MUSIC values ('Garbage','Garbage 2.0');
insert into MUSIC values ('Charlatans','Greatest Hits');
insert into MUSIC values ('Ian Brown','Golden Greats');
insert into MUSIC values ('St. Etienne','Casino Classics');
insert into MUSIC values ('P. Buck, M. Eitzel','West');
insert into MUSIC values ('Locust','Selfish Ways');
insert into MUSIC values ('Alex Reece','Jazzmaster');
insert into MUSIC values ('P.J. Harvey','Zaz turned blue');
insert into MUSIC values ('R. Williams','Angels');
