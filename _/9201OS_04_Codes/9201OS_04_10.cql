CREATE TABLE "reversed_user_status_updates" (
  "username" text,
  "id" timeuuid,
  "body" text,
  PRIMARY KEY ("username", "id")
) WITH CLUSTERING ORDER BY ("id" DESC);
