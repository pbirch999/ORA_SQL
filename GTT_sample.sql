CREATE GLOBAL TEMPORARY TABLE my_sample(
id    NUMBER NOT NULL,
first_name varchar2(100) NOT NULL,
last_name varchar(100) NOT NULL
)

ON COMMIT PRESERVE ROWS;

insert into my_sample values(1,'Margaret', 'Hanson');
insert into my_sample values(2,'Jon','Bostrom');
insert into my_sample values(3,'Anita','Sotoya');

SELECT COUNT(*) from my_sample;
SELECT * from my_sample WHERE id = 2;

COMMIT;

SELECT COUNT(*) from my_sample;
SELECT * from my_sample WHERE id = 3;

TRUNCATE TABLE my_sample;
DROP TABLE my_sample;