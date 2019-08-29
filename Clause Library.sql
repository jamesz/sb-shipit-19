CREATE TABLE clauses (
 id uuid PRIMARY KEY,
 firmId uuid NOT NULL,
 matterCategory varchar(128) NOT NULL,
 clauseTitle varchar(256) NOT NULL,
 clauseText text NOT NULL,
 compareText text DEFAULT ''
);

DROP TABLE clauses;
select * from clauses;