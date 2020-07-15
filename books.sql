drop table BOOKS;
create table BOOKS (
Author		VARCHAR2(20) NOT NULL,
Title		VARCHAR2(20),
Publisher	VARCHAR2(20),
PRIMARY KEY (Author, Title) );

insert into BOOKS values ('J. Schaeffer','One Jump Ahead','Springer-Verlag');
insert into BOOKS values ('R. Feynman','Surely youre jok..',NULL);
insert into BOOKS values ('E. Maor','e: story of..','Princeton');
