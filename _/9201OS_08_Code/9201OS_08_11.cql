UPDATE "user_status_updates"
SET "starred_by_users" = "starred_by_users" + {'alice'}
WHERE username = 'bob'
AND id = 97719c50-e797-11e3-90ce-5f98e903bf02;
