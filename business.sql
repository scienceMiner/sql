drop table CONTACTS;
create table CONTACTS (
Surname		VARCHAR2(15) NOT NULL,
First_Name	VARCHAR2(14),
Company		VARCHAR2(30),
Telephone	VARCHAR2(15) NOT NULL,
PRIMARY KEY (Surname, First_Name) );

insert into CONTACTS values ('Antoniou','Maria','Robert Walters','011171 915 8870');
insert into CONTACTS values ('Gray','Lorna','CreditBank','011171 888 8904');
insert into CONTACTS values ('Corrigan','Sally','CreditBank','011171 888 1110');
insert into CONTACTS values ('Sinclair','Kathryn','TibCompany','011171 295 6045');
insert into CONTACTS values ('Jake','Jake','Flightbookers','011171 757 2278');


drop table Phones;
create table Phones (
Company		VARCHAR2(15) NOT NULL,
Telephone	VARCHAR2(15) NOT NULL,
PRIMARY KEY (Company, Telephone ) );

insert into Phones values ('Aldwych th.','011171 416 6003');
insert into Phones values ('Almeide','011171 359 4404');
insert into Phones values ('Dillons','011171 636 1577');
insert into Phones values ('Dillons(LSE)','011171 405 5531');
insert into Phones values ('Dolland opt. ','011171 499 8777');
insert into Phones values ('Flo (tiler) ','011181 546 6711');
insert into Phones values ('Lyric Ham ','011181 741 2311');
insert into Phones values ('Lyric S.A. ','011171 494 5045');
insert into Phones values ('odeon leic.sq.','011171 930 3232');
insert into Phones values ('odeon leic.sq.','011171 930 6111');
insert into Phones values ('oracle','011171 299 3008');
