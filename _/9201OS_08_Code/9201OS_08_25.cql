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
