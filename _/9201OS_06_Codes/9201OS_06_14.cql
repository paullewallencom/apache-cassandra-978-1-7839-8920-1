CREATE TABLE "home_status_updates" (
  "timeline_username" text,
  "status_update_id" timeuuid,
  "status_update_username" text,
  "body" text,
  PRIMARY KEY ("timeline_username", "status_update_id")
) WITH CLUSTERING ORDER BY ("status_update_id" DESC);
