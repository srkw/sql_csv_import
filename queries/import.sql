LOAD DATA LOCAL INFILE 'sample_users.csv'
INTO TABLE users
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
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
