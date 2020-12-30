INSERT INTO "user_outbound_follows"
  ("follower_username", "followed_username")
VALUES ('alice', 'dave');

INSERT INTO "user_inbound_follows"
  ("followed_username", "follower_username")
VALUES ('dave', 'alice');
