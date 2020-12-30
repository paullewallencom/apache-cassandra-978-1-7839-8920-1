SELECT "email", WRITETIME("email"),
       "location", WRITETIME("location")
FROM "users"
WHERE "username" = 'happycorp';
