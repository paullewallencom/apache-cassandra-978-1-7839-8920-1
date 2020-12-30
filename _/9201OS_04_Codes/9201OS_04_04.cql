SELECT "id", DATEOF("id"), "body"
FROM "user_status_updates"
WHERE "username" = 'alice'
  AND "id" >= MINTIMEUUID('2014-05-01')
  AND "id" <= MAXTIMEUUID('2014-05-31');
