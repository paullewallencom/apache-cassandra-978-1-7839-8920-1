ALTER TABLE "user_status_updates"
DROP "starred_by_users";

ALTER TABLE "user_status_updates"
ADD "starred_by_users" SET<text>;
