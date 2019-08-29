DROP TABLE clauses;

CREATE TABLE clauses (
 "id" uuid PRIMARY KEY,
 "firmId" uuid NOT NULL,
 "matterCategory" varchar(128) NOT NULL,
 "clauseTitle" varchar(256) NOT NULL,
 "clauseText" text NOT NULL,
 "compareText" text DEFAULT ''
);


--CREATE TABLE table1 (name varchar(50) PRIMARY KEY);
--INSERT into table1 (name) values ('James');        
--INSERT into table1 ("name") values ('James 1');        
--SELECT * from table1;

