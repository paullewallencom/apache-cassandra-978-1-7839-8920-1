SELECT * FROM "users"
WHERE token("username") > token('dave')
LIMIT 2;
