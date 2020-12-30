INSERT INTO "status_update_replies"
("status_update_username", "status_update_id", "id", "body")
VALUES
('alice', 76e7a4d0-e796-11e3-90ce-5f98e903bf02,
 NOW(), 'Good luck!');

SELECT * FROM "user_status_updates"
WHERE "status_update_username" = 'alice';
