SELECT "username", TOKEN("username")
FROM "users"
WHERE "username" IN ('alice', 'bob', 'ivan');
SELECT "email", WRITETIME("email"),
       "location", WRITETIME("location")
FROM "users"
WHERE "username" = 'happycorp';
UPDATE "users"
USING TIMESTAMP 1414953847665102
SET "location" = 'Austin, TX'
WHERE "username" = 'bob';
UPDATE "users"
USING TIMESTAMP 1414953847665101
SET "location" = 'Tulsa, OK'
WHERE "username" = 'bob';
UPDATE "users"
USING TTL 30
SET "location" = 'Vancouver'
WHERE "username" = 'bob';
SELECT "username", "location", TTL("location")
FROM "users"
WHERE "username" = 'bob';
