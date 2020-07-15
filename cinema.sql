drop table SEEN;
drop table  ACTORS;
drop table MOVIES;
create table MOVIES (
Title		VARCHAR2(30) PRIMARY KEY,
Director	VARCHAR2(20) NOT NULL
 );

create table ACTORS (
Title		VARCHAR2(30) REFERENCES MOVIES(TITLE),
Actor		VARCHAR2(20) NOT NULL
);

create table SEEN (
Title		VARCHAR2(30) REFERENCES MOVIES(TITLE),
Date_Seen	DATE,
Venue		VARCHAR2(20) NOT NULL,
Friends		VARCHAR2(20) NOT NULL
 );


insert into MOVIES values ('Starship Troopers','P. Voerhoven');
insert into ACTORS values ('Starship Troopers','D. Richards');
insert into SEEN values ('Starship Troopers','01-JAN-98','Whiteleys', 'JBL,RETD');



insert into MOVIES values ('Boogie Nights','P. T. Anderson');
insert into ACTORS values ('Boogie Nights','M. Wahlberg');
insert into ACTORS values ('Boogie Nights','H. Graham');
insert into SEEN values ('Boogie Nights','17-JAN-98','Acton Park Royal', 'DJN');

insert into MOVIES values ('Titanic','James Cameron');
insert into ACTORS values ('Titanic','L. DiCaprio');
insert into ACTORS values ('Titanic','K. Winslett');
insert into SEEN values ('Titanic','24-JAN-98','Acton Park Royal', 'DJN,MM');

insert into MOVIES values ('Clubbed to Death','Yolande Zauberman');
insert into ACTORS values ('Clubbed to Death','Beatrice Dalle');
insert into SEEN values ('Clubbed to Death','11-FEB-98','Renoir', 'DJN');

insert into MOVIES values ('As Good As it Gets','J. L. Brooks');
insert into ACTORS values ('As Good As it Gets','J. Nicholdson');
insert into SEEN values ('As Good As it Gets','13-MAR-98','Virgin Ham.', 'DJN');

insert into MOVIES values ('Jackie Brown','Q. Tarantino');
insert into ACTORS values ('Jackie Brown','P. Grier');
insert into ACTORS values ('Jackie Brown','R. Forster');
insert into ACTORS values ('Jackie Brown','S. L. Jackson');
insert into SEEN values ('Jackie Brown','21-MAR-98','Empire', 'DJN,SL,JL');

insert into MOVIES values ('Good Will Hunting','Gus Van Sant');
insert into ACTORS values ('Good Will Hunting','Matt Damon');
insert into ACTORS values ('Good Will Hunting','Ben Affleck');
insert into SEEN values ('Good Will Hunting','12-APR-98','Virgin Ham.', 'DJN');

insert into MOVIES values ('The Big Lebowski','Joel Coen');
insert into ACTORS values ('The Big Lebowski','Jeff Bridges');
insert into SEEN values ('The Big Lebowski','12-MAY-98','Odeon Camden', 'DJN');

insert into MOVIES values ('Deep Impact','Mimi Leder');
insert into ACTORS values ('Deep Impact','Morgan Freeman');
insert into ACTORS values ('Deep Impact','Tea Leoni');
insert into SEEN values ('Deep Impact','24-MAY-98','Holloway', 'DJN,CSH');

insert into MOVIES values ('Deconstructing Harry','Woody Allen');
insert into ACTORS values ('Deconstructing Harry','Woody Allen');
insert into SEEN values ('Deconstructing Harry','7-JUN-98','Shaftesbury Avenue','DJN');

insert into MOVIES values ('Godzilla','Roland Emmerich');
insert into ACTORS values ('Godzilla','M. Broderick');
insert into ACTORS values ('Godzilla','M. Patillo');
insert into SEEN values ('Godzilla','25-JUL-98','Holloway', 'DJN,CSH');


insert into MOVIES values ('The X Files: Fight..','Rob Bowman');
insert into ACTORS values ('The X Files: Fight..','D. Duchovny');
insert into ACTORS values ('The X Files: Fight..','G. Anderson');
insert into SEEN values ('The X Files: Fight..','23-AUG-98','Virgin Ham.', 'DJN,CSH');


insert into MOVIES values ('Lock, Stock,...','S. Tisch');
insert into ACTORS values ('Lock, Stock,...','V. Jones');
insert into SEEN values ('Lock, Stock,...','26-SEP-98','Virgin Ham.', 'DJN');

