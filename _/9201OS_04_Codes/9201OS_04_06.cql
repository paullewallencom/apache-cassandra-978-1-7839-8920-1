SELECT "id", DATEOF("id"), "body"
FROM "user_status_updates"
WHERE "username" = 'alice'
  AND id > 3f9df710-e8f7-11e3-9211-5f98e903bf02
LIMIT 3;
