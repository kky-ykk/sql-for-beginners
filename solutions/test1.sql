-- 1.
CREATE DATABASE testdb;

-- 2.
CREATE TABLE test_table(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(40),
    address VARCHAR(100),
    age INT(100),
    PRIMARY KEY(id)
);

-- 3.
INSERT INTO test_table(name, address, age) VALUES ('John', 'USA', 23);
INSERT INTO test_table(name, address, age) VALUES ('Joshua', 'UK', 17);

-- 4.
UPDATE test_table SET address = 'USA' WHERE address = 'US';

-- 5.
DELETE FROM test_table WHERE age = 17;