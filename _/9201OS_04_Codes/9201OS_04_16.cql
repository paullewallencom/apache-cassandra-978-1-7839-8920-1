SELECT * FROM "user_status_updates"
WHERE TOKEN("username") > TOKEN('alice')
LIMIT 1;
