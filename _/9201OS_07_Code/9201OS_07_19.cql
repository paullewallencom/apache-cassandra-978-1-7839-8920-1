INSERT INTO "users"
("username", "email", "encrypted_password")
VALUES
('alice', 'alice@gmail.com',
 0x8914977ed729792e403da53024c6069a9158b8c4);

UPDATE "users"
SET "email" = 'alice@gmail.com',
"encrypted_password" =  0x8914977ed729792e403da53024c6069a9158b8c4
WHERE "username" = 'alice';
