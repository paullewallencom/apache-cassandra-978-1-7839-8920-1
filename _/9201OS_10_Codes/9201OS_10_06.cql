SELECT "username", "location", TTL("location")
FROM "users"
WHERE "username" = 'bob';
