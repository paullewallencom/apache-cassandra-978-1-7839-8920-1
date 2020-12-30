SELECT "username", TOKEN("username")
FROM "users"
WHERE "username" IN ('alice', 'bob', 'ivan');
