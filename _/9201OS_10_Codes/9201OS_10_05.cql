UPDATE "users"
USING TTL 30
SET "location" = 'Vancouver'
WHERE "username" = 'bob';
