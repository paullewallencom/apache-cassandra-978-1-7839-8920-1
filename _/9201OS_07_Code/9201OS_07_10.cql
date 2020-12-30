INSERT INTO "users" ("username", "location") VALUES ('eve', NULL);
UPDATE "users" SET "location" = NULL WHERE "username" = 'bob';
SELECT * FROM "users" WHERE location IS NULL;
