CREATE TABLE "user_outbound_follows" (
  "follower_username" text,
  "followed_username" text,
  PRIMARY KEY ("follower_username", "followed_username")
);
CREATE TABLE "user_inbound_follows" (
  "followed_username" text,
  "follower_username" text,
  PRIMARY KEY ("followed_username", "follower_username")
);
INSERT INTO "user_outbound_follows"
  ("follower_username", "followed_username")
VALUES ('alice', 'bob');

INSERT INTO "user_inbound_follows"
  ("followed_username", "follower_username")
VALUES ('bob', 'alice');

INSERT INTO "user_outbound_follows"
  ("follower_username", "followed_username")
VALUES ('alice', 'carol');

INSERT INTO "user_inbound_follows"
  ("followed_username", "follower_username")
VALUES ('carol', 'alice');
SELECT "follower_username"
FROM "user_outbound_follows"
WHERE "followed_username" = 'bob';
SELECT "follower_username"
FROM "user_inbound_follows"
WHERE "followed_username" = 'bob';
DELETE FROM "user_outbound_follows"
WHERE "follower_username" = 'alice'
  AND "followed_username" = 'bob';

DELETE FROM "user_inbound_follows"
WHERE "followed_username" = 'bob'
  AND "follower_username" = 'alice';
SELECT "followed_username"
FROM "user_outbound_follows"
WHERE "follower_username" = 'alice';
CREATE TABLE "user_follows" (
  "followed_username" text,
  "follower_username" text,
  PRIMARY KEY ("followed_username", "follower_username")
);
CREATE INDEX ON "user_follows" ("follower_username");
INSERT INTO "user_follows"
("followed_username", "follower_username")
VALUES ('alice', 'bob');

INSERT INTO "user_follows"
("followed_username", "follower_username")
VALUES ('alice', 'carol');

INSERT INTO "user_follows"
("followed_username", "follower_username")
VALUES ('carol', 'bob');

INSERT INTO "user_follows"
("followed_username", "follower_username")
VALUES ('dave', 'bob');
SELECT * FROM "user_follows"
WHERE "follower_username" = 'bob';
CREATE INDEX ON "users" ("email", "encrypted_password");
SELECT * FROM "user_follows"
WHERE "follower_username" > 'alice';
