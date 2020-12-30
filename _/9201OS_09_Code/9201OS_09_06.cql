INSERT INTO "status_update_views" (
  "status_update_username", "status_update_id",
  "observed_at", "client_type"
) VALUES (
  'alice', 76e7a4d0-e796-11e3-90ce-5f98e903bf02,
  85a53d10-4cc3-11e4-a7ff-5f98e903bf02,
  'web'
);

UPDATE "daily_status_update_views"
SET "total_views" = "total_views" + 1,
    "web_views" = "web_views" + 1
WHERE "year" = 2014
  AND "date" = '2014-10-05';
