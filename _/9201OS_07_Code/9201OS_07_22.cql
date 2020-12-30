UPDATE "users"
SET "location" = 'New York, NY',
    "version" = NOW()
WHERE "username" = 'happycorp'
IF "version" = ec0c1fb7-321f-11e4-8eeb-5f98e903bf02;
