CREATE TABLE "status_update_views" (
  "status_update_username" text,
  "status_update_id" timeuuid,
  "observed_at" timeuuid,
  "client_type" text,
  PRIMARY KEY (
    ("status_update_username", "status_update_id"),
    "observed_at"
  )
);
