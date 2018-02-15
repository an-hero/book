
USE test;
DROP TABLE IF EXISTS book;
CREATE TABLE book (
  id INT(11) NOT NULL AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(255),
  author VARCHAR(100) NOT NULL,
  isbn VARCHAR(20),
  printYear INT,
  readAlready BOOL,
  PRIMARY KEY (ID))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

INSERT INTO book (title, description, author, isbn, printYear, readAlready)
VALUES ('Хождение по мукам', 'оророрп', 'Толстой', '001', 1923, FALSE );
INSERT INTO book (title, description, author, isbn, printYear, readAlready)
VALUES ('Преступление и наказане', 'рпнн', 'Достоевсий', '00197', 1864, TRUE );
