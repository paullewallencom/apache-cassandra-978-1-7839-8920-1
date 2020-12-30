CREATE TABLE "user_status_updates" (
  "username" text,
  "id" timeuuid,
  "body" text,
  PRIMARY KEY ("username", "id")
);
