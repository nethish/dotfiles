-- Creates user nethish;
-- Initializes master database with permissions for nethish;
-- Creates box table

CREATE USER nethish with password 'n';
CREATE DATABASE master;
GRANT ALL PRIVILEGES ON DATABASE master TO nethish;

-- Initialize the box table
set role nethish;
\c master;

\conninfo
SELECT current_user, session_user;

CREATE TABLE box (length int, width int, kbd date DEFAULT now());
INSERT INTO box VALUES (2, 2);
SELECT *
FROM box
WHERE 1 = 1;

-- Uncomment this to delete the database
-- \echo Beginning to delete the database;
-- \c postgres;
-- SET ROLE postgres;
--
-- \conninfo
-- SELECT current_user, session_user;
--
-- DROP DATABASE master;
-- DROP USER nethish;
