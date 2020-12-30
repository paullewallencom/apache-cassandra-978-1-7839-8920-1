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
