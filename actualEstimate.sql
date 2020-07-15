drop table ITEMS;
create table ITEMS (
item_no		NUMBER NOT NULL,
description	VARCHAR2(10) NOT NULL);

insert into ITEMS values (10, 'Item 10' );
insert into ITEMS values (20, 'Item 20' );
insert into ITEMS values (30, 'Item 30' );
insert into ITEMS values (40, 'Item 40' );
insert into ITEMS values (50, 'Item 50' );

drop table ACTUALS;
create table ACTUALS (
item_no		NUMBER NOT NULL,
actual_amount	NUMBER NOT NULL,
check_no	VARCHAR2(10) NOT NULL);

insert into ACTUALS values (10, 300.00, '1111');
insert into ACTUALS values (20, 325.00, '2222');
insert into ACTUALS values (20, 100.00, '3333');
insert into ACTUALS values (30, 525.00, '1111');


drop table ESTIMATES;
create table ESTIMATES (
item_no		NUMBER NOT NULL,
estimated_amount	NUMBER(5,2) NOT NULL);

insert into ESTIMATES values (10, 300.00);
insert into ESTIMATES values (10, 50.00);
insert into ESTIMATES values (20, 325.00);
insert into ESTIMATES values (20, 110.00);
insert into ESTIMATES values (40, 25.00);