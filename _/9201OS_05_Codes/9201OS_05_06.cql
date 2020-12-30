DELETE FROM "user_outbound_follows"
WHERE "follower_username" = 'alice'
  AND "followed_username" = 'bob';

DELETE FROM "user_inbound_follows"
WHERE "followed_username" = 'bob'
  AND "follower_username" = 'alice';
