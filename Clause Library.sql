/*
DROP TABLE clauses;

CREATE TABLE clauses (
 "id" uuid PRIMARY KEY,
 "firmId" uuid NOT NULL,
 "matterCategory" varchar(128) NOT NULL,
 "originalSource" varchar(256) NOT NULL,
 "clauseTitle" varchar(256) NOT NULL,
 "clauseText" text NOT NULL,
 "compareText" text DEFAULT ''
);

DELETE FROM clauses;
*/

SELECT * FROM clauses limit 10;

