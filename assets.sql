CREATE TABLE assets
	(Name CHAR(25) NOT NULL,
	Value FLOAT NOT NULL CHECK (Value > 0),
  	PRIMARY KEY (Name, Value))
go

INSERT INTO assets VALUES ('A&L', 2.5) 
INSERT INTO assets VALUES ('ANL', 1.2) 
INSERT INTO assets VALUES ('HFX', 0.9) 
INSERT INTO assets VALUES ('BGY', 0.7) 
INSERT INTO assets VALUES ('L&Gpp', 1.1) 
INSERT INTO assets VALUES ('NU pp', 1.3) 
INSERT INTO assets VALUES ('BBIO', 0.07) 
INSERT INTO assets VALUES ('PBDS', 0.34) 
INSERT INTO assets VALUES ('TSA', 3.0) 
INSERT INTO assets VALUES ('EGG', 7.01) 
INSERT INTO assets VALUES ('bsoc',(2.5+1.3+0.53+1.35))
 
select	sum(Value)
from	assets
go

drop table assets
go

