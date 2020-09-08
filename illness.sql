drop table ILLNESS;
create table ILLNESS (
Disease		VARCHAR2(25) NOT NULL,
Rank		NUMBER CHECK (Rank >= 0 and Rank < 6),
Inception	DATE
 );

insert into ILLNESS values ('Cold (common)', 4, '15-JUN-98');
insert into ILLNESS values ('Cold (sore throat)', 4, '13-JUL-98');
insert into ILLNESS values ('COVID-19', 5, '01-APR-2020');

