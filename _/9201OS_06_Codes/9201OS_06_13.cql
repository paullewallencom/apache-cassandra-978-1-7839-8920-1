DELETE FROM "user_status_updates"
WHERE username = 'dave'
AND id = a05b90b0-2ada-11e4-8069-5f98e903bf02;

DELETE FROM "home_status_update_ids"
WHERE timeline_username IN ('alice')
AND status_update_id = a05b90b0-2ada-11e4-8069-5f98e903bf02;
