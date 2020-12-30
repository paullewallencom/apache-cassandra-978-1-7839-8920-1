CREATE TABLE "daily_status_update_views" (
  "year" int,
  "date" timestamp,
  "total_views" counter,
  "web_views" counter,
  "mobile_views" counter,
  "api_views" counter,
  PRIMARY KEY (("year"), "date")
);
