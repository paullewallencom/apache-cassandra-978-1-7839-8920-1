SELECT "username", "id", UNIXTIMESTAMPOF("id"), "body"
FROM "user_status_updates"
WHERE "username" IN ('carol', 'dave')
AND "id" < 3a59c320-28cf-11e4-8069-5f98e903bf02
ORDER BY "id" DESC
LIMIT 2;
