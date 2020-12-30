SELECT COUNT(1)
FROM "status_update_views"
WHERE "status_update_username" = 'alice'
  AND "status_update_id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02
  AND "observed_at" >= MINTIMEUUID('2014-10-05 00:00:00+0000')
  AND "observed_at"  < MINTIMEUUID('2014-10-06 00:00:00+0000');
