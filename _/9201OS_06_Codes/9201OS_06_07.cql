CREATE TABLE "home_status_update_ids" (
  "timeline_username" text,
  "status_update_id" timeuuid,
  "status_update_username" text,
  PRIMARY KEY ("timeline_username", "status_update_id")
)
WITH CLUSTERING ORDER BY ("status_update_id" DESC);
