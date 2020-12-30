CREATE TABLE "user_inbound_follows" (
  "followed_username" text,
  "follower_username" text,
  PRIMARY KEY ("followed_username", "follower_username")
);
