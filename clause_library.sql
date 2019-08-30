/*
DROP TABLE clauses;

CREATE TABLE clauses (
 "id" uuid PRIMARY KEY,
 "firmId" uuid NOT NULL,
 "matterCategory" varchar(128) NOT NULL,
 "originalSource" varchar(256) NOT NULL,
 "clauseTitle" varchar(256) NOT NULL,
 "clauseText" text NOT NULL,
 "compareText" text DEFAULT '',
 "created" timestamp DEFAULT NOW()
);

DELETE FROM clauses;
*/

SELECT * FROM clauses order by "originalSource", "clauseText";

