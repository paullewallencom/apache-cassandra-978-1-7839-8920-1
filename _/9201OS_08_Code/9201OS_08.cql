use "my_status";
ALTER TABLE "user_status_updates"
ADD "starred_by_users" text;
SELECT "starred_by_users"
FROM "user_status_updates"
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "starred_by_users" = '["bob"]'
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
ALTER TABLE "user_status_updates"
DROP "starred_by_users";

ALTER TABLE "user_status_updates"
ADD "starred_by_users" SET<text>;
SELECT "starred_by_users"
FROM "user_status_updates"
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "starred_by_users" = {'bob'}
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "starred_by_users" = "starred_by_users" + {'carol'}
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "starred_by_users" = "starred_by_users" + {'dave'}
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "starred_by_users" = "starred_by_users" - {'dave'}
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "starred_by_users" = "starred_by_users" + {'carol'}
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "starred_by_users" = "starred_by_users" + {'alice'}
WHERE username = 'bob'
AND id = 97719c50-e797-11e3-90ce-5f98e903bf02;
ALTER TABLE "user_status_updates"
ADD "shared_by" LIST<text>;
UPDATE "user_status_updates"
SET "shared_by" = ['bob']
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "shared_by" = "shared_by" + ['carol']
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "shared_by" = ['dave'] + "shared_by"
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "shared_by"[1] = 'robert'
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "shared_by"[3] = 'maurice'
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
UPDATE "user_status_updates"
SET "shared_by" = "shared_by" - ['carol']
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
DELETE "shared_by"[0]
FROM "user_status_updates"
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02;
ALTER TABLE "users"
ADD social_identities MAP<text,bigint>;
UPDATE "users"
SET "social_identities" = {'twitter': 353637}
WHERE "username" = 'alice';
UPDATE "users"
SET "social_identities"['instagram'] = 9839025,
    "social_identities"['yo'] = 25
WHERE "username" = 'alice';
UPDATE "users"
SET "social_identities"['twitter'] = 2725634
WHERE "username" = 'alice';
DELETE "social_identities"['instagram']
FROM "users"
WHERE "username" = 'alice';
INSERT INTO "users" (
  "username", "email", "encrypted_password",
  "social_identities", "version"
) VALUES (
  'ivan',
  'ivan@gmail.com',
  0x48acb738ece5780f37b626a0cb64928b,
  {'twitter': 875958, 'instagram': 109550},
  NOW()
);
SELECT "shared_by"[2]
FROM "user_status_updates"
WHERE "username" = 'alice'
AND "id" = 76e7a4d0-e796-11e3-90ce-5f98e903bf02; 
CREATE INDEX ON "user_status_updates" ("starred_by_users");
SELECT * FROM "user_status_updates"
WHERE "starred_by_users" CONTAINS 'alice';
CREATE INDEX ON "users" (KEYS("social_identities"));
SELECT "social_identities"['twitter']
FROM "users"
WHERE "username" = 'alice';
SELECT * FROM "user_status_updates"
WHERE "username" = 'alice'
AND "id" IN (
  3f9b5f00-e8f7-11e3-9211-5f98e903bf02,
  3f9b5f00-e8f7-11e3-9211-5f98e903bf02
);
ALTER TABLE "users"
ADD "education" frozen <tuple<text, int>>;
UPDATE "users"
SET "education" = ('Cassandra College', null)
WHERE "username" = 'bob';
UPDATE "users"
SET "education" = ('BDU')
WHERE "username" = 'alice';
UPDATE "users"
SET "education" = ('Big Data University', 2003)
WHERE "username" = 'alice';
CREATE INDEX ON "users" ("education");
SELECT "username", "education" FROM users
WHERE "education" = ('Big Data University', 2003);
CREATE TYPE "education_information" (
  "school_name" text,
  "year" int
);
ALTER TABLE "users" DROP "education";

ALTER TABLE "users"
ADD "education" frozen <"education_information">;
UPDATE "users"
SET "education" = {
  "school_name": 'Big Data University',
  "graduation_year": 2003
}
WHERE "username" = 'alice';
CREATE INDEX ON "users" ("education");
SELECT "username", "education" FROM "users"
WHERE "education" = {
  "school_name": 'Big Data University',
  "graduation_year": 2003
};
