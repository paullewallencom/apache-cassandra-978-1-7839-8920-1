USE my_status;
DESCRIBE TABLE "users";
ALTER TABLE "users" ADD "city_state" text;
DESCRIBE TABLE "users";
ALTER TABLE "users" DROP "city_state";
ALTER TABLE "users" ADD "location" text;
SELECT * FROM "users";
UPDATE "users"
SET "location" = 'New York, NY'
WHERE "username" = 'alice';
SELECT * FROM users;
UPDATE "users"
SET "email" = 'dave@me.com', "location" = 'San Francisco, CA'
WHERE "username" = 'dave';
UPDATE "users"
SET "location" = 'St. Louis, MO'
WHERE "username" IN ('bob', 'carol');
INSERT INTO "users" ("username", "location") VALUES ('eve', NULL);
UPDATE "users" SET "location" = NULL WHERE "username" = 'bob';
SELECT * FROM "users" WHERE location IS NULL;
DELETE "location"
FROM "users"
WHERE "username" = 'bob';
UPDATE "users"
SET "location" = NULL
WHERE "username" = 'alice';
INSERT INTO "users"
("username", "email", "encrypted_password", "location")
VALUES
('eve', 'eve@gmail.com',
 0x85e36ed9f726295921a4a6f40d95c202c895180c,
 'Washington, D.C.');
INSERT INTO "users"
("username", "email", "encrypted_password")
VALUES
('eve', 'eve123@hotmail.com',
 0x411ebd49a24f8be2250c527160509264622d7883);
SELECT "username" FROM "users" WHERE "username" = 'eve' LIMIT 1;
INSERT INTO "users"
("username", "email", "encrypted_password", "location")
VALUES
('frank', 'frank@gmail.com',
 0xa71451665e16d8c6e6edfd444c60156efc861432,
'Los Angeles, CA')
IF NOT EXISTS;
INSERT INTO "users"
("username", "email", "encrypted_password")
VALUES
('frank', 'frank123@hotmail.com',
 0xed945334b49ea005967cd4c48ff0493e2d3ff8d3)
IF NOT EXISTS;
UPDATE "users"
SET "location" = 'Houston, TX'
WHERE "username" = 'Gina';
INSERT INTO "users"
("username", "email", "encrypted_password")
VALUES
('alice', 'alice@gmail.com',
 0x8914977ed729792e403da53024c6069a9158b8c4);

UPDATE "users"
SET "email" = 'alice@gmail.com',
"encrypted_password" =  0x8914977ed729792e403da53024c6069a9158b8c4
WHERE "username" = 'alice';
INSERT INTO "users"
("username", "email", "encrypted_password")
VALUES
('happycorp', 'media@happycorp.com',
 0x368200fa910c16cc644f3512e63b541c85fa2a3c)
IF NOT EXISTS;
ALTER TABLE "users" ADD "version" timeuuid;
UPDATE "users"
SET "location" = 'New York, NY',
    "version" = NOW()
WHERE "username" = 'happycorp'
IF "version" = ec0c1fb7-321f-11e4-8eeb-5f98e903bf02;
UPDATE "users"
SET "location" = 'Palo Alto, CA',
    "version" = NOW()
WHERE "username" = 'happycorp'
IF "version" = ec0c1fb7-321f-11e4-8eeb-5f98e903bf02;
UPDATE "users"
SET "location" = 'Denver, CO',
"version" = NOW()
WHERE "username" = 'ivan'
IF "version" = ec0c1fb7-321f-11e4-8eeb-5f98e903bf02;
