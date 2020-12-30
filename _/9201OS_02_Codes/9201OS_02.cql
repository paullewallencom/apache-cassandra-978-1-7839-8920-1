USE my_status;
CREATE TABLE "users" (
  "username" text PRIMARY KEY,
  "email" text,
  "encrypted_password" blob
);
INSERT INTO "users"
("username", "email", "encrypted_password")
VALUES (
  'alice',
  'alice@gmail.com',
  0x8914977ed729792e403da53024c6069a9158b8c4
);
INSERT INTO "users"
("username", "encrypted_password")
VALUES (
  'bob',
  0x10920941a69549d33aaee6116ed1f47e19b8e713
);
SELECT * FROM "users"
WHERE "username" = 'alice';
SELECT "username", "encrypted_password" FROM "users"
WHERE "username" = 'alice';
SELECT * FROM "users"
WHERE "username" = 'bogus';
SELECT * FROM "users"
WHERE "username" IN ('alice', 'bob');
SELECT * FROM "users";
INSERT INTO "users"
("username", "email", "encrypted_password")
VALUES (
  'carol',
  'carol@gmail.com',
  0xed3d8299b191b59b7008759a104c10af3db6e63a
);

INSERT INTO "users"
("username", "email", "encrypted_password")
VALUES (
  'dave',
  'dave@gmail.com',
  0x6d1d90d92bbab0012270536f286d243729690a5b
);
SELECT * FROM users
LIMIT 2;
SELECT * FROM "users"
WHERE "username" > 'dave'
LIMIT 2;
SELECT "username", token("username")
FROM "users";
SELECT * FROM "users"
WHERE token("username") > token('dave')
LIMIT 2;
