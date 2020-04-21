CREATE TABLE IF NOT EXISTS persistent_logins
(
  username  VARCHAR(64) NOT NULL,
  series    VARCHAR(64) NOT NULL,
  token     VARCHAR(64) NOT NULL,
  last_used TIMESTAMP   NOT NULL,
  PRIMARY KEY (series)
);
drop table if exists it_sprint_language cascade;

create table it_sprint_language
(
    id              bigint generated by default as identity
        constraint itsprint_language_pkey
            primary key,
    name            varchar(255),
    path_to_scripts varchar(255),
    extension       varchar(10)
);

INSERT INTO it_sprint_language (id, name, path_to_scripts, extension)
VALUES (1, 'Python 3.7', '/opt/scripts/python', '.py');
--INSERT INTO it_sprint_language (id, name, path_to_scripts, extension)
--VALUES (3, 'GNU G++ 14', '/opt/scripts/g++', '.cpp');
--INSERT INTO it_sprint_language (id, name, path_to_scripts, extension)
--VALUES (2, 'Java 1.8', '/opt/scripts/java', '.java');
--INSERT INTO it_sprint_language (id, name, path_to_scripts, extension)
--VALUES (4, 'PascalABC.NET', '/opt/scripts/pascal', '.pas');
