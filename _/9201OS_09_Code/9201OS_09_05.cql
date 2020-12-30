SELECT "date", "total_views"
FROM "daily_status_update_views"
WHERE "year" = 2014
  AND "date" >= '2014-09-01'
  AND "date"  < '2014-09-30';
