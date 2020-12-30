USE my_status;
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
SELECT "observed_at", "client_type"
FROM "status_update_views"
WHERE "status_update_username" = 'alice'
  AND "status_update_id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02
  AND "observed_at" >= MINTIMEUUID('2014-10-05 00:00:00+0000')
  AND "observed_at"  < MINTIMEUUID('2014-10-06 00:00:00+0000');
SELECT COUNT(1)
FROM "status_update_views"
WHERE "status_update_username" = 'alice'
  AND "status_update_id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02
  AND "observed_at" >= MINTIMEUUID('2014-10-05 00:00:00+0000')
  AND "observed_at"  < MINTIMEUUID('2014-10-06 00:00:00+0000');
CREATE TABLE "daily_status_update_views" (
  "year" int,
  "date" timestamp,
  "total_views" counter,
  "web_views" counter,
  "mobile_views" counter,
  "api_views" counter,
  PRIMARY KEY (("year"), "date")
);
SELECT "date", "total_views"
FROM "daily_status_update_views"
WHERE "year" = 2014
  AND "date" >= '2014-09-01'
  AND "date"  < '2014-09-30';
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
SELECT * FROM "daily_status_update_views";
INSERT INTO "daily_status_update_views"
("year", "date", "total_views")
VALUES (2014, '2014-02-01', 500);
UPDATE "daily_status_update_views"
SET "total_views" = "total_views" + 500
WHERE "year" = 2014
  AND "date" = '2014-02-01';
DELETE FROM "daily_status_update_views"
WHERE "year" = 2014
  AND "date" = '2014-02-01';
UPDATE "daily_status_update_views"
SET "total_views" = "total_views" + 100
WHERE "year" = 2014
  AND "date" = '2014-02-01';
ALTER TABLE "daily_status_update_views"
ADD "last_view_time" timestamp;
