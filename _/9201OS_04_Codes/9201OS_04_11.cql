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
