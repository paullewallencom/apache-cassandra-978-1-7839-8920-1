SELECT * FROM "user_status_updates"
WHERE "username" = 'alice';
SELECT * FROM "user_status_updates"
WHERE id = 3f9b5f00-e8f7-11e3-9211-5f98e903bf02;
INSERT INTO "status_update_replies"
("status_update_username", "status_update_id", "id", "body")
VALUES
('alice', 76e7a4d0-e796-11e3-90ce-5f98e903bf02,
 NOW(), 'Good luck!');

SELECT * FROM "user_status_updates"
WHERE "status_update_username" = 'alice';
SELECT "id", DATEOF("id"), "body"
FROM "user_status_updates"
WHERE "username" = 'alice'
  AND "id" >= MINTIMEUUID('2014-05-01')
  AND "id" <= MAXTIMEUUID('2014-05-31');
SELECT "id", DATEOF("id"), "body"
FROM "user_status_updates"
WHERE "username" = 'alice'
LIMIT 3;
SELECT "id", DATEOF("id"), "body"
FROM "user_status_updates"
WHERE "username" = 'alice'
  AND id > 3f9df710-e8f7-11e3-9211-5f98e903bf02
LIMIT 3;
SELECT COUNT(1) FROM "user_status_updates"
WHERE "username" = 'alice';
SELECT "id", DATEOF("id"), "body"
FROM "user_status_updates"
WHERE "username" = 'alice'
ORDER BY "id" DESC;
SELECT "id", DATEOF("id"), "body"
FROM "user_status_updates"
WHERE "username" = 'alice'
ORDER BY "body" DESC;
CREATE TABLE "reversed_user_status_updates" (
  "username" text,
  "id" timeuuid,
  "body" text,
  PRIMARY KEY ("username", "id")
) WITH CLUSTERING ORDER BY ("id" DESC);
INSERT INTO "reversed_user_status_updates"
("username", "id", "body")
VALUES ('alice', NOW(), 'Reversed status 1');

INSERT INTO "reversed_user_status_updates"
("username", "id", "body")
VALUES ('alice', NOW(), 'Reversed status 2');

INSERT INTO "reversed_user_status_updates"
("username", "id", "body")
VALUES ('alice', NOW(), 'Reversed status 3');

SELECT * FROM "reversed_user_status_updates"
WHERE "username" = 'alice';
SELECT * FROM "user_status_updates"
LIMIT 3;
SELECT * FROM "user_status_updates"
WHERE "username" = 'bob'
  AND id > 3f9e9350-e8f7-11e3-9211-5f98e903bf02;
SELECT * FROM "user_status_updates"
WHERE TOKEN("username") > TOKEN('bob')
LIMIT 2;
SELECT * FROM "user_status_updates"
WHERE "username" = 'alice'
  AND id > 3f9b5f00-e8f7-11e3-9211-5f98e903bf02
LIMIT 3;
SELECT * FROM "user_status_updates"
WHERE TOKEN("username") > TOKEN('alice')
LIMIT 1;
CREATE TABLE "hash_tags" (
  "prefix" text,
  "remaining" text,
  "tag" text,
  PRIMARY KEY ("prefix", "remaining")
);
INSERT INTO "hash_tags" ("prefix", "remaining", "tag")
VALUES ('ca', 'ssandra', 'cassandra');

INSERT INTO "hash_tags" ("prefix", "remaining", "tag")
VALUES ('ca', 'ssette', 'cassette');

INSERT INTO "hash_tags" ("prefix", "remaining", "tag")
VALUES ('ca', 'sual', 'casual');

INSERT INTO "hash_tags" ("prefix", "remaining", "tag")
VALUES ('ca', 'ke', 'cake');
SELECT "tag" FROM "hash_tags"
WHERE "prefix" = 'ca';
SELECT "tag" FROM "hash_tags"
WHERE "prefix" = 'ca'
  AND "remaining" >= 's'
  AND "remaining" < 't';
SELECT "tag" FROM "hash_tags"
WHERE "prefix" = 'ca'
  AND "remaining" >= 'ssa'
  AND "remaining" < 'ssb';
