SELECT * FROM "user_status_updates"
WHERE TOKEN("username") > TOKEN('bob')
LIMIT 2;
