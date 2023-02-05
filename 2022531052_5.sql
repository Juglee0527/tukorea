-- -------------- 2. DDL -----------------------------
CREATE TABLE toy_table (
   toy_id  INT AUTO_INCREMENT PRIMARY KEY, 
   toy_name CHAR(4), 
   age INT);

ALTER TABLE toy_table AUTO_INCREMENT=100;

DROP TABLE toy_table;

-- -------------- 3. DML -----------------------------
SELECT * FROM toy_table;

UPDATE toy_table
    SET toy_name = 'wowToy'
    WHERE toy_id = '20';

INSERT INTO toy_table
    SELECT id, name FROM test.test_table;

DELETE FROM toy_table 
    WHERE toy_name LIKE 'Wow%'
    LIMIT 5;

-- -------------- 4. DCL -----------------------------
CREATE USER SUPER@localhost IDENTIFIED BY 'password';
SHOW GRANTS FOR SUPER@localhost;
DROP user super@localhost;

GRANT ALL PRIVILEGES ON testDB.testTable TO user1@localhost IDENTIFIED BY 'testPass';
REVOKE ALL ON [toy_table.table_name] TO [user1@localhost];
