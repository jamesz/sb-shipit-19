CREATE TABLE clauses (
 id serial PRIMARY KEY,
 firmId uuid NOT NULL,
 matterCategory varchar(128) NOT NULL,
 clauseText text NOT NULL,
 compareText text DEFAULT ''
);

select * from clauses;