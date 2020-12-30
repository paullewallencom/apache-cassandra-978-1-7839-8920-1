SELECT "id", UNIXTIMESTAMPOF("id"), "body"
FROM "user_status_updates"
WHERE "username" IN ('carol', 'dave')
ORDER BY "id" DESC
LIMIT 2;
