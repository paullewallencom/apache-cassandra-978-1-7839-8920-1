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
