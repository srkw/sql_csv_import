LOAD DATA LOCAL INFILE 'sample-users.csv'
INTO TABLE users
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(
@1,
id,
name,
email
)
SET
id = id,
name = nullif(name, ''),
email = nullif(email, '')
;

