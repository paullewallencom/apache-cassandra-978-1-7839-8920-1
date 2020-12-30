INSERT INTO "user_outbound_follows"
  ("follower_username", "followed_username")
VALUES ('alice', 'dave');

INSERT INTO "user_inbound_follows"
  ("followed_username", "follower_username")
VALUES ('dave', 'alice');
INSERT INTO "user_status_updates" ("username", "id", "body")
VALUES ('dave', NOW(), 'dave update one');

INSERT INTO "user_status_updates" ("username", "id", "body")
VALUES ('carol', NOW(), 'carol update one');

INSERT INTO "user_status_updates" ("username", "id", "body")
VALUES ('dave', NOW(), 'dave update two');

INSERT INTO "user_status_updates" ("username", "id", "body")
VALUES ('carol', NOW(), 'carol update two');
SELECT followed_username
FROM user_outbound_follows
WHERE follower_username = 'alice';
SELECT "id", UNIXTIMESTAMPOF("id"), "body"
FROM "user_status_updates"
WHERE "username" IN ('carol', 'dave');
SELECT "id", UNIXTIMESTAMPOF("id"), "body"
FROM "user_status_updates"
WHERE "username" IN ('carol', 'dave')
ORDER BY "id" DESC
LIMIT 2;
SELECT "username", "id", UNIXTIMESTAMPOF("id"), "body"
FROM "user_status_updates"
WHERE "username" IN ('carol', 'dave')
AND "id" < 3a59c320-28cf-11e4-8069-5f98e903bf02
ORDER BY "id" DESC
LIMIT 2;
CREATE TABLE "home_status_update_ids" (
  "timeline_username" text,
  "status_update_id" timeuuid,
  "status_update_username" text,
  PRIMARY KEY ("timeline_username", "status_update_id")
)
WITH CLUSTERING ORDER BY ("status_update_id" DESC);
SELECT "follower_username"
FROM "user_inbound_follows"
WHERE "followed_username" = 'carol';
INSERT INTO "user_status_updates"
("username", "id", "body")
VALUES
('carol', 65cd8320-2ad7-11e4-8069-5f98e903bf02, 'carol update 3');

INSERT INTO "home_status_update_ids"
("timeline_username", "status_update_id", "status_update_username")
VALUES
('alice', 65cd8320-2ad7-11e4-8069-5f98e903bf02, 'carol');
SELECT NOW() FROM "user_status_updates" LIMIT 1;
SELECT "status_update_username", "status_update_id"
FROM "home_status_update_ids"
WHERE "timeline_username" = 'alice';
SELECT * FROM "user_status_updates"
WHERE "username" IN ('dave', 'carol')
AND "id" IN (
  a05b90b0-2ada-11e4-8069-5f98e903bf02,
  65cd8320-2ad7-11e4-8069-5f98e903bf02
);
DELETE FROM "user_status_updates"
WHERE username = 'dave'
AND id = a05b90b0-2ada-11e4-8069-5f98e903bf02;

DELETE FROM "home_status_update_ids"
WHERE timeline_username IN ('alice')
AND status_update_id = a05b90b0-2ada-11e4-8069-5f98e903bf02;
CREATE TABLE "home_status_updates" (
  "timeline_username" text,
  "status_update_id" timeuuid,
  "status_update_username" text,
  "body" text,
  PRIMARY KEY ("timeline_username", "status_update_id")
) WITH CLUSTERING ORDER BY ("status_update_id" DESC);
SELECT "followed_username"
FROM "user_inbound_follows"
WHERE "followed_username" = 'carol';

INSERT INTO "user_status_updates"
("username", "id", "body")
VALUES
('carol', cacc7de0-2af9-11e4-8069-5f98e903bf02, 'carol update 4');

INSERT INTO "home_status_updates"
("timeline_username", "status_update_id", "status_update_username", "body")
VALUES (
  'alice',
  cacc7de0-2af9-11e4-8069-5f98e903bf02,
  'carol',
  'carol update 4'
);

SELECT "followed_username"
FROM "user_inbound_follows"
WHERE "followed_username" = 'dave';

INSERT INTO "user_status_updates"
("username", "id", "body")
VALUES
('dave', 16e2f240-2afa-11e4-8069-5f98e903bf02, 'dave update 4');

INSERT INTO "home_status_updates"
("timeline_username", "status_update_id", "status_update_username", "body")
VALUES (
  'alice',
  16e2f240-2afa-11e4-8069-5f98e903bf02,
  'dave',
  'dave update 4'
);
SELECT "status_update_username", "status_update_id", "body"
FROM "home_status_updates"
WHERE "timeline_username" = 'alice';
BEGIN BATCH
  INSERT INTO "user_status_updates"
  ("username", "id", "body")
  VALUES
  ('dave', 16e2f240-2afa-11e4-8069-5f98e903bf02, 'dave update 4');

  INSERT INTO "home_status_updates" (
    "timeline_username",
    "status_update_id",
    "status_update_username",
    "body"
  ) VALUES (
    'alice',
    16e2f240-2afa-11e4-8069-5f98e903bf02,
    'dave',
    'dave update 4'
  );
APPLY BATCH;
