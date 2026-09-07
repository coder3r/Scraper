-- DEV DOWNLOADER AUTOMATED SQL UPDATE SCRIPT
-- Generated on 2026-09-07 04:56:03
-- Execute this script directly in Supabase SQL Editor

-- MARK INACTIVE & NOT FOUND: Monsieur l'assassin X (ID: 008e0558-6444-43ae-8988-e74aa0b74658) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '008e0558-6444-43ae-8988-e74aa0b74658';

-- MARK INACTIVE & NOT FOUND: Motichoor Chaknachoor (ID: 00028201-d88a-4d05-a8a1-49661f75dc7e) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '00028201-d88a-4d05-a8a1-49661f75dc7e';

-- LINK CATEGORIES: Motichoor Chaknachoor (['1080p', 'bollywood', 'drama', 'comedy', 'romance', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('00028201-d88a-4d05-a8a1-49661f75dc7e', '1080p'), ('00028201-d88a-4d05-a8a1-49661f75dc7e', 'bollywood'), ('00028201-d88a-4d05-a8a1-49661f75dc7e', 'drama'), ('00028201-d88a-4d05-a8a1-49661f75dc7e', 'comedy'), ('00028201-d88a-4d05-a8a1-49661f75dc7e', 'romance'), ('00028201-d88a-4d05-a8a1-49661f75dc7e', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Online Ishq (ID: 009a04b9-b2cd-417b-8cf0-21bc6f7f127e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '009a04b9-b2cd-417b-8cf0-21bc6f7f127e';

-- LINK CATEGORIES: Online Ishq (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('009a04b9-b2cd-417b-8cf0-21bc6f7f127e', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Pinky Memsaab (ID: 003d059c-9557-4350-8677-d014e036f962) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '003d059c-9557-4350-8677-d014e036f962';

-- UPDATE MOVIE: American Badger (ID: 002ed8ed-2cd8-4b66-a4f5-8081f1ab8433)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/orhkta1aph1hkhk', file_size = '880.42 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '002ed8ed-2cd8-4b66-a4f5-8081f1ab8433';

-- UPDATE MOVIE: 1942: A Love Story (ID: 0014a864-3c66-4070-8385-35f6b387adf4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lrhizxxqxr2rfxk', file_size = '1.2 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0014a864-3c66-4070-8385-35f6b387adf4';

-- LINK CATEGORIES: 1942: A Love Story (['hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0014a864-3c66-4070-8385-35f6b387adf4', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Welcome Back (ID: 0099fcac-b6ba-4a37-97a2-b826660d8a56)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jjulb7kgo2bvbuo', file_size = '1.33 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0099fcac-b6ba-4a37-97a2-b826660d8a56';

-- UPDATE MOVIE: Oru Adaar Love (ID: 00e50843-0867-4b96-85df-9fd9eadab81e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/9omlbuw6m6x4jlt', file_size = '2.94 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '00e50843-0867-4b96-85df-9fd9eadab81e';

-- MARK INACTIVE & NOT FOUND: Sophie's Choice (ID: 00a07b42-bb39-4df8-9695-558984a4665b) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1598245761)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '00a07b42-bb39-4df8-9695-558984a4665b';

-- LINK CATEGORIES: Sophie's Choice (['hindi-dubbed', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('00a07b42-bb39-4df8-9695-558984a4665b', 'hindi-dubbed'), ('00a07b42-bb39-4df8-9695-558984a4665b', 'dual-audio'), ('00a07b42-bb39-4df8-9695-558984a4665b', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Alpha (ID: 00ab8a47-9f5f-4812-92f4-32236b6a7528) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '00ab8a47-9f5f-4812-92f4-32236b6a7528';

-- MARK INACTIVE & NOT FOUND: The Desert Dragon (ID: 0139bebc-333a-4791-8276-05c167fe6ccf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0139bebc-333a-4791-8276-05c167fe6ccf';

-- MARK INACTIVE & NOT FOUND: Murder Mystery (ID: 00ce2f68-8650-487b-a8d0-cbd523e8088a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '00ce2f68-8650-487b-a8d0-cbd523e8088a';

-- UPDATE MOVIE: Operation Overlord (ID: 00d33ec3-6a48-4c5f-a4f1-f268a2caf0cf)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ci1isj0i_nziith', file_size = '794.93 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '00d33ec3-6a48-4c5f-a4f1-f268a2caf0cf';

-- MARK INACTIVE & NOT FOUND: X2 Vision (ID: 01527a4a-0ea0-47c8-987d-f9deff5c7c05) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '01527a4a-0ea0-47c8-987d-f9deff5c7c05';

-- UPDATE MOVIE: Shikaaru (ID: 01214f75-4484-42fe-8aa0-ce56ac65da87)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/r5txeezuqr3uiqi', file_size = '2.19 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '01214f75-4484-42fe-8aa0-ce56ac65da87';

-- UPDATE MOVIE: Fireheart (ID: 011e200f-74d1-40fe-896f-08db1b5705d8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/4xd14mzyvwc1v1v', file_size = '1.73 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '011e200f-74d1-40fe-896f-08db1b5705d8';

-- MARK INACTIVE & NOT FOUND: Chakravyuham (ID: 014b3596-8cdb-4f41-ad02-c6a3b5fca61c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '014b3596-8cdb-4f41-ad02-c6a3b5fca61c';

-- UPDATE MOVIE: For Your Eyes Only (ID: 0156330f-ed94-493f-8e2c-2539b4d61f77)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/otqqf9jx6qq1mxz', file_size = '2.29 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0156330f-ed94-493f-8e2c-2539b4d61f77';

-- LINK CATEGORIES: For Your Eyes Only (['300mb', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0156330f-ed94-493f-8e2c-2539b4d61f77', '300mb'), ('0156330f-ed94-493f-8e2c-2539b4d61f77', 'dual-audio'), ('0156330f-ed94-493f-8e2c-2539b4d61f77', 'bluray') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Walking Tall: Lone Justice (ID: 01524b46-7452-4539-b975-ac865c35c98d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kg16gn9meddg_nk', file_size = '1.19 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '01524b46-7452-4539-b975-ac865c35c98d';

-- LINK CATEGORIES: Walking Tall: Lone Justice (['300mb', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('01524b46-7452-4539-b975-ac865c35c98d', '300mb'), ('01524b46-7452-4539-b975-ac865c35c98d', 'hindi-dubbed'), ('01524b46-7452-4539-b975-ac865c35c98d', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: WrestleMania 41: Saturday (ID: 01e3cbb1-fc98-4ee9-9aef-979008da25db) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '01e3cbb1-fc98-4ee9-9aef-979008da25db';

-- UPDATE MOVIE: Halloween Ends (ID: 017ad194-cf7f-4ced-8ae5-2e39d3e67f21)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/tttxnctsf8rqf85', file_size = '1.84 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '017ad194-cf7f-4ced-8ae5-2e39d3e67f21';

-- MARK INACTIVE & NOT FOUND: Naanna Nenu Naa Boyfriends (ID: 01592d35-35de-4269-9798-1f09213a4918) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '01592d35-35de-4269-9798-1f09213a4918';

-- LINK CATEGORIES: Naanna Nenu Naa Boyfriends (['family', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('01592d35-35de-4269-9798-1f09213a4918', 'family'), ('01592d35-35de-4269-9798-1f09213a4918', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: A Call to Spy (ID: 017afc7f-0c0b-491f-bfa3-f21002e00ff9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/13lgu44fxjnav77', file_size = '2.27 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '017afc7f-0c0b-491f-bfa3-f21002e00ff9';

-- MARK INACTIVE & NOT FOUND: The Hobbit: An Unexpected Journey (ID: 0160b1f3-71bf-4518-b25c-072885bbb41b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0160b1f3-71bf-4518-b25c-072885bbb41b';

-- MARK INACTIVE & NOT FOUND: Dunkirk (ID: 024d55a8-7356-4827-82fa-ba26da284735) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '024d55a8-7356-4827-82fa-ba26da284735';

-- MARK INACTIVE & NOT FOUND: Intlo Deyyam Nakem Bhayam (ID: 021c0caa-e292-4955-9bad-48601c3ea2ce) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '021c0caa-e292-4955-9bad-48601c3ea2ce';

-- MARK INACTIVE & NOT FOUND: FIR (ID: 023c04ad-236b-4a93-9749-8d015c8e72d2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '023c04ad-236b-4a93-9749-8d015c8e72d2';

-- LINK CATEGORIES: FIR (['drama', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('023c04ad-236b-4a93-9749-8d015c8e72d2', 'drama'), ('023c04ad-236b-4a93-9749-8d015c8e72d2', 'crime') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Before Someone Gets Hurt (ID: 024b3211-e179-4858-8185-5909cf5d2f2a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/00rb0tlrdn5jlwt', file_size = '1009.81 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '024b3211-e179-4858-8185-5909cf5d2f2a';

-- LINK CATEGORIES: Before Someone Gets Hurt (['1080p', 'horror', '300mb', 'hd', 'hindi-dubbed', 'dual-audio', 'bluray', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('024b3211-e179-4858-8185-5909cf5d2f2a', '1080p'), ('024b3211-e179-4858-8185-5909cf5d2f2a', 'horror'), ('024b3211-e179-4858-8185-5909cf5d2f2a', '300mb'), ('024b3211-e179-4858-8185-5909cf5d2f2a', 'hd'), ('024b3211-e179-4858-8185-5909cf5d2f2a', 'hindi-dubbed'), ('024b3211-e179-4858-8185-5909cf5d2f2a', 'dual-audio'), ('024b3211-e179-4858-8185-5909cf5d2f2a', 'bluray'), ('024b3211-e179-4858-8185-5909cf5d2f2a', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Living Death (ID: 02447fd5-5154-4ba8-846e-712f65899e3a) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '02447fd5-5154-4ba8-846e-712f65899e3a';

-- LINK CATEGORIES: Living Death (['crime', '300mb', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('02447fd5-5154-4ba8-846e-712f65899e3a', 'crime'), ('02447fd5-5154-4ba8-846e-712f65899e3a', '300mb'), ('02447fd5-5154-4ba8-846e-712f65899e3a', 'hindi-dubbed'), ('02447fd5-5154-4ba8-846e-712f65899e3a', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Kabhi Alvida Naa Kehna (ID: 02541a91-95c5-4180-90d9-bd09e48bf3f9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ty1frdgoyvynom4', file_size = '1.72 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '02541a91-95c5-4180-90d9-bd09e48bf3f9';

-- LINK CATEGORIES: Kabhi Alvida Naa Kehna (['bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('02541a91-95c5-4180-90d9-bd09e48bf3f9', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Pailwaan (ID: 02add982-6c0a-43b9-9f3c-fb0209b328aa) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '02add982-6c0a-43b9-9f3c-fb0209b328aa';

-- MARK INACTIVE & NOT FOUND: Bhaagamathie (ID: 0277cb06-5584-463f-953f-273e95e6995b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0277cb06-5584-463f-953f-273e95e6995b';

-- MARK INACTIVE & NOT FOUND: Mr. Pip (ID: 027cc4ba-a928-43d5-8cb3-9483ec5dbcf6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '027cc4ba-a928-43d5-8cb3-9483ec5dbcf6';

-- MARK INACTIVE & NOT FOUND: Teen Titans Go!: Couch Crusaders Season 1 - Part 2 (ID: 02c61e4b-65d5-4aca-aa53-f94f816c934f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '02c61e4b-65d5-4aca-aa53-f94f816c934f';

-- MARK INACTIVE & NOT FOUND: Speed Racer (ID: 02850d74-77d3-4174-be2e-a8929c1f068f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '02850d74-77d3-4174-be2e-a8929c1f068f';

-- LINK CATEGORIES: Speed Racer (['300mb', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('02850d74-77d3-4174-be2e-a8929c1f068f', '300mb'), ('02850d74-77d3-4174-be2e-a8929c1f068f', 'hindi-dubbed'), ('02850d74-77d3-4174-be2e-a8929c1f068f', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Dilli Dark (ID: 02c77209-51d1-4edf-8de2-49f06c70cfbf)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/gz8zygpwryb4dbv', file_size = '1.97 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '02c77209-51d1-4edf-8de2-49f06c70cfbf';

-- MARK INACTIVE & NOT FOUND: Pearl Harbor (ID: 02819f1e-0160-4134-adb9-21374f713ba6) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '02819f1e-0160-4134-adb9-21374f713ba6';

-- LINK CATEGORIES: Pearl Harbor (['1080p', 'hd', 'hindi-dubbed', 'dual-audio', 'hollywood', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('02819f1e-0160-4134-adb9-21374f713ba6', '1080p'), ('02819f1e-0160-4134-adb9-21374f713ba6', 'hd'), ('02819f1e-0160-4134-adb9-21374f713ba6', 'hindi-dubbed'), ('02819f1e-0160-4134-adb9-21374f713ba6', 'dual-audio'), ('02819f1e-0160-4134-adb9-21374f713ba6', 'hollywood'), ('02819f1e-0160-4134-adb9-21374f713ba6', 'action') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Howling (ID: 02e0940f-4d94-4e9e-a43c-3de859abc52a)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/ccj1zjsfyereaee', file_size = '1.62 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '02e0940f-4d94-4e9e-a43c-3de859abc52a';

-- LINK CATEGORIES: The Howling (['300mb', 'bluray', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('02e0940f-4d94-4e9e-a43c-3de859abc52a', '300mb'), ('02e0940f-4d94-4e9e-a43c-3de859abc52a', 'bluray'), ('02e0940f-4d94-4e9e-a43c-3de859abc52a', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Lost City of Z (ID: 02de191e-74e4-4d6b-8007-ee46489e7e69) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2127146786)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '02de191e-74e4-4d6b-8007-ee46489e7e69';

-- UPDATE MOVIE: Jerry Maguire (ID: 02ff695c-4ba2-461a-a2c9-754fa4debdee)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ba1a74skua12p1g', file_size = '2.41 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '02ff695c-4ba2-461a-a2c9-754fa4debdee';

-- LINK CATEGORIES: Jerry Maguire (['300mb', 'hindi-dubbed', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('02ff695c-4ba2-461a-a2c9-754fa4debdee', '300mb'), ('02ff695c-4ba2-461a-a2c9-754fa4debdee', 'hindi-dubbed'), ('02ff695c-4ba2-461a-a2c9-754fa4debdee', 'dual-audio'), ('02ff695c-4ba2-461a-a2c9-754fa4debdee', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: A Dark Truth (ID: 03011b62-a7bc-4f4d-80eb-00aab226d3bc) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '03011b62-a7bc-4f4d-80eb-00aab226d3bc';

-- UPDATE MOVIE: The High Note (ID: 02f71a4c-dd50-40c8-9e76-33c740fe4f05)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jjgrccwhvtzonpv', file_size = '977.28 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '02f71a4c-dd50-40c8-9e76-33c740fe4f05';

-- MARK INACTIVE & NOT FOUND: Still Alice (ID: 0307e8f4-6cae-4f6b-907d-8462ef257380) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0307e8f4-6cae-4f6b-907d-8462ef257380';

-- MARK INACTIVE & NOT FOUND: Creed II (ID: 030739dd-d012-47de-bff3-a4144c38d112) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '030739dd-d012-47de-bff3-a4144c38d112';

-- UPDATE MOVIE: MAD (ID: 037793ff-f9ed-410c-b491-386d66cd56e1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pn1lpeelhf2vb2t', file_size = '2.56 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '037793ff-f9ed-410c-b491-386d66cd56e1';

-- LINK CATEGORIES: MAD (['south-hindi-dubbed', 'telugu', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('037793ff-f9ed-410c-b491-386d66cd56e1', 'south-hindi-dubbed'), ('037793ff-f9ed-410c-b491-386d66cd56e1', 'telugu'), ('037793ff-f9ed-410c-b491-386d66cd56e1', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Who Finds a Friend Finds a Treasure (ID: 035d9136-56f7-4a55-9cf0-4e48aa95acf6)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/nhr19ifnlngu0qt', file_size = '1.91 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '035d9136-56f7-4a55-9cf0-4e48aa95acf6';

-- LINK CATEGORIES: Who Finds a Friend Finds a Treasure (['300mb', 'dual-audio', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('035d9136-56f7-4a55-9cf0-4e48aa95acf6', '300mb'), ('035d9136-56f7-4a55-9cf0-4e48aa95acf6', 'dual-audio'), ('035d9136-56f7-4a55-9cf0-4e48aa95acf6', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Naayak (ID: 03222af7-41db-439c-9b38-097d3103b5fe) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '03222af7-41db-439c-9b38-097d3103b5fe';

-- MARK INACTIVE & NOT FOUND: Heartless (ID: 03341ac7-cc61-48f7-ad26-8a3a3d2e78f7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '03341ac7-cc61-48f7-ad26-8a3a3d2e78f7';

-- MARK INACTIVE & NOT FOUND: The Secret of the Two Headed Dragon (ID: 03dfba54-108f-40b7-af0e-c8c34be273f5) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '03dfba54-108f-40b7-af0e-c8c34be273f5';

-- UPDATE MOVIE: The Chronicles of Narnia: The Voyage of the Dawn Treader (ID: 03cc8085-861e-442f-aaea-6bc2bd455719)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qm6ueuccu1myevl', file_size = '2.14 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '03cc8085-861e-442f-aaea-6bc2bd455719';

-- LINK CATEGORIES: The Chronicles of Narnia: The Voyage of the Dawn Treader (['300mb', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('03cc8085-861e-442f-aaea-6bc2bd455719', '300mb'), ('03cc8085-861e-442f-aaea-6bc2bd455719', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kousalya Krishnamurthy (ID: 03f40feb-7e18-4d87-8e6f-ad87fb71bf69) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '03f40feb-7e18-4d87-8e6f-ad87fb71bf69';

-- LINK CATEGORIES: Kousalya Krishnamurthy (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('03f40feb-7e18-4d87-8e6f-ad87fb71bf69', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Maleficent: Mistress of Evil (ID: 03d419ca-4cbf-443b-bf5c-74bddebd5de4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/fpu4w1pai_tpx1t', file_size = '2 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '03d419ca-4cbf-443b-bf5c-74bddebd5de4';

-- MARK INACTIVE & NOT FOUND: Ryde (ID: 038b664d-154d-4b1c-8348-ac986639e679) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '038b664d-154d-4b1c-8348-ac986639e679';

-- MARK INACTIVE & NOT FOUND: Ice Age: The Meltdown (ID: 045d0339-0fec-43e6-b508-d5acce7abcbc) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '045d0339-0fec-43e6-b508-d5acce7abcbc';

-- MARK INACTIVE & NOT FOUND: It's My Life (ID: 03b8317e-3b1b-41f8-8fd1-5746a8ac73ac) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '03b8317e-3b1b-41f8-8fd1-5746a8ac73ac';

-- MARK INACTIVE & NOT FOUND: Rising Star (ID: 046a0df2-c920-4f73-ba91-4cf12a580450) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '046a0df2-c920-4f73-ba91-4cf12a580450';

-- LINK CATEGORIES: Rising Star (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('046a0df2-c920-4f73-ba91-4cf12a580450', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Rarandoi Veduka Chudham (ID: 042bbc12-7d3d-475d-82e1-22d1b49b4ae2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/7a7aklpsy1sbs0s', file_size = '2.87 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '042bbc12-7d3d-475d-82e1-22d1b49b4ae2';

-- UPDATE MOVIE: My Policeman (ID: 041e9f8f-87f0-4311-a14d-ac4abf8a3eb7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/iay3jzqu63i5jia', file_size = '992.66 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '041e9f8f-87f0-4311-a14d-ac4abf8a3eb7';

-- MARK INACTIVE & NOT FOUND: Squared Love Everlasting (ID: 045e4ef9-38dd-4a6a-a234-105ab759f714) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '045e4ef9-38dd-4a6a-a234-105ab759f714';

-- MARK INACTIVE & NOT FOUND: Robin Hood (ID: 040e5f9c-8e48-40bb-b33a-2735c9d66e71) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '040e5f9c-8e48-40bb-b33a-2735c9d66e71';

-- MARK INACTIVE & NOT FOUND: Elektra (ID: 047b74ae-6bca-4dc8-8cbd-1d0338de75e8) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '047b74ae-6bca-4dc8-8cbd-1d0338de75e8';

-- LINK CATEGORIES: Elektra (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('047b74ae-6bca-4dc8-8cbd-1d0338de75e8', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Parole! (ID: 0478d508-47e9-4ef0-9601-aab4fa1a6e18)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/xesb1wxjii6244w', file_size = '2.58 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0478d508-47e9-4ef0-9601-aab4fa1a6e18';

-- MARK INACTIVE & NOT FOUND: Mystic Blade (ID: 04cc34d7-7bb0-49c8-a6bb-283b7edc761e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '04cc34d7-7bb0-49c8-a6bb-283b7edc761e';

-- MARK INACTIVE & NOT FOUND: The Hateful Eight (ID: 0486a982-6b21-4d63-b89a-a0639f40f045) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0486a982-6b21-4d63-b89a-a0639f40f045';

-- LINK CATEGORIES: The Hateful Eight (['720p', '1080p', 'drama', 'crime', '300mb', 'hd', 'mystery', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0486a982-6b21-4d63-b89a-a0639f40f045', '720p'), ('0486a982-6b21-4d63-b89a-a0639f40f045', '1080p'), ('0486a982-6b21-4d63-b89a-a0639f40f045', 'drama'), ('0486a982-6b21-4d63-b89a-a0639f40f045', 'crime'), ('0486a982-6b21-4d63-b89a-a0639f40f045', '300mb'), ('0486a982-6b21-4d63-b89a-a0639f40f045', 'hd'), ('0486a982-6b21-4d63-b89a-a0639f40f045', 'mystery'), ('0486a982-6b21-4d63-b89a-a0639f40f045', 'hollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Blue Lagoon (ID: 047d66a8-3a82-4848-8f4d-3368bf21e9b5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ndim21adiawai1m', file_size = '946.75 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '047d66a8-3a82-4848-8f4d-3368bf21e9b5';

-- LINK CATEGORIES: The Blue Lagoon (['300mb', 'hindi-dubbed', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('047d66a8-3a82-4848-8f4d-3368bf21e9b5', '300mb'), ('047d66a8-3a82-4848-8f4d-3368bf21e9b5', 'hindi-dubbed'), ('047d66a8-3a82-4848-8f4d-3368bf21e9b5', 'dual-audio'), ('047d66a8-3a82-4848-8f4d-3368bf21e9b5', 'bluray') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: King Kong Lives (ID: 046a6b50-cd9c-40e4-8aab-4e7fc5e66b22)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/6g6nwlzsj-wmlyp', file_size = '990.66 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '046a6b50-cd9c-40e4-8aab-4e7fc5e66b22';

-- LINK CATEGORIES: King Kong Lives (['300mb', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('046a6b50-cd9c-40e4-8aab-4e7fc5e66b22', '300mb'), ('046a6b50-cd9c-40e4-8aab-4e7fc5e66b22', 'hindi-dubbed'), ('046a6b50-cd9c-40e4-8aab-4e7fc5e66b22', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Legend of Zu (ID: 049b8dd4-fd21-41b8-a5ce-3af288419c99)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/4gbvliigbiven_4', file_size = '854.79 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '049b8dd4-fd21-41b8-a5ce-3af288419c99';

-- MARK INACTIVE & NOT FOUND: Keshava (ID: 04d9dd1d-21f4-448d-9018-9cc5de13b3ba) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '04d9dd1d-21f4-448d-9018-9cc5de13b3ba';

-- MARK INACTIVE & NOT FOUND: Dassehra (ID: 04eb05bd-5c70-4636-b336-11fc5d1777ba) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '04eb05bd-5c70-4636-b336-11fc5d1777ba';

-- MARK INACTIVE & NOT FOUND: Gully Boy (ID: 04ff2700-e79e-437a-a07c-30533a3292a2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '04ff2700-e79e-437a-a07c-30533a3292a2';

-- MARK INACTIVE & NOT FOUND: Resident Evil: The Final Chapter Retaliation Mode (ID: 052304fe-06fe-48a1-a64e-68eef12ab1bf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '052304fe-06fe-48a1-a64e-68eef12ab1bf';

-- UPDATE MOVIE: Let Him Go (ID: 0502d081-7789-4207-8417-715f975d1ea5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dkv4q1pfthradn6', file_size = '962.84 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0502d081-7789-4207-8417-715f975d1ea5';

-- MARK INACTIVE & NOT FOUND: Berlin is in Germany (ID: 052b41b0-3943-46f9-93b3-109a4dffee16) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '052b41b0-3943-46f9-93b3-109a4dffee16';

-- MARK INACTIVE & NOT FOUND: Jeepers Creepers 3 (ID: 050cf264-98ce-40df-b626-df75e3e978ed) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '050cf264-98ce-40df-b626-df75e3e978ed';

-- UPDATE MOVIE: How We Met (ID: 051001da-8138-49e5-945e-4db7d6825332)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ltlhptuuzahhztl', file_size = '877.95 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '051001da-8138-49e5-945e-4db7d6825332';

-- UPDATE MOVIE: Cirque du Freak: The Vampire's Assistant (ID: 0530298f-77c7-4501-827f-ed6216b565ce)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/gnlywl85y5d11at', file_size = '1.83 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0530298f-77c7-4501-827f-ed6216b565ce';

-- LINK CATEGORIES: Cirque du Freak: The Vampire's Assistant (['horror', 'hindi-dubbed', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0530298f-77c7-4501-827f-ed6216b565ce', 'horror'), ('0530298f-77c7-4501-827f-ed6216b565ce', 'hindi-dubbed'), ('0530298f-77c7-4501-827f-ed6216b565ce', 'dual-audio'), ('0530298f-77c7-4501-827f-ed6216b565ce', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Braveheart (ID: 051ca4ac-ac39-4ee7-8ba3-c66007a5e0fc) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '051ca4ac-ac39-4ee7-8ba3-c66007a5e0fc';

-- LINK CATEGORIES: Braveheart (['720p', '300mb', 'hindi-dubbed', 'dual-audio', 'biography'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('051ca4ac-ac39-4ee7-8ba3-c66007a5e0fc', '720p'), ('051ca4ac-ac39-4ee7-8ba3-c66007a5e0fc', '300mb'), ('051ca4ac-ac39-4ee7-8ba3-c66007a5e0fc', 'hindi-dubbed'), ('051ca4ac-ac39-4ee7-8ba3-c66007a5e0fc', 'dual-audio'), ('051ca4ac-ac39-4ee7-8ba3-c66007a5e0fc', 'biography') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: WWE Clash at the Castle 2024 (ID: 05add5eb-9503-4635-a56f-a6d2498ef682) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '05add5eb-9503-4635-a56f-a6d2498ef682';

-- UPDATE MOVIE: In My Dreams (ID: 0524a324-351f-4812-88be-605d15f6a148)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/10vdw0_yc_8y8uv', file_size = '898.94 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0524a324-351f-4812-88be-605d15f6a148';

-- MARK INACTIVE & NOT FOUND: Dhokha (ID: 05eceb72-3005-409c-8ba0-a3f7b4913044) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '05eceb72-3005-409c-8ba0-a3f7b4913044';

-- LINK CATEGORIES: Dhokha (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('05eceb72-3005-409c-8ba0-a3f7b4913044', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mumbai Meri Jaan (ID: 05f97e47-df46-4cba-a5bc-7b4e63930357) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '05f97e47-df46-4cba-a5bc-7b4e63930357';

-- LINK CATEGORIES: Mumbai Meri Jaan (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('05f97e47-df46-4cba-a5bc-7b4e63930357', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Welcome the Stranger (ID: 059ce9c4-496f-4700-aa05-74566b9caa1a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '059ce9c4-496f-4700-aa05-74566b9caa1a';

-- UPDATE MOVIE: Finding ʻOhana (ID: 059fafd1-2ddb-4786-a83d-f38260c28d47)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5y1xyq917dw991t', file_size = '2.2 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '059fafd1-2ddb-4786-a83d-f38260c28d47';

-- MARK INACTIVE & NOT FOUND: Bullet to the Head (ID: 05e122c9-cbe8-479a-b9f1-c41719a8ac11) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '05e122c9-cbe8-479a-b9f1-c41719a8ac11';

-- MARK INACTIVE & NOT FOUND: Wah Taj (ID: 05e5c5ac-7828-4177-967b-1b12318db24c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '05e5c5ac-7828-4177-967b-1b12318db24c';

-- MARK INACTIVE & NOT FOUND: Fist of Dragon (ID: 066db529-bdae-45f7-af14-3fd52174a3fd) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '066db529-bdae-45f7-af14-3fd52174a3fd';

-- MARK INACTIVE & NOT FOUND: Moodar Koodam (ID: 06349e7c-bc1f-4282-be43-e963146034a0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '06349e7c-bc1f-4282-be43-e963146034a0';

-- MARK INACTIVE & NOT FOUND: Jigsaw (ID: 064545fb-4eb6-47a3-979a-8df394f7c647) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '064545fb-4eb6-47a3-979a-8df394f7c647';

-- UPDATE MOVIE: The Vigil (ID: 066669c0-e3be-44a6-9657-db07458ac159)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/y77c07qdhjpkihl', file_size = '1.67 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '066669c0-e3be-44a6-9657-db07458ac159';

-- MARK INACTIVE & NOT FOUND: Sanki (ID: 0677adbb-47d2-4887-95a5-881d8b514f96) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0677adbb-47d2-4887-95a5-881d8b514f96';

-- LINK CATEGORIES: Sanki (['1080p', 'comedy', 'hindi-dubbed', 'hd', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0677adbb-47d2-4887-95a5-881d8b514f96', '1080p'), ('0677adbb-47d2-4887-95a5-881d8b514f96', 'comedy'), ('0677adbb-47d2-4887-95a5-881d8b514f96', 'hindi-dubbed'), ('0677adbb-47d2-4887-95a5-881d8b514f96', 'hd'), ('0677adbb-47d2-4887-95a5-881d8b514f96', 'action') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Black Adam (ID: 06c3fc37-581d-49ae-a399-2b72e3191a18)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/emytmoqdm1tygjd', file_size = '2.55 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '06c3fc37-581d-49ae-a399-2b72e3191a18';

-- MARK INACTIVE & NOT FOUND: Rang De (ID: 06d3ece0-85bc-46e1-813c-6d42fa817ee1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '06d3ece0-85bc-46e1-813c-6d42fa817ee1';

-- MARK INACTIVE & NOT FOUND: Chandaal (ID: 070edbe1-5fa6-43e3-8286-5ca679e1468a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '070edbe1-5fa6-43e3-8286-5ca679e1468a';

-- LINK CATEGORIES: Chandaal (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('070edbe1-5fa6-43e3-8286-5ca679e1468a', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Ring Around the Rosie (ID: 06a52fe5-53e0-4aab-af2a-ee759b7ba354) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '06a52fe5-53e0-4aab-af2a-ee759b7ba354';

-- LINK CATEGORIES: Ring Around the Rosie (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('06a52fe5-53e0-4aab-af2a-ee759b7ba354', 'hindi-dubbed'), ('06a52fe5-53e0-4aab-af2a-ee759b7ba354', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Run (ID: 06c4c574-d462-4698-b861-9045cbc7d2b6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '06c4c574-d462-4698-b861-9045cbc7d2b6';

-- MARK INACTIVE & NOT FOUND: House on Eden (ID: 0724556d-8758-4957-89ff-2fb2ddba4cb1) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0724556d-8758-4957-89ff-2fb2ddba4cb1';

-- MARK INACTIVE & NOT FOUND: iFestigal: Game On (ID: 0757c6dd-bd41-4a20-9112-d3bbc513f61b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0757c6dd-bd41-4a20-9112-d3bbc513f61b';

-- MARK INACTIVE & NOT FOUND: The Other Zoey (ID: 07582f25-1973-447a-bbc4-cf0ec7c848dc) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07582f25-1973-447a-bbc4-cf0ec7c848dc';

-- UPDATE MOVIE: Happy Feet Two (ID: 06a63802-3b32-4ac2-89be-7f3b88c47c41)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pc7u8zgluc7zz1g', file_size = '941.4 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '06a63802-3b32-4ac2-89be-7f3b88c47c41';

-- MARK INACTIVE & NOT FOUND: Knocked Up (ID: 06dbc234-8cc8-41d7-9a17-ea9507c97bf3) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '06dbc234-8cc8-41d7-9a17-ea9507c97bf3';

-- LINK CATEGORIES: Knocked Up (['300mb', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('06dbc234-8cc8-41d7-9a17-ea9507c97bf3', '300mb'), ('06dbc234-8cc8-41d7-9a17-ea9507c97bf3', 'hindi-dubbed'), ('06dbc234-8cc8-41d7-9a17-ea9507c97bf3', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Thodari (ID: 076054f0-1eee-4420-963c-66c4d04741a8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '076054f0-1eee-4420-963c-66c4d04741a8';

-- MARK INACTIVE & NOT FOUND: Fatafat (ID: 07729b57-741b-451c-88d9-f6674f6bb309) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07729b57-741b-451c-88d9-f6674f6bb309';

-- MARK INACTIVE & NOT FOUND: Athiratha (ID: 07719439-3452-4ff7-a518-eb0b7f4d4d0f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07719439-3452-4ff7-a518-eb0b7f4d4d0f';

-- UPDATE MOVIE: I Spy (ID: 078169a5-b3e9-4f1a-a342-6612b1b2a6ec)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/do5ttz3ltvv2mrv', file_size = '1011.55 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '078169a5-b3e9-4f1a-a342-6612b1b2a6ec';

-- LINK CATEGORIES: I Spy (['300mb', 'hindi-dubbed', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('078169a5-b3e9-4f1a-a342-6612b1b2a6ec', '300mb'), ('078169a5-b3e9-4f1a-a342-6612b1b2a6ec', 'hindi-dubbed'), ('078169a5-b3e9-4f1a-a342-6612b1b2a6ec', 'dual-audio'), ('078169a5-b3e9-4f1a-a342-6612b1b2a6ec', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Phamous (ID: 0781af4f-b58c-4041-a0a8-0f92173ba7c3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0781af4f-b58c-4041-a0a8-0f92173ba7c3';

-- MARK INACTIVE & NOT FOUND: Air Collision (ID: 07c94fc2-7a62-4f63-93b4-bea46d706a42) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07c94fc2-7a62-4f63-93b4-bea46d706a42';

-- UPDATE MOVIE: Dead Bullet (ID: 07b96c2b-fbd5-4025-ba22-9466ad934cc5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1j3irm3o75i-mh9', file_size = '997.64 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '07b96c2b-fbd5-4025-ba22-9466ad934cc5';

-- MARK INACTIVE & NOT FOUND: Naaigal Jaakirathai (ID: 07e88e78-1cbb-4adf-a6d0-37da7a61c4dd) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07e88e78-1cbb-4adf-a6d0-37da7a61c4dd';

-- MARK INACTIVE & NOT FOUND: Generation Wolf (ID: 07d2b3d4-cea6-4ef4-923d-66607174c0f5) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07d2b3d4-cea6-4ef4-923d-66607174c0f5';

-- LINK CATEGORIES: Generation Wolf (['1080p', 'drama', '300mb', 'hd', 'hindi-dubbed', 'dual-audio', 'thriller', 'hollywood', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('07d2b3d4-cea6-4ef4-923d-66607174c0f5', '1080p'), ('07d2b3d4-cea6-4ef4-923d-66607174c0f5', 'drama'), ('07d2b3d4-cea6-4ef4-923d-66607174c0f5', '300mb'), ('07d2b3d4-cea6-4ef4-923d-66607174c0f5', 'hd'), ('07d2b3d4-cea6-4ef4-923d-66607174c0f5', 'hindi-dubbed'), ('07d2b3d4-cea6-4ef4-923d-66607174c0f5', 'dual-audio'), ('07d2b3d4-cea6-4ef4-923d-66607174c0f5', 'thriller'), ('07d2b3d4-cea6-4ef4-923d-66607174c0f5', 'hollywood'), ('07d2b3d4-cea6-4ef4-923d-66607174c0f5', 'action') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Vidayutham (ID: 07e94469-e87f-4f6e-939a-be44e1b3052c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07e94469-e87f-4f6e-939a-be44e1b3052c';

-- UPDATE MOVIE: 13 Minutes (ID: 07e8fbfb-494d-43e4-a59d-2c01e1121d25)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/s1ap1vrcplyn9lr', file_size = '1.01 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '07e8fbfb-494d-43e4-a59d-2c01e1121d25';

-- MARK INACTIVE & NOT FOUND: The Man with the Golden Gun (ID: 07f00a6c-ff11-44a8-98dc-67e1bf4f05ee) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07f00a6c-ff11-44a8-98dc-67e1bf4f05ee';

-- LINK CATEGORIES: The Man with the Golden Gun (['1080p', 'adventure', 'bluray', 'thriller', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('07f00a6c-ff11-44a8-98dc-67e1bf4f05ee', '1080p'), ('07f00a6c-ff11-44a8-98dc-67e1bf4f05ee', 'adventure'), ('07f00a6c-ff11-44a8-98dc-67e1bf4f05ee', 'bluray'), ('07f00a6c-ff11-44a8-98dc-67e1bf4f05ee', 'thriller'), ('07f00a6c-ff11-44a8-98dc-67e1bf4f05ee', 'action') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dangerous Temptation (ID: 08052fc3-0410-4523-be1a-9f1b39846c70) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '08052fc3-0410-4523-be1a-9f1b39846c70';

-- LINK CATEGORIES: Dangerous Temptation (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('08052fc3-0410-4523-be1a-9f1b39846c70', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Brother of Bommali (ID: 07f4110c-75fc-4a4d-9a91-ad8213f98088) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07f4110c-75fc-4a4d-9a91-ad8213f98088';

-- MARK INACTIVE & NOT FOUND: Christmas on Mistletoe Farm (ID: 07f2ad11-027a-494d-a0bf-be725570cb1b) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07f2ad11-027a-494d-a0bf-be725570cb1b';

-- MARK INACTIVE & NOT FOUND: Lone Survivor (ID: 07f9821b-6588-4ba1-bbb2-3dc598b9cbf0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '07f9821b-6588-4ba1-bbb2-3dc598b9cbf0';

-- UPDATE MOVIE: Bhale Bhale Magadivoy (ID: 08005214-199c-4691-ba53-922d35958bfc)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qd1xrq5182w8t2u', file_size = '633.06 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '08005214-199c-4691-ba53-922d35958bfc';

-- UPDATE MOVIE: Lahore Confidential (ID: 080861b4-cdb3-4613-af58-2081484e6e1d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ii4ssh_y8uxs8ig', file_size = '825.21 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '080861b4-cdb3-4613-af58-2081484e6e1d';

-- MARK INACTIVE & NOT FOUND: Morgan (ID: 0816cc88-729d-425a-9846-a9c60849a896) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0816cc88-729d-425a-9846-a9c60849a896';

-- MARK INACTIVE & NOT FOUND: Siliconn City (ID: 082377cd-2538-4612-b8ee-53a44f0feeae) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '082377cd-2538-4612-b8ee-53a44f0feeae';

-- UPDATE MOVIE: Die Another Day (ID: 08327496-4862-45c7-8aaf-0ead9c5c0acb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kb6d5bjlzmivg6z', file_size = '2.51 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '08327496-4862-45c7-8aaf-0ead9c5c0acb';

-- LINK CATEGORIES: Die Another Day (['bluray', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('08327496-4862-45c7-8aaf-0ead9c5c0acb', 'bluray'), ('08327496-4862-45c7-8aaf-0ead9c5c0acb', 'hindi-dubbed'), ('08327496-4862-45c7-8aaf-0ead9c5c0acb', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Fear the Night (ID: 085d664a-df6b-467d-a250-dcab1eeb3167) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '085d664a-df6b-467d-a250-dcab1eeb3167';

-- MARK INACTIVE & NOT FOUND: Shubh Aarambh (ID: 08594b12-e624-4147-ba15-9b60a3e5790c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '08594b12-e624-4147-ba15-9b60a3e5790c';

-- MARK INACTIVE & NOT FOUND: Thirunaal (ID: 0847fea3-3f7d-4016-a6ca-c3d040e9603c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0847fea3-3f7d-4016-a6ca-c3d040e9603c';

-- LINK CATEGORIES: Thirunaal (['300mb', 'south-hindi-dubbed', 'hindi-dubbed', 'dual-audio', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0847fea3-3f7d-4016-a6ca-c3d040e9603c', '300mb'), ('0847fea3-3f7d-4016-a6ca-c3d040e9603c', 'south-hindi-dubbed'), ('0847fea3-3f7d-4016-a6ca-c3d040e9603c', 'hindi-dubbed'), ('0847fea3-3f7d-4016-a6ca-c3d040e9603c', 'dual-audio'), ('0847fea3-3f7d-4016-a6ca-c3d040e9603c', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Don't Say Its Name (ID: 084dae66-e4c6-433d-8a8f-a58ca0974505) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/833912152)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '084dae66-e4c6-433d-8a8f-a58ca0974505';

-- UPDATE MOVIE: Saw II (ID: 08820455-ebf3-4ca0-bb6b-0f94561bae6b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kkzgnoh5jioikb8', file_size = '2.03 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '08820455-ebf3-4ca0-bb6b-0f94561bae6b';

-- LINK CATEGORIES: Saw II (['bluray', 'hindi-dubbed', 'dual-audio', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('08820455-ebf3-4ca0-bb6b-0f94561bae6b', 'bluray'), ('08820455-ebf3-4ca0-bb6b-0f94561bae6b', 'hindi-dubbed'), ('08820455-ebf3-4ca0-bb6b-0f94561bae6b', 'dual-audio'), ('08820455-ebf3-4ca0-bb6b-0f94561bae6b', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Arjun Patiala (ID: 08ba7f2b-2461-4d87-87b0-06c52fed75ec) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '08ba7f2b-2461-4d87-87b0-06c52fed75ec';

-- MARK INACTIVE & NOT FOUND: Sniper: Reloaded (ID: 08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb';

-- LINK CATEGORIES: Sniper: Reloaded (['horror', 'thriller', 'hd', 'action', 'hollywood', 'hindi-dubbed', 'drama', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb', 'horror'), ('08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb', 'thriller'), ('08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb', 'hd'), ('08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb', 'action'), ('08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb', 'hollywood'), ('08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb', 'hindi-dubbed'), ('08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb', 'drama'), ('08c4dd24-c9ac-4a4b-8cdc-a2c98bc6b1bb', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Jackpot! (ID: 08d788fa-e46a-4b7a-8409-b3a95455f1e6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '08d788fa-e46a-4b7a-8409-b3a95455f1e6';

-- UPDATE MOVIE: Dead for a Dollar (ID: 08c3a273-22ae-4e93-b1d4-b48faa1dd4bb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rggrybzk6ubub5z', file_size = '922.99 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '08c3a273-22ae-4e93-b1d4-b48faa1dd4bb';

-- MARK INACTIVE & NOT FOUND: Sleeping Beauty (ID: 09108c71-42bc-459a-a8dd-010f25f33569) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '09108c71-42bc-459a-a8dd-010f25f33569';

-- UPDATE MOVIE: Bullet Train (ID: 08f2edf4-a5ae-47d6-b9ab-1109031dcb88)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/85vbabxoqcx8mmm', file_size = '1.12 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '08f2edf4-a5ae-47d6-b9ab-1109031dcb88';

-- MARK INACTIVE & NOT FOUND: My Cousin Rachel (ID: 0943cdb4-b22b-444f-b3d5-958d6163d7f2) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0943cdb4-b22b-444f-b3d5-958d6163d7f2';

-- LINK CATEGORIES: My Cousin Rachel (['hd', 'hollywood', 'hindi-dubbed', 'romance', 'dual-audio', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0943cdb4-b22b-444f-b3d5-958d6163d7f2', 'hd'), ('0943cdb4-b22b-444f-b3d5-958d6163d7f2', 'hollywood'), ('0943cdb4-b22b-444f-b3d5-958d6163d7f2', 'hindi-dubbed'), ('0943cdb4-b22b-444f-b3d5-958d6163d7f2', 'romance'), ('0943cdb4-b22b-444f-b3d5-958d6163d7f2', 'dual-audio'), ('0943cdb4-b22b-444f-b3d5-958d6163d7f2', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Jinde Meriye (ID: 096014a8-6226-4d76-9828-0c490620ceb4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qnvb6bvqz6a78_7', file_size = '1.04 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '096014a8-6226-4d76-9828-0c490620ceb4';

-- MARK INACTIVE & NOT FOUND: After Yang (ID: 09153d28-ae11-4d30-9c7f-6b98011d578e) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '09153d28-ae11-4d30-9c7f-6b98011d578e';

-- MARK INACTIVE & NOT FOUND: Kuch Pal Pyar Ke (ID: 0970c65e-331b-4b2a-9ea4-bebd5acb3059) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0970c65e-331b-4b2a-9ea4-bebd5acb3059';

-- MARK INACTIVE & NOT FOUND: Clockstoppers (ID: 0969008c-1c94-42c5-93a4-ea3daf5ab061) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0969008c-1c94-42c5-93a4-ea3daf5ab061';

-- LINK CATEGORIES: Clockstoppers (['adventure', 'action', 'hollywood', 'hindi-dubbed', 'dual-audio', 'comedy', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0969008c-1c94-42c5-93a4-ea3daf5ab061', 'adventure'), ('0969008c-1c94-42c5-93a4-ea3daf5ab061', 'action'), ('0969008c-1c94-42c5-93a4-ea3daf5ab061', 'hollywood'), ('0969008c-1c94-42c5-93a4-ea3daf5ab061', 'hindi-dubbed'), ('0969008c-1c94-42c5-93a4-ea3daf5ab061', 'dual-audio'), ('0969008c-1c94-42c5-93a4-ea3daf5ab061', 'comedy'), ('0969008c-1c94-42c5-93a4-ea3daf5ab061', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Neevevaro (ID: 097ccdd1-50b1-4e41-ba9e-1de674004427) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '097ccdd1-50b1-4e41-ba9e-1de674004427';

-- MARK INACTIVE & NOT FOUND: 22 Yards (ID: 09986698-11f6-4c14-97e3-09b4ecff321f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '09986698-11f6-4c14-97e3-09b4ecff321f';

-- MARK INACTIVE & NOT FOUND: FILES EN NOIR vol.2: El caso de la actriz asesinada. (HDRip-Sonido Mono) (ID: 09e51e90-5d18-462d-ac0d-752a0359c633) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '09e51e90-5d18-462d-ac0d-752a0359c633';

-- LINK CATEGORIES: FILES EN NOIR vol.2: El caso de la actriz asesinada. (HDRip-Sonido Mono) (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('09e51e90-5d18-462d-ac0d-752a0359c633', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Hedda (ID: 09d9bd39-a002-47eb-a097-562fc9aef4fb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/bjgrkooyfaojyoo', file_size = '2.3 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '09d9bd39-a002-47eb-a097-562fc9aef4fb';

-- LINK CATEGORIES: Hedda (['300mb', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('09d9bd39-a002-47eb-a097-562fc9aef4fb', '300mb'), ('09d9bd39-a002-47eb-a097-562fc9aef4fb', 'hindi-dubbed'), ('09d9bd39-a002-47eb-a097-562fc9aef4fb', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Super Tanker (ID: 09a29e52-1b0b-4d02-aafc-74e24a0da29d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rrktb6oboztykvo', file_size = '963.29 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '09a29e52-1b0b-4d02-aafc-74e24a0da29d';

-- MARK INACTIVE & NOT FOUND: Paul Blart: Mall Cop (ID: 09cd3ef2-0ebb-4dd7-a6e3-6899a0bc514b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '09cd3ef2-0ebb-4dd7-a6e3-6899a0bc514b';

-- LINK CATEGORIES: Paul Blart: Mall Cop (['hindi-dubbed', 'dual-audio', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('09cd3ef2-0ebb-4dd7-a6e3-6899a0bc514b', 'hindi-dubbed'), ('09cd3ef2-0ebb-4dd7-a6e3-6899a0bc514b', 'dual-audio'), ('09cd3ef2-0ebb-4dd7-a6e3-6899a0bc514b', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dream Girl (ID: 09d0c77f-d5e5-490a-932c-0ec099058d35) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '09d0c77f-d5e5-490a-932c-0ec099058d35';

-- MARK INACTIVE & NOT FOUND: Evangelion: 3.0+1.0 Thrice Upon a Time (ID: 0a58b505-3fed-4af7-b9b7-4e7e30b2d790) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0a58b505-3fed-4af7-b9b7-4e7e30b2d790';

-- MARK INACTIVE & NOT FOUND: Masterminds (ID: 0a12ea06-e04b-4891-80c0-d75735e552c2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0a12ea06-e04b-4891-80c0-d75735e552c2';

-- MARK INACTIVE & NOT FOUND: Beginners (ID: 0a4d4c1f-c547-4a54-83f0-e8b65446ed07) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0a4d4c1f-c547-4a54-83f0-e8b65446ed07';

-- LINK CATEGORIES: Beginners (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0a4d4c1f-c547-4a54-83f0-e8b65446ed07', 'hindi-dubbed'), ('0a4d4c1f-c547-4a54-83f0-e8b65446ed07', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Ranjha Refugee (ID: 0a612881-7af3-43d1-adde-4c71282dceeb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1qprt5anc1xmr3a', file_size = '1.99 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0a612881-7af3-43d1-adde-4c71282dceeb';

-- UPDATE MOVIE: Iron Monkey (ID: 0a1797cf-58c9-4c56-aa21-85b29a5b1ea4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/3rfpoojfurrfufd', file_size = '873.91 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0a1797cf-58c9-4c56-aa21-85b29a5b1ea4';

-- LINK CATEGORIES: Iron Monkey (['bluray', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0a1797cf-58c9-4c56-aa21-85b29a5b1ea4', 'bluray'), ('0a1797cf-58c9-4c56-aa21-85b29a5b1ea4', 'hindi-dubbed'), ('0a1797cf-58c9-4c56-aa21-85b29a5b1ea4', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Santa in Training (ID: 0a2279ed-a392-4453-83fa-9a27dfbeb293)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/yybagbzpbl1ayzg', file_size = '820.92 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0a2279ed-a392-4453-83fa-9a27dfbeb293';

-- MARK INACTIVE & NOT FOUND: Jack & Lou: A Gangster Love Story (ID: 0aa4c53e-8057-4f0d-8425-d9b9ec4d8489) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0aa4c53e-8057-4f0d-8425-d9b9ec4d8489';

-- MARK INACTIVE & NOT FOUND: Lions for Lambs (ID: 0a6f0a44-288e-4da4-90db-44bf78ee4715) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0a6f0a44-288e-4da4-90db-44bf78ee4715';

-- LINK CATEGORIES: Lions for Lambs (['thriller', 'hd', 'hollywood', 'hindi-dubbed', 'dual-audio', 'drama', 'war', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0a6f0a44-288e-4da4-90db-44bf78ee4715', 'thriller'), ('0a6f0a44-288e-4da4-90db-44bf78ee4715', 'hd'), ('0a6f0a44-288e-4da4-90db-44bf78ee4715', 'hollywood'), ('0a6f0a44-288e-4da4-90db-44bf78ee4715', 'hindi-dubbed'), ('0a6f0a44-288e-4da4-90db-44bf78ee4715', 'dual-audio'), ('0a6f0a44-288e-4da4-90db-44bf78ee4715', 'drama'), ('0a6f0a44-288e-4da4-90db-44bf78ee4715', 'war'), ('0a6f0a44-288e-4da4-90db-44bf78ee4715', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Bayama Irukku (ID: 0a65186d-3fde-44b8-9b05-124119ee2b5e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0a65186d-3fde-44b8-9b05-124119ee2b5e';

-- MARK INACTIVE & NOT FOUND: Angkinin Mo Ako (ID: 0ab85cde-85d2-4594-9c13-432dc8047f12) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0ab85cde-85d2-4594-9c13-432dc8047f12';

-- LINK CATEGORIES: Angkinin Mo Ako (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0ab85cde-85d2-4594-9c13-432dc8047f12', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Bāhubali 2: The Conclusion (ID: 0adcec6a-8599-4a8b-a68b-a831a09ad2e2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0adcec6a-8599-4a8b-a68b-a831a09ad2e2';

-- UPDATE MOVIE: The Legend of Loulan:  Ghost Army (ID: 0a9a392b-c2d8-46ca-b042-f82916f02aba)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dvmorvircifokkh', file_size = '967.22 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0a9a392b-c2d8-46ca-b042-f82916f02aba';

-- MARK INACTIVE & NOT FOUND: Together (ID: 0ab15811-229b-4b67-926e-a9b8089d9e82) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/834158196)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0ab15811-229b-4b67-926e-a9b8089d9e82';

-- MARK INACTIVE & NOT FOUND: Majili (ID: 0aa3a532-b727-47c0-9f8d-852d0bdf1d72) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0aa3a532-b727-47c0-9f8d-852d0bdf1d72';

-- UPDATE MOVIE: One Last Adventure: The Making of Stranger Things 5 (ID: 0af76ddc-5d6c-440e-a1cd-449017cecaa0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ff5epc1gt11xkfx', file_size = '2.61 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0af76ddc-5d6c-440e-a1cd-449017cecaa0';

-- LINK CATEGORIES: One Last Adventure: The Making of Stranger Things 5 (['netflix', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0af76ddc-5d6c-440e-a1cd-449017cecaa0', 'netflix'), ('0af76ddc-5d6c-440e-a1cd-449017cecaa0', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Conjuring: Last Rites (ID: 0b19aa80-1a3e-4c86-bbfc-b3e4b4f15cb4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/eagecelar1s7ye7', file_size = '2.93 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0b19aa80-1a3e-4c86-bbfc-b3e4b4f15cb4';

-- LINK CATEGORIES: The Conjuring: Last Rites (['300mb', 'thriller', 'hollywood', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0b19aa80-1a3e-4c86-bbfc-b3e4b4f15cb4', '300mb'), ('0b19aa80-1a3e-4c86-bbfc-b3e4b4f15cb4', 'thriller'), ('0b19aa80-1a3e-4c86-bbfc-b3e4b4f15cb4', 'hollywood'), ('0b19aa80-1a3e-4c86-bbfc-b3e4b4f15cb4', 'hindi-dubbed'), ('0b19aa80-1a3e-4c86-bbfc-b3e4b4f15cb4', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: A Silent Voice: The Movie (ID: 0b1cf182-62a7-40ad-9f87-3e1333a60f2c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0b1cf182-62a7-40ad-9f87-3e1333a60f2c';

-- LINK CATEGORIES: A Silent Voice: The Movie (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0b1cf182-62a7-40ad-9f87-3e1333a60f2c', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Toofan Singh (ID: 0ad6a0bf-f131-48b2-a7df-106cf99ed4fa) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0ad6a0bf-f131-48b2-a7df-106cf99ed4fa';

-- MARK INACTIVE & NOT FOUND: Daybreakers (ID: 0adfaf5f-9ea0-438e-98a6-4ebe6000ec6d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0adfaf5f-9ea0-438e-98a6-4ebe6000ec6d';

-- LINK CATEGORIES: Daybreakers (['horror', 'hindi-dubbed', 'sci-fi', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0adfaf5f-9ea0-438e-98a6-4ebe6000ec6d', 'horror'), ('0adfaf5f-9ea0-438e-98a6-4ebe6000ec6d', 'hindi-dubbed'), ('0adfaf5f-9ea0-438e-98a6-4ebe6000ec6d', 'sci-fi'), ('0adfaf5f-9ea0-438e-98a6-4ebe6000ec6d', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Fukrey Returns (ID: 0b056962-a433-40ef-a7b8-d98df2912e95) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0b056962-a433-40ef-a7b8-d98df2912e95';

-- MARK INACTIVE & NOT FOUND: Chakravyuha (ID: 0b0da170-a150-4c99-a1f1-c866bd9a45ea) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0b0da170-a150-4c99-a1f1-c866bd9a45ea';

-- UPDATE MOVIE: The Whistleblower (ID: 0b2423fe-07b6-43ea-a45a-ab17a0dffd30)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/bzm6npwwjzgpmoo', file_size = '1.88 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0b2423fe-07b6-43ea-a45a-ab17a0dffd30';

-- LINK CATEGORIES: The Whistleblower (['bluray', 'hindi-dubbed', 'dual-audio', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0b2423fe-07b6-43ea-a45a-ab17a0dffd30', 'bluray'), ('0b2423fe-07b6-43ea-a45a-ab17a0dffd30', 'hindi-dubbed'), ('0b2423fe-07b6-43ea-a45a-ab17a0dffd30', 'dual-audio'), ('0b2423fe-07b6-43ea-a45a-ab17a0dffd30', 'comedy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Shaadi Teri Bajayenge Hum Band (ID: 0b29a526-742f-4b82-91cc-beb01475654e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0b29a526-742f-4b82-91cc-beb01475654e';

-- MARK INACTIVE & NOT FOUND: LoveShhuda (ID: 0b2c4cf2-8f3b-44c6-8621-de361c45beed) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0b2c4cf2-8f3b-44c6-8621-de361c45beed';

-- MARK INACTIVE & NOT FOUND: Avalanche Sharks (ID: 0b566677-4efd-44b0-955e-a2d32777ba5a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0b566677-4efd-44b0-955e-a2d32777ba5a';

-- MARK INACTIVE & NOT FOUND: Money Back Policy (ID: 0baf227c-d430-4ca0-be00-7eaf341fb620) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0baf227c-d430-4ca0-be00-7eaf341fb620';

-- MARK INACTIVE & NOT FOUND: De De Pyaar De (ID: 0b5c2aa4-2263-47f5-b9d1-12e506384565) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0b5c2aa4-2263-47f5-b9d1-12e506384565';

-- UPDATE MOVIE: The Dark and the Wicked (ID: 0b4d309c-0c49-4751-a87c-6522b2fe0a87)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/l5lbu7wlkbcpm4y', file_size = '649.93 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0b4d309c-0c49-4751-a87c-6522b2fe0a87';

-- UPDATE MOVIE: Chhota Bheem ki Citi Pitti Gul (ID: 0b5ebd1d-fd3a-4b62-aeaa-82e0e4b7f9dc)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/q7znrjhrqijjhvz', file_size = '575.03 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0b5ebd1d-fd3a-4b62-aeaa-82e0e4b7f9dc';

-- MARK INACTIVE & NOT FOUND: Hero Dog: The Journey Home (ID: 0c25af51-4201-4df9-87c1-8f60086cd2d2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c25af51-4201-4df9-87c1-8f60086cd2d2';

-- UPDATE MOVIE: John Luther (ID: 0b769e25-8128-4a79-8e42-616efd30ed1e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kswok_qnzytszto', file_size = '2.15 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0b769e25-8128-4a79-8e42-616efd30ed1e';

-- MARK INACTIVE & NOT FOUND: The Lion King II: Simba's Pride (ID: 0c04fc78-5d40-4302-a37d-60fb26b73912) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c04fc78-5d40-4302-a37d-60fb26b73912';

-- LINK CATEGORIES: The Lion King II: Simba's Pride (['300mb', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0c04fc78-5d40-4302-a37d-60fb26b73912', '300mb'), ('0c04fc78-5d40-4302-a37d-60fb26b73912', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Halloweentown (ID: 0bfefc25-7cd7-48c1-a870-8f20f2ca97f3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0bfefc25-7cd7-48c1-a870-8f20f2ca97f3';

-- LINK CATEGORIES: Halloweentown (['adventure', 'hindi-dubbed', 'family', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0bfefc25-7cd7-48c1-a870-8f20f2ca97f3', 'adventure'), ('0bfefc25-7cd7-48c1-a870-8f20f2ca97f3', 'hindi-dubbed'), ('0bfefc25-7cd7-48c1-a870-8f20f2ca97f3', 'family'), ('0bfefc25-7cd7-48c1-a870-8f20f2ca97f3', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Braven (ID: 0c003641-831f-4e52-9197-3348e1c55409) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c003641-831f-4e52-9197-3348e1c55409';

-- MARK INACTIVE & NOT FOUND: Bhoot: Part One - The Haunted Ship (ID: 0c28df33-e659-48d0-99fd-033a952d2005) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c28df33-e659-48d0-99fd-033a952d2005';

-- MARK INACTIVE & NOT FOUND: Tsunambee (ID: 0c2d17fd-d2bc-48ca-9594-aeae899c7c2b) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c2d17fd-d2bc-48ca-9594-aeae899c7c2b';

-- MARK INACTIVE & NOT FOUND: The Man-Eater (ID: 0c43f7ca-46a3-4855-a802-4f56f67b5ff3) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c43f7ca-46a3-4855-a802-4f56f67b5ff3';

-- LINK CATEGORIES: The Man-Eater (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0c43f7ca-46a3-4855-a802-4f56f67b5ff3', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Baby Boom (ID: 0c46e69b-a0f3-43fa-9b85-d9569771e5e0) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c46e69b-a0f3-43fa-9b85-d9569771e5e0';

-- MARK INACTIVE & NOT FOUND: Princess Iron Fan (ID: 0c6a90ea-4b56-469c-ab9f-aeab01550f1d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c6a90ea-4b56-469c-ab9f-aeab01550f1d';

-- UPDATE MOVIE: Atlas (ID: 0c77b7c2-2c66-4ddd-819f-66472204d73b)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/2rydke2ld3ke_eh', file_size = '1.88 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0c77b7c2-2c66-4ddd-819f-66472204d73b';

-- LINK CATEGORIES: Atlas (['300mb', 'hollywood', 'hindi-dubbed', 'sci-fi', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0c77b7c2-2c66-4ddd-819f-66472204d73b', '300mb'), ('0c77b7c2-2c66-4ddd-819f-66472204d73b', 'hollywood'), ('0c77b7c2-2c66-4ddd-819f-66472204d73b', 'hindi-dubbed'), ('0c77b7c2-2c66-4ddd-819f-66472204d73b', 'sci-fi'), ('0c77b7c2-2c66-4ddd-819f-66472204d73b', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kirrak Party (ID: 0c608171-43b8-4ccc-b1ee-9917e89cf804) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c608171-43b8-4ccc-b1ee-9917e89cf804';

-- MARK INACTIVE & NOT FOUND: The Little Hours (ID: 0c587945-939c-4b65-ace0-653282e4af81) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c587945-939c-4b65-ace0-653282e4af81';

-- MARK INACTIVE & NOT FOUND: The Mountain Between Us (ID: 0c816c66-358c-4050-9f1d-63f8eafb8a81) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c816c66-358c-4050-9f1d-63f8eafb8a81';

-- MARK INACTIVE & NOT FOUND: Eye for an Eye 2 (ID: 0cbda928-ae12-4bf0-bae4-5801ab12bc6e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0cbda928-ae12-4bf0-bae4-5801ab12bc6e';

-- MARK INACTIVE & NOT FOUND: Rise of the Planet of the Apes (ID: 0c5d2d1b-6b86-483f-92ee-ebf2419a31df) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0c5d2d1b-6b86-483f-92ee-ebf2419a31df';

-- MARK INACTIVE & NOT FOUND: Sardaarji 2 (ID: 0cf4410b-b50b-4794-af4e-3dde544a8b62) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0cf4410b-b50b-4794-af4e-3dde544a8b62';

-- MARK INACTIVE & NOT FOUND: Kill Me Please (ID: 0cf9222c-8f54-441e-b9e6-300c157e80d4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0cf9222c-8f54-441e-b9e6-300c157e80d4';

-- MARK INACTIVE & NOT FOUND: Disco Raja (ID: 0cb4af0f-7bf2-41b7-b064-068104919dc4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0cb4af0f-7bf2-41b7-b064-068104919dc4';

-- UPDATE MOVIE: Andhaghaaram (ID: 0cddde2a-a561-4c10-ae35-8b926575ab16)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vgwh1xixov2ikgi', file_size = '2.66 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0cddde2a-a561-4c10-ae35-8b926575ab16';

-- MARK INACTIVE & NOT FOUND: Lagaan: Once Upon a Time in India (ID: 0d2ae528-40fb-4f13-9df5-e58e4a61a869) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0d2ae528-40fb-4f13-9df5-e58e4a61a869';

-- LINK CATEGORIES: Lagaan: Once Upon a Time in India (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0d2ae528-40fb-4f13-9df5-e58e4a61a869', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Curse of the Golden Flower (ID: 0cdc604b-940b-46f7-be42-5537e52382a6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0cdc604b-940b-46f7-be42-5537e52382a6';

-- LINK CATEGORIES: Curse of the Golden Flower (['hindi-dubbed', 'romance'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0cdc604b-940b-46f7-be42-5537e52382a6', 'hindi-dubbed'), ('0cdc604b-940b-46f7-be42-5537e52382a6', 'romance') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Leader (ID: 0cb6ab00-ddfb-45d1-99e8-e0a4dd16cd1c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/txyl7xlvl71vmfp', file_size = '1.7 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0cb6ab00-ddfb-45d1-99e8-e0a4dd16cd1c';

-- LINK CATEGORIES: Leader (['bluray', 'south-hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0cb6ab00-ddfb-45d1-99e8-e0a4dd16cd1c', 'bluray'), ('0cb6ab00-ddfb-45d1-99e8-e0a4dd16cd1c', 'south-hindi-dubbed'), ('0cb6ab00-ddfb-45d1-99e8-e0a4dd16cd1c', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sathya (ID: 0d04647a-1e59-41dd-99dd-6222ddde3539) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0d04647a-1e59-41dd-99dd-6222ddde3539';

-- UPDATE MOVIE: Project Almanac (ID: 0d6d147d-3412-47be-aa38-5418d93f1a01)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/l29zswaaga2gzgl', file_size = '1.8 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0d6d147d-3412-47be-aa38-5418d93f1a01';

-- MARK INACTIVE & NOT FOUND: Rudra Simhasanam (ID: 0d08d052-5108-4bb1-a2b5-e54753f47f59) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0d08d052-5108-4bb1-a2b5-e54753f47f59';

-- MARK INACTIVE & NOT FOUND: Wanton Want (ID: 0dde02ad-72f8-4226-bacb-663d4a620eb9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0dde02ad-72f8-4226-bacb-663d4a620eb9';

-- UPDATE MOVIE: Ghabrana Nahi Hai (ID: 0d8774c0-92e4-4b16-893c-27c67e1ba427)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dyuaipu1ukzdlan', file_size = '2.96 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0d8774c0-92e4-4b16-893c-27c67e1ba427';

-- MARK INACTIVE & NOT FOUND: Thiruttu Payale 2 (ID: 0ded7aaa-39be-40ce-b309-095cdf6c8fcf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0ded7aaa-39be-40ce-b309-095cdf6c8fcf';

-- UPDATE MOVIE: Immortal Fist: The Legend of Wing Chun (ID: 0d33e06a-ea98-4243-a081-ffac99709ec5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5evmviooknv2kox', file_size = '717.61 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0d33e06a-ea98-4243-a081-ffac99709ec5';

-- MARK INACTIVE & NOT FOUND: Sheborg Massacre (ID: 0df34c41-5b26-4f88-83b7-d114e3520bf9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0df34c41-5b26-4f88-83b7-d114e3520bf9';

-- UPDATE MOVIE: Teri Meri Gal Ban Gayi (ID: 0de9c24e-2cdc-40ac-8477-63329ec43618)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/sqhiwljh1imtjiy', file_size = '2.41 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0de9c24e-2cdc-40ac-8477-63329ec43618';

-- MARK INACTIVE & NOT FOUND: Consecration (ID: 0dd81a74-0391-4da8-8a4d-03e4e6bd70bd) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0dd81a74-0391-4da8-8a4d-03e4e6bd70bd';

-- MARK INACTIVE & NOT FOUND: Black Cab (ID: 0dd2ab14-ce56-4f73-826d-1c2f014acd04) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0dd2ab14-ce56-4f73-826d-1c2f014acd04';

-- MARK INACTIVE & NOT FOUND: Avengers: Age of Ultron (ID: 0e03f3c5-32f2-4003-a743-07f14fb8ea92) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0e03f3c5-32f2-4003-a743-07f14fb8ea92';

-- LINK CATEGORIES: Avengers: Age of Ultron (['hd', 'action', 'hollywood', 'hindi-dubbed', 'dual-audio', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0e03f3c5-32f2-4003-a743-07f14fb8ea92', 'hd'), ('0e03f3c5-32f2-4003-a743-07f14fb8ea92', 'action'), ('0e03f3c5-32f2-4003-a743-07f14fb8ea92', 'hollywood'), ('0e03f3c5-32f2-4003-a743-07f14fb8ea92', 'hindi-dubbed'), ('0e03f3c5-32f2-4003-a743-07f14fb8ea92', 'dual-audio'), ('0e03f3c5-32f2-4003-a743-07f14fb8ea92', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Devadas (ID: 0df02db8-af57-4222-aead-86605ec7e9cd) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0df02db8-af57-4222-aead-86605ec7e9cd';

-- UPDATE MOVIE: Mission: Chapter 1 (ID: 0e20c512-1617-4b56-83dd-bd8528e725cb)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/2tdep02w8rn_q1s', file_size = '2.78 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0e20c512-1617-4b56-83dd-bd8528e725cb';

-- MARK INACTIVE & NOT FOUND: S.I.S. (ID: 0e431f5d-53b8-4d32-b44f-fbebb0e9abc6) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0e431f5d-53b8-4d32-b44f-fbebb0e9abc6';

-- MARK INACTIVE & NOT FOUND: Rise of the Conqueror (ID: 0e9a820a-3f28-4654-833c-16d4f7fdb03f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0e9a820a-3f28-4654-833c-16d4f7fdb03f';

-- MARK INACTIVE & NOT FOUND: Suraj Pe Mangal Bhari (ID: 0e6a5fe8-0445-4161-97cc-054e16289ddd) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0e6a5fe8-0445-4161-97cc-054e16289ddd';

-- MARK INACTIVE & NOT FOUND: My Boo 2 (ID: 0ec1317b-0a55-4e24-897c-a998e204467b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0ec1317b-0a55-4e24-897c-a998e204467b';

-- MARK INACTIVE & NOT FOUND: Cowboys & Aliens (ID: 0ec7a43f-90a7-4d6a-be82-221e2b5fb048) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0ec7a43f-90a7-4d6a-be82-221e2b5fb048';

-- MARK INACTIVE & NOT FOUND: Sameer (ID: 0e828416-a0a8-4b81-82a4-5ae81243f4e9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0e828416-a0a8-4b81-82a4-5ae81243f4e9';

-- MARK INACTIVE & NOT FOUND: Lady Chatterley's Lover (ID: 0e8419ce-36cc-40a6-bf1b-971d8fe90611) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0e8419ce-36cc-40a6-bf1b-971d8fe90611';

-- UPDATE MOVIE: Barbie: Mermaid Power (ID: 0e89f00c-4df1-48a0-8ed8-693530668641)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/a21oqssnsscnqnd', file_size = '671.63 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0e89f00c-4df1-48a0-8ed8-693530668641';

-- UPDATE MOVIE: WitchStars (ID: 0ea9cbf9-5f67-4caa-952a-aa1aa3c7f74b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5tg_jmnsvw_v_cp', file_size = '1.05 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0ea9cbf9-5f67-4caa-952a-aa1aa3c7f74b';

-- UPDATE MOVIE: The Forever Purge (ID: 0ed65251-8958-4917-bd03-9530de676cc7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/l71qd7mrrkemeiz', file_size = '2.35 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0ed65251-8958-4917-bd03-9530de676cc7';

-- UPDATE MOVIE: Laung Laachi 2 (ID: 0ecb023d-88de-4398-b7d4-8352a069a587)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/mjxge0gkadgmysd', file_size = '1.26 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0ecb023d-88de-4398-b7d4-8352a069a587';

-- MARK INACTIVE & NOT FOUND: The Witch (ID: 0edde7cf-3ccd-4717-a8ce-7dfbc6da0cbe) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0edde7cf-3ccd-4717-a8ce-7dfbc6da0cbe';

-- MARK INACTIVE & NOT FOUND: Sleepy Hollow (ID: 0ee5267f-1e87-4f14-bddb-e2b742adc948) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0ee5267f-1e87-4f14-bddb-e2b742adc948';

-- LINK CATEGORIES: Sleepy Hollow (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0ee5267f-1e87-4f14-bddb-e2b742adc948', 'hindi-dubbed'), ('0ee5267f-1e87-4f14-bddb-e2b742adc948', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Rubaai (ID: 0f2946f3-804c-4882-b926-6ff25628c9d3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f2946f3-804c-4882-b926-6ff25628c9d3';

-- MARK INACTIVE & NOT FOUND: Monsoon Shootout (ID: 0f366a9e-b2d7-4b89-a916-6a26a3020095) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f366a9e-b2d7-4b89-a916-6a26a3020095';

-- MARK INACTIVE & NOT FOUND: Vita & Virginia (ID: 0f55c95e-10b0-432b-950a-cec3e2b058b8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f55c95e-10b0-432b-950a-cec3e2b058b8';

-- MARK INACTIVE & NOT FOUND: Lion (ID: 0f4292fc-1370-4482-b330-6f92b172ac72) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f4292fc-1370-4482-b330-6f92b172ac72';

-- LINK CATEGORIES: Lion (['hd', 'action', 'telugu', 'hindi-dubbed', 'romance', 'drama', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0f4292fc-1370-4482-b330-6f92b172ac72', 'hd'), ('0f4292fc-1370-4482-b330-6f92b172ac72', 'action'), ('0f4292fc-1370-4482-b330-6f92b172ac72', 'telugu'), ('0f4292fc-1370-4482-b330-6f92b172ac72', 'hindi-dubbed'), ('0f4292fc-1370-4482-b330-6f92b172ac72', 'romance'), ('0f4292fc-1370-4482-b330-6f92b172ac72', 'drama'), ('0f4292fc-1370-4482-b330-6f92b172ac72', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Tathastu (ID: 0f49443d-7afd-463c-b21a-354b8c8da5bc) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f49443d-7afd-463c-b21a-354b8c8da5bc';

-- LINK CATEGORIES: Tathastu (['thriller', 'hindi-dubbed', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0f49443d-7afd-463c-b21a-354b8c8da5bc', 'thriller'), ('0f49443d-7afd-463c-b21a-354b8c8da5bc', 'hindi-dubbed'), ('0f49443d-7afd-463c-b21a-354b8c8da5bc', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: A Clockwork Orange (ID: 0f68a310-7783-4f3f-b2d3-f0d1121a3faa) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f68a310-7783-4f3f-b2d3-f0d1121a3faa';

-- MARK INACTIVE & NOT FOUND: Step Dogs (ID: 0f550270-2362-42c7-9299-a792888a0d89) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f550270-2362-42c7-9299-a792888a0d89';

-- UPDATE MOVIE: Watcher (ID: 0f4df58a-e9e7-4c42-960c-9f6dba2b5dc6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/tlh9uyqt511rwqt', file_size = '850.15 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0f4df58a-e9e7-4c42-960c-9f6dba2b5dc6';

-- UPDATE MOVIE: Agent Recon (ID: 0f62a796-b3da-41d2-b00b-a461c1636f53)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/kuqt8dhdq8otc9x', file_size = '1.82 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0f62a796-b3da-41d2-b00b-a461c1636f53';

-- LINK CATEGORIES: Agent Recon (['300mb', 'hindi-dubbed', 'sci-fi', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0f62a796-b3da-41d2-b00b-a461c1636f53', '300mb'), ('0f62a796-b3da-41d2-b00b-a461c1636f53', 'hindi-dubbed'), ('0f62a796-b3da-41d2-b00b-a461c1636f53', 'sci-fi'), ('0f62a796-b3da-41d2-b00b-a461c1636f53', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: X-Men: Apocalypse (ID: 0f60706f-17f3-4445-87ad-ebccf87647ed) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f60706f-17f3-4445-87ad-ebccf87647ed';

-- MARK INACTIVE & NOT FOUND: Effi Briest (ID: 0fafcde4-a4bd-43e8-9e09-0f6062ec3489) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0fafcde4-a4bd-43e8-9e09-0f6062ec3489';

-- MARK INACTIVE & NOT FOUND: Adanga Maru (ID: 0f6eac41-6038-4256-ab06-31f9d7ff8959) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f6eac41-6038-4256-ab06-31f9d7ff8959';

-- MARK INACTIVE & NOT FOUND: Wild 7 (ID: 0f7b88ec-504b-4ead-82f3-36bbe80d949d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f7b88ec-504b-4ead-82f3-36bbe80d949d';

-- UPDATE MOVIE: Crisis (ID: 0f98b1ff-b9b4-46e5-84d4-79d4da61d09c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/h20saia0ct2thoa', file_size = '8.76 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0f98b1ff-b9b4-46e5-84d4-79d4da61d09c';

-- MARK INACTIVE & NOT FOUND: Twin Daggers (ID: 0f98aef1-49d3-4e1d-8a62-0fa8eb102f63) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0f98aef1-49d3-4e1d-8a62-0fa8eb102f63';

-- LINK CATEGORIES: Twin Daggers (['bluray', '300mb', 'hd', 'action', 'hollywood', 'hindi-dubbed', 'dual-audio', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0f98aef1-49d3-4e1d-8a62-0fa8eb102f63', 'bluray'), ('0f98aef1-49d3-4e1d-8a62-0fa8eb102f63', '300mb'), ('0f98aef1-49d3-4e1d-8a62-0fa8eb102f63', 'hd'), ('0f98aef1-49d3-4e1d-8a62-0fa8eb102f63', 'action'), ('0f98aef1-49d3-4e1d-8a62-0fa8eb102f63', 'hollywood'), ('0f98aef1-49d3-4e1d-8a62-0fa8eb102f63', 'hindi-dubbed'), ('0f98aef1-49d3-4e1d-8a62-0fa8eb102f63', 'dual-audio'), ('0f98aef1-49d3-4e1d-8a62-0fa8eb102f63', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: O Brother, Where Art Thou? (ID: 0fc7d5e5-7e01-483f-85f8-dfc50bb6c7d2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/3xwhfqfajyqsqlo', file_size = '941.42 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0fc7d5e5-7e01-483f-85f8-dfc50bb6c7d2';

-- LINK CATEGORIES: O Brother, Where Art Thou? (['300mb', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0fc7d5e5-7e01-483f-85f8-dfc50bb6c7d2', '300mb'), ('0fc7d5e5-7e01-483f-85f8-dfc50bb6c7d2', 'hindi-dubbed'), ('0fc7d5e5-7e01-483f-85f8-dfc50bb6c7d2', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Deadly Descent (ID: 0fd618fb-5c21-42b9-b057-5f9340e1a9de)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/bxudnfhxm3xdftu', file_size = '767.22 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '0fd618fb-5c21-42b9-b057-5f9340e1a9de';

-- MARK INACTIVE & NOT FOUND: The Confession (ID: 10075432-f35a-488c-b258-6ce41672c33e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '10075432-f35a-488c-b258-6ce41672c33e';

-- MARK INACTIVE & NOT FOUND: The Making of One Missed Call: Final (ID: 0ff33cc2-9af7-4609-989b-73b43e873f51) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0ff33cc2-9af7-4609-989b-73b43e873f51';

-- MARK INACTIVE & NOT FOUND: Brother (ID: 0fe0edc5-a58e-4cb1-965b-d64cc6eedd75) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '0fe0edc5-a58e-4cb1-965b-d64cc6eedd75';

-- UPDATE MOVIE: Pogumidam Vegu Thooramillai (ID: 0fd9765c-fb07-45eb-a32c-acd6cf10f788)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/vcaowaqiazqj5b1', file_size = '2.75 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '0fd9765c-fb07-45eb-a32c-acd6cf10f788';

-- LINK CATEGORIES: Pogumidam Vegu Thooramillai (['dual-audio', 'mystery', 'south-hindi-dubbed', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('0fd9765c-fb07-45eb-a32c-acd6cf10f788', 'dual-audio'), ('0fd9765c-fb07-45eb-a32c-acd6cf10f788', 'mystery'), ('0fd9765c-fb07-45eb-a32c-acd6cf10f788', 'south-hindi-dubbed'), ('0fd9765c-fb07-45eb-a32c-acd6cf10f788', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Sing (ID: 1005d88a-b8d2-4cda-b51f-116eb4b0ab2c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/npnj4ssth8qp1tp', file_size = '2.14 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1005d88a-b8d2-4cda-b51f-116eb4b0ab2c';

-- UPDATE MOVIE: Athena (ID: 10415cbf-a1fc-40b2-bc30-d1614d10ee93)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nzizjajfaypyqip', file_size = '652.12 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '10415cbf-a1fc-40b2-bc30-d1614d10ee93';

-- MARK INACTIVE & NOT FOUND: RK/RKAY (ID: 1013bc36-b113-44f3-ae36-5eee81d26677) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1013bc36-b113-44f3-ae36-5eee81d26677';

-- UPDATE MOVIE: Echoes of Fear (ID: 102f91aa-9dca-4d86-a399-17a924d3a592)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/22tls21rhkng1kh', file_size = '1.01 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '102f91aa-9dca-4d86-a399-17a924d3a592';

-- MARK INACTIVE & NOT FOUND: Avenging Angelo (ID: 104e4fc4-07ce-4d99-a3d8-3edf392f41bc) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '104e4fc4-07ce-4d99-a3d8-3edf392f41bc';

-- LINK CATEGORIES: Avenging Angelo (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('104e4fc4-07ce-4d99-a3d8-3edf392f41bc', 'dual-audio'), ('104e4fc4-07ce-4d99-a3d8-3edf392f41bc', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mamachya Govyala Jauya (ID: 10663f1c-28dd-4f23-abd5-fa06c415130b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '10663f1c-28dd-4f23-abd5-fa06c415130b';

-- LINK CATEGORIES: Mamachya Govyala Jauya (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('10663f1c-28dd-4f23-abd5-fa06c415130b', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Dudes & Dragons (ID: 1042cb2c-64f8-42e1-a994-1fb57909e8d4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vehqtuwkailuhoe', file_size = '1.05 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1042cb2c-64f8-42e1-a994-1fb57909e8d4';

-- LINK CATEGORIES: Dudes & Dragons (['dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1042cb2c-64f8-42e1-a994-1fb57909e8d4', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Boarding Gate (ID: 105f1e4c-c70e-4727-964b-dd6c7907891f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '105f1e4c-c70e-4727-964b-dd6c7907891f';

-- LINK CATEGORIES: Boarding Gate (['hollywood', '1080p', 'thriller', '300mb', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('105f1e4c-c70e-4727-964b-dd6c7907891f', 'hollywood'), ('105f1e4c-c70e-4727-964b-dd6c7907891f', '1080p'), ('105f1e4c-c70e-4727-964b-dd6c7907891f', 'thriller'), ('105f1e4c-c70e-4727-964b-dd6c7907891f', '300mb'), ('105f1e4c-c70e-4727-964b-dd6c7907891f', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: All inclusive love (ID: 1092dd38-aacb-4a5c-b8ca-c7fe1969bf85) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1092dd38-aacb-4a5c-b8ca-c7fe1969bf85';

-- UPDATE MOVIE: StreetDance 2 (ID: 105946d8-adb5-47b2-a9f8-d89548332477)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wiz8f6qfipqqdal', file_size = '763.06 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '105946d8-adb5-47b2-a9f8-d89548332477';

-- LINK CATEGORIES: StreetDance 2 (['1080p', 'dual-audio', 'music', 'drama', 'hd', 'bluray', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('105946d8-adb5-47b2-a9f8-d89548332477', '1080p'), ('105946d8-adb5-47b2-a9f8-d89548332477', 'dual-audio'), ('105946d8-adb5-47b2-a9f8-d89548332477', 'music'), ('105946d8-adb5-47b2-a9f8-d89548332477', 'drama'), ('105946d8-adb5-47b2-a9f8-d89548332477', 'hd'), ('105946d8-adb5-47b2-a9f8-d89548332477', 'bluray'), ('105946d8-adb5-47b2-a9f8-d89548332477', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: D-Tox (ID: 109856c1-c37a-4b20-a01a-4bcfd5f3708d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '109856c1-c37a-4b20-a01a-4bcfd5f3708d';

-- UPDATE MOVIE: The Night House (ID: 1064c500-0c05-4443-ba16-731972a6a73a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/oolqbzizclgzl6b', file_size = '930.88 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1064c500-0c05-4443-ba16-731972a6a73a';

-- MARK INACTIVE & NOT FOUND: Venomous (ID: 10b2c5b9-1162-4e20-afa6-8aaf0876920a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '10b2c5b9-1162-4e20-afa6-8aaf0876920a';

-- MARK INACTIVE & NOT FOUND: Animal Attraction: Carnal Desires (ID: 10d7309a-9cc6-4d55-801b-6b4a7585fbe1) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '10d7309a-9cc6-4d55-801b-6b4a7585fbe1';

-- MARK INACTIVE & NOT FOUND: Nenjil Thunivirunthal (ID: 10e1de3a-c2ba-4559-99ef-cc27df7b0e5b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '10e1de3a-c2ba-4559-99ef-cc27df7b0e5b';

-- UPDATE MOVIE: Kalaga Thalaivan (ID: 107f38e1-b7a0-4f02-a337-64e70e66e37d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/acr_wdr9c9q9cea', file_size = '2.21 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '107f38e1-b7a0-4f02-a337-64e70e66e37d';

-- UPDATE MOVIE: Pune Highway (ID: 10e3c066-c37b-4b58-aa01-62a550f335f2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/bfmujulzsztsxux', file_size = '2.5 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '10e3c066-c37b-4b58-aa01-62a550f335f2';

-- LINK CATEGORIES: Pune Highway (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('10e3c066-c37b-4b58-aa01-62a550f335f2', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Coco (ID: 10942fea-2200-4555-8c53-c5ce8a39ef92)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qnyluelmspw1req', file_size = '1.73 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '10942fea-2200-4555-8c53-c5ce8a39ef92';

-- MARK INACTIVE & NOT FOUND: Red Snow (ID: 1089849e-32ee-4029-b7d7-1de5a606b67e) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2265112484)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1089849e-32ee-4029-b7d7-1de5a606b67e';

-- MARK INACTIVE & NOT FOUND: You Were Never Really Here (ID: 10ac9fbf-c950-444e-a652-28a1a2436ba7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '10ac9fbf-c950-444e-a652-28a1a2436ba7';

-- MARK INACTIVE & NOT FOUND: Pyare Mohan (ID: 11275b3a-5f39-4047-ae44-b178498acdb6) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '11275b3a-5f39-4047-ae44-b178498acdb6';

-- LINK CATEGORIES: Pyare Mohan (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('11275b3a-5f39-4047-ae44-b178498acdb6', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mudda 370 J&K (ID: 10fad0dc-8e3b-43ca-a00a-d2d148e86cba) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '10fad0dc-8e3b-43ca-a00a-d2d148e86cba';

-- LINK CATEGORIES: Mudda 370 J&K (['1080p', '300mb', 'action', '720p', 'bollywood', 'drama', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('10fad0dc-8e3b-43ca-a00a-d2d148e86cba', '1080p'), ('10fad0dc-8e3b-43ca-a00a-d2d148e86cba', '300mb'), ('10fad0dc-8e3b-43ca-a00a-d2d148e86cba', 'action'), ('10fad0dc-8e3b-43ca-a00a-d2d148e86cba', '720p'), ('10fad0dc-8e3b-43ca-a00a-d2d148e86cba', 'bollywood'), ('10fad0dc-8e3b-43ca-a00a-d2d148e86cba', 'drama'), ('10fad0dc-8e3b-43ca-a00a-d2d148e86cba', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Wolfman (ID: 11154f65-e607-4747-95f8-5fe4a2276fcd) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '11154f65-e607-4747-95f8-5fe4a2276fcd';

-- UPDATE MOVIE: Arctic Apocalypse (ID: 11055165-7ba5-4743-8b6a-ab2fe5afe147)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/myojrya2icosz_m', file_size = '1.02 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '11055165-7ba5-4743-8b6a-ab2fe5afe147';

-- MARK INACTIVE & NOT FOUND: White Noise (ID: 111bcb9e-8f62-487d-9506-c5b948f43f4b) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2217227380)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '111bcb9e-8f62-487d-9506-c5b948f43f4b';

-- LINK CATEGORIES: White Noise (['hollywood', '1080p', '300mb', 'comedy', 'drama', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('111bcb9e-8f62-487d-9506-c5b948f43f4b', 'hollywood'), ('111bcb9e-8f62-487d-9506-c5b948f43f4b', '1080p'), ('111bcb9e-8f62-487d-9506-c5b948f43f4b', '300mb'), ('111bcb9e-8f62-487d-9506-c5b948f43f4b', 'comedy'), ('111bcb9e-8f62-487d-9506-c5b948f43f4b', 'drama'), ('111bcb9e-8f62-487d-9506-c5b948f43f4b', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Ben-Hur (ID: 112a8a2f-8ffa-4131-a5ec-24eb434824a5) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '112a8a2f-8ffa-4131-a5ec-24eb434824a5';

-- LINK CATEGORIES: Ben-Hur (['hollywood', '1080p', 'dual-audio', '300mb', 'action', 'adventure', 'drama', 'hd', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('112a8a2f-8ffa-4131-a5ec-24eb434824a5', 'hollywood'), ('112a8a2f-8ffa-4131-a5ec-24eb434824a5', '1080p'), ('112a8a2f-8ffa-4131-a5ec-24eb434824a5', 'dual-audio'), ('112a8a2f-8ffa-4131-a5ec-24eb434824a5', '300mb'), ('112a8a2f-8ffa-4131-a5ec-24eb434824a5', 'action'), ('112a8a2f-8ffa-4131-a5ec-24eb434824a5', 'adventure'), ('112a8a2f-8ffa-4131-a5ec-24eb434824a5', 'drama'), ('112a8a2f-8ffa-4131-a5ec-24eb434824a5', 'hd'), ('112a8a2f-8ffa-4131-a5ec-24eb434824a5', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Don't Listen (ID: 113e6590-f1c7-47e6-8fdb-949b54d49bee)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ddyw5hu55thr55a', file_size = '1.81 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '113e6590-f1c7-47e6-8fdb-949b54d49bee';

-- UPDATE MOVIE: Jujutsu Kaisen 0 (ID: 1130c2b5-d373-4f14-9757-86ed4b6b4e62)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/stcexx1vseddoet', file_size = '1.02 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1130c2b5-d373-4f14-9757-86ed4b6b4e62';

-- MARK INACTIVE & NOT FOUND: Generation Gap (ID: 113b9e92-e317-4b71-9948-0c9e9682aaed) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '113b9e92-e317-4b71-9948-0c9e9682aaed';

-- MARK INACTIVE & NOT FOUND: Gurgaon (ID: 113749d5-5aca-49e5-b992-7642c91df165) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '113749d5-5aca-49e5-b992-7642c91df165';

-- MARK INACTIVE & NOT FOUND: Selfless (ID: 114233f4-d578-427c-85a5-164136446898) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '114233f4-d578-427c-85a5-164136446898';

-- LINK CATEGORIES: Selfless (['hollywood', '1080p', 'dual-audio', 'mystery', 'action', 'sci-fi', 'hd', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('114233f4-d578-427c-85a5-164136446898', 'hollywood'), ('114233f4-d578-427c-85a5-164136446898', '1080p'), ('114233f4-d578-427c-85a5-164136446898', 'dual-audio'), ('114233f4-d578-427c-85a5-164136446898', 'mystery'), ('114233f4-d578-427c-85a5-164136446898', 'action'), ('114233f4-d578-427c-85a5-164136446898', 'sci-fi'), ('114233f4-d578-427c-85a5-164136446898', 'hd'), ('114233f4-d578-427c-85a5-164136446898', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Dashmi (ID: 119e1db8-a308-4476-86a9-942607e1115d)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/fgtwf9pryypf0mz', file_size = '2.53 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '119e1db8-a308-4476-86a9-942607e1115d';

-- LINK CATEGORIES: Dashmi (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('119e1db8-a308-4476-86a9-942607e1115d', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: AKA (ID: 11927ee1-3ef4-4733-ad14-072007d20f94)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/pmljmsts1klqgj1', file_size = '2.42 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '11927ee1-3ef4-4733-ad14-072007d20f94';

-- MARK INACTIVE & NOT FOUND: Article 15 (ID: 1183a036-2da5-4cf7-9a73-f54a257f7449) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1183a036-2da5-4cf7-9a73-f54a257f7449';

-- UPDATE MOVIE: Demons Inside Me (ID: 11658fee-e263-4518-bfe0-2e3c3d700b59)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qguf4i4ii39do_0', file_size = '855.56 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '11658fee-e263-4518-bfe0-2e3c3d700b59';

-- UPDATE MOVIE: Rang Rasiya (ID: 11a66a47-9277-41c2-954d-ebf367e9f509)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/fgxug3gxtiu9bz3', file_size = '1016.17 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '11a66a47-9277-41c2-954d-ebf367e9f509';

-- LINK CATEGORIES: Rang Rasiya (['300mb', 'romance', 'biography'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('11a66a47-9277-41c2-954d-ebf367e9f509', '300mb'), ('11a66a47-9277-41c2-954d-ebf367e9f509', 'romance'), ('11a66a47-9277-41c2-954d-ebf367e9f509', 'biography') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Harbinger Down (ID: 11baf016-846e-4fc5-a8aa-a8b8ffc462e6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '11baf016-846e-4fc5-a8aa-a8b8ffc462e6';

-- LINK CATEGORIES: Harbinger Down (['hollywood', '1080p', 'dual-audio', 'horror', 'sci-fi', 'hd', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('11baf016-846e-4fc5-a8aa-a8b8ffc462e6', 'hollywood'), ('11baf016-846e-4fc5-a8aa-a8b8ffc462e6', '1080p'), ('11baf016-846e-4fc5-a8aa-a8b8ffc462e6', 'dual-audio'), ('11baf016-846e-4fc5-a8aa-a8b8ffc462e6', 'horror'), ('11baf016-846e-4fc5-a8aa-a8b8ffc462e6', 'sci-fi'), ('11baf016-846e-4fc5-a8aa-a8b8ffc462e6', 'hd'), ('11baf016-846e-4fc5-a8aa-a8b8ffc462e6', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dus (ID: 11dd5512-c66f-49d1-8531-cdd832c74447) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '11dd5512-c66f-49d1-8531-cdd832c74447';

-- UPDATE MOVIE: Seven Pounds (ID: 11f2e977-730a-4247-8fb9-9c6cd3b34866)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/c0kx9x9lbt0vk33', file_size = '2.29 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '11f2e977-730a-4247-8fb9-9c6cd3b34866';

-- LINK CATEGORIES: Seven Pounds (['dual-audio', 'mystery', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('11f2e977-730a-4247-8fb9-9c6cd3b34866', 'dual-audio'), ('11f2e977-730a-4247-8fb9-9c6cd3b34866', 'mystery'), ('11f2e977-730a-4247-8fb9-9c6cd3b34866', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kai Po Che! (ID: 11d3e1d7-8e55-46be-8b5b-033313d062ee) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '11d3e1d7-8e55-46be-8b5b-033313d062ee';

-- MARK INACTIVE & NOT FOUND: Kshatriya (ID: 122d3b8b-23ae-4e97-8b00-64fcc6c31016) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '122d3b8b-23ae-4e97-8b00-64fcc6c31016';

-- MARK INACTIVE & NOT FOUND: Daman: A Victim of Marital Violence (ID: 12ed60b5-887e-4af5-80f1-ea4932d92139) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '12ed60b5-887e-4af5-80f1-ea4932d92139';

-- LINK CATEGORIES: Daman: A Victim of Marital Violence (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('12ed60b5-887e-4af5-80f1-ea4932d92139', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Aandavan Kattalai (ID: 1303ec28-3f4c-44db-82e4-5d02f131d7c5) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1303ec28-3f4c-44db-82e4-5d02f131d7c5';

-- MARK INACTIVE & NOT FOUND: The White Storm 2: Drug Lords (ID: 13113a8e-822f-4aea-a1d7-daa6aa42e078) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '13113a8e-822f-4aea-a1d7-daa6aa42e078';

-- UPDATE MOVIE: House of the Rising Sun (ID: 123fdf12-30a1-4cba-b76f-0474389f677a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1vin9mitji9jiev', file_size = '943.02 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '123fdf12-30a1-4cba-b76f-0474389f677a';

-- MARK INACTIVE & NOT FOUND: Separation Smackdown (ID: 1319fa41-4970-4704-bd0a-3448bb9e7b99) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1319fa41-4970-4704-bd0a-3448bb9e7b99';

-- LINK CATEGORIES: Separation Smackdown (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1319fa41-4970-4704-bd0a-3448bb9e7b99', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Gulliver Returns (ID: 125e76cd-d356-475d-831b-d7e295f366a0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/0idvi1jdjqnijpu', file_size = '794.87 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '125e76cd-d356-475d-831b-d7e295f366a0';

-- UPDATE MOVIE: Code Name: Tiranga (ID: 13180e64-b83e-4fae-b38e-eb671cd8d690)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hkkhgpgknprgoko', file_size = '2.26 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '13180e64-b83e-4fae-b38e-eb671cd8d690';

-- MARK INACTIVE & NOT FOUND: The Ravine (ID: 12d1a9e6-544f-4c9e-837f-31850583856f) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2243825315)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '12d1a9e6-544f-4c9e-837f-31850583856f';

-- MARK INACTIVE & NOT FOUND: The Jurassic Dead (ID: 126b0403-f930-4630-aa68-4092b6f592ec) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '126b0403-f930-4630-aa68-4092b6f592ec';

-- MARK INACTIVE & NOT FOUND: The Mitchells vs. the Machines (ID: 13435bf5-3ba6-48fa-a56e-35d7d16b095e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '13435bf5-3ba6-48fa-a56e-35d7d16b095e';

-- MARK INACTIVE & NOT FOUND: The Grandmaster (ID: 1359a933-e6bf-4ebf-934c-08de45076afc) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1359a933-e6bf-4ebf-934c-08de45076afc';

-- LINK CATEGORIES: The Grandmaster (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1359a933-e6bf-4ebf-934c-08de45076afc', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Popcorn (ID: 132d9246-de3a-435d-b019-a6598299e87e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lnsndhwnvsenn1s', file_size = '1.93 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '132d9246-de3a-435d-b019-a6598299e87e';

-- UPDATE MOVIE: Gandhi Fer Aa Gea (ID: 131ccb15-56b0-4086-82eb-1f5613a372d2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/r1h1ha1hn9enizi', file_size = '1.23 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '131ccb15-56b0-4086-82eb-1f5613a372d2';

-- UPDATE MOVIE: Ghost Day (ID: 132525f2-f2f1-4ad0-9280-85ad6c38bda3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ufuggupswv8sego', file_size = '1.04 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '132525f2-f2f1-4ad0-9280-85ad6c38bda3';

-- MARK INACTIVE & NOT FOUND: World War Four (ID: 13402c27-5bfa-4154-beaf-eec31c4c79a3) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '13402c27-5bfa-4154-beaf-eec31c4c79a3';

-- MARK INACTIVE & NOT FOUND: Detective Dee and Deep Sea Palace (ID: 135c978b-5e14-468c-ad36-ffb9ac4fc87c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '135c978b-5e14-468c-ad36-ffb9ac4fc87c';

-- UPDATE MOVIE: Gemini Man (ID: 137d2f9d-c63f-49a9-9d61-09246d883bba)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/w7kd3wdkvc6v1wg', file_size = '2.54 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '137d2f9d-c63f-49a9-9d61-09246d883bba';

-- LINK CATEGORIES: Gemini Man (['dual-audio', '300mb', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('137d2f9d-c63f-49a9-9d61-09246d883bba', 'dual-audio'), ('137d2f9d-c63f-49a9-9d61-09246d883bba', '300mb'), ('137d2f9d-c63f-49a9-9d61-09246d883bba', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Life of Pi (ID: 138ffeba-eaac-48a8-823c-c3372dab074f) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '138ffeba-eaac-48a8-823c-c3372dab074f';

-- LINK CATEGORIES: Life of Pi (['1080p', 'dual-audio', 'adventure', 'drama', 'hd', 'bluray', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('138ffeba-eaac-48a8-823c-c3372dab074f', '1080p'), ('138ffeba-eaac-48a8-823c-c3372dab074f', 'dual-audio'), ('138ffeba-eaac-48a8-823c-c3372dab074f', 'adventure'), ('138ffeba-eaac-48a8-823c-c3372dab074f', 'drama'), ('138ffeba-eaac-48a8-823c-c3372dab074f', 'hd'), ('138ffeba-eaac-48a8-823c-c3372dab074f', 'bluray'), ('138ffeba-eaac-48a8-823c-c3372dab074f', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Without a Paddle (ID: 13a213c4-1a7a-435f-8df0-c19eff7fc710) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '13a213c4-1a7a-435f-8df0-c19eff7fc710';

-- LINK CATEGORIES: Without a Paddle (['dual-audio', '300mb', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('13a213c4-1a7a-435f-8df0-c19eff7fc710', 'dual-audio'), ('13a213c4-1a7a-435f-8df0-c19eff7fc710', '300mb'), ('13a213c4-1a7a-435f-8df0-c19eff7fc710', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Tomb Invader (ID: 1371d9db-d316-48bf-9613-49dd7ac6da8a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/yt8n1s_cnn00hh1', file_size = '833.45 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1371d9db-d316-48bf-9613-49dd7ac6da8a';

-- UPDATE MOVIE: Tulsi (ID: 139430e1-c624-4c6c-9cfe-80417908215a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/n4ejq4bmy6wlg3g', file_size = '1.22 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '139430e1-c624-4c6c-9cfe-80417908215a';

-- LINK CATEGORIES: Tulsi (['hollywood', '1080p', 'dual-audio', '300mb', 'drama', 'hd', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('139430e1-c624-4c6c-9cfe-80417908215a', 'hollywood'), ('139430e1-c624-4c6c-9cfe-80417908215a', '1080p'), ('139430e1-c624-4c6c-9cfe-80417908215a', 'dual-audio'), ('139430e1-c624-4c6c-9cfe-80417908215a', '300mb'), ('139430e1-c624-4c6c-9cfe-80417908215a', 'drama'), ('139430e1-c624-4c6c-9cfe-80417908215a', 'hd'), ('139430e1-c624-4c6c-9cfe-80417908215a', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Martian Land (ID: 13a3a389-0182-4d83-8f56-14a7ef37acee)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nppfpdgku8z1d1u', file_size = '1.17 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '13a3a389-0182-4d83-8f56-14a7ef37acee';

-- LINK CATEGORIES: Martian Land (['dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('13a3a389-0182-4d83-8f56-14a7ef37acee', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Yaanai (ID: 13b3c19e-cf29-4562-8a77-a6d63c29231b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '13b3c19e-cf29-4562-8a77-a6d63c29231b';

-- MARK INACTIVE & NOT FOUND: Viduthalai: Part II (ID: 143bedd0-8dab-4494-b6a4-558e388385f0) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '143bedd0-8dab-4494-b6a4-558e388385f0';

-- UPDATE MOVIE: Pathonpatham Noottandu (ID: 13f56fec-eef6-412f-8c68-89b7c457251d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/f1cjpjsp1c6kuqx', file_size = '2.63 GB', status = 'active', updated_at = NOW(), quality = 'WEB-DL' WHERE id = '13f56fec-eef6-412f-8c68-89b7c457251d';

-- MARK INACTIVE & NOT FOUND: Bark Ranger (ID: 141882e1-d5c1-479e-8a34-cb689bde08d3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '141882e1-d5c1-479e-8a34-cb689bde08d3';

-- LINK CATEGORIES: Bark Ranger (['hollywood', '1080p', 'dual-audio', 'family', 'hd', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('141882e1-d5c1-479e-8a34-cb689bde08d3', 'hollywood'), ('141882e1-d5c1-479e-8a34-cb689bde08d3', '1080p'), ('141882e1-d5c1-479e-8a34-cb689bde08d3', 'dual-audio'), ('141882e1-d5c1-479e-8a34-cb689bde08d3', 'family'), ('141882e1-d5c1-479e-8a34-cb689bde08d3', 'hd'), ('141882e1-d5c1-479e-8a34-cb689bde08d3', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Chappie (ID: 13b57c93-8da2-4b50-af9f-5b9d9665a43e) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '13b57c93-8da2-4b50-af9f-5b9d9665a43e';

-- LINK CATEGORIES: Chappie (['hollywood', '1080p', 'dual-audio', '300mb', 'action', 'drama', 'hd', 'crime', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('13b57c93-8da2-4b50-af9f-5b9d9665a43e', 'hollywood'), ('13b57c93-8da2-4b50-af9f-5b9d9665a43e', '1080p'), ('13b57c93-8da2-4b50-af9f-5b9d9665a43e', 'dual-audio'), ('13b57c93-8da2-4b50-af9f-5b9d9665a43e', '300mb'), ('13b57c93-8da2-4b50-af9f-5b9d9665a43e', 'action'), ('13b57c93-8da2-4b50-af9f-5b9d9665a43e', 'drama'), ('13b57c93-8da2-4b50-af9f-5b9d9665a43e', 'hd'), ('13b57c93-8da2-4b50-af9f-5b9d9665a43e', 'crime'), ('13b57c93-8da2-4b50-af9f-5b9d9665a43e', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Chickenhare and the Hamster of Darkness (ID: 13f6b687-3b25-4031-bd83-e23b1ca91624)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/7ak4umkdattba4e', file_size = '793.49 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '13f6b687-3b25-4031-bd83-e23b1ca91624';

-- MARK INACTIVE & NOT FOUND: Call of Heroes (ID: 1458b386-47f9-4d5e-831f-3d6697c15d70) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1458b386-47f9-4d5e-831f-3d6697c15d70';

-- MARK INACTIVE & NOT FOUND: The Cottage (ID: 148a1347-2c2a-495b-962a-25debdcd5cd9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '148a1347-2c2a-495b-962a-25debdcd5cd9';

-- LINK CATEGORIES: The Cottage (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('148a1347-2c2a-495b-962a-25debdcd5cd9', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Rachcha (ID: 146437ec-adb9-4eb0-a7d9-d6f4eaadd47b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/umydsvgygsfyydb', file_size = '2.8 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '146437ec-adb9-4eb0-a7d9-d6f4eaadd47b';

-- LINK CATEGORIES: Rachcha (['1080p', 'dual-audio', 'action', 'south-hindi-dubbed', 'hd', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('146437ec-adb9-4eb0-a7d9-d6f4eaadd47b', '1080p'), ('146437ec-adb9-4eb0-a7d9-d6f4eaadd47b', 'dual-audio'), ('146437ec-adb9-4eb0-a7d9-d6f4eaadd47b', 'action'), ('146437ec-adb9-4eb0-a7d9-d6f4eaadd47b', 'south-hindi-dubbed'), ('146437ec-adb9-4eb0-a7d9-d6f4eaadd47b', 'hd'), ('146437ec-adb9-4eb0-a7d9-d6f4eaadd47b', 'bluray') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Shareek 2 (ID: 14436b9b-5f80-4ce6-b618-9c58c9597871)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jgvaf1xxszggxkz', file_size = '1.05 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '14436b9b-5f80-4ce6-b618-9c58c9597871';

-- MARK INACTIVE & NOT FOUND: iNumber Number: Jozi Gold (ID: 146e55c6-9c78-4464-a0e6-c779901e8414) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '146e55c6-9c78-4464-a0e6-c779901e8414';

-- LINK CATEGORIES: iNumber Number: Jozi Gold (['hollywood', 'dual-audio', '300mb', 'drama', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('146e55c6-9c78-4464-a0e6-c779901e8414', 'hollywood'), ('146e55c6-9c78-4464-a0e6-c779901e8414', 'dual-audio'), ('146e55c6-9c78-4464-a0e6-c779901e8414', '300mb'), ('146e55c6-9c78-4464-a0e6-c779901e8414', 'drama'), ('146e55c6-9c78-4464-a0e6-c779901e8414', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Protege (ID: 146dcd53-11d2-4970-9f5b-6284df09d5b7) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/838966912)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '146dcd53-11d2-4970-9f5b-6284df09d5b7';

-- LINK CATEGORIES: The Protege (['crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('146dcd53-11d2-4970-9f5b-6284df09d5b7', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Toolsidas Junior (ID: 14a728cb-12be-464a-acf0-f9c3e1ea13d4) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/3810457968)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '14a728cb-12be-464a-acf0-f9c3e1ea13d4';

-- LINK CATEGORIES: Toolsidas Junior (['300mb', 'bollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('14a728cb-12be-464a-acf0-f9c3e1ea13d4', '300mb'), ('14a728cb-12be-464a-acf0-f9c3e1ea13d4', 'bollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Ninth Gate (ID: 14b49e6a-3416-4ba2-bac2-a8d1d3adfb5b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '14b49e6a-3416-4ba2-bac2-a8d1d3adfb5b';

-- LINK CATEGORIES: The Ninth Gate (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('14b49e6a-3416-4ba2-bac2-a8d1d3adfb5b', 'dual-audio'), ('14b49e6a-3416-4ba2-bac2-a8d1d3adfb5b', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sethupathi (ID: 14b85c45-176d-49c4-9bad-a80221c8e311) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '14b85c45-176d-49c4-9bad-a80221c8e311';

-- MARK INACTIVE & NOT FOUND: Yuddham Sei (ID: 150e21a5-9a7a-4b08-a55c-8c5ca8096e6f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '150e21a5-9a7a-4b08-a55c-8c5ca8096e6f';

-- LINK CATEGORIES: Yuddham Sei (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('150e21a5-9a7a-4b08-a55c-8c5ca8096e6f', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sarileru Neekevvaru (ID: 14febba8-d5b0-4008-931a-bdac90001e59) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '14febba8-d5b0-4008-931a-bdac90001e59';

-- MARK INACTIVE & NOT FOUND: The Purge: Anarchy (ID: 15393b29-6613-42f9-8b79-cc331b197ea2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '15393b29-6613-42f9-8b79-cc331b197ea2';

-- MARK INACTIVE & NOT FOUND: Gabriel's Rapture: Part I (ID: 153bf006-ebf9-4d41-894a-98d8d6db7680) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '153bf006-ebf9-4d41-894a-98d8d6db7680';

-- MARK INACTIVE & NOT FOUND: Foxcatcher (ID: 152d97bb-d40a-4a6d-bb07-cdd037452abf) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '152d97bb-d40a-4a6d-bb07-cdd037452abf';

-- MARK INACTIVE & NOT FOUND: A Flying Jatt (ID: 14c39fe2-0de2-4510-b571-42ed8c0032fd) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '14c39fe2-0de2-4510-b571-42ed8c0032fd';

-- MARK INACTIVE & NOT FOUND: Paka (ID: 14ebb79c-de9b-4332-a721-25aa40f0d2c1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '14ebb79c-de9b-4332-a721-25aa40f0d2c1';

-- UPDATE MOVIE: Simmer (ID: 14e0f697-3a42-47e3-bf32-7ed57e44d53f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zhwuhe44v_bpnaz', file_size = '828.45 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '14e0f697-3a42-47e3-bf32-7ed57e44d53f';

-- MARK INACTIVE & NOT FOUND: Don Juan (ID: 1587995c-ab03-43c2-bb1c-d56a747fa76b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1587995c-ab03-43c2-bb1c-d56a747fa76b';

-- UPDATE MOVIE: The Signature (ID: 1561315a-3822-4ae5-ba7b-2a2acac8829a)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/mb15mg21kxme9u6', file_size = '1.94 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1561315a-3822-4ae5-ba7b-2a2acac8829a';

-- MARK INACTIVE & NOT FOUND: Tom Clancy's Without Remorse (ID: 15acf74d-f20a-4e5c-8961-7af9b16f32c5) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '15acf74d-f20a-4e5c-8961-7af9b16f32c5';

-- MARK INACTIVE & NOT FOUND: 8 Thottakkal (ID: 15590803-383d-4711-85d7-2a3fc25ce500) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '15590803-383d-4711-85d7-2a3fc25ce500';

-- MARK INACTIVE & NOT FOUND: Arundhati (ID: 15ad2ace-f8e4-4df2-9a5e-5759bfde2190) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '15ad2ace-f8e4-4df2-9a5e-5759bfde2190';

-- MARK INACTIVE & NOT FOUND: Gangs of Madras (ID: 159f8e33-652a-4fc7-a2a4-68491bc6c9f3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '159f8e33-652a-4fc7-a2a4-68491bc6c9f3';

-- MARK INACTIVE & NOT FOUND: Double Team (ID: 15a2be99-8e41-446e-9eeb-48b8fc2fc7cb) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '15a2be99-8e41-446e-9eeb-48b8fc2fc7cb';

-- LINK CATEGORIES: Double Team (['dual-audio', 'comedy', 'sci-fi', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('15a2be99-8e41-446e-9eeb-48b8fc2fc7cb', 'dual-audio'), ('15a2be99-8e41-446e-9eeb-48b8fc2fc7cb', 'comedy'), ('15a2be99-8e41-446e-9eeb-48b8fc2fc7cb', 'sci-fi'), ('15a2be99-8e41-446e-9eeb-48b8fc2fc7cb', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sher Shivaji (ID: 15cb6759-18a6-4024-bce2-78d5174c5690) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '15cb6759-18a6-4024-bce2-78d5174c5690';

-- LINK CATEGORIES: Sher Shivaji (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('15cb6759-18a6-4024-bce2-78d5174c5690', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Hit and Run (ID: 15a9f093-5431-4f5a-a54a-84857c60e9f3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1_brqgxzejjxxql', file_size = '2 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '15a9f093-5431-4f5a-a54a-84857c60e9f3';

-- MARK INACTIVE & NOT FOUND: Chaos (ID: 160db9c7-a9a5-4815-b07e-bdaca657e457) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '160db9c7-a9a5-4815-b07e-bdaca657e457';

-- LINK CATEGORIES: Chaos (['dual-audio', '300mb', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('160db9c7-a9a5-4815-b07e-bdaca657e457', 'dual-audio'), ('160db9c7-a9a5-4815-b07e-bdaca657e457', '300mb'), ('160db9c7-a9a5-4815-b07e-bdaca657e457', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Curse of Turandot (ID: 15d0cbfb-8cd0-41c3-a9af-885c558d087a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/tw1xx0ma0aw6tyk', file_size = '1.71 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '15d0cbfb-8cd0-41c3-a9af-885c558d087a';

-- MARK INACTIVE & NOT FOUND: 53 Mu Panu (ID: 16354cc2-64e0-4b0b-bc19-35e6808497c2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '16354cc2-64e0-4b0b-bc19-35e6808497c2';

-- UPDATE MOVIE: Sass Meri Ne Munda Jameya (ID: 15cfa410-8ffd-4e3e-a3f4-c90d55233b94)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/akhgxosrswheavz', file_size = '2.13 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '15cfa410-8ffd-4e3e-a3f4-c90d55233b94';

-- UPDATE MOVIE: Roberrt (ID: 15fa2946-5e5a-485f-a930-143d5533a957)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ytra9u9y_1nayyr', file_size = '3.02 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '15fa2946-5e5a-485f-a930-143d5533a957';

-- MARK INACTIVE & NOT FOUND: The Spy: Undercover Operation (ID: 15f10bd2-3814-4abb-975b-70dac3c77664) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '15f10bd2-3814-4abb-975b-70dac3c77664';

-- MARK INACTIVE & NOT FOUND: Michael Jackson: Searching for Neverland (ID: 16a8b939-bf8e-4d29-9729-b639c560e4ea) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '16a8b939-bf8e-4d29-9729-b639c560e4ea';

-- MARK INACTIVE & NOT FOUND: 8 x 10 Tasveer (ID: 162aa921-2304-4091-bd3d-de4223dc968d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '162aa921-2304-4091-bd3d-de4223dc968d';

-- LINK CATEGORIES: 8 x 10 Tasveer (['drama', 'fantasy', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('162aa921-2304-4091-bd3d-de4223dc968d', 'drama'), ('162aa921-2304-4091-bd3d-de4223dc968d', 'fantasy'), ('162aa921-2304-4091-bd3d-de4223dc968d', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Loveyatri (ID: 1669ffab-fdbf-40c5-b10e-06dece92139e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1669ffab-fdbf-40c5-b10e-06dece92139e';

-- MARK INACTIVE & NOT FOUND: Munich (ID: 16d460f3-a99c-4dd2-97ee-51afab88a4c1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '16d460f3-a99c-4dd2-97ee-51afab88a4c1';

-- MARK INACTIVE & NOT FOUND: The Legend Of Aqua Witch (ID: 166e1ddd-ef14-4c05-844d-e82dc9f45281) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '166e1ddd-ef14-4c05-844d-e82dc9f45281';

-- UPDATE MOVIE: Thunderball (ID: 16cd6c7a-b203-4e26-a8dd-10ce5ef50079)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/eeydsrsanlpr0fa', file_size = '1.14 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '16cd6c7a-b203-4e26-a8dd-10ce5ef50079';

-- LINK CATEGORIES: Thunderball (['1080p', 'dual-audio', 'thriller', 'action', 'adventure', 'hd', 'bluray', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('16cd6c7a-b203-4e26-a8dd-10ce5ef50079', '1080p'), ('16cd6c7a-b203-4e26-a8dd-10ce5ef50079', 'dual-audio'), ('16cd6c7a-b203-4e26-a8dd-10ce5ef50079', 'thriller'), ('16cd6c7a-b203-4e26-a8dd-10ce5ef50079', 'action'), ('16cd6c7a-b203-4e26-a8dd-10ce5ef50079', 'adventure'), ('16cd6c7a-b203-4e26-a8dd-10ce5ef50079', 'hd'), ('16cd6c7a-b203-4e26-a8dd-10ce5ef50079', 'bluray'), ('16cd6c7a-b203-4e26-a8dd-10ce5ef50079', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The General's Daughter (ID: 169652dd-44d1-4225-bc9c-a24f436d03d7) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '169652dd-44d1-4225-bc9c-a24f436d03d7';

-- LINK CATEGORIES: The General's Daughter (['dual-audio', 'bluray', 'drama', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('169652dd-44d1-4225-bc9c-a24f436d03d7', 'dual-audio'), ('169652dd-44d1-4225-bc9c-a24f436d03d7', 'bluray'), ('169652dd-44d1-4225-bc9c-a24f436d03d7', 'drama'), ('169652dd-44d1-4225-bc9c-a24f436d03d7', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: West Side Story (ID: 16d937da-7365-42a7-8cff-b2bef1dd8c20)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/33ib5mphdsvvp5a', file_size = '2.99 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '16d937da-7365-42a7-8cff-b2bef1dd8c20';

-- MARK INACTIVE & NOT FOUND: Polladhavan (ID: 16f51922-ccb8-411e-b430-91eae58e53e1) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/935948344)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '16f51922-ccb8-411e-b430-91eae58e53e1';

-- LINK CATEGORIES: Polladhavan (['300mb', 'south-hindi-dubbed', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('16f51922-ccb8-411e-b430-91eae58e53e1', '300mb'), ('16f51922-ccb8-411e-b430-91eae58e53e1', 'south-hindi-dubbed'), ('16f51922-ccb8-411e-b430-91eae58e53e1', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Bestseller (ID: 175744f6-a6a8-4ee2-a465-589e93ffb5d8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '175744f6-a6a8-4ee2-a465-589e93ffb5d8';

-- LINK CATEGORIES: Bestseller (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('175744f6-a6a8-4ee2-a465-589e93ffb5d8', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Assassins Run (ID: 16f85f04-7461-4968-8179-bf3c00737aa6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '16f85f04-7461-4968-8179-bf3c00737aa6';

-- MARK INACTIVE & NOT FOUND: Iraivi (ID: 171bc5f2-bf81-464f-8dc6-356e0e574888) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '171bc5f2-bf81-464f-8dc6-356e0e574888';

-- LINK CATEGORIES: Iraivi (['south-hindi-dubbed', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('171bc5f2-bf81-464f-8dc6-356e0e574888', 'south-hindi-dubbed'), ('171bc5f2-bf81-464f-8dc6-356e0e574888', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Striving for Freedom (ID: 17063cdd-319a-41d2-b66e-6f050261032c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/plknkqy1q_71blk', file_size = '1.23 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '17063cdd-319a-41d2-b66e-6f050261032c';

-- MARK INACTIVE & NOT FOUND: Dave Chappelle: The Closer (ID: 174c630a-510e-4e68-937d-5080e6c49ee0) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/525888677)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '174c630a-510e-4e68-937d-5080e6c49ee0';

-- UPDATE MOVIE: 2022 Tsunami (ID: 17740f25-acbd-4ae5-a756-80a249b77c52)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/smaatccmlmbalab', file_size = '974.06 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '17740f25-acbd-4ae5-a756-80a249b77c52';

-- LINK CATEGORIES: 2022 Tsunami (['hollywood', 'dual-audio', '300mb', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('17740f25-acbd-4ae5-a756-80a249b77c52', 'hollywood'), ('17740f25-acbd-4ae5-a756-80a249b77c52', 'dual-audio'), ('17740f25-acbd-4ae5-a756-80a249b77c52', '300mb'), ('17740f25-acbd-4ae5-a756-80a249b77c52', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Doctor Strange in the Multiverse of Madness (ID: 17b7f3cc-45a3-4b94-9287-3db9ade2babd) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '17b7f3cc-45a3-4b94-9287-3db9ade2babd';

-- MARK INACTIVE & NOT FOUND: Periya Thambi (ID: 17b2dbbf-9e0b-46bf-9df0-400e435cd4cf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '17b2dbbf-9e0b-46bf-9df0-400e435cd4cf';

-- LINK CATEGORIES: Periya Thambi (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('17b2dbbf-9e0b-46bf-9df0-400e435cd4cf', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Cell 211 (ID: 17ce6280-b775-46fe-82af-5b7cfca21fe9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '17ce6280-b775-46fe-82af-5b7cfca21fe9';

-- UPDATE MOVIE: All Is Lost (ID: 17d254d8-5b69-49f0-8583-f1b0ba1b3d1a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/u8ks6cn47w1q71c', file_size = '1.79 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '17d254d8-5b69-49f0-8583-f1b0ba1b3d1a';

-- UPDATE MOVIE: Empire State (ID: 17d1f0ef-e1ee-4b47-89c1-4de869d6cedf)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/eez14pe2zpevyns', file_size = '1.93 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '17d1f0ef-e1ee-4b47-89c1-4de869d6cedf';

-- MARK INACTIVE & NOT FOUND: Vishwamitra (ID: 17ed042c-4b20-43b8-b0cd-ffe31e226205) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '17ed042c-4b20-43b8-b0cd-ffe31e226205';

-- LINK CATEGORIES: Vishwamitra (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('17ed042c-4b20-43b8-b0cd-ffe31e226205', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Rocky Handsome (ID: 17a103fc-b4f3-4261-982e-09a071bd7b02) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '17a103fc-b4f3-4261-982e-09a071bd7b02';

-- LINK CATEGORIES: Rocky Handsome (['300mb', 'thriller', '1080p', 'hd', 'action', 'bollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('17a103fc-b4f3-4261-982e-09a071bd7b02', '300mb'), ('17a103fc-b4f3-4261-982e-09a071bd7b02', 'thriller'), ('17a103fc-b4f3-4261-982e-09a071bd7b02', '1080p'), ('17a103fc-b4f3-4261-982e-09a071bd7b02', 'hd'), ('17a103fc-b4f3-4261-982e-09a071bd7b02', 'action'), ('17a103fc-b4f3-4261-982e-09a071bd7b02', 'bollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Pirates of the Caribbean: Dead Man's Chest (ID: 1778e9d1-eeb4-43e2-8d86-db2540127bf8) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1778e9d1-eeb4-43e2-8d86-db2540127bf8';

-- LINK CATEGORIES: Pirates of the Caribbean: Dead Man's Chest (['300mb', '720p', 'dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1778e9d1-eeb4-43e2-8d86-db2540127bf8', '300mb'), ('1778e9d1-eeb4-43e2-8d86-db2540127bf8', '720p'), ('1778e9d1-eeb4-43e2-8d86-db2540127bf8', 'dual-audio'), ('1778e9d1-eeb4-43e2-8d86-db2540127bf8', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Zebra Lounge (ID: 18160080-bb0a-4df7-8575-dc46fde2012a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '18160080-bb0a-4df7-8575-dc46fde2012a';

-- MARK INACTIVE & NOT FOUND: ExPatriot (ID: 17e13020-b204-4958-874c-d29e36dd63e7) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '17e13020-b204-4958-874c-d29e36dd63e7';

-- MARK INACTIVE & NOT FOUND: Prati Roju Pandaage (ID: 181f7d15-b3f2-4cbe-a580-eea3d7b0a8bd) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '181f7d15-b3f2-4cbe-a580-eea3d7b0a8bd';

-- LINK CATEGORIES: Prati Roju Pandaage (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('181f7d15-b3f2-4cbe-a580-eea3d7b0a8bd', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Trilogy (ID: 18323a92-c834-4966-a8af-781163e5a2b2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '18323a92-c834-4966-a8af-781163e5a2b2';

-- LINK CATEGORIES: Trilogy (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('18323a92-c834-4966-a8af-781163e5a2b2', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: NieR:Automata FAN FESTIVAL 12022: Voices from the Verge (ID: 183f0a2a-2819-4f26-b03b-dc7334faaa28) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '183f0a2a-2819-4f26-b03b-dc7334faaa28';

-- LINK CATEGORIES: NieR:Automata FAN FESTIVAL 12022: Voices from the Verge (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('183f0a2a-2819-4f26-b03b-dc7334faaa28', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Karkhanisanchi Waari (ID: 180ed8da-8728-49a4-9574-68adfce5c566) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '180ed8da-8728-49a4-9574-68adfce5c566';

-- UPDATE MOVIE: Die by the Sword (ID: 17e452ff-88ee-4603-b5a9-49a81db6ae41)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/k40tngtfvkt144d', file_size = '970.47 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '17e452ff-88ee-4603-b5a9-49a81db6ae41';

-- UPDATE MOVIE: Yoga Hosers (ID: 1804609d-06b7-4715-b3a0-191340a1a61c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/08m021u0cttsa10', file_size = '835.78 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1804609d-06b7-4715-b3a0-191340a1a61c';

-- MARK INACTIVE & NOT FOUND: Underworld: Blood Wars (ID: 1844bf74-7898-4e77-8a7c-58fd1184c7ff) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1844bf74-7898-4e77-8a7c-58fd1184c7ff';

-- MARK INACTIVE & NOT FOUND: The Matador (ID: 189abc32-ef8a-4189-a6bd-7bdd8224ae3e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '189abc32-ef8a-4189-a6bd-7bdd8224ae3e';

-- LINK CATEGORIES: The Matador (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('189abc32-ef8a-4189-a6bd-7bdd8224ae3e', 'dual-audio'), ('189abc32-ef8a-4189-a6bd-7bdd8224ae3e', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kala azar (ID: 18f479d9-fd34-45b7-9da0-2acb284db618) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '18f479d9-fd34-45b7-9da0-2acb284db618';

-- MARK INACTIVE & NOT FOUND: Veedevadu (ID: 18f96d5c-15a5-41a6-ab06-39f460409e21) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '18f96d5c-15a5-41a6-ab06-39f460409e21';

-- LINK CATEGORIES: Veedevadu (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('18f96d5c-15a5-41a6-ab06-39f460409e21', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: M.S. Dhoni: The Untold Story (ID: 192220e4-ce63-479e-9c76-86819a1fb1f1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '192220e4-ce63-479e-9c76-86819a1fb1f1';

-- LINK CATEGORIES: M.S. Dhoni: The Untold Story (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('192220e4-ce63-479e-9c76-86819a1fb1f1', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Baazi (ID: 19368f78-4823-4843-889c-ed544187600c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '19368f78-4823-4843-889c-ed544187600c';

-- LINK CATEGORIES: Baazi (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('19368f78-4823-4843-889c-ed544187600c', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The House on Haunted Grounds (ID: 1948cc4f-7eab-4c3e-a2a0-1ea622a84c17) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1948cc4f-7eab-4c3e-a2a0-1ea622a84c17';

-- MARK INACTIVE & NOT FOUND: IIFA Awards (ID: 18c8f74e-0fe8-4224-a80e-e614dea45bb7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '18c8f74e-0fe8-4224-a80e-e614dea45bb7';

-- MARK INACTIVE & NOT FOUND: Cousins (ID: 192b7c18-2650-4cb4-996c-be4e7354e5ae) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '192b7c18-2650-4cb4-996c-be4e7354e5ae';

-- MARK INACTIVE & NOT FOUND: Devaki Nandana Vasudeva (ID: 196a27b6-90db-4e40-890b-a8afc6db669b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '196a27b6-90db-4e40-890b-a8afc6db669b';

-- UPDATE MOVIE: Restart the Earth (ID: 18b69e24-daff-4310-87c9-493768a7b382)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kpe80fm8gkyxdgp', file_size = '838.4 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '18b69e24-daff-4310-87c9-493768a7b382';

-- MARK INACTIVE & NOT FOUND: Sivudu (ID: 18f2c660-b679-4486-a470-e9b6a393656b) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/2103182498)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '18f2c660-b679-4486-a470-e9b6a393656b';

-- MARK INACTIVE & NOT FOUND: Acts of Violence (ID: 194c3b60-bc64-49f4-8477-aea8ecc7a483) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '194c3b60-bc64-49f4-8477-aea8ecc7a483';

-- UPDATE MOVIE: The Blackout Experiment (ID: 194ce8ea-b0ba-44e8-8663-37b2d0972fe3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kf6lbttthlk11xg', file_size = '923.81 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '194ce8ea-b0ba-44e8-8663-37b2d0972fe3';

-- UPDATE MOVIE: Grease 2 (ID: 19d42afa-4d53-4efd-8a8a-6ad61d637eed)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/m212r4wg666mce1', file_size = '2.07 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '19d42afa-4d53-4efd-8a8a-6ad61d637eed';

-- LINK CATEGORIES: Grease 2 (['300mb', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('19d42afa-4d53-4efd-8a8a-6ad61d637eed', '300mb'), ('19d42afa-4d53-4efd-8a8a-6ad61d637eed', 'dual-audio'), ('19d42afa-4d53-4efd-8a8a-6ad61d637eed', 'bluray') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Buddha: The Great Departure (ID: 198d6322-ed1f-4f92-a24b-edc52dde43a3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/drji91jpndgfkai', file_size = '1.94 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '198d6322-ed1f-4f92-a24b-edc52dde43a3';

-- MARK INACTIVE & NOT FOUND: Action 3D (ID: 19db9f3d-ea08-4f24-889f-3f1cb31edc23) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '19db9f3d-ea08-4f24-889f-3f1cb31edc23';

-- MARK INACTIVE & NOT FOUND: Ishqeria (ID: 198686d1-b29d-4e30-a6ae-89845ec78d1d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '198686d1-b29d-4e30-a6ae-89845ec78d1d';

-- MARK INACTIVE & NOT FOUND: Werewolf in Bangkok (ID: 197cde16-487c-47b5-b132-b6bff8d03973) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '197cde16-487c-47b5-b132-b6bff8d03973';

-- LINK CATEGORIES: Werewolf in Bangkok (['hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('197cde16-487c-47b5-b132-b6bff8d03973', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Undisputed III: Redemption (ID: 1a3daa11-b267-40f4-afd9-85a711ed99b8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a3daa11-b267-40f4-afd9-85a711ed99b8';

-- MARK INACTIVE & NOT FOUND: Jeene Nahi Doonga 2 (ID: 19f4274b-561a-4c38-9df5-d7815f4cdc4e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '19f4274b-561a-4c38-9df5-d7815f4cdc4e';

-- LINK CATEGORIES: Jeene Nahi Doonga 2 (['1080p', 'hd', 'action', 'romance', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('19f4274b-561a-4c38-9df5-d7815f4cdc4e', '1080p'), ('19f4274b-561a-4c38-9df5-d7815f4cdc4e', 'hd'), ('19f4274b-561a-4c38-9df5-d7815f4cdc4e', 'action'), ('19f4274b-561a-4c38-9df5-d7815f4cdc4e', 'romance'), ('19f4274b-561a-4c38-9df5-d7815f4cdc4e', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Contagion (ID: 1a428694-9641-44b4-9ace-2a8955aaade1) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a428694-9641-44b4-9ace-2a8955aaade1';

-- LINK CATEGORIES: Contagion (['300mb', 'thriller', 'drama', 'hd', '1080p', 'action', 'sci-fi', 'dual-audio', 'hollywood', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1a428694-9641-44b4-9ace-2a8955aaade1', '300mb'), ('1a428694-9641-44b4-9ace-2a8955aaade1', 'thriller'), ('1a428694-9641-44b4-9ace-2a8955aaade1', 'drama'), ('1a428694-9641-44b4-9ace-2a8955aaade1', 'hd'), ('1a428694-9641-44b4-9ace-2a8955aaade1', '1080p'), ('1a428694-9641-44b4-9ace-2a8955aaade1', 'action'), ('1a428694-9641-44b4-9ace-2a8955aaade1', 'sci-fi'), ('1a428694-9641-44b4-9ace-2a8955aaade1', 'dual-audio'), ('1a428694-9641-44b4-9ace-2a8955aaade1', 'hollywood'), ('1a428694-9641-44b4-9ace-2a8955aaade1', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Jhalle Pai Gaye Palle (ID: 1a1a8e8b-b752-49b3-8984-3bf77d76808c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a1a8e8b-b752-49b3-8984-3bf77d76808c';

-- MARK INACTIVE & NOT FOUND: Rudra Garuda Purana (ID: 1a4590a0-c51b-4693-b72d-1db1a23e97f3) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a4590a0-c51b-4693-b72d-1db1a23e97f3';

-- MARK INACTIVE & NOT FOUND: Balupu (ID: 1a553f02-00f7-4736-b855-c567d78d4b74) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a553f02-00f7-4736-b855-c567d78d4b74';

-- MARK INACTIVE & NOT FOUND: Billy Elliot (ID: 1a7a960f-d7e9-419d-a467-5bdd29bcaaa3) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a7a960f-d7e9-419d-a467-5bdd29bcaaa3';

-- MARK INACTIVE & NOT FOUND: Nine 1/2 Weeks (ID: 1a85545a-2df0-4987-81ef-07c637dfacbe) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a85545a-2df0-4987-81ef-07c637dfacbe';

-- MARK INACTIVE & NOT FOUND: Rough Night (ID: 1a0cd259-319d-42ef-80b0-532c20008952) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a0cd259-319d-42ef-80b0-532c20008952';

-- UPDATE MOVIE: The Pickup (ID: 1a9aec2c-9a80-4352-ab11-8681f4a4457e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/uuxdghddadhxudr', file_size = '2.11 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1a9aec2c-9a80-4352-ab11-8681f4a4457e';

-- LINK CATEGORIES: The Pickup (['dual-audio', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1a9aec2c-9a80-4352-ab11-8681f4a4457e', 'dual-audio'), ('1a9aec2c-9a80-4352-ab11-8681f4a4457e', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Tik/Croc (ID: 1ade8542-45f5-4af2-b996-22b21cdc9547) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1ade8542-45f5-4af2-b996-22b21cdc9547';

-- LINK CATEGORIES: Tik/Croc (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1ade8542-45f5-4af2-b996-22b21cdc9547', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Did You Hear About the Morgans? (ID: 19f1cc60-6f77-4d3a-bc9f-37410b8ec398) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '19f1cc60-6f77-4d3a-bc9f-37410b8ec398';

-- LINK CATEGORIES: Did You Hear About the Morgans? (['300mb', 'dual-audio', 'bluray', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('19f1cc60-6f77-4d3a-bc9f-37410b8ec398', '300mb'), ('19f1cc60-6f77-4d3a-bc9f-37410b8ec398', 'dual-audio'), ('19f1cc60-6f77-4d3a-bc9f-37410b8ec398', 'bluray'), ('19f1cc60-6f77-4d3a-bc9f-37410b8ec398', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: X-Men: First Class 35mm Special (ID: 1b143f13-1263-4fdc-baf8-d711bc93ec46) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1b143f13-1263-4fdc-baf8-d711bc93ec46';

-- MARK INACTIVE & NOT FOUND: Death Race: Inferno (ID: 1b22702b-62b2-4a3a-bb74-118846ec20ef) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1b22702b-62b2-4a3a-bb74-118846ec20ef';

-- MARK INACTIVE & NOT FOUND: The Tournament (ID: 1a935a90-b570-4cee-92c3-7f7697e41d0b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a935a90-b570-4cee-92c3-7f7697e41d0b';

-- LINK CATEGORIES: The Tournament (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1a935a90-b570-4cee-92c3-7f7697e41d0b', 'dual-audio'), ('1a935a90-b570-4cee-92c3-7f7697e41d0b', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Haunting of Morella (ID: 1b620feb-23ed-4728-a691-df6e8b10c297) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1b620feb-23ed-4728-a691-df6e8b10c297';

-- MARK INACTIVE & NOT FOUND: Suck Me Shakespeer (ID: 1a520a5e-3571-4057-856f-6346627b7da6) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1a520a5e-3571-4057-856f-6346627b7da6';

-- UPDATE MOVIE: Zombie Reddy (ID: 1ae18aee-47ef-4f9b-968c-92a62222fbcc)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/xu1v4vsrekzs4xg', file_size = '2.38 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1ae18aee-47ef-4f9b-968c-92a62222fbcc';

-- MARK INACTIVE & NOT FOUND: Tango & Cash (ID: 1b6a6981-4c0a-4b2b-9c28-9f5bcc5fa652) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1b6a6981-4c0a-4b2b-9c28-9f5bcc5fa652';

-- MARK INACTIVE & NOT FOUND: Vaaranam Aayiram (ID: 1b82d4d3-233f-46e7-9595-64d9ac4bf59f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1b82d4d3-233f-46e7-9595-64d9ac4bf59f';

-- MARK INACTIVE & NOT FOUND: Marainthirunthu Paarkum Marmam Enna (ID: 1adf71e9-fc1e-46ba-985f-471839997df7) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1adf71e9-fc1e-46ba-985f-471839997df7';

-- MARK INACTIVE & NOT FOUND: Lethal Weapon 4 (ID: 1b385e92-b9b9-4f05-80b4-99b10a3cfd3b) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1b385e92-b9b9-4f05-80b4-99b10a3cfd3b';

-- LINK CATEGORIES: Lethal Weapon 4 (['300mb', 'dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1b385e92-b9b9-4f05-80b4-99b10a3cfd3b', '300mb'), ('1b385e92-b9b9-4f05-80b4-99b10a3cfd3b', 'dual-audio'), ('1b385e92-b9b9-4f05-80b4-99b10a3cfd3b', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Kick-Ass (ID: 1b8349fb-e157-4b10-990b-d16384d51645)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qqrinqaoz3oihqr', file_size = '1.69 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1b8349fb-e157-4b10-990b-d16384d51645';

-- MARK INACTIVE & NOT FOUND: Dha Dha 87 (ID: 1bc54287-5b17-43b4-b794-f9f390237152) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1bc54287-5b17-43b4-b794-f9f390237152';

-- UPDATE MOVIE: The Punished (ID: 1b959396-066d-472d-8486-da95f3207e78)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rsldvud4lllusu1', file_size = '881.05 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1b959396-066d-472d-8486-da95f3207e78';

-- MARK INACTIVE & NOT FOUND: Phone Bhoot (ID: 1bcf9b63-a728-46ec-a546-284fae61f1b8) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1bcf9b63-a728-46ec-a546-284fae61f1b8';

-- MARK INACTIVE & NOT FOUND: Raja Cheyyi Vesthe (ID: 1be31971-c6af-4b09-a92a-cd54a5959e73) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1be31971-c6af-4b09-a92a-cd54a5959e73';

-- MARK INACTIVE & NOT FOUND: Dead Man's Cards (ID: 1c417bae-e0c7-4635-bbf8-c21034951476) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1c417bae-e0c7-4635-bbf8-c21034951476';

-- LINK CATEGORIES: Dead Man's Cards (['action', 'dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1c417bae-e0c7-4635-bbf8-c21034951476', 'action'), ('1c417bae-e0c7-4635-bbf8-c21034951476', 'dual-audio'), ('1c417bae-e0c7-4635-bbf8-c21034951476', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Baaki Itihaas (ID: 1c5c4c7e-1f16-43aa-8fb7-6936132b165d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1c5c4c7e-1f16-43aa-8fb7-6936132b165d';

-- LINK CATEGORIES: Baaki Itihaas (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1c5c4c7e-1f16-43aa-8fb7-6936132b165d', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mr. Go (ID: 1bf0631c-3165-41b9-8bb0-afa58af33c02) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1056211640)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1bf0631c-3165-41b9-8bb0-afa58af33c02';

-- UPDATE MOVIE: Patriots Day (ID: 1c3c2c75-a77c-4589-b8bb-35aa563878f1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/cvwbwyirrtwrjzy', file_size = '1.15 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1c3c2c75-a77c-4589-b8bb-35aa563878f1';

-- MARK INACTIVE & NOT FOUND: King Arthur: Legend of the Sword (ID: 1c690c8d-be6b-4425-8f74-13b654d8bb68) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1c690c8d-be6b-4425-8f74-13b654d8bb68';

-- MARK INACTIVE & NOT FOUND: Kiraathaka (ID: 1c53bae7-7514-4f5d-9d13-0a9b6d2b7543) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1c53bae7-7514-4f5d-9d13-0a9b6d2b7543';

-- LINK CATEGORIES: Kiraathaka (['300mb', '720p', 'kannada', 'comedy', '1080p', 'drama', 'hd', 'dual-audio', 'south-hindi-dubbed', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', '300mb'), ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', '720p'), ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', 'kannada'), ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', 'comedy'), ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', '1080p'), ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', 'drama'), ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', 'hd'), ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', 'dual-audio'), ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', 'south-hindi-dubbed'), ('1c53bae7-7514-4f5d-9d13-0a9b6d2b7543', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Last Action Hero (ID: 1c6b26c0-1fee-48da-9592-6a5815ca5920)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/h3eboohoh5wgl3o', file_size = '1.29 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1c6b26c0-1fee-48da-9592-6a5815ca5920';

-- LINK CATEGORIES: Last Action Hero (['dual-audio', 'bluray', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1c6b26c0-1fee-48da-9592-6a5815ca5920', 'dual-audio'), ('1c6b26c0-1fee-48da-9592-6a5815ca5920', 'bluray'), ('1c6b26c0-1fee-48da-9592-6a5815ca5920', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Hitchhiker's Guide to the Galaxy (ID: 1c9c0ac7-92f0-4958-bb07-9e81e69540ad)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/_du3rtrffs4bbbr', file_size = '795.21 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1c9c0ac7-92f0-4958-bb07-9e81e69540ad';

-- LINK CATEGORIES: The Hitchhiker's Guide to the Galaxy (['300mb', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1c9c0ac7-92f0-4958-bb07-9e81e69540ad', '300mb'), ('1c9c0ac7-92f0-4958-bb07-9e81e69540ad', 'dual-audio'), ('1c9c0ac7-92f0-4958-bb07-9e81e69540ad', 'bluray') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Mega Shark vs. Crocosaurus (ID: 1ca5c607-2956-446a-8774-fb639b9f8637)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/c5xza3vkyfbyxjf', file_size = '953.05 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1ca5c607-2956-446a-8774-fb639b9f8637';

-- LINK CATEGORIES: Mega Shark vs. Crocosaurus (['300mb', 'adventure', 'dual-audio', 'bluray', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1ca5c607-2956-446a-8774-fb639b9f8637', '300mb'), ('1ca5c607-2956-446a-8774-fb639b9f8637', 'adventure'), ('1ca5c607-2956-446a-8774-fb639b9f8637', 'dual-audio'), ('1ca5c607-2956-446a-8774-fb639b9f8637', 'bluray'), ('1ca5c607-2956-446a-8774-fb639b9f8637', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Maahir (ID: 1cd0698f-841d-470a-ac2c-fe4a9df177cb) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1cd0698f-841d-470a-ac2c-fe4a9df177cb';

-- UPDATE MOVIE: Rubikon (ID: 1ce1f748-70f6-4462-9ca3-270a40756448)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5zapzxpa51qxaab', file_size = '955.95 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1ce1f748-70f6-4462-9ca3-270a40756448';

-- MARK INACTIVE & NOT FOUND: Journey of Love 18+ (ID: 1cf9f8ad-5c45-408a-8026-ac6fefc7a166) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1cf9f8ad-5c45-408a-8026-ac6fefc7a166';

-- MARK INACTIVE & NOT FOUND: Aiyaary (ID: 1d1aa16b-e291-4f6c-9a23-56cfed2aabb6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1d1aa16b-e291-4f6c-9a23-56cfed2aabb6';

-- MARK INACTIVE & NOT FOUND: Gali Gali Chor Hai (ID: 1d2de1bf-717b-4338-b7a5-f20c8505381d) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1d2de1bf-717b-4338-b7a5-f20c8505381d';

-- MARK INACTIVE & NOT FOUND: The Other Me (ID: 1d26f0d8-6930-4063-9b75-f974bc735573) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1d26f0d8-6930-4063-9b75-f974bc735573';

-- MARK INACTIVE & NOT FOUND: Axe Giant: The Wrath of Paul Bunyan (ID: 1d2e1307-f97e-4950-bf3c-aeeb2c2a374c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1d2e1307-f97e-4950-bf3c-aeeb2c2a374c';

-- MARK INACTIVE & NOT FOUND: The Last Hope: U-Boat 864 (ID: 1d8e688a-c9f6-4149-86cd-403f30ecb26e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1d8e688a-c9f6-4149-86cd-403f30ecb26e';

-- LINK CATEGORIES: The Last Hope: U-Boat 864 (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1d8e688a-c9f6-4149-86cd-403f30ecb26e', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: WWE WrestleMania 37: Night 1 Kickoff (ID: 1d919ab2-0832-4436-af98-db6e2789e98b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1d919ab2-0832-4436-af98-db6e2789e98b';

-- UPDATE MOVIE: India Lockdown (ID: 1d5ba7a2-db4c-46ab-b08a-5c64e37deedb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ftikauggy5sa4y5', file_size = '2.15 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1d5ba7a2-db4c-46ab-b08a-5c64e37deedb';

-- MARK INACTIVE & NOT FOUND: Fidaa (ID: 1d60715c-2e97-49a7-a592-7dd87f134b8a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1d60715c-2e97-49a7-a592-7dd87f134b8a';

-- LINK CATEGORIES: Fidaa (['hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1d60715c-2e97-49a7-a592-7dd87f134b8a', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Raduaa (ID: 1d822c44-2127-4dc4-b355-c9bce38f6b94)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1gisc98iwirh91i', file_size = '2.43 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1d822c44-2127-4dc4-b355-c9bce38f6b94';

-- MARK INACTIVE & NOT FOUND: Nenu.. Sailaja... (ID: 1d948571-4b37-400b-9ee8-e840da1de5a4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1d948571-4b37-400b-9ee8-e840da1de5a4';

-- MARK INACTIVE & NOT FOUND: One Day: Justice Delivered (ID: 1d919bee-1a89-4071-9a4b-10452ed70aad) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1d919bee-1a89-4071-9a4b-10452ed70aad';

-- LINK CATEGORIES: One Day: Justice Delivered (['300mb', 'crime', 'thriller', '1080p', 'hd', 'action', 'bollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1d919bee-1a89-4071-9a4b-10452ed70aad', '300mb'), ('1d919bee-1a89-4071-9a4b-10452ed70aad', 'crime'), ('1d919bee-1a89-4071-9a4b-10452ed70aad', 'thriller'), ('1d919bee-1a89-4071-9a4b-10452ed70aad', '1080p'), ('1d919bee-1a89-4071-9a4b-10452ed70aad', 'hd'), ('1d919bee-1a89-4071-9a4b-10452ed70aad', 'action'), ('1d919bee-1a89-4071-9a4b-10452ed70aad', 'bollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: People You May Know (ID: 1d9b23d5-a064-49ca-9b20-caa8f9b12c46)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wediq1bj54g1bdr', file_size = '886.43 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1d9b23d5-a064-49ca-9b20-caa8f9b12c46';

-- LINK CATEGORIES: People You May Know (['300mb', 'comedy', '1080p', 'drama', 'hd', 'dual-audio', 'hollywood', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1d9b23d5-a064-49ca-9b20-caa8f9b12c46', '300mb'), ('1d9b23d5-a064-49ca-9b20-caa8f9b12c46', 'comedy'), ('1d9b23d5-a064-49ca-9b20-caa8f9b12c46', '1080p'), ('1d9b23d5-a064-49ca-9b20-caa8f9b12c46', 'drama'), ('1d9b23d5-a064-49ca-9b20-caa8f9b12c46', 'hd'), ('1d9b23d5-a064-49ca-9b20-caa8f9b12c46', 'dual-audio'), ('1d9b23d5-a064-49ca-9b20-caa8f9b12c46', 'hollywood'), ('1d9b23d5-a064-49ca-9b20-caa8f9b12c46', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Curse of Valburga (ID: 1d9ede2c-e161-4cfc-bebd-e24ba040e3c9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/py4lcsddcgipwlu', file_size = '992.61 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1d9ede2c-e161-4cfc-bebd-e24ba040e3c9';

-- MARK INACTIVE & NOT FOUND: Abulele (ID: 1da56065-8738-4e8b-b261-c4f77cb7d65c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1da56065-8738-4e8b-b261-c4f77cb7d65c';

-- LINK CATEGORIES: Abulele (['300mb', 'adventure', 'family', '1080p', 'hd', 'dual-audio', 'animation', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1da56065-8738-4e8b-b261-c4f77cb7d65c', '300mb'), ('1da56065-8738-4e8b-b261-c4f77cb7d65c', 'adventure'), ('1da56065-8738-4e8b-b261-c4f77cb7d65c', 'family'), ('1da56065-8738-4e8b-b261-c4f77cb7d65c', '1080p'), ('1da56065-8738-4e8b-b261-c4f77cb7d65c', 'hd'), ('1da56065-8738-4e8b-b261-c4f77cb7d65c', 'dual-audio'), ('1da56065-8738-4e8b-b261-c4f77cb7d65c', 'animation'), ('1da56065-8738-4e8b-b261-c4f77cb7d65c', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sadda Adda (ID: 1db00bc3-e2c9-4466-b9d6-2d9b9ac4e71e) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1db00bc3-e2c9-4466-b9d6-2d9b9ac4e71e';

-- LINK CATEGORIES: Sadda Adda (['300mb', 'comedy', '1080p', 'drama', 'bollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1db00bc3-e2c9-4466-b9d6-2d9b9ac4e71e', '300mb'), ('1db00bc3-e2c9-4466-b9d6-2d9b9ac4e71e', 'comedy'), ('1db00bc3-e2c9-4466-b9d6-2d9b9ac4e71e', '1080p'), ('1db00bc3-e2c9-4466-b9d6-2d9b9ac4e71e', 'drama'), ('1db00bc3-e2c9-4466-b9d6-2d9b9ac4e71e', 'bollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Lady of Csejte (ID: 1db3ea99-5c35-462f-b343-762771c75feb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ez2hr1ohn0rezrm', file_size = '946.38 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1db3ea99-5c35-462f-b343-762771c75feb';

-- MARK INACTIVE & NOT FOUND: Urumi (ID: 1df42ef9-09d3-4f48-ab8a-f8ca4e74dee5) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1df42ef9-09d3-4f48-ab8a-f8ca4e74dee5';

-- MARK INACTIVE & NOT FOUND: Crack 6T (ID: 1dca13f6-2d4e-4c32-bb86-796c08d6b397) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1dca13f6-2d4e-4c32-bb86-796c08d6b397';

-- MARK INACTIVE & NOT FOUND: Belzebuth (ID: 1df520d6-dd37-4b43-be89-1c1aa8cfa796) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1df520d6-dd37-4b43-be89-1c1aa8cfa796';

-- MARK INACTIVE & NOT FOUND: The 5th Wave (ID: 1dce81f8-f12f-4d7d-aec6-8eb7a4f71910) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1dce81f8-f12f-4d7d-aec6-8eb7a4f71910';

-- MARK INACTIVE & NOT FOUND: Overdrive (ID: 1dcb1882-8934-4cfb-b1dc-f2c758c5fd7f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1dcb1882-8934-4cfb-b1dc-f2c758c5fd7f';

-- LINK CATEGORIES: Overdrive (['thriller', '1080p', 'hd', 'action', 'dual-audio', 'hollywood', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1dcb1882-8934-4cfb-b1dc-f2c758c5fd7f', 'thriller'), ('1dcb1882-8934-4cfb-b1dc-f2c758c5fd7f', '1080p'), ('1dcb1882-8934-4cfb-b1dc-f2c758c5fd7f', 'hd'), ('1dcb1882-8934-4cfb-b1dc-f2c758c5fd7f', 'action'), ('1dcb1882-8934-4cfb-b1dc-f2c758c5fd7f', 'dual-audio'), ('1dcb1882-8934-4cfb-b1dc-f2c758c5fd7f', 'hollywood'), ('1dcb1882-8934-4cfb-b1dc-f2c758c5fd7f', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Shiv Shastri Balboa (ID: 1df60bef-8397-49cd-abea-507bd31ef929) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1df60bef-8397-49cd-abea-507bd31ef929';

-- UPDATE MOVIE: Villu (ID: 1dc82a24-4716-49a8-823d-af43ce0a9b87)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/huq8ayu7uuahhew', file_size = '1.49 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1dc82a24-4716-49a8-823d-af43ce0a9b87';

-- LINK CATEGORIES: Villu (['thriller', 'dual-audio', 'south-hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1dc82a24-4716-49a8-823d-af43ce0a9b87', 'thriller'), ('1dc82a24-4716-49a8-823d-af43ce0a9b87', 'dual-audio'), ('1dc82a24-4716-49a8-823d-af43ce0a9b87', 'south-hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dracula Sir (ID: 1e07ac0d-bf6e-428e-965b-4c6784943cf5) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1e07ac0d-bf6e-428e-965b-4c6784943cf5';

-- UPDATE MOVIE: Dhruva (ID: 1df8a077-7a7c-4b54-8ae2-69dfd5be7d2b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wfrig6a6zfcwfaa', file_size = '1.57 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1df8a077-7a7c-4b54-8ae2-69dfd5be7d2b';

-- UPDATE MOVIE: Dinosaur World (ID: 1e06d802-0d52-45e9-9c6c-928910b89a3f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/h81tc9u_xthn91u', file_size = '877.26 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1e06d802-0d52-45e9-9c6c-928910b89a3f';

-- UPDATE MOVIE: Tuesdays And Fridays (ID: 1e00d2d1-e61e-4230-9e8a-2366fcf2dbc9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zm1kwrqmo1noazk', file_size = '732.62 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1e00d2d1-e61e-4230-9e8a-2366fcf2dbc9';

-- UPDATE MOVIE: You Got Served (ID: 1e1b86c5-28ba-4300-8fc1-de810630d598)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/z55i5nnffqqfl81', file_size = '828.65 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1e1b86c5-28ba-4300-8fc1-de810630d598';

-- LINK CATEGORIES: You Got Served (['300mb', 'dual-audio', 'bluray', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1e1b86c5-28ba-4300-8fc1-de810630d598', '300mb'), ('1e1b86c5-28ba-4300-8fc1-de810630d598', 'dual-audio'), ('1e1b86c5-28ba-4300-8fc1-de810630d598', 'bluray'), ('1e1b86c5-28ba-4300-8fc1-de810630d598', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Naai Sekar Returns (ID: 1e2283b9-a635-4a4f-9d32-d6e32c6d2fa1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/fh61fpf6f1kou6o', file_size = '2.63 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1e2283b9-a635-4a4f-9d32-d6e32c6d2fa1';

-- MARK INACTIVE & NOT FOUND: Your Heart Will Be Broken (ID: 1e439fd6-ef9a-4e1b-b5b0-dfb3b9087d46) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1e439fd6-ef9a-4e1b-b5b0-dfb3b9087d46';

-- MARK INACTIVE & NOT FOUND: Captain Underpants: The First Epic Movie (ID: 1e1dceb8-b51e-4a1a-ae4c-62c74daffa55) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1e1dceb8-b51e-4a1a-ae4c-62c74daffa55';

-- MARK INACTIVE & NOT FOUND: Charlie and the Chocolate Factory (ID: 1e5fdaa7-a955-4e33-994e-420bb447d4c4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1e5fdaa7-a955-4e33-994e-420bb447d4c4';

-- UPDATE MOVIE: The Valet (ID: 1e213676-2541-48c9-ba93-ddccb48cc20e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qufjuv5uqgbl5f7', file_size = '1.06 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1e213676-2541-48c9-ba93-ddccb48cc20e';

-- MARK INACTIVE & NOT FOUND: Thiruchitrambalam (ID: 1e3e185b-0bd3-416f-bee8-8008bb9074c6) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1e3e185b-0bd3-416f-bee8-8008bb9074c6';

-- MARK INACTIVE & NOT FOUND: The Tall Target (ID: 1e772e70-65d0-468a-9c42-7a46c4c6a2a7) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1e772e70-65d0-468a-9c42-7a46c4c6a2a7';

-- UPDATE MOVIE: The Overnight (ID: 1e322a9a-d1f4-4dd0-a838-97b7f94c200b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/gcg3ej4tp_1tdij', file_size = '795.09 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1e322a9a-d1f4-4dd0-a838-97b7f94c200b';

-- MARK INACTIVE & NOT FOUND: Kingsman: The Secret Service (ID: 1e5a51b4-68fa-49a0-86d1-8bda1a079cff) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1e5a51b4-68fa-49a0-86d1-8bda1a079cff';

-- MARK INACTIVE & NOT FOUND: Kurradu (ID: 1ee269b9-d96a-4b85-a034-d78528c74611) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1ee269b9-d96a-4b85-a034-d78528c74611';

-- LINK CATEGORIES: Kurradu (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1ee269b9-d96a-4b85-a034-d78528c74611', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Savarakathi (ID: 1ea51b69-08a6-4262-b46a-ece10ca02cff) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1ea51b69-08a6-4262-b46a-ece10ca02cff';

-- UPDATE MOVIE: Shaadi Karke Phas Gaya Yaar (ID: 1ed040e7-7e85-442e-ac9f-1a22e95ccf09)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hs2xmiimke7bn7k', file_size = '1.23 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1ed040e7-7e85-442e-ac9f-1a22e95ccf09';

-- LINK CATEGORIES: Shaadi Karke Phas Gaya Yaar (['300mb', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1ed040e7-7e85-442e-ac9f-1a22e95ccf09', '300mb'), ('1ed040e7-7e85-442e-ac9f-1a22e95ccf09', 'comedy') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Lady of the Damned Forest (ID: 1ee06279-48c0-41c3-b1bc-56b6276b5b3f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/uh7ojacyjayoyjy', file_size = '1.05 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1ee06279-48c0-41c3-b1bc-56b6276b5b3f';

-- MARK INACTIVE & NOT FOUND: PSV Garuda Vega (ID: 1f0511fe-728b-4629-9ee7-e798441f6ea2) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1f0511fe-728b-4629-9ee7-e798441f6ea2';

-- MARK INACTIVE & NOT FOUND: The Apology (ID: 1e909d04-f831-48a9-ad49-df8d8d6ed856) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/1720455956)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1e909d04-f831-48a9-ad49-df8d8d6ed856';

-- MARK INACTIVE & NOT FOUND: When Obama Loved Osama (ID: 1f21df23-ce78-42f3-abd7-f7819c58ae1c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1f21df23-ce78-42f3-abd7-f7819c58ae1c';

-- UPDATE MOVIE: Odiyan (ID: 1f0e0081-b1fd-4bde-82a1-9d17fb38c8b3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/-utl1oxvvyv-noo', file_size = '1.47 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1f0e0081-b1fd-4bde-82a1-9d17fb38c8b3';

-- UPDATE MOVIE: Blackmark (ID: 1f10048e-2891-40cf-a8b3-ab8423d4ae0e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/mmxzemjwqjzzmmz', file_size = '887.94 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1f10048e-2891-40cf-a8b3-ab8423d4ae0e';

-- MARK INACTIVE & NOT FOUND: Dark Woods II (ID: 1f369fe6-3134-4459-8408-740b79520d22) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1f369fe6-3134-4459-8408-740b79520d22';

-- LINK CATEGORIES: Dark Woods II (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1f369fe6-3134-4459-8408-740b79520d22', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Insidious Inferno (ID: 1f7c27b9-5adb-4e6a-8296-eec35aadf334) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1f7c27b9-5adb-4e6a-8296-eec35aadf334';

-- MARK INACTIVE & NOT FOUND: Mike & Nick & Nick & Alice (ID: 1f7faf9e-294b-4856-848f-69cc08c5d397) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1f7faf9e-294b-4856-848f-69cc08c5d397';

-- UPDATE MOVIE: It Came from the Desert (ID: 1f4d7455-83be-400e-b14a-fdf8e9189705)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5o5jh11t51tokkh', file_size = '1.77 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1f4d7455-83be-400e-b14a-fdf8e9189705';

-- LINK CATEGORIES: It Came from the Desert (['300mb', 'hollywood', 'bluray', 'hindi-dubbed', 'hd', 'adventure', '1080p', 'dual-audio', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1f4d7455-83be-400e-b14a-fdf8e9189705', '300mb'), ('1f4d7455-83be-400e-b14a-fdf8e9189705', 'hollywood'), ('1f4d7455-83be-400e-b14a-fdf8e9189705', 'bluray'), ('1f4d7455-83be-400e-b14a-fdf8e9189705', 'hindi-dubbed'), ('1f4d7455-83be-400e-b14a-fdf8e9189705', 'hd'), ('1f4d7455-83be-400e-b14a-fdf8e9189705', 'adventure'), ('1f4d7455-83be-400e-b14a-fdf8e9189705', '1080p'), ('1f4d7455-83be-400e-b14a-fdf8e9189705', 'dual-audio'), ('1f4d7455-83be-400e-b14a-fdf8e9189705', 'action') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: How the Grinch Stole Christmas (ID: 1f4cbe12-4f6b-4114-a871-1362624caea4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/llzt_lmsgz_ikks', file_size = '1.93 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1f4cbe12-4f6b-4114-a871-1362624caea4';

-- LINK CATEGORIES: How the Grinch Stole Christmas (['300mb', 'bluray', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1f4cbe12-4f6b-4114-a871-1362624caea4', '300mb'), ('1f4cbe12-4f6b-4114-a871-1362624caea4', 'bluray'), ('1f4cbe12-4f6b-4114-a871-1362624caea4', 'hindi-dubbed'), ('1f4cbe12-4f6b-4114-a871-1362624caea4', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: If Beale Street Could Talk (ID: 1f988956-89ef-4b6e-a949-8a06906bf21a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vma118ii6vi2ij3', file_size = '2.35 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1f988956-89ef-4b6e-a949-8a06906bf21a';

-- MARK INACTIVE & NOT FOUND: The Umbrella Man (ID: 1fac5af2-2b17-4803-904b-e7f49bbd409d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1fac5af2-2b17-4803-904b-e7f49bbd409d';

-- LINK CATEGORIES: The Umbrella Man (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('1fac5af2-2b17-4803-904b-e7f49bbd409d', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Oka Romantic Crime Katha (ID: 1f649494-a950-49e6-a94a-892f1a77db7c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1f649494-a950-49e6-a94a-892f1a77db7c';

-- MARK INACTIVE & NOT FOUND: The White Haired Witch of Lunar Kingdom (ID: 1f2e544e-f3fd-4f06-bbba-cf4ab579c015) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1f2e544e-f3fd-4f06-bbba-cf4ab579c015';

-- MARK INACTIVE & NOT FOUND: Enemmy (ID: 1fa5da3c-7801-44c7-ac80-d8928b0b7779) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1fa5da3c-7801-44c7-ac80-d8928b0b7779';

-- MARK INACTIVE & NOT FOUND: Zone 414 (ID: 1f9908b2-bb76-4ce7-8487-054e694a38f2) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/904370757)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1f9908b2-bb76-4ce7-8487-054e694a38f2';

-- UPDATE MOVIE: Fatherhood (ID: 1fd583b0-94fe-4e21-903b-04b28b80be4a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/2ecq72pb0uqueat', file_size = '2.17 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '1fd583b0-94fe-4e21-903b-04b28b80be4a';

-- MARK INACTIVE & NOT FOUND: Realms of Blood (ID: 1ffdadba-9acd-401a-8c44-c07674e8cbdb) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1ffdadba-9acd-401a-8c44-c07674e8cbdb';

-- MARK INACTIVE & NOT FOUND: Jinn (ID: 1fd477c8-e250-4384-a59e-fd193e44f803) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1fd477c8-e250-4384-a59e-fd193e44f803';

-- MARK INACTIVE & NOT FOUND: Crocodile Island (ID: 1fcb4f98-f620-41ef-819d-282e6588584a) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/1844100905)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '1fcb4f98-f620-41ef-819d-282e6588584a';

-- UPDATE MOVIE: Son of God (ID: 1fe0b2a9-dc80-4881-956e-c8e00874748b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1c0abvwvc9uapvv', file_size = '2.7 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1fe0b2a9-dc80-4881-956e-c8e00874748b';

-- MARK INACTIVE & NOT FOUND: Kuthuoosi (ID: 2014d743-6809-4071-80d5-40a96f14b37d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2014d743-6809-4071-80d5-40a96f14b37d';

-- LINK CATEGORIES: Kuthuoosi (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2014d743-6809-4071-80d5-40a96f14b37d', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: 28 Days Later: The Aftermath – Stage 1: Development (ID: 202349c7-8c68-4228-8225-121219c87eea) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '202349c7-8c68-4228-8225-121219c87eea';

-- MARK INACTIVE & NOT FOUND: Desamlo Dongalu Paddaru (ID: 200d66db-28e3-42c3-855b-92b852839762) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '200d66db-28e3-42c3-855b-92b852839762';

-- UPDATE MOVIE: Woh 3 Din (ID: 2013acfb-82c5-43ec-8e88-6f7235146dd3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/q7bkawdbpbkaxdd', file_size = '1.65 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '2013acfb-82c5-43ec-8e88-6f7235146dd3';

-- UPDATE MOVIE: White Hot (ID: 1ff3e3d4-d23d-41f9-ab31-6006f672ff6b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/r4dd0d1jz1pqjux', file_size = '936.66 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '1ff3e3d4-d23d-41f9-ab31-6006f672ff6b';

-- UPDATE MOVIE: The Doorman (ID: 2005fed1-ba00-4c8f-b227-2a31bd36b282)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wvggq1r1ln40rno', file_size = '926.95 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2005fed1-ba00-4c8f-b227-2a31bd36b282';

-- MARK INACTIVE & NOT FOUND: Sonchiriya (ID: 202c139e-75bd-4462-9faa-35e162d6d8dd) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '202c139e-75bd-4462-9faa-35e162d6d8dd';

-- UPDATE MOVIE: Saina (ID: 202c6db6-41b7-4506-8c60-f04c54a21615)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/bebxgbbrrprbhor', file_size = '1.67 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '202c6db6-41b7-4506-8c60-f04c54a21615';

-- UPDATE MOVIE: Gangster Gangaraju (ID: 20348e16-0fc0-480c-96d6-3adf6e4e5ee1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/yl1vyzmyi39ykv6', file_size = '2.35 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '20348e16-0fc0-480c-96d6-3adf6e4e5ee1';

-- MARK INACTIVE & NOT FOUND: Virtual Revolution (ID: 20b1b47b-d2d0-4ce5-b242-3f7e75762788) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '20b1b47b-d2d0-4ce5-b242-3f7e75762788';

-- MARK INACTIVE & NOT FOUND: Shubh Mangal Saavdhan (ID: 203cc032-ba15-4181-a739-d5f444840eee) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '203cc032-ba15-4181-a739-d5f444840eee';

-- UPDATE MOVIE: Mr. Local (ID: 20790653-e8ec-4b97-ad5c-165744765f03)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zjpwt5cp1deprdx', file_size = '2.61 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '20790653-e8ec-4b97-ad5c-165744765f03';

-- MARK INACTIVE & NOT FOUND: Khamiyaza (ID: 2052c4f2-cda5-4539-a995-2e9761ab61bb) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2052c4f2-cda5-4539-a995-2e9761ab61bb';

-- MARK INACTIVE & NOT FOUND: Pineapple Express (ID: 20dd3a22-f095-478d-84ce-b4429068f11a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '20dd3a22-f095-478d-84ce-b4429068f11a';

-- LINK CATEGORIES: Pineapple Express (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('20dd3a22-f095-478d-84ce-b4429068f11a', 'hindi-dubbed'), ('20dd3a22-f095-478d-84ce-b4429068f11a', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Aravinda Sametha Veera Raghava (ID: 20fea543-66bc-40ef-a4e0-fcf411519a2e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '20fea543-66bc-40ef-a4e0-fcf411519a2e';

-- UPDATE MOVIE: Raiders of the Lost Ark (ID: 20f5ee9d-5cfb-487f-9dd8-9e68739abfb8)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/i2quwdyyyymtydf', file_size = '2.4 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '20f5ee9d-5cfb-487f-9dd8-9e68739abfb8';

-- LINK CATEGORIES: Raiders of the Lost Ark (['300mb', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('20f5ee9d-5cfb-487f-9dd8-9e68739abfb8', '300mb'), ('20f5ee9d-5cfb-487f-9dd8-9e68739abfb8', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kidnap (ID: 20f5b804-d9d0-49b6-b561-635290b8ea67) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '20f5b804-d9d0-49b6-b561-635290b8ea67';

-- UPDATE MOVIE: Pawankhind (ID: 2104e8a6-53fb-4e35-9e9d-3895240ea7a7)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/lvxmf7xx7xhfffo', file_size = '2.82 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2104e8a6-53fb-4e35-9e9d-3895240ea7a7';

-- MARK INACTIVE & NOT FOUND: The Science of Sleep (ID: 215f65be-d412-4fbe-afd7-0f6384a2e8b2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '215f65be-d412-4fbe-afd7-0f6384a2e8b2';

-- MARK INACTIVE & NOT FOUND: Maruthi Nagar Subramanyam (ID: 2189a09d-6955-4e7a-901b-341bd32b9e27) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2189a09d-6955-4e7a-901b-341bd32b9e27';

-- LINK CATEGORIES: Maruthi Nagar Subramanyam (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2189a09d-6955-4e7a-901b-341bd32b9e27', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Nishana (ID: 20eda214-d66f-4fb6-af78-f5956a3e6b77)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pqfsvwsfscj_hcg', file_size = '1.3 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '20eda214-d66f-4fb6-af78-f5956a3e6b77';

-- UPDATE MOVIE: Two Tails (ID: 210ef19b-478c-474f-be90-8547355ab8f0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wvq__mfrerg1cfh', file_size = '701.3 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '210ef19b-478c-474f-be90-8547355ab8f0';

-- MARK INACTIVE & NOT FOUND: Stars & Bars (ID: 219f636f-147f-471c-aa1a-8948a0d0e253) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '219f636f-147f-471c-aa1a-8948a0d0e253';

-- LINK CATEGORIES: Stars & Bars (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('219f636f-147f-471c-aa1a-8948a0d0e253', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Only Way Out (ID: 21316674-5eee-482b-bbfe-f7f4ee51934f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '21316674-5eee-482b-bbfe-f7f4ee51934f';

-- MARK INACTIVE & NOT FOUND: Pokémon the Movie: Secrets of the Jungle (ID: 21d461f4-d2d2-4674-b859-b37660360a73) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '21d461f4-d2d2-4674-b859-b37660360a73';

-- MARK INACTIVE & NOT FOUND: Champions (ID: 218ee50c-a2f5-43f5-a5c1-6efdd095a840) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '218ee50c-a2f5-43f5-a5c1-6efdd095a840';

-- UPDATE MOVIE: Fauji calling (ID: 215896a3-3b70-4a9b-9c61-5d7bb678220e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/a0ekh0igwmwblii', file_size = '1 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '215896a3-3b70-4a9b-9c61-5d7bb678220e';

-- MARK INACTIVE & NOT FOUND: WWE Payback 2014 (ID: 21e41a3c-b50c-421a-b8ff-b4cf5112d842) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '21e41a3c-b50c-421a-b8ff-b4cf5112d842';

-- UPDATE MOVIE: Rangi Taranga (ID: 21c742a0-e189-4b6c-a896-bfaf593ee974)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/0li0r5jiglmgajz', file_size = '2.94 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '21c742a0-e189-4b6c-a896-bfaf593ee974';

-- MARK INACTIVE & NOT FOUND: Okja (ID: 21e893d3-1b96-4838-b614-a0ce0319bd28) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '21e893d3-1b96-4838-b614-a0ce0319bd28';

-- MARK INACTIVE & NOT FOUND: The Five-Year Engagement (ID: 21a82d7b-dcc5-4fb1-a183-9fa75ef36520) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '21a82d7b-dcc5-4fb1-a183-9fa75ef36520';

-- LINK CATEGORIES: The Five-Year Engagement (['hollywood', 'hindi-dubbed', 'hd', 'dual-audio', 'romance', '1080p', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('21a82d7b-dcc5-4fb1-a183-9fa75ef36520', 'hollywood'), ('21a82d7b-dcc5-4fb1-a183-9fa75ef36520', 'hindi-dubbed'), ('21a82d7b-dcc5-4fb1-a183-9fa75ef36520', 'hd'), ('21a82d7b-dcc5-4fb1-a183-9fa75ef36520', 'dual-audio'), ('21a82d7b-dcc5-4fb1-a183-9fa75ef36520', 'romance'), ('21a82d7b-dcc5-4fb1-a183-9fa75ef36520', '1080p'), ('21a82d7b-dcc5-4fb1-a183-9fa75ef36520', 'comedy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Arima Nambi (ID: 21d862b4-459e-495a-98ee-6b9580e16116) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '21d862b4-459e-495a-98ee-6b9580e16116';

-- MARK INACTIVE & NOT FOUND: Almost Pyaar with DJ Mohabbat (ID: 21d999d0-c315-4fdb-9709-0f574dbf431b) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '21d999d0-c315-4fdb-9709-0f574dbf431b';

-- MARK INACTIVE & NOT FOUND: Harkara (ID: 21e524eb-8bfa-4680-9eb3-a77cf7600aa8) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '21e524eb-8bfa-4680-9eb3-a77cf7600aa8';

-- MARK INACTIVE & NOT FOUND: 3 Idiots (ID: 223895d4-5bdb-4aa3-b544-fe3198b1579c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '223895d4-5bdb-4aa3-b544-fe3198b1579c';

-- LINK CATEGORIES: 3 Idiots (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('223895d4-5bdb-4aa3-b544-fe3198b1579c', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Tumhari Sulu (ID: 21fad971-00e2-4090-a8b4-2077b2226830) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '21fad971-00e2-4090-a8b4-2077b2226830';

-- MARK INACTIVE & NOT FOUND: Shivaji Surathkal 2: Mysterious case of Maayavi (ID: 227402e3-d2a0-4f29-a724-d115c2084ffe) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '227402e3-d2a0-4f29-a724-d115c2084ffe';

-- MARK INACTIVE & NOT FOUND: Thoongaavanam (ID: 2252520c-10f4-49d2-acb7-a798ac64b945) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2252520c-10f4-49d2-acb7-a798ac64b945';

-- LINK CATEGORIES: Thoongaavanam (['hindi-dubbed', 'hd', '1080p', 'thriller', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2252520c-10f4-49d2-acb7-a798ac64b945', 'hindi-dubbed'), ('2252520c-10f4-49d2-acb7-a798ac64b945', 'hd'), ('2252520c-10f4-49d2-acb7-a798ac64b945', '1080p'), ('2252520c-10f4-49d2-acb7-a798ac64b945', 'thriller'), ('2252520c-10f4-49d2-acb7-a798ac64b945', 'action') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Yun Hua Toh? (ID: 223a7a7c-73fc-409f-a71d-574fa6ee196b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ltmpzigikzs2gvm', file_size = '704.6 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '223a7a7c-73fc-409f-a71d-574fa6ee196b';

-- MARK INACTIVE & NOT FOUND: Sukumarudu (ID: 22b799d5-94c1-4f24-9e59-baba94b65a71) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '22b799d5-94c1-4f24-9e59-baba94b65a71';

-- MARK INACTIVE & NOT FOUND: Chithha (ID: 226fc30e-5f2c-41b6-b291-bfc4ff38af7c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '226fc30e-5f2c-41b6-b291-bfc4ff38af7c';

-- UPDATE MOVIE: Toxin (ID: 224d3651-c1f7-4026-8821-922280b5b7ed)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ziukzdpu5lldduz', file_size = '807.81 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '224d3651-c1f7-4026-8821-922280b5b7ed';

-- MARK INACTIVE & NOT FOUND: Zindagi Shatranj Hai (ID: 2287382a-1202-4aba-8f32-4ef816ab56a9) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2287382a-1202-4aba-8f32-4ef816ab56a9';

-- UPDATE MOVIE: Velayudham (ID: 229ba571-557f-4c6c-a052-2ed6ad841345)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ckaykhodnywn1wn', file_size = '2.54 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '229ba571-557f-4c6c-a052-2ed6ad841345';

-- LINK CATEGORIES: Velayudham (['hindi-dubbed', 'hd', 'drama', '1080p', 'south-hindi-dubbed', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('229ba571-557f-4c6c-a052-2ed6ad841345', 'hindi-dubbed'), ('229ba571-557f-4c6c-a052-2ed6ad841345', 'hd'), ('229ba571-557f-4c6c-a052-2ed6ad841345', 'drama'), ('229ba571-557f-4c6c-a052-2ed6ad841345', '1080p'), ('229ba571-557f-4c6c-a052-2ed6ad841345', 'south-hindi-dubbed'), ('229ba571-557f-4c6c-a052-2ed6ad841345', 'action') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mr. Fraud (ID: 23200d6b-56e7-4c02-9a0b-35df0c1bf1fe) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23200d6b-56e7-4c02-9a0b-35df0c1bf1fe';

-- MARK INACTIVE & NOT FOUND: Enemies Closer (ID: 232d6ae3-5810-42cd-b94e-5e3571ce6ffa) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '232d6ae3-5810-42cd-b94e-5e3571ce6ffa';

-- MARK INACTIVE & NOT FOUND: Nannaku Prematho... (ID: 22c2432e-0aaf-4af5-b28a-c991f3e3409d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '22c2432e-0aaf-4af5-b28a-c991f3e3409d';

-- MARK INACTIVE & NOT FOUND: Arena of the Street Fighter (ID: 23346cd2-e77c-4917-a395-fbfa0acb7164) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23346cd2-e77c-4917-a395-fbfa0acb7164';

-- MARK INACTIVE & NOT FOUND: Unpaused (ID: 231153b1-eeb4-45bd-95cc-1ec380ac28d0) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '231153b1-eeb4-45bd-95cc-1ec380ac28d0';

-- MARK INACTIVE & NOT FOUND: Buhe Bariyan (ID: 238c8c95-fe8b-445d-a4da-821866ee5c99) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '238c8c95-fe8b-445d-a4da-821866ee5c99';

-- UPDATE MOVIE: Mind Blown (ID: 232e4f40-2eee-40dc-ac93-779fa2e254ad)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/xik9t2kxddiaist', file_size = '1.2 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '232e4f40-2eee-40dc-ac93-779fa2e254ad';

-- UPDATE MOVIE: Hello Charlie (ID: 2345339a-a69d-4139-aef0-66df257a9de7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1mvjckewl5mlw0i', file_size = '1.89 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2345339a-a69d-4139-aef0-66df257a9de7';

-- UPDATE MOVIE: I Spit on Your Grave 2 (ID: 23a687cf-92ba-45d8-b4f0-ca9c977f64b5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/27tkpey6k1siee5', file_size = '1.82 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '23a687cf-92ba-45d8-b4f0-ca9c977f64b5';

-- MARK INACTIVE & NOT FOUND: Money Train (ID: 2340ffd5-6f95-4d7b-a3dc-8050d9119527) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2340ffd5-6f95-4d7b-a3dc-8050d9119527';

-- LINK CATEGORIES: Money Train (['300mb', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2340ffd5-6f95-4d7b-a3dc-8050d9119527', '300mb'), ('2340ffd5-6f95-4d7b-a3dc-8050d9119527', 'hindi-dubbed'), ('2340ffd5-6f95-4d7b-a3dc-8050d9119527', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Cellar (ID: 2350cff3-4032-463e-955a-6567a59684f4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hrd1411393kd5cd', file_size = '700.72 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2350cff3-4032-463e-955a-6567a59684f4';

-- MARK INACTIVE & NOT FOUND: Starsky & Hutch (ID: 23c9abd7-065c-4fe5-af66-c32e2e1f27f9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23c9abd7-065c-4fe5-af66-c32e2e1f27f9';

-- LINK CATEGORIES: Starsky & Hutch (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('23c9abd7-065c-4fe5-af66-c32e2e1f27f9', 'hindi-dubbed'), ('23c9abd7-065c-4fe5-af66-c32e2e1f27f9', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Teddy's Christmas (ID: 23dad598-f861-4e7b-9c0d-6718ef06f120) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23dad598-f861-4e7b-9c0d-6718ef06f120';

-- UPDATE MOVIE: Jo Tera Hai Woh Mera Hai (ID: 23d3007c-d0cf-4403-a989-1b338714a9f1)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/9xytnsyaxuh5aag', file_size = '2.05 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '23d3007c-d0cf-4403-a989-1b338714a9f1';

-- LINK CATEGORIES: Jo Tera Hai Woh Mera Hai (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('23d3007c-d0cf-4403-a989-1b338714a9f1', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Jaane kyun de yaaron (ID: 23ca19fc-210c-49a1-91d0-09bf1e11f17e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23ca19fc-210c-49a1-91d0-09bf1e11f17e';

-- MARK INACTIVE & NOT FOUND: Rajathandhiram (ID: 23cb6b4f-3e27-430e-bea1-8a8c48bc2a2a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23cb6b4f-3e27-430e-bea1-8a8c48bc2a2a';

-- LINK CATEGORIES: Rajathandhiram (['hindi-dubbed', 'hd', 'tamil', '1080p', 'thriller', 'south-hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('23cb6b4f-3e27-430e-bea1-8a8c48bc2a2a', 'hindi-dubbed'), ('23cb6b4f-3e27-430e-bea1-8a8c48bc2a2a', 'hd'), ('23cb6b4f-3e27-430e-bea1-8a8c48bc2a2a', 'tamil'), ('23cb6b4f-3e27-430e-bea1-8a8c48bc2a2a', '1080p'), ('23cb6b4f-3e27-430e-bea1-8a8c48bc2a2a', 'thriller'), ('23cb6b4f-3e27-430e-bea1-8a8c48bc2a2a', 'south-hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: La lunga sfida (ID: 23f73db8-97a6-4bc4-b33b-aa04d24c64d0) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23f73db8-97a6-4bc4-b33b-aa04d24c64d0';

-- LINK CATEGORIES: La lunga sfida (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('23f73db8-97a6-4bc4-b33b-aa04d24c64d0', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Raabta (ID: 23e49e4b-0c84-4548-aec9-82065ad668c9) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23e49e4b-0c84-4548-aec9-82065ad668c9';

-- UPDATE MOVIE: Har Har Mahadev (ID: 23eaf662-ca38-4495-bd1e-8fed3ba70a13)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qu1jtltu4jzuajr', file_size = '2.61 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '23eaf662-ca38-4495-bd1e-8fed3ba70a13';

-- UPDATE MOVIE: Nanny McPhee and the Big Bang (ID: 23f24402-9dfd-412d-a359-c51ef6b7b9ff)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/r_zkorn71s8bbus', file_size = '2.07 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '23f24402-9dfd-412d-a359-c51ef6b7b9ff';

-- UPDATE MOVIE: The Ledge (ID: 23e8d5ac-6d36-4b26-93c8-4ae30c89142e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/f3q11fx3q1vbvga', file_size = '794.51 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '23e8d5ac-6d36-4b26-93c8-4ae30c89142e';

-- MARK INACTIVE & NOT FOUND: Mamma Mia! (ID: 23ffe31e-4737-4d5c-9d37-b8a6ece4e9fc) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23ffe31e-4737-4d5c-9d37-b8a6ece4e9fc';

-- LINK CATEGORIES: Mamma Mia! (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('23ffe31e-4737-4d5c-9d37-b8a6ece4e9fc', 'hindi-dubbed'), ('23ffe31e-4737-4d5c-9d37-b8a6ece4e9fc', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mast Mein Rehne Ka (ID: 241d669a-e750-4b0c-adc0-ee23b7e6973a) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '241d669a-e750-4b0c-adc0-ee23b7e6973a';

-- MARK INACTIVE & NOT FOUND: God's Creatures (ID: 23f7c659-821e-4099-8596-ad96cf37eb42) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '23f7c659-821e-4099-8596-ad96cf37eb42';

-- UPDATE MOVIE: Firequake (ID: 23fb1722-e6fd-481a-a98f-098735588d9e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qxmd1gmq1glcngg', file_size = '1.19 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '23fb1722-e6fd-481a-a98f-098735588d9e';

-- MARK INACTIVE & NOT FOUND: Jhootha Kahin Ka (ID: 241019f7-9773-46c8-b2aa-9fa8f70af3b9) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '241019f7-9773-46c8-b2aa-9fa8f70af3b9';

-- MARK INACTIVE & NOT FOUND: Blockers (ID: 242e4f1d-6ed9-4580-95c7-74597dca56b8) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '242e4f1d-6ed9-4580-95c7-74597dca56b8';

-- MARK INACTIVE & NOT FOUND: Ender's Game (ID: 2422e3fc-508a-40fb-be06-2e04e23e0d06) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2422e3fc-508a-40fb-be06-2e04e23e0d06';

-- UPDATE MOVIE: An Elephant's Journey (ID: 242fdc62-a3dc-478e-b5f1-737c04bf3a79)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/plzpfbpiphzpepg', file_size = '796.89 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '242fdc62-a3dc-478e-b5f1-737c04bf3a79';

-- LINK CATEGORIES: An Elephant's Journey (['hollywood', 'bluray', 'hindi-dubbed', 'hd', 'drama', 'adventure', '1080p', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('242fdc62-a3dc-478e-b5f1-737c04bf3a79', 'hollywood'), ('242fdc62-a3dc-478e-b5f1-737c04bf3a79', 'bluray'), ('242fdc62-a3dc-478e-b5f1-737c04bf3a79', 'hindi-dubbed'), ('242fdc62-a3dc-478e-b5f1-737c04bf3a79', 'hd'), ('242fdc62-a3dc-478e-b5f1-737c04bf3a79', 'drama'), ('242fdc62-a3dc-478e-b5f1-737c04bf3a79', 'adventure'), ('242fdc62-a3dc-478e-b5f1-737c04bf3a79', '1080p'), ('242fdc62-a3dc-478e-b5f1-737c04bf3a79', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kadakh (ID: 24680056-ff4c-4a90-98a9-d6907551d716) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '24680056-ff4c-4a90-98a9-d6907551d716';

-- MARK INACTIVE & NOT FOUND: Dora (ID: 24c56493-640b-4900-88cd-6f294e810faf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '24c56493-640b-4900-88cd-6f294e810faf';

-- MARK INACTIVE & NOT FOUND: Dark Phoenix (ID: 24ace495-c328-49f9-8f3a-fe8fb653ff43) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '24ace495-c328-49f9-8f3a-fe8fb653ff43';

-- MARK INACTIVE & NOT FOUND: 13B (ID: 247d7202-7c93-4398-b420-0a86c30f0de9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '247d7202-7c93-4398-b420-0a86c30f0de9';

-- MARK INACTIVE & NOT FOUND: Marvel Studios Assembled: The Making of Loki Season 2 (ID: 25030f6c-1ff5-4fac-9d53-d0f5940dfae2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '25030f6c-1ff5-4fac-9d53-d0f5940dfae2';

-- MARK INACTIVE & NOT FOUND: Adbhutham (ID: 24ef893e-677e-42c9-9f32-f1c47e86df2e) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '24ef893e-677e-42c9-9f32-f1c47e86df2e';

-- UPDATE MOVIE: Tomcats (ID: 24acb60b-7b14-4ef6-8de2-36084d9995d9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/aba9aoday3vsfil', file_size = '836.03 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '24acb60b-7b14-4ef6-8de2-36084d9995d9';

-- LINK CATEGORIES: Tomcats (['300mb', 'hollywood', 'bluray', 'hindi-dubbed', 'hd', 'dual-audio', '1080p', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('24acb60b-7b14-4ef6-8de2-36084d9995d9', '300mb'), ('24acb60b-7b14-4ef6-8de2-36084d9995d9', 'hollywood'), ('24acb60b-7b14-4ef6-8de2-36084d9995d9', 'bluray'), ('24acb60b-7b14-4ef6-8de2-36084d9995d9', 'hindi-dubbed'), ('24acb60b-7b14-4ef6-8de2-36084d9995d9', 'hd'), ('24acb60b-7b14-4ef6-8de2-36084d9995d9', 'dual-audio'), ('24acb60b-7b14-4ef6-8de2-36084d9995d9', '1080p'), ('24acb60b-7b14-4ef6-8de2-36084d9995d9', 'comedy') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Birds of Paradise (ID: 24cec6e0-465c-4ba4-807f-b987b7952244)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/yjovre6xeo1yoyh', file_size = '917.18 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '24cec6e0-465c-4ba4-807f-b987b7952244';

-- MARK INACTIVE & NOT FOUND: All About Nina (ID: 2594ccb5-c659-4aaa-a779-77b9a635f4b2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2594ccb5-c659-4aaa-a779-77b9a635f4b2';

-- MARK INACTIVE & NOT FOUND: Mrs. Nambiar (ID: 259525c4-094f-4c4e-b0c3-4acbe152f897) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '259525c4-094f-4c4e-b0c3-4acbe152f897';

-- UPDATE MOVIE: Thar (ID: 2526fcf5-6333-4392-8ed0-3083396f4743)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/4d7h7bhddv0nhad', file_size = '2.13 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2526fcf5-6333-4392-8ed0-3083396f4743';

-- MARK INACTIVE & NOT FOUND: Afsar (ID: 251a6436-cd5a-4512-ab72-dc2389badb2d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '251a6436-cd5a-4512-ab72-dc2389badb2d';

-- UPDATE MOVIE: Love Hostel (ID: 2581efa4-0085-41ef-b748-881ea1dec683)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/s8x1wzwzgsznqwi', file_size = '1.9 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2581efa4-0085-41ef-b748-881ea1dec683';

-- MARK INACTIVE & NOT FOUND: The Long Walk (ID: 263531ae-a39c-4eef-b1e9-869a277cd181) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '263531ae-a39c-4eef-b1e9-869a277cd181';

-- LINK CATEGORIES: The Long Walk (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('263531ae-a39c-4eef-b1e9-869a277cd181', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mufti (ID: 255cdbb2-71b1-4983-930e-2a2f2df9448f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '255cdbb2-71b1-4983-930e-2a2f2df9448f';

-- MARK INACTIVE & NOT FOUND: Siddhant (ID: 25dd761b-35d6-49cb-b500-c9254ba8f41e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '25dd761b-35d6-49cb-b500-c9254ba8f41e';

-- MARK INACTIVE & NOT FOUND: Rocket Gang (ID: 262b85d3-6cb7-4424-b6ca-b5205bd4876f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '262b85d3-6cb7-4424-b6ca-b5205bd4876f';

-- UPDATE MOVIE: Kaappaan (ID: 26565b4c-c8e9-4f83-93ab-6b3b19ea8bc7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/2j2e_mfs2hmjsfe', file_size = '3.04 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '26565b4c-c8e9-4f83-93ab-6b3b19ea8bc7';

-- MARK INACTIVE & NOT FOUND: We Live in Time (ID: 2633a415-d137-4445-8250-5583c25d3a72) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2633a415-d137-4445-8250-5583c25d3a72';

-- MARK INACTIVE & NOT FOUND: Overlord (ID: 265b51a1-8fd7-45aa-8746-f7364afe32d1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '265b51a1-8fd7-45aa-8746-f7364afe32d1';

-- MARK INACTIVE & NOT FOUND: Golden Slumber (ID: 2678d8b3-b2eb-48bb-b0b4-112c8959333d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2678d8b3-b2eb-48bb-b0b4-112c8959333d';

-- MARK INACTIVE & NOT FOUND: Desi Kattey (ID: 267eb479-a2f8-42ee-b504-d442ea62aa51) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '267eb479-a2f8-42ee-b504-d442ea62aa51';

-- MARK INACTIVE & NOT FOUND: Thipparaa Meesam (ID: 26d80df2-c2ac-4e2a-a4fa-d44acfd87cfe) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '26d80df2-c2ac-4e2a-a4fa-d44acfd87cfe';

-- MARK INACTIVE & NOT FOUND: Jora 10 Numbaria (ID: 2687a021-5075-47dd-9575-153d33a84d95) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2687a021-5075-47dd-9575-153d33a84d95';

-- MARK INACTIVE & NOT FOUND: Couples Retreat (ID: 26ab0bcb-7e03-43bb-8b47-8efade972b79) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '26ab0bcb-7e03-43bb-8b47-8efade972b79';

-- LINK CATEGORIES: Couples Retreat (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('26ab0bcb-7e03-43bb-8b47-8efade972b79', 'hindi-dubbed'), ('26ab0bcb-7e03-43bb-8b47-8efade972b79', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kaalai (ID: 26bc140d-67a0-48cd-87d3-cba4f3d3497c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '26bc140d-67a0-48cd-87d3-cba4f3d3497c';

-- LINK CATEGORIES: Kaalai (['hindi-dubbed', 'south-hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('26bc140d-67a0-48cd-87d3-cba4f3d3497c', 'hindi-dubbed'), ('26bc140d-67a0-48cd-87d3-cba4f3d3497c', 'south-hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Monster Hunter: Legends of the Guild (ID: 26952d7f-8872-43e6-863b-4babac49227e) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '26952d7f-8872-43e6-863b-4babac49227e';

-- UPDATE MOVIE: Top Gun (ID: 26efb444-09c7-498a-a301-785176b5d537)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/bdtffup-xa1-iaa', file_size = '2.14 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '26efb444-09c7-498a-a301-785176b5d537';

-- LINK CATEGORIES: Top Gun (['300mb', 'bluray', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('26efb444-09c7-498a-a301-785176b5d537', '300mb'), ('26efb444-09c7-498a-a301-785176b5d537', 'bluray'), ('26efb444-09c7-498a-a301-785176b5d537', 'hindi-dubbed'), ('26efb444-09c7-498a-a301-785176b5d537', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Aatagallu (ID: 26faec46-25e9-4799-8c0b-e57624d1082b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '26faec46-25e9-4799-8c0b-e57624d1082b';

-- UPDATE MOVIE: Goutham Nanda (ID: 2705c5b7-a4fc-4f06-89b2-5325220a46e3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lglxm8cog_chckd', file_size = '3.01 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2705c5b7-a4fc-4f06-89b2-5325220a46e3';

-- UPDATE MOVIE: Snow Monster (ID: 272959ca-f645-47e2-9c29-1e1fa218d2fc)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/tmtfbk88kuyyffi', file_size = '1.18 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '272959ca-f645-47e2-9c29-1e1fa218d2fc';

-- MARK INACTIVE & NOT FOUND: Pokémon the Movie: Mewtwo Strikes Back - Evolution (ID: 27874b19-15a5-48ec-b6e9-050254dcb811) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '27874b19-15a5-48ec-b6e9-050254dcb811';

-- MARK INACTIVE & NOT FOUND: The Vault (ID: 27b41a62-42e1-4e58-ac7d-5a67bde9b14b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '27b41a62-42e1-4e58-ac7d-5a67bde9b14b';

-- MARK INACTIVE & NOT FOUND: Sun Zara (ID: 27d92e03-efd1-4580-82de-04ae93fb32b6) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '27d92e03-efd1-4580-82de-04ae93fb32b6';

-- MARK INACTIVE & NOT FOUND: Ab Insaf Hoga (ID: 27dd3625-6efc-4465-8cf1-a89d3b37c953) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '27dd3625-6efc-4465-8cf1-a89d3b37c953';

-- LINK CATEGORIES: Ab Insaf Hoga (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('27dd3625-6efc-4465-8cf1-a89d3b37c953', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: His Three Daughters (ID: 2770d565-2d14-4108-89b4-7209507a9a37)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/nwhbbxjk5yudybs', file_size = '2.26 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2770d565-2d14-4108-89b4-7209507a9a37';

-- LINK CATEGORIES: His Three Daughters (['dual-audio', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2770d565-2d14-4108-89b4-7209507a9a37', 'dual-audio'), ('2770d565-2d14-4108-89b4-7209507a9a37', 'hindi-dubbed'), ('2770d565-2d14-4108-89b4-7209507a9a37', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Boomerang (ID: 274bb483-85c5-458c-bcd1-51ce533385dc) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '274bb483-85c5-458c-bcd1-51ce533385dc';

-- UPDATE MOVIE: Mercenaries (ID: 273ca608-b048-4aff-84fe-d573f4d17d6b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/io6u1ifgkgb1uo1', file_size = '754.37 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '273ca608-b048-4aff-84fe-d573f4d17d6b';

-- UPDATE MOVIE: What the Waters Left Behind (ID: 2786d234-680f-4a17-adca-1ad692d8dfef)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1xgzsogmdtcdx6s', file_size = '936.54 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2786d234-680f-4a17-adca-1ad692d8dfef';

-- LINK CATEGORIES: What the Waters Left Behind (['dual-audio', 'hd', '1080p', 'bluray', 'horror', 'hollywood', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2786d234-680f-4a17-adca-1ad692d8dfef', 'dual-audio'), ('2786d234-680f-4a17-adca-1ad692d8dfef', 'hd'), ('2786d234-680f-4a17-adca-1ad692d8dfef', '1080p'), ('2786d234-680f-4a17-adca-1ad692d8dfef', 'bluray'), ('2786d234-680f-4a17-adca-1ad692d8dfef', 'horror'), ('2786d234-680f-4a17-adca-1ad692d8dfef', 'hollywood'), ('2786d234-680f-4a17-adca-1ad692d8dfef', 'hindi-dubbed'), ('2786d234-680f-4a17-adca-1ad692d8dfef', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Inheritance (ID: 28ab1c9a-23e8-41ae-8233-2db7f03954d8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5xzxottaz22ostm', file_size = '2.07 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '28ab1c9a-23e8-41ae-8233-2db7f03954d8';

-- LINK CATEGORIES: Inheritance (['dual-audio', 'hollywood', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('28ab1c9a-23e8-41ae-8233-2db7f03954d8', 'dual-audio'), ('28ab1c9a-23e8-41ae-8233-2db7f03954d8', 'hollywood'), ('28ab1c9a-23e8-41ae-8233-2db7f03954d8', 'hindi-dubbed'), ('28ab1c9a-23e8-41ae-8233-2db7f03954d8', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Wifelike (ID: 281f735d-5261-4636-942d-f1b63844a673) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '281f735d-5261-4636-942d-f1b63844a673';

-- MARK INACTIVE & NOT FOUND: Triple 9 (ID: 282c8014-da6b-447f-8e22-f41161ed0aea) | Reason: Message: timeout: Timed out receiving message from renderer: -0.007
  (Session info: chrome=152.0.7977.64)
Stacktrace:
#0 0x55946252903a <unknown>
#1 0x559461e914c9 <unknown>
#2 0x559461e78f5b <unknown>
#3 0x559461e78bd6 <unknown>
#4 0x559461e767b8 <unknown>
#5 0x559461e7713f <unknown>
#6 0x559461e86200 <unknown>
#7 0x559461ea0147 <unknown>
#8 0x559461ea7b1b <unknown>
#9 0x559461e77899 <unknown>
#10 0x559461e9fea7 <unknown>
#11 0x559461f2f470 <unknown>
#12 0x559461eda83b <unknown>
#13 0x559461edb621 <unknown>
#14 0x5594624ed5f0 <unknown>
#15 0x5594624ebc6a <unknown>
#16 0x5594624d69f5 <unknown>
#17 0x5594624ec92a <unknown>
#18 0x5594624bfd10 <unknown>
#19 0x559462514158 <unknown>
#20 0x5594625142f5 <unknown>
#21 0x559462527bc3 <unknown>
#22 0x7f14daa9cb84 <unknown>
#23 0x7f14dab29d6c <unknown>

UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '282c8014-da6b-447f-8e22-f41161ed0aea';

-- UPDATE MOVIE: Black Water (ID: 284c011a-d31e-45a4-a57d-a248577d2582)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ye0me0h0fntuftr', file_size = '983.07 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '284c011a-d31e-45a4-a57d-a248577d2582';

-- LINK CATEGORIES: Black Water (['adventure', 'bluray', 'horror', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('284c011a-d31e-45a4-a57d-a248577d2582', 'adventure'), ('284c011a-d31e-45a4-a57d-a248577d2582', 'bluray'), ('284c011a-d31e-45a4-a57d-a248577d2582', 'horror'), ('284c011a-d31e-45a4-a57d-a248577d2582', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sno Babies (ID: 28cfc1ce-4a5c-4168-8141-d1f6473cfb0a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '28cfc1ce-4a5c-4168-8141-d1f6473cfb0a';

-- MARK INACTIVE & NOT FOUND: Evening Shadows (ID: 28acdc81-84a9-412a-b604-c95160d5f102) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '28acdc81-84a9-412a-b604-c95160d5f102';

-- UPDATE MOVIE: Cracked (ID: 28dc8b1a-91fa-403c-a3a5-49a61c2c2cb0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jbdbp48oz7p5dbk', file_size = '1.84 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '28dc8b1a-91fa-403c-a3a5-49a61c2c2cb0';

-- MARK INACTIVE & NOT FOUND: Eraser (ID: 2898e4af-1c76-4462-b9a2-cf4b0af385d3) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2898e4af-1c76-4462-b9a2-cf4b0af385d3';

-- LINK CATEGORIES: Eraser (['drama', 'telugu', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2898e4af-1c76-4462-b9a2-cf4b0af385d3', 'drama'), ('2898e4af-1c76-4462-b9a2-cf4b0af385d3', 'telugu'), ('2898e4af-1c76-4462-b9a2-cf4b0af385d3', 'hindi-dubbed'), ('2898e4af-1c76-4462-b9a2-cf4b0af385d3', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Arjun Chakravarthy: Journey of an Unsung Champion (ID: 28f4f262-3072-487a-8fe9-9f0899cc0dc8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kzkzji9cau9kimm', file_size = '2.68 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '28f4f262-3072-487a-8fe9-9f0899cc0dc8';

-- LINK CATEGORIES: Arjun Chakravarthy: Journey of an Unsung Champion (['south-hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('28f4f262-3072-487a-8fe9-9f0899cc0dc8', 'south-hindi-dubbed'), ('28f4f262-3072-487a-8fe9-9f0899cc0dc8', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Like Stars on Earth (ID: 2929c0f0-146e-449f-a62c-18cdcb667a77) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2929c0f0-146e-449f-a62c-18cdcb667a77';

-- MARK INACTIVE & NOT FOUND: Zindagi Kitni Haseen Hay (ID: 2925a4b4-74f3-45f9-83b7-a8dd4f6e269b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2925a4b4-74f3-45f9-83b7-a8dd4f6e269b';

-- UPDATE MOVIE: Match Of Life (ID: 2926be92-e949-4649-af6a-884a67754d6b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wverheo8cdednrj', file_size = '2.15 GB', status = 'active', updated_at = NOW(), quality = 'HQ-HDCAMRip' WHERE id = '2926be92-e949-4649-af6a-884a67754d6b';

-- MARK INACTIVE & NOT FOUND: Brindavanam (ID: 28fb7a68-84a4-4999-b67a-e754581f83d8) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '28fb7a68-84a4-4999-b67a-e754581f83d8';

-- LINK CATEGORIES: Brindavanam (['comedy', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('28fb7a68-84a4-4999-b67a-e754581f83d8', 'comedy'), ('28fb7a68-84a4-4999-b67a-e754581f83d8', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Devil on Trial (ID: 292cf2dc-9bad-4ca3-85f3-7464c7e26ae1) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '292cf2dc-9bad-4ca3-85f3-7464c7e26ae1';

-- UPDATE MOVIE: Clean (ID: 28f11385-8995-4518-a950-284e9e18d44d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/abwomtz3thidifz', file_size = '795.22 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '28f11385-8995-4518-a950-284e9e18d44d';

-- MARK INACTIVE & NOT FOUND: F9 (ID: 29595f3d-7617-4cc0-890c-a361294f4ec4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '29595f3d-7617-4cc0-890c-a361294f4ec4';

-- UPDATE MOVIE: Chamak (ID: 294726c4-14f8-41d3-8799-0cf03a680856)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/a2aaojdja-1z1dc', file_size = '2.92 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '294726c4-14f8-41d3-8799-0cf03a680856';

-- UPDATE MOVIE: Showgirls (ID: 2931d773-b783-42d1-9fd4-ca2b30bc8b8a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/4v33ddpvhhsmsh3', file_size = '1.25 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2931d773-b783-42d1-9fd4-ca2b30bc8b8a';

-- LINK CATEGORIES: Showgirls (['dual-audio', 'bluray', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2931d773-b783-42d1-9fd4-ca2b30bc8b8a', 'dual-audio'), ('2931d773-b783-42d1-9fd4-ca2b30bc8b8a', 'bluray'), ('2931d773-b783-42d1-9fd4-ca2b30bc8b8a', 'hindi-dubbed'), ('2931d773-b783-42d1-9fd4-ca2b30bc8b8a', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kadamban (ID: 295168e6-78bf-45e0-8884-4fdec09dbff5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '295168e6-78bf-45e0-8884-4fdec09dbff5';

-- LINK CATEGORIES: Kadamban (['hindi-dubbed', '1080p', 'drama', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('295168e6-78bf-45e0-8884-4fdec09dbff5', 'hindi-dubbed'), ('295168e6-78bf-45e0-8884-4fdec09dbff5', '1080p'), ('295168e6-78bf-45e0-8884-4fdec09dbff5', 'drama'), ('295168e6-78bf-45e0-8884-4fdec09dbff5', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Apradhi Kaun? (ID: 296563ae-e372-415c-80f3-56707e7e5f16) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '296563ae-e372-415c-80f3-56707e7e5f16';

-- MARK INACTIVE & NOT FOUND: Replicas (ID: 295c2ef7-3cdd-48bf-bd7d-0386eb268240) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '295c2ef7-3cdd-48bf-bd7d-0386eb268240';

-- MARK INACTIVE & NOT FOUND: Kadikara Manithargal (ID: 296b5e7e-3d30-4c44-bdf6-1ba99a9874a2) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '296b5e7e-3d30-4c44-bdf6-1ba99a9874a2';

-- MARK INACTIVE & NOT FOUND: Mee Raqsam (ID: 29709705-98f2-46c4-a9d9-dc8a974cbe94) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '29709705-98f2-46c4-a9d9-dc8a974cbe94';

-- UPDATE MOVIE: Burning Betrayal (ID: 29991d08-1dc5-4e29-9187-5bec7592989e)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/6xxxhs0kv7dg8wx', file_size = '1.65 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '29991d08-1dc5-4e29-9187-5bec7592989e';

-- LINK CATEGORIES: Burning Betrayal (['dual-audio', 'hollywood', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('29991d08-1dc5-4e29-9187-5bec7592989e', 'dual-audio'), ('29991d08-1dc5-4e29-9187-5bec7592989e', 'hollywood'), ('29991d08-1dc5-4e29-9187-5bec7592989e', 'hindi-dubbed'), ('29991d08-1dc5-4e29-9187-5bec7592989e', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: To Dance With Death (ID: 299f9e88-f9da-427a-8fda-906985e1247e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '299f9e88-f9da-427a-8fda-906985e1247e';

-- MARK INACTIVE & NOT FOUND: Gunjan Saxena: The Kargil Girl (ID: 296ef48f-40d6-4a91-8fad-f73fe9d2a00d) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2072889844)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '296ef48f-40d6-4a91-8fad-f73fe9d2a00d';

-- LINK CATEGORIES: Gunjan Saxena: The Kargil Girl (['drama', 'biography', '1080p', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('296ef48f-40d6-4a91-8fad-f73fe9d2a00d', 'drama'), ('296ef48f-40d6-4a91-8fad-f73fe9d2a00d', 'biography'), ('296ef48f-40d6-4a91-8fad-f73fe9d2a00d', '1080p'), ('296ef48f-40d6-4a91-8fad-f73fe9d2a00d', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Past Lives (ID: 299c4ef4-bd50-4178-8d33-a60201172378) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '299c4ef4-bd50-4178-8d33-a60201172378';

-- MARK INACTIVE & NOT FOUND: Thalapathi (ID: 29e7ad44-6f15-44d6-9f45-b8f4e156e903) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '29e7ad44-6f15-44d6-9f45-b8f4e156e903';

-- UPDATE MOVIE: The Magic Quill (ID: 299c1822-0129-44ab-8b70-78bc94e8bb4f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/gekjerjgtwz1tki', file_size = '1.13 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '299c1822-0129-44ab-8b70-78bc94e8bb4f';

-- MARK INACTIVE & NOT FOUND: 1921 (ID: 29a45a2d-933f-40dd-b7f5-6d8cba60a21c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '29a45a2d-933f-40dd-b7f5-6d8cba60a21c';

-- MARK INACTIVE & NOT FOUND: Jawaan (ID: 29dbe21c-e5e7-47f3-8155-07a6337bdf59) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '29dbe21c-e5e7-47f3-8155-07a6337bdf59';

-- MARK INACTIVE & NOT FOUND: Clash of the Empires (ID: 2a0d907d-148d-4359-9022-a6de7c4a255a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2a0d907d-148d-4359-9022-a6de7c4a255a';

-- UPDATE MOVIE: Rising Fear (ID: 29ea3a1e-3d86-4073-ac3d-9f92b2f7ee29)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/h4v4vvtr_taeapa', file_size = '983.61 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '29ea3a1e-3d86-4073-ac3d-9f92b2f7ee29';

-- MARK INACTIVE & NOT FOUND: Lay the Favorite (ID: 29ea0533-ea79-4d6a-aeba-c09417d60161) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '29ea0533-ea79-4d6a-aeba-c09417d60161';

-- MARK INACTIVE & NOT FOUND: Patel S.I.R (ID: 2a0e94dc-1b9f-487b-a4cd-4d9a31bb3b3c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2a0e94dc-1b9f-487b-a4cd-4d9a31bb3b3c';

-- LINK CATEGORIES: Patel S.I.R (['1080p', 'hindi-dubbed', 'action', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2a0e94dc-1b9f-487b-a4cd-4d9a31bb3b3c', '1080p'), ('2a0e94dc-1b9f-487b-a4cd-4d9a31bb3b3c', 'hindi-dubbed'), ('2a0e94dc-1b9f-487b-a4cd-4d9a31bb3b3c', 'action'), ('2a0e94dc-1b9f-487b-a4cd-4d9a31bb3b3c', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: A Shot Through the Wall (ID: 2a06f439-2bc6-4f9f-8d8b-4869c0dc27ea) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2a06f439-2bc6-4f9f-8d8b-4869c0dc27ea';

-- MARK INACTIVE & NOT FOUND: Bhangra Paa Le (ID: 2a22b6b0-2bf1-4f6c-b515-4c69a805fd9c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2a22b6b0-2bf1-4f6c-b515-4c69a805fd9c';

-- UPDATE MOVIE: The Y (ID: 2a32029f-6c54-495e-800b-16ab299076ac)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qivfh3ipgwxhewh', file_size = '1.79 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '2a32029f-6c54-495e-800b-16ab299076ac';

-- UPDATE MOVIE: Hungama (ID: 2a25818b-c665-48a8-9067-589d20e19bd7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/aufaqm4ihgqxah1', file_size = '1.36 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2a25818b-c665-48a8-9067-589d20e19bd7';

-- LINK CATEGORIES: Hungama (['drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2a25818b-c665-48a8-9067-589d20e19bd7', 'drama') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Detective Knight: Rogue (ID: 2a3c3743-c607-4c36-9807-c6cfbef3d2e1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ddywdtlljho1dje', file_size = '1.75 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2a3c3743-c607-4c36-9807-c6cfbef3d2e1';

-- MARK INACTIVE & NOT FOUND: Ek Raat (ID: 2a98c5b0-3dfd-4a5c-8daf-2033ff0d7201) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2a98c5b0-3dfd-4a5c-8daf-2033ff0d7201';

-- LINK CATEGORIES: Ek Raat (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2a98c5b0-3dfd-4a5c-8daf-2033ff0d7201', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Panchhi (ID: 2a3927f5-bdba-4435-820b-9781421dad63)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/tcvcbvotbto1ob1', file_size = '778.98 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2a3927f5-bdba-4435-820b-9781421dad63';

-- MARK INACTIVE & NOT FOUND: Champs (ID: 2ac02bdf-67bf-46d1-bb05-a004a66f15ce) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2ac02bdf-67bf-46d1-bb05-a004a66f15ce';

-- LINK CATEGORIES: Champs (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2ac02bdf-67bf-46d1-bb05-a004a66f15ce', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Tribal: Get Out Alive (ID: 2a5bbea8-7f9f-47ef-a148-7055d6068004)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ll0lhh1fexaosxi', file_size = '925.71 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2a5bbea8-7f9f-47ef-a148-7055d6068004';

-- MARK INACTIVE & NOT FOUND: Sathriyan (ID: 2a5edf89-2382-491f-b91c-80fb23b41e5d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2a5edf89-2382-491f-b91c-80fb23b41e5d';

-- MARK INACTIVE & NOT FOUND: Tiger House (ID: 2a6babe1-1f6f-40de-8ce9-ae66ac0f3313) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2a6babe1-1f6f-40de-8ce9-ae66ac0f3313';

-- LINK CATEGORIES: Tiger House (['dual-audio', 'hd', 'action', '1080p', 'thriller', 'hollywood', 'hindi-dubbed', 'crime', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2a6babe1-1f6f-40de-8ce9-ae66ac0f3313', 'dual-audio'), ('2a6babe1-1f6f-40de-8ce9-ae66ac0f3313', 'hd'), ('2a6babe1-1f6f-40de-8ce9-ae66ac0f3313', 'action'), ('2a6babe1-1f6f-40de-8ce9-ae66ac0f3313', '1080p'), ('2a6babe1-1f6f-40de-8ce9-ae66ac0f3313', 'thriller'), ('2a6babe1-1f6f-40de-8ce9-ae66ac0f3313', 'hollywood'), ('2a6babe1-1f6f-40de-8ce9-ae66ac0f3313', 'hindi-dubbed'), ('2a6babe1-1f6f-40de-8ce9-ae66ac0f3313', 'crime'), ('2a6babe1-1f6f-40de-8ce9-ae66ac0f3313', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kakababur Protyaborton (ID: 2abada31-c435-4854-800a-6b17ae1691b4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2abada31-c435-4854-800a-6b17ae1691b4';

-- MARK INACTIVE & NOT FOUND: Dìdi (弟弟) (ID: 2afe2829-e243-409d-a50a-c1838835c7d8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2afe2829-e243-409d-a50a-c1838835c7d8';

-- UPDATE MOVIE: Haye Ni Bebe Meriye (ID: 2ae662a2-e397-463a-94bd-ff57c6d7da8e)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/bmt1hq9tsicy9ii', file_size = '1.71 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2ae662a2-e397-463a-94bd-ff57c6d7da8e';

-- LINK CATEGORIES: Haye Ni Bebe Meriye (['punjabi', 'amazon-prime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2ae662a2-e397-463a-94bd-ff57c6d7da8e', 'punjabi'), ('2ae662a2-e397-463a-94bd-ff57c6d7da8e', 'amazon-prime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Da Vinci Code (ID: 2acc9c5b-f32f-4dd0-aa60-cb46a0c28af3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2acc9c5b-f32f-4dd0-aa60-cb46a0c28af3';

-- LINK CATEGORIES: The Da Vinci Code (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2acc9c5b-f32f-4dd0-aa60-cb46a0c28af3', 'hindi-dubbed'), ('2acc9c5b-f32f-4dd0-aa60-cb46a0c28af3', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Ram Ratan (ID: 2ae86517-8bd0-4395-b1cc-db91c871cefe) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2ae86517-8bd0-4395-b1cc-db91c871cefe';

-- MARK INACTIVE & NOT FOUND: Thikka (ID: 2afa47b9-aea8-461b-ab54-6c246c57e5f5) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2afa47b9-aea8-461b-ab54-6c246c57e5f5';

-- MARK INACTIVE & NOT FOUND: Mawali Raaj (ID: 2b273b6b-e21d-4ded-8f46-0e746089cd45) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2b273b6b-e21d-4ded-8f46-0e746089cd45';

-- LINK CATEGORIES: Mawali Raaj (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2b273b6b-e21d-4ded-8f46-0e746089cd45', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mother Mary (ID: 2b6ef621-a3d8-4317-80fa-bb85b2227e3a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2b6ef621-a3d8-4317-80fa-bb85b2227e3a';

-- MARK INACTIVE & NOT FOUND: Drive Angry (ID: 2b470ffb-b055-4643-959b-15ed3fceac65) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2b470ffb-b055-4643-959b-15ed3fceac65';

-- UPDATE MOVIE: Ombatthane Dikku (ID: 2b2d0609-1805-4845-b85c-53386d1ccbb3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/9t9oj91tzqtz5io', file_size = '2.59 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2b2d0609-1805-4845-b85c-53386d1ccbb3';

-- MARK INACTIVE & NOT FOUND: Escape from Ensenada (ID: 2b8d4a08-b558-4c43-a741-858fca28c703) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2b8d4a08-b558-4c43-a741-858fca28c703';

-- MARK INACTIVE & NOT FOUND: Gundello Godari (ID: 2b2383f6-7d4a-4f72-98e1-baf14717db56) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2b2383f6-7d4a-4f72-98e1-baf14717db56';

-- LINK CATEGORIES: Gundello Godari (['hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2b2383f6-7d4a-4f72-98e1-baf14717db56', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Shotgun Wedding (ID: 2b73aee7-5205-4f2a-a72c-58e69b2bfb43)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ku6zlbdrazh9ar4', file_size = '875.59 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2b73aee7-5205-4f2a-a72c-58e69b2bfb43';

-- UPDATE MOVIE: Stand by Me Doraemon 2 (ID: 2b97f617-b721-4f84-ab2b-4de48eb6da1d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dgwkg2qqh42cgc2', file_size = '1.95 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2b97f617-b721-4f84-ab2b-4de48eb6da1d';

-- MARK INACTIVE & NOT FOUND: Abduction (ID: 2bc8ca59-fd25-48fd-99e5-d0d35c8b2645) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2bc8ca59-fd25-48fd-99e5-d0d35c8b2645';

-- LINK CATEGORIES: Abduction (['hd', 'action', '1080p', 'mystery', 'thriller', 'hollywood', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2bc8ca59-fd25-48fd-99e5-d0d35c8b2645', 'hd'), ('2bc8ca59-fd25-48fd-99e5-d0d35c8b2645', 'action'), ('2bc8ca59-fd25-48fd-99e5-d0d35c8b2645', '1080p'), ('2bc8ca59-fd25-48fd-99e5-d0d35c8b2645', 'mystery'), ('2bc8ca59-fd25-48fd-99e5-d0d35c8b2645', 'thriller'), ('2bc8ca59-fd25-48fd-99e5-d0d35c8b2645', 'hollywood'), ('2bc8ca59-fd25-48fd-99e5-d0d35c8b2645', 'hindi-dubbed'), ('2bc8ca59-fd25-48fd-99e5-d0d35c8b2645', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Brother Bear (ID: 2c368cb1-7922-41a4-9580-4995be14ce67) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2c368cb1-7922-41a4-9580-4995be14ce67';

-- MARK INACTIVE & NOT FOUND: Fire with Fire (ID: 2bc982be-260f-4016-b515-e2b6da2579f8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2bc982be-260f-4016-b515-e2b6da2579f8';

-- MARK INACTIVE & NOT FOUND: Rangan Style (ID: 2be74213-86f5-4c66-bdb1-48ae4112702d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2be74213-86f5-4c66-bdb1-48ae4112702d';

-- MARK INACTIVE & NOT FOUND: The Zoya Factor (ID: 2bbc8dca-5bd0-4ece-b7f1-28028eb59a1f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2bbc8dca-5bd0-4ece-b7f1-28028eb59a1f';

-- UPDATE MOVIE: Can You Ever Forgive Me? (ID: 2bfd4ebd-f491-4255-9d46-e8052a1d91e3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/umu-du2c59p-mna', file_size = '1.82 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2bfd4ebd-f491-4255-9d46-e8052a1d91e3';

-- MARK INACTIVE & NOT FOUND: Vodka Diaries (ID: 2c4611e6-fda9-4d02-b2df-a9c312327203) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2c4611e6-fda9-4d02-b2df-a9c312327203';

-- MARK INACTIVE & NOT FOUND: Chopsticks (ID: 2c5c47cd-adba-48d8-a02b-b8285fe94797) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2c5c47cd-adba-48d8-a02b-b8285fe94797';

-- LINK CATEGORIES: Chopsticks (['drama', 'hd', '1080p', 'comedy', 'bollywood', 'hollywood', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2c5c47cd-adba-48d8-a02b-b8285fe94797', 'drama'), ('2c5c47cd-adba-48d8-a02b-b8285fe94797', 'hd'), ('2c5c47cd-adba-48d8-a02b-b8285fe94797', '1080p'), ('2c5c47cd-adba-48d8-a02b-b8285fe94797', 'comedy'), ('2c5c47cd-adba-48d8-a02b-b8285fe94797', 'bollywood'), ('2c5c47cd-adba-48d8-a02b-b8285fe94797', 'hollywood'), ('2c5c47cd-adba-48d8-a02b-b8285fe94797', 'hindi-dubbed'), ('2c5c47cd-adba-48d8-a02b-b8285fe94797', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Kazakh Khanate: Diamond Sword (ID: 2c37bdd0-88b4-4c07-b636-1ee0616c73a6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ex4do1oyxcb0mhc', file_size = '1.17 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2c37bdd0-88b4-4c07-b636-1ee0616c73a6';

-- LINK CATEGORIES: Kazakh Khanate: Diamond Sword (['hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2c37bdd0-88b4-4c07-b636-1ee0616c73a6', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Rakhwala (ID: 2c9c622c-3ea1-4f68-a6b3-6154065784a8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2c9c622c-3ea1-4f68-a6b3-6154065784a8';

-- LINK CATEGORIES: Rakhwala (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2c9c622c-3ea1-4f68-a6b3-6154065784a8', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: A Prayer Before Dawn (ID: 2c7785ff-4672-44d8-a54b-0340cc82f5e7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2c7785ff-4672-44d8-a54b-0340cc82f5e7';

-- MARK INACTIVE & NOT FOUND: Pokémon Detective Pikachu (ID: 2cab2bbb-a87f-44b6-92b4-ab2fd91aacf7) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2cab2bbb-a87f-44b6-92b4-ab2fd91aacf7';

-- LINK CATEGORIES: Pokémon Detective Pikachu (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2cab2bbb-a87f-44b6-92b4-ab2fd91aacf7', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Wrong Turn (ID: 2ca6bae6-c44f-44a1-a282-f6e0d89afb8a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2ca6bae6-c44f-44a1-a282-f6e0d89afb8a';

-- MARK INACTIVE & NOT FOUND: Kotha Malupu (ID: 2cd9cd00-c4e3-40f3-8081-95288455608e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2cd9cd00-c4e3-40f3-8081-95288455608e';

-- LINK CATEGORIES: Kotha Malupu (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2cd9cd00-c4e3-40f3-8081-95288455608e', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Cinema Hong Kong: Wu Xia (ID: 2ce0da1e-dc8a-4fe1-ab44-b4c956d3e9ba) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2ce0da1e-dc8a-4fe1-ab44-b4c956d3e9ba';

-- MARK INACTIVE & NOT FOUND: Being James Bond (ID: 2cea216e-4190-494b-897a-82ef58526081) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2cea216e-4190-494b-897a-82ef58526081';

-- LINK CATEGORIES: Being James Bond (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2cea216e-4190-494b-897a-82ef58526081', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Nirdosh (ID: 2c892cbf-c5ff-431b-a95a-44f222dede04) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2c892cbf-c5ff-431b-a95a-44f222dede04';

-- MARK INACTIVE & NOT FOUND: Malee and the Boy (ID: 2d08024f-6c4b-4b99-84d5-73a8055fb1ae) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2d08024f-6c4b-4b99-84d5-73a8055fb1ae';

-- LINK CATEGORIES: Malee and the Boy (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2d08024f-6c4b-4b99-84d5-73a8055fb1ae', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sketch (ID: 2c91db07-6719-4ec8-93a0-45c1b33e5a47) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2c91db07-6719-4ec8-93a0-45c1b33e5a47';

-- UPDATE MOVIE: Azrael (ID: 2cb8860c-b8cc-4989-9363-90c91745233f)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/3ssclbultzezzbs', file_size = '2.11 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2cb8860c-b8cc-4989-9363-90c91745233f';

-- LINK CATEGORIES: Azrael (['dual-audio', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2cb8860c-b8cc-4989-9363-90c91745233f', 'dual-audio'), ('2cb8860c-b8cc-4989-9363-90c91745233f', 'hindi-dubbed'), ('2cb8860c-b8cc-4989-9363-90c91745233f', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Raw (ID: 2d0e6f3b-e4b6-44a7-8861-4f0a1892787e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2d0e6f3b-e4b6-44a7-8861-4f0a1892787e';

-- UPDATE MOVIE: Edaina Jaragocchu (ID: 2c9b36d0-9b62-435c-ba48-adfe854ce5fa)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/w6mj6dvvjsh9av1', file_size = '1.06 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2c9b36d0-9b62-435c-ba48-adfe854ce5fa';

-- MARK INACTIVE & NOT FOUND: Feather Christmas (ID: 2d6a1961-ed2c-4da8-9055-278b31abf71b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2d6a1961-ed2c-4da8-9055-278b31abf71b';

-- MARK INACTIVE & NOT FOUND: Kanam (ID: 2da3ffdf-cdf4-4979-9f18-5510a6d8f075) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2da3ffdf-cdf4-4979-9f18-5510a6d8f075';

-- MARK INACTIVE & NOT FOUND: Enai Noki Paayum Thota (ID: 2d3a01c6-382a-4cc7-9521-29d078eeb805) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2853139023)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2d3a01c6-382a-4cc7-9521-29d078eeb805';

-- LINK CATEGORIES: Enai Noki Paayum Thota (['action', '1080p', 'romance', 'thriller', 'south-hindi-dubbed', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2d3a01c6-382a-4cc7-9521-29d078eeb805', 'action'), ('2d3a01c6-382a-4cc7-9521-29d078eeb805', '1080p'), ('2d3a01c6-382a-4cc7-9521-29d078eeb805', 'romance'), ('2d3a01c6-382a-4cc7-9521-29d078eeb805', 'thriller'), ('2d3a01c6-382a-4cc7-9521-29d078eeb805', 'south-hindi-dubbed'), ('2d3a01c6-382a-4cc7-9521-29d078eeb805', 'hindi-dubbed'), ('2d3a01c6-382a-4cc7-9521-29d078eeb805', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Watcher (ID: 2d5eb28d-11e5-4f28-89d6-836c23072699)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lggyrc0raxgyc1g', file_size = '1.53 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2d5eb28d-11e5-4f28-89d6-836c23072699';

-- UPDATE MOVIE: Naane Varuven (ID: 2d89a76a-ed91-4044-b342-0a459e9911a2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nqroqbpsnzf2cfs', file_size = '2 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '2d89a76a-ed91-4044-b342-0a459e9911a2';

-- UPDATE MOVIE: Tara vs Bilal (ID: 2da97991-1dc2-454b-b8f2-40aace536f16)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/shbhpb_qijsbvuw', file_size = '2.07 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '2da97991-1dc2-454b-b8f2-40aace536f16';

-- MARK INACTIVE & NOT FOUND: Aashiq Banaya Aapne 2 (ID: 2dce253c-c8e3-49da-855c-0ef2b11af01c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2dce253c-c8e3-49da-855c-0ef2b11af01c';

-- LINK CATEGORIES: Aashiq Banaya Aapne 2 (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2dce253c-c8e3-49da-855c-0ef2b11af01c', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Bhairava Geetha (ID: 2d39f74f-a84e-4275-b7d9-07f415a81c90) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2d39f74f-a84e-4275-b7d9-07f415a81c90';

-- MARK INACTIVE & NOT FOUND: Cardboard Boxer (ID: 2de8b3bc-a17e-4aac-832e-5b031f1e48ed) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2de8b3bc-a17e-4aac-832e-5b031f1e48ed';

-- LINK CATEGORIES: Cardboard Boxer (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2de8b3bc-a17e-4aac-832e-5b031f1e48ed', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Guardians of the Galaxy Holiday Special (ID: 2df7a253-ba11-4084-8af6-2e5d7afee4c1) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2df7a253-ba11-4084-8af6-2e5d7afee4c1';

-- MARK INACTIVE & NOT FOUND: The Prince of the Dinosaurs (ID: 2dfe352f-5b50-47a0-abdf-f06630bf43d5) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2dfe352f-5b50-47a0-abdf-f06630bf43d5';

-- MARK INACTIVE & NOT FOUND: The Final Judgement (ID: 2e35329c-2302-470b-84b4-58b2f64dd85c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2e35329c-2302-470b-84b4-58b2f64dd85c';

-- MARK INACTIVE & NOT FOUND: Extremely Loud & Incredibly Close (ID: 2e5e2686-010a-4ac7-abac-3b74d25acf18) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2e5e2686-010a-4ac7-abac-3b74d25acf18';

-- MARK INACTIVE & NOT FOUND: The Colony (ID: 2dd8eb32-d0aa-4c64-8ac4-3a3b562dd5a0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2dd8eb32-d0aa-4c64-8ac4-3a3b562dd5a0';

-- MARK INACTIVE & NOT FOUND: Melon Rainbow (ID: 2edca7c5-8ac8-4e75-84aa-de5fe41f31f1) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2edca7c5-8ac8-4e75-84aa-de5fe41f31f1';

-- MARK INACTIVE & NOT FOUND: Thakka Thakka (ID: 2eacfff9-daeb-465e-b2d6-32ded386de69) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2eacfff9-daeb-465e-b2d6-32ded386de69';

-- UPDATE MOVIE: Girls Guns and Blood (ID: 2eb99893-799f-4e5d-98a9-1d9d0721138b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/cfflrwbpiupfr1z', file_size = '916.41 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2eb99893-799f-4e5d-98a9-1d9d0721138b';

-- UPDATE MOVIE: Emily (ID: 2e28deeb-2a58-4311-82e8-935538a11ecf)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zez3eeejaeenogt', file_size = '1.12 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2e28deeb-2a58-4311-82e8-935538a11ecf';

-- MARK INACTIVE & NOT FOUND: The Haunting Hour: Don't Think About It (ID: 2eaa4f58-fa71-4156-945c-4a147a0ddf49) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2eaa4f58-fa71-4156-945c-4a147a0ddf49';

-- LINK CATEGORIES: The Haunting Hour: Don't Think About It (['dual-audio', 'thriller', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2eaa4f58-fa71-4156-945c-4a147a0ddf49', 'dual-audio'), ('2eaa4f58-fa71-4156-945c-4a147a0ddf49', 'thriller'), ('2eaa4f58-fa71-4156-945c-4a147a0ddf49', 'hindi-dubbed'), ('2eaa4f58-fa71-4156-945c-4a147a0ddf49', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Creed III (ID: 2edd9547-b68e-4e42-9f9c-e40e5d5b2451) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2edd9547-b68e-4e42-9f9c-e40e5d5b2451';

-- MARK INACTIVE & NOT FOUND: The Bounty Hunter (ID: 2ee65182-f451-48ad-8fc8-b3fc8743ca1b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2ee65182-f451-48ad-8fc8-b3fc8743ca1b';

-- MARK INACTIVE & NOT FOUND: A Lover Betrayed (ID: 2ee556c9-898f-4282-bdec-bab6b9b31ea8) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/942589151)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2ee556c9-898f-4282-bdec-bab6b9b31ea8';

-- MARK INACTIVE & NOT FOUND: The Reaping (ID: 2f34fecf-77fe-4aed-8d96-cb8e86b50278) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2f34fecf-77fe-4aed-8d96-cb8e86b50278';

-- MARK INACTIVE & NOT FOUND: Target for Killing (ID: 2f4a0d3e-f283-4929-b755-67a5b90ba703) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2f4a0d3e-f283-4929-b755-67a5b90ba703';

-- MARK INACTIVE & NOT FOUND: Bilal: A New Breed of Hero (ID: 2eed5b2e-7a29-49ba-b57c-e5b0c96ac0ed) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2eed5b2e-7a29-49ba-b57c-e5b0c96ac0ed';

-- LINK CATEGORIES: Bilal: A New Breed of Hero (['dual-audio', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2eed5b2e-7a29-49ba-b57c-e5b0c96ac0ed', 'dual-audio'), ('2eed5b2e-7a29-49ba-b57c-e5b0c96ac0ed', 'hindi-dubbed'), ('2eed5b2e-7a29-49ba-b57c-e5b0c96ac0ed', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Shakeela (ID: 2eef7164-7a2e-4c94-b9df-d9ce93679baf) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2eef7164-7a2e-4c94-b9df-d9ce93679baf';

-- MARK INACTIVE & NOT FOUND: The Snowman (ID: 2f65d512-9b63-4ae6-b1e7-c979226ceb4d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2f65d512-9b63-4ae6-b1e7-c979226ceb4d';

-- MARK INACTIVE & NOT FOUND: Khufiya (ID: 2f5d4401-9396-4d4c-bf0f-56e2d1563021) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2f5d4401-9396-4d4c-bf0f-56e2d1563021';

-- MARK INACTIVE & NOT FOUND: Kabadadaari (ID: 2f4be422-feef-4ab0-b41a-34fb2c26ae4b) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2f4be422-feef-4ab0-b41a-34fb2c26ae4b';

-- MARK INACTIVE & NOT FOUND: Kung-Fu Zohra (ID: 2f11508e-aa3d-43de-862b-a91658341754) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/2836877496)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2f11508e-aa3d-43de-862b-a91658341754';

-- MARK INACTIVE & NOT FOUND: [REC]⁴ Apocalypse (ID: 2f82b282-bcbf-4f7b-aeac-67ff7e6da8d5) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2f82b282-bcbf-4f7b-aeac-67ff7e6da8d5';

-- MARK INACTIVE & NOT FOUND: WWE Super ShowDown 2020 (ID: 2fca0fa2-79c9-4cac-afd3-7c8f42f7f9e0) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2fca0fa2-79c9-4cac-afd3-7c8f42f7f9e0';

-- MARK INACTIVE & NOT FOUND: Darr @ the Mall (ID: 2faf1145-a8e6-4bdf-a000-02d3788b1744) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/3415626215)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2faf1145-a8e6-4bdf-a000-02d3788b1744';

-- MARK INACTIVE & NOT FOUND: WALL·E (ID: 2fcfff10-6b00-4f7b-8242-e382015f0afe) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2fcfff10-6b00-4f7b-8242-e382015f0afe';

-- LINK CATEGORIES: WALL·E (['family', 'animation', 'adventure', 'hollywood', 'hindi-dubbed', 'dual-audio', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2fcfff10-6b00-4f7b-8242-e382015f0afe', 'family'), ('2fcfff10-6b00-4f7b-8242-e382015f0afe', 'animation'), ('2fcfff10-6b00-4f7b-8242-e382015f0afe', 'adventure'), ('2fcfff10-6b00-4f7b-8242-e382015f0afe', 'hollywood'), ('2fcfff10-6b00-4f7b-8242-e382015f0afe', 'hindi-dubbed'), ('2fcfff10-6b00-4f7b-8242-e382015f0afe', 'dual-audio'), ('2fcfff10-6b00-4f7b-8242-e382015f0afe', '1080p'), ('2fcfff10-6b00-4f7b-8242-e382015f0afe', 'hd') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Tere Naal Love Ho Gaya (ID: 2f74415e-39c2-44fb-b245-7064ce5718a8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/6t1jyllw_poc84y', file_size = '1.18 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2f74415e-39c2-44fb-b245-7064ce5718a8';

-- LINK CATEGORIES: Tere Naal Love Ho Gaya (['bollywood', 'drama', 'comedy', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('2f74415e-39c2-44fb-b245-7064ce5718a8', 'bollywood'), ('2f74415e-39c2-44fb-b245-7064ce5718a8', 'drama'), ('2f74415e-39c2-44fb-b245-7064ce5718a8', 'comedy'), ('2f74415e-39c2-44fb-b245-7064ce5718a8', '1080p'), ('2f74415e-39c2-44fb-b245-7064ce5718a8', 'hd') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Frozen (ID: 2fb6ccbf-47de-4f93-a99a-ac9138614918)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hzzbban-crm1rah', file_size = '935.85 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2fb6ccbf-47de-4f93-a99a-ac9138614918';

-- UPDATE MOVIE: Pig (ID: 2f881cd7-8545-478a-9207-8fc2d4a8d901)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/v7ustszhzrhzce7', file_size = '700.39 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2f881cd7-8545-478a-9207-8fc2d4a8d901';

-- MARK INACTIVE & NOT FOUND: Hercules (ID: 2ff1c724-5232-444f-a673-e1d25d2ea012) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2ff1c724-5232-444f-a673-e1d25d2ea012';

-- UPDATE MOVIE: Kannappa (ID: 3009aedf-c684-4792-adca-5df0cf372b8d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/bfdfuuuflutulty', file_size = '3.8 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3009aedf-c684-4792-adca-5df0cf372b8d';

-- LINK CATEGORIES: Kannappa (['300mb', 'south-hindi-dubbed', 'telugu', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3009aedf-c684-4792-adca-5df0cf372b8d', '300mb'), ('3009aedf-c684-4792-adca-5df0cf372b8d', 'south-hindi-dubbed'), ('3009aedf-c684-4792-adca-5df0cf372b8d', 'telugu'), ('3009aedf-c684-4792-adca-5df0cf372b8d', 'action') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Soccer Killer (ID: 2ff11e69-17d8-4d3a-bcb7-681f22dbbe76) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '2ff11e69-17d8-4d3a-bcb7-681f22dbbe76';

-- MARK INACTIVE & NOT FOUND: Dauntless: The Battle of Midway (ID: 3036f9cc-4c96-4ebf-95bf-45f08cae5615) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3036f9cc-4c96-4ebf-95bf-45f08cae5615';

-- UPDATE MOVIE: Mann (ID: 2fde516f-10d7-4213-9d77-1f8ba0becb58)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hheohrwppy0__iv', file_size = '1.37 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '2fde516f-10d7-4213-9d77-1f8ba0becb58';

-- MARK INACTIVE & NOT FOUND: Orphan (ID: 300e1bb5-a6ff-4be9-be5f-aa06acdadef5) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '300e1bb5-a6ff-4be9-be5f-aa06acdadef5';

-- LINK CATEGORIES: Orphan (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('300e1bb5-a6ff-4be9-be5f-aa06acdadef5', 'hindi-dubbed'), ('300e1bb5-a6ff-4be9-be5f-aa06acdadef5', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Krull (ID: 3012359a-aae9-4e2a-a020-2b306daed76d) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3012359a-aae9-4e2a-a020-2b306daed76d';

-- LINK CATEGORIES: Krull (['300mb', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3012359a-aae9-4e2a-a020-2b306daed76d', '300mb'), ('3012359a-aae9-4e2a-a020-2b306daed76d', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Chip 'n Dale: Rescue Rangers (ID: 302170e4-bd28-4a03-ac44-69e3740077b8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/yxvcexke1wl1lpx', file_size = '842.98 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '302170e4-bd28-4a03-ac44-69e3740077b8';

-- MARK INACTIVE & NOT FOUND: Qaidi Band (ID: 303f1004-ccff-4040-a6ae-ea5b2cc539f7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '303f1004-ccff-4040-a6ae-ea5b2cc539f7';

-- LINK CATEGORIES: Qaidi Band (['bollywood', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('303f1004-ccff-4040-a6ae-ea5b2cc539f7', 'bollywood'), ('303f1004-ccff-4040-a6ae-ea5b2cc539f7', '1080p'), ('303f1004-ccff-4040-a6ae-ea5b2cc539f7', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Say I Do (ID: 305e7b23-d29e-4e7d-a6af-adf4554d944d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '305e7b23-d29e-4e7d-a6af-adf4554d944d';

-- LINK CATEGORIES: Say I Do (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('305e7b23-d29e-4e7d-a6af-adf4554d944d', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Underground Cartels (ID: 309b31f5-f432-471d-b780-b2a071eda681) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '309b31f5-f432-471d-b780-b2a071eda681';

-- MARK INACTIVE & NOT FOUND: It's Kind of a Funny Story (ID: 3047d5d0-6011-4c48-855a-aead84086253) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3047d5d0-6011-4c48-855a-aead84086253';

-- MARK INACTIVE & NOT FOUND: I Heart Robots (ID: 304c4f3b-3ab2-4a4b-83ed-9c4f7a88f0ba) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '304c4f3b-3ab2-4a4b-83ed-9c4f7a88f0ba';

-- UPDATE MOVIE: The Dark Knight Rises (ID: 309f3e6f-264d-4683-be05-d840d2e450d2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/9hv916dccilc2g6', file_size = '3.07 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '309f3e6f-264d-4683-be05-d840d2e450d2';

-- UPDATE MOVIE: Yes I Am Student (ID: 307cb715-b20f-49ba-846f-ce7f5a9d7895)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/0y0attttbhljwmj', file_size = '1.76 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '307cb715-b20f-49ba-846f-ce7f5a9d7895';

-- UPDATE MOVIE: Dragon Fury (ID: 308700f9-5471-4cd1-83ad-7c6253ee3991)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/yiw11vvb1bt24yv', file_size = '937.63 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '308700f9-5471-4cd1-83ad-7c6253ee3991';

-- UPDATE MOVIE: Justice League (ID: 30acd61f-b2a0-4e27-96ab-c4de298ae724)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1wvuee8veheiah4', file_size = '2.23 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '30acd61f-b2a0-4e27-96ab-c4de298ae724';

-- MARK INACTIVE & NOT FOUND: WWE Night of Champions 2012 (ID: 30ca509a-3773-4535-be47-013d15585990) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '30ca509a-3773-4535-be47-013d15585990';

-- MARK INACTIVE & NOT FOUND: Casualties of War (ID: 30a9d664-f438-4d34-bcdb-482d692a0168) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '30a9d664-f438-4d34-bcdb-482d692a0168';

-- LINK CATEGORIES: Casualties of War (['300mb', 'crime', 'action', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('30a9d664-f438-4d34-bcdb-482d692a0168', '300mb'), ('30a9d664-f438-4d34-bcdb-482d692a0168', 'crime'), ('30a9d664-f438-4d34-bcdb-482d692a0168', 'action'), ('30a9d664-f438-4d34-bcdb-482d692a0168', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Road to Sangam (ID: 30bd7d69-84f0-438c-8c01-05d6e5d729d0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '30bd7d69-84f0-438c-8c01-05d6e5d729d0';

-- MARK INACTIVE & NOT FOUND: Violent Night (ID: 30bcc461-06d9-4702-ae18-3385eee76358) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '30bcc461-06d9-4702-ae18-3385eee76358';

-- UPDATE MOVIE: Big Game (ID: 30c8766a-2c24-4321-8a46-104501faa66c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ffgxljwudxldltv', file_size = '1.58 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '30c8766a-2c24-4321-8a46-104501faa66c';

-- LINK CATEGORIES: Big Game (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('30c8766a-2c24-4321-8a46-104501faa66c', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Venky Mama (ID: 30d6dba3-cb6b-434d-a014-55eaa53ff5e5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/n81d4nz4n3zdo21', file_size = '2.9 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '30d6dba3-cb6b-434d-a014-55eaa53ff5e5';

-- MARK INACTIVE & NOT FOUND: The Dig (ID: 31134d1c-9ed3-44da-a804-2cee86a3c704) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '31134d1c-9ed3-44da-a804-2cee86a3c704';

-- MARK INACTIVE & NOT FOUND: Chanti (ID: 314c81ce-da1f-4304-bfd9-6a289090d6f5) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '314c81ce-da1f-4304-bfd9-6a289090d6f5';

-- MARK INACTIVE & NOT FOUND: Dil Juunglee (ID: 3178634f-3881-4b93-8874-150cf75fde2c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3178634f-3881-4b93-8874-150cf75fde2c';

-- UPDATE MOVIE: Madha Yaanai Koottam (ID: 312dd7b4-92f8-4194-8b6a-4f73fd06e397)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/9195zhbhktqw4zz', file_size = '2.09 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '312dd7b4-92f8-4194-8b6a-4f73fd06e397';

-- UPDATE MOVIE: The Big Bull (ID: 30fe518d-f7d5-42b6-bd79-ab250e110a60)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/eu5nwvwewjk5uyy', file_size = '2.74 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '30fe518d-f7d5-42b6-bd79-ab250e110a60';

-- UPDATE MOVIE: Naan Mahaan Alla (ID: 318105ff-0678-4145-8ab6-2e1b4716c0f6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rgvislmlvvvgwll', file_size = '2.63 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '318105ff-0678-4145-8ab6-2e1b4716c0f6';

-- LINK CATEGORIES: Naan Mahaan Alla (['300mb', 'south-hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('318105ff-0678-4145-8ab6-2e1b4716c0f6', '300mb'), ('318105ff-0678-4145-8ab6-2e1b4716c0f6', 'south-hindi-dubbed'), ('318105ff-0678-4145-8ab6-2e1b4716c0f6', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Life Is Beautiful (1997) (ID: 319e1f8d-24a5-4eab-93ad-389e18498b44) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '319e1f8d-24a5-4eab-93ad-389e18498b44';

-- MARK INACTIVE & NOT FOUND: 7:11 PM (ID: 30e37ced-518c-4575-8fb3-0396c306022e) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '30e37ced-518c-4575-8fb3-0396c306022e';

-- MARK INACTIVE & NOT FOUND: Krishnamma Kalipindi Iddarini (ID: 31cd5d4a-4c54-404b-a0da-cd5957f33f5b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '31cd5d4a-4c54-404b-a0da-cd5957f33f5b';

-- LINK CATEGORIES: Krishnamma Kalipindi Iddarini (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('31cd5d4a-4c54-404b-a0da-cd5957f33f5b', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: King Zhuan Yu (ID: 31ceb57a-fff9-4264-91ef-da0c03c0ccb8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '31ceb57a-fff9-4264-91ef-da0c03c0ccb8';

-- MARK INACTIVE & NOT FOUND: The Girl with the Dragon Tattoo (ID: 3182b0e6-3cb1-4e60-809e-1ab3b2963fdc) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3182b0e6-3cb1-4e60-809e-1ab3b2963fdc';

-- LINK CATEGORIES: The Girl with the Dragon Tattoo (['crime', 'mystery', 'drama', 'hollywood', 'hindi-dubbed', 'dual-audio', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3182b0e6-3cb1-4e60-809e-1ab3b2963fdc', 'crime'), ('3182b0e6-3cb1-4e60-809e-1ab3b2963fdc', 'mystery'), ('3182b0e6-3cb1-4e60-809e-1ab3b2963fdc', 'drama'), ('3182b0e6-3cb1-4e60-809e-1ab3b2963fdc', 'hollywood'), ('3182b0e6-3cb1-4e60-809e-1ab3b2963fdc', 'hindi-dubbed'), ('3182b0e6-3cb1-4e60-809e-1ab3b2963fdc', 'dual-audio'), ('3182b0e6-3cb1-4e60-809e-1ab3b2963fdc', '1080p'), ('3182b0e6-3cb1-4e60-809e-1ab3b2963fdc', 'hd') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Gasoline Alley (ID: 31b6e8e2-71a6-401d-8f64-dd0ad7bcce77)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/cfbi2n7lct7vhnc', file_size = '1.83 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '31b6e8e2-71a6-401d-8f64-dd0ad7bcce77';

-- UPDATE MOVIE: Maanikya (ID: 31f6b817-e542-461e-b9ab-4124cab5d381)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dw3nzj3sq8sjdm3', file_size = '2.56 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '31f6b817-e542-461e-b9ab-4124cab5d381';

-- UPDATE MOVIE: Repeat (ID: 3203f072-c548-474c-8e4a-ff7555852086)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lpbheobbocwmbm_', file_size = '2.1 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3203f072-c548-474c-8e4a-ff7555852086';

-- MARK INACTIVE & NOT FOUND: Triggered (ID: 325a870c-d40e-47ca-9b39-114df73c6ec3) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '325a870c-d40e-47ca-9b39-114df73c6ec3';

-- MARK INACTIVE & NOT FOUND: Terminator Genisys (ID: 31b46cfa-5d6f-4078-a2c5-0def5ee0945b) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '31b46cfa-5d6f-4078-a2c5-0def5ee0945b';

-- MARK INACTIVE & NOT FOUND: Total Dhamaal (ID: 32444363-5eb1-44b3-bfb8-0d975f842039) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '32444363-5eb1-44b3-bfb8-0d975f842039';

-- MARK INACTIVE & NOT FOUND: Martial Universe: The Immortal Stone of Nirvana (ID: 3274b1df-0760-4362-8884-9cd48fb8a55a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3274b1df-0760-4362-8884-9cd48fb8a55a';

-- MARK INACTIVE & NOT FOUND: Vaasu Naan Pakka Commercial (ID: 32a725c4-24c2-4c0a-b62f-475e5ef439db) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '32a725c4-24c2-4c0a-b62f-475e5ef439db';

-- UPDATE MOVIE: The Little Things (ID: 32356acd-5a13-413d-8809-6d10134c54af)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/2wf91wgijga9gjw', file_size = '2.21 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '32356acd-5a13-413d-8809-6d10134c54af';

-- MARK INACTIVE & NOT FOUND: Ted K (ID: 3249e934-998c-4ba2-a32b-303f2f77639a) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2969228013)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3249e934-998c-4ba2-a32b-303f2f77639a';

-- MARK INACTIVE & NOT FOUND: Mukkabaaz (ID: 3298a838-6041-46fb-b2c8-1d5dfe7ea6f1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3298a838-6041-46fb-b2c8-1d5dfe7ea6f1';

-- UPDATE MOVIE: Bajirao Mastani (ID: 328252fd-6d0e-458b-8c82-dabc9a3a6400)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/yyympybuly_kym1', file_size = '2.77 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '328252fd-6d0e-458b-8c82-dabc9a3a6400';

-- UPDATE MOVIE: Gremlin (ID: 32bd4518-18af-4770-8581-59709335e8d4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ccnb5nrpn6xcep6', file_size = '772.13 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '32bd4518-18af-4770-8581-59709335e8d4';

-- UPDATE MOVIE: Back in Action (ID: 32f1aa03-5e1a-4a68-9b70-22a9b37e9b3e)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/drxedescacorrko', file_size = '2.43 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '32f1aa03-5e1a-4a68-9b70-22a9b37e9b3e';

-- LINK CATEGORIES: Back in Action (['hollywood', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('32f1aa03-5e1a-4a68-9b70-22a9b37e9b3e', 'hollywood'), ('32f1aa03-5e1a-4a68-9b70-22a9b37e9b3e', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Armageddon (ID: 32ed3e16-e00b-47d9-8011-174dda172ff5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '32ed3e16-e00b-47d9-8011-174dda172ff5';

-- LINK CATEGORIES: Armageddon (['sci-fi', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('32ed3e16-e00b-47d9-8011-174dda172ff5', 'sci-fi'), ('32ed3e16-e00b-47d9-8011-174dda172ff5', 'hindi-dubbed'), ('32ed3e16-e00b-47d9-8011-174dda172ff5', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Feel the Beat (ID: 32e0092a-4217-4eeb-85d1-c574fe720a4d) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '32e0092a-4217-4eeb-85d1-c574fe720a4d';

-- UPDATE MOVIE: Abraham Lincoln: Vampire Hunter (ID: 32efc81e-f162-4cd2-9ba8-f4e04d75a60b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jn1t1gt7gxzijjv', file_size = '1.9 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '32efc81e-f162-4cd2-9ba8-f4e04d75a60b';

-- MARK INACTIVE & NOT FOUND: How High (ID: 33219fbc-31c6-4043-927b-0b5bb3362ee1) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/3159701204)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '33219fbc-31c6-4043-927b-0b5bb3362ee1';

-- LINK CATEGORIES: How High (['300mb', 'fantasy', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('33219fbc-31c6-4043-927b-0b5bb3362ee1', '300mb'), ('33219fbc-31c6-4043-927b-0b5bb3362ee1', 'fantasy'), ('33219fbc-31c6-4043-927b-0b5bb3362ee1', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Maximum Risk (ID: 3312a891-57ea-4056-b3e2-1b71f3a82064)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vs7cie7747cqac1', file_size = '1.04 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3312a891-57ea-4056-b3e2-1b71f3a82064';

-- LINK CATEGORIES: Maximum Risk (['hindi-dubbed', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3312a891-57ea-4056-b3e2-1b71f3a82064', 'hindi-dubbed'), ('3312a891-57ea-4056-b3e2-1b71f3a82064', 'dual-audio'), ('3312a891-57ea-4056-b3e2-1b71f3a82064', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: 9 Songs (ID: 332df4b4-26dd-4610-94d7-e222b56fce6d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '332df4b4-26dd-4610-94d7-e222b56fce6d';

-- UPDATE MOVIE: Heart Eyes (ID: 33486d56-7ffa-4d9a-b84d-4d633ecf6b24)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/n1xbyhl4q411rhe', file_size = '2.06 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '33486d56-7ffa-4d9a-b84d-4d633ecf6b24';

-- LINK CATEGORIES: Heart Eyes (['300mb', 'hollywood', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('33486d56-7ffa-4d9a-b84d-4d633ecf6b24', '300mb'), ('33486d56-7ffa-4d9a-b84d-4d633ecf6b24', 'hollywood'), ('33486d56-7ffa-4d9a-b84d-4d633ecf6b24', 'hindi-dubbed'), ('33486d56-7ffa-4d9a-b84d-4d633ecf6b24', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: East Dragon (ID: 334605a1-7859-4716-a788-0cfef681afb2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/911rbnan1ksakhs', file_size = '1.26 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '334605a1-7859-4716-a788-0cfef681afb2';

-- UPDATE MOVIE: Abrahaminte Santhathikal (ID: 33324880-5cb9-4413-b5d6-d4607a2adafd)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/up_6ig_uyh_pfzh', file_size = '2.32 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '33324880-5cb9-4413-b5d6-d4607a2adafd';

-- MARK INACTIVE & NOT FOUND: Big Fat Liar (ID: 332a6812-09d7-4798-a752-8044216425d0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '332a6812-09d7-4798-a752-8044216425d0';

-- LINK CATEGORIES: Big Fat Liar (['family', 'adventure', 'hollywood', 'hindi-dubbed', 'dual-audio', 'comedy', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('332a6812-09d7-4798-a752-8044216425d0', 'family'), ('332a6812-09d7-4798-a752-8044216425d0', 'adventure'), ('332a6812-09d7-4798-a752-8044216425d0', 'hollywood'), ('332a6812-09d7-4798-a752-8044216425d0', 'hindi-dubbed'), ('332a6812-09d7-4798-a752-8044216425d0', 'dual-audio'), ('332a6812-09d7-4798-a752-8044216425d0', 'comedy'), ('332a6812-09d7-4798-a752-8044216425d0', '1080p'), ('332a6812-09d7-4798-a752-8044216425d0', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Milestone Generations (ID: 337542b8-fed0-41c3-b836-e487986fcc04) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '337542b8-fed0-41c3-b836-e487986fcc04';

-- MARK INACTIVE & NOT FOUND: Incoming (2018) (ID: 338b4efd-9723-4843-b07a-bc775381267b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '338b4efd-9723-4843-b07a-bc775381267b';

-- MARK INACTIVE & NOT FOUND: Kaaki Sattai (ID: 33547a1b-fef9-4025-8c4c-781b68e2ebbf) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '33547a1b-fef9-4025-8c4c-781b68e2ebbf';

-- LINK CATEGORIES: Kaaki Sattai (['south-hindi-dubbed', 'tamil', 'action', 'hindi-dubbed', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('33547a1b-fef9-4025-8c4c-781b68e2ebbf', 'south-hindi-dubbed'), ('33547a1b-fef9-4025-8c4c-781b68e2ebbf', 'tamil'), ('33547a1b-fef9-4025-8c4c-781b68e2ebbf', 'action'), ('33547a1b-fef9-4025-8c4c-781b68e2ebbf', 'hindi-dubbed'), ('33547a1b-fef9-4025-8c4c-781b68e2ebbf', '1080p'), ('33547a1b-fef9-4025-8c4c-781b68e2ebbf', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Petromax (ID: 333d347d-5422-4f5d-9f56-1e35cee018fb) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '333d347d-5422-4f5d-9f56-1e35cee018fb';

-- LINK CATEGORIES: Petromax (['300mb', 'south-hindi-dubbed', 'horror', 'hindi-dubbed', 'comedy', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('333d347d-5422-4f5d-9f56-1e35cee018fb', '300mb'), ('333d347d-5422-4f5d-9f56-1e35cee018fb', 'south-hindi-dubbed'), ('333d347d-5422-4f5d-9f56-1e35cee018fb', 'horror'), ('333d347d-5422-4f5d-9f56-1e35cee018fb', 'hindi-dubbed'), ('333d347d-5422-4f5d-9f56-1e35cee018fb', 'comedy'), ('333d347d-5422-4f5d-9f56-1e35cee018fb', '1080p'), ('333d347d-5422-4f5d-9f56-1e35cee018fb', 'hd') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Puff: Wonders of the Reef (ID: 3395ba07-3813-43dc-b410-0a7475d8e820)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ttd2dbjzd1ezv19', file_size = '1.15 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3395ba07-3813-43dc-b410-0a7475d8e820';

-- MARK INACTIVE & NOT FOUND: Flightplan (ID: 33c424c1-9b69-4acf-80d0-0dca4734f9e1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '33c424c1-9b69-4acf-80d0-0dca4734f9e1';

-- LINK CATEGORIES: Flightplan (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('33c424c1-9b69-4acf-80d0-0dca4734f9e1', 'hindi-dubbed'), ('33c424c1-9b69-4acf-80d0-0dca4734f9e1', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Vinara Sodara Veera Kumara (ID: 336f4e10-4975-429d-8ade-07d9cf39a6e6) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '336f4e10-4975-429d-8ade-07d9cf39a6e6';

-- LINK CATEGORIES: Vinara Sodara Veera Kumara (['300mb', 'south-hindi-dubbed', 'telugu', 'drama', 'romance', 'hindi-dubbed', 'dual-audio', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('336f4e10-4975-429d-8ade-07d9cf39a6e6', '300mb'), ('336f4e10-4975-429d-8ade-07d9cf39a6e6', 'south-hindi-dubbed'), ('336f4e10-4975-429d-8ade-07d9cf39a6e6', 'telugu'), ('336f4e10-4975-429d-8ade-07d9cf39a6e6', 'drama'), ('336f4e10-4975-429d-8ade-07d9cf39a6e6', 'romance'), ('336f4e10-4975-429d-8ade-07d9cf39a6e6', 'hindi-dubbed'), ('336f4e10-4975-429d-8ade-07d9cf39a6e6', 'dual-audio'), ('336f4e10-4975-429d-8ade-07d9cf39a6e6', '1080p'), ('336f4e10-4975-429d-8ade-07d9cf39a6e6', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Atone (ID: 339ca85a-0aa1-4a9b-9c20-96a57f2bbd47) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/948858015)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '339ca85a-0aa1-4a9b-9c20-96a57f2bbd47';

-- MARK INACTIVE & NOT FOUND: Slender Man (ID: 33c2ec41-e421-4446-aefc-9b81cadc792c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '33c2ec41-e421-4446-aefc-9b81cadc792c';

-- MARK INACTIVE & NOT FOUND: Game of Death II (ID: 33d68db3-42b5-4401-8b3b-8fede42ac329) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '33d68db3-42b5-4401-8b3b-8fede42ac329';

-- LINK CATEGORIES: Game of Death II (['mystery', 'hollywood', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('33d68db3-42b5-4401-8b3b-8fede42ac329', 'mystery'), ('33d68db3-42b5-4401-8b3b-8fede42ac329', 'hollywood'), ('33d68db3-42b5-4401-8b3b-8fede42ac329', 'hindi-dubbed'), ('33d68db3-42b5-4401-8b3b-8fede42ac329', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Ratham (ID: 33fea8a6-dc05-415b-8fd1-1a1c1cab1b6f)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/qj93ltabrall6bq', file_size = '2.88 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '33fea8a6-dc05-415b-8fd1-1a1c1cab1b6f';

-- LINK CATEGORIES: Ratham (['300mb', 'south-hindi-dubbed', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('33fea8a6-dc05-415b-8fd1-1a1c1cab1b6f', '300mb'), ('33fea8a6-dc05-415b-8fd1-1a1c1cab1b6f', 'south-hindi-dubbed'), ('33fea8a6-dc05-415b-8fd1-1a1c1cab1b6f', 'hindi-dubbed'), ('33fea8a6-dc05-415b-8fd1-1a1c1cab1b6f', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Varshangalkku Shesham (ID: 341592b2-690b-4cbe-b2ec-fe18aa1ce46c)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/tbuuukyyq3sqqcq', file_size = '3.41 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '341592b2-690b-4cbe-b2ec-fe18aa1ce46c';

-- MARK INACTIVE & NOT FOUND: Vanished: Searching for My Sister (ID: 340f55a2-78be-44d7-8574-aa7b5f377024) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '340f55a2-78be-44d7-8574-aa7b5f377024';

-- MARK INACTIVE & NOT FOUND: Simply Irresistible (ID: 3481d3b6-1aa3-4fa4-8f27-7f86890f6e69) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3481d3b6-1aa3-4fa4-8f27-7f86890f6e69';

-- MARK INACTIVE & NOT FOUND: Kaka Ji (ID: 3419cfcd-abde-459f-8160-ab1b26345291) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3419cfcd-abde-459f-8160-ab1b26345291';

-- MARK INACTIVE & NOT FOUND: Golmaal Again (ID: 34312a1c-4617-4771-94b3-868da1f68275) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '34312a1c-4617-4771-94b3-868da1f68275';

-- LINK CATEGORIES: Golmaal Again (['bollywood', '300mb', 'fantasy', 'action', 'comedy', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('34312a1c-4617-4771-94b3-868da1f68275', 'bollywood'), ('34312a1c-4617-4771-94b3-868da1f68275', '300mb'), ('34312a1c-4617-4771-94b3-868da1f68275', 'fantasy'), ('34312a1c-4617-4771-94b3-868da1f68275', 'action'), ('34312a1c-4617-4771-94b3-868da1f68275', 'comedy'), ('34312a1c-4617-4771-94b3-868da1f68275', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Lucca's World (ID: 344e7682-cde0-4cb5-a285-f921805407c3)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/s4dajaauwdu3hrs', file_size = '2.02 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '344e7682-cde0-4cb5-a285-f921805407c3';

-- LINK CATEGORIES: Lucca's World (['hollywood', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('344e7682-cde0-4cb5-a285-f921805407c3', 'hollywood'), ('344e7682-cde0-4cb5-a285-f921805407c3', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Shark Bait (ID: 34394c36-3e51-4adc-91e4-cd3ef63f431a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pgbokirgnxipkhw', file_size = '735.17 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '34394c36-3e51-4adc-91e4-cd3ef63f431a';

-- MARK INACTIVE & NOT FOUND: Secret in Their Eyes (ID: 349aaa77-226b-482f-9eef-2da17fb4254a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '349aaa77-226b-482f-9eef-2da17fb4254a';

-- UPDATE MOVIE: Enforcement (ID: 34835a38-54d3-4af4-8718-b5b39a452e02)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/48w2bbboejnbg9t', file_size = '1.09 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '34835a38-54d3-4af4-8718-b5b39a452e02';

-- MARK INACTIVE & NOT FOUND: Kanaka (ID: 3491ef3d-5bcd-45c5-9a25-49e11008d220) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3491ef3d-5bcd-45c5-9a25-49e11008d220';

-- MARK INACTIVE & NOT FOUND: Hyenas (ID: 3499b556-b151-4b52-8a81-aa2fbff88a94) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3499b556-b151-4b52-8a81-aa2fbff88a94';

-- UPDATE MOVIE: A Second Chance: Rivals! (ID: 34884b6b-e666-4efb-a9d3-7b9bd66f7f72)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/j_1pbbj8vnkvjmv', file_size = '920.57 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '34884b6b-e666-4efb-a9d3-7b9bd66f7f72';

-- MARK INACTIVE & NOT FOUND: The Manchurian Candidate (ID: 34c48553-0ebe-4d7b-8bb5-c32b0baeb369) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '34c48553-0ebe-4d7b-8bb5-c32b0baeb369';

-- LINK CATEGORIES: The Manchurian Candidate (['sci-fi', 'mystery', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('34c48553-0ebe-4d7b-8bb5-c32b0baeb369', 'sci-fi'), ('34c48553-0ebe-4d7b-8bb5-c32b0baeb369', 'mystery'), ('34c48553-0ebe-4d7b-8bb5-c32b0baeb369', 'hindi-dubbed'), ('34c48553-0ebe-4d7b-8bb5-c32b0baeb369', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Kahaani (ID: 349b82ee-9a6a-4d22-99c6-b41c83caa5e8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/q617q1fb5f3gjqs', file_size = '1.09 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '349b82ee-9a6a-4d22-99c6-b41c83caa5e8';

-- LINK CATEGORIES: Kahaani (['bollywood', 'mystery', 'thriller', 'bluray', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('349b82ee-9a6a-4d22-99c6-b41c83caa5e8', 'bollywood'), ('349b82ee-9a6a-4d22-99c6-b41c83caa5e8', 'mystery'), ('349b82ee-9a6a-4d22-99c6-b41c83caa5e8', 'thriller'), ('349b82ee-9a6a-4d22-99c6-b41c83caa5e8', 'bluray'), ('349b82ee-9a6a-4d22-99c6-b41c83caa5e8', '1080p'), ('349b82ee-9a6a-4d22-99c6-b41c83caa5e8', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sri Sri Sri Raja Vaaru (ID: 35460b3a-ffa7-426e-9426-2b4917c3fd94) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '35460b3a-ffa7-426e-9426-2b4917c3fd94';

-- MARK INACTIVE & NOT FOUND: Zora la vampira (ID: 354e5a85-6881-4536-ad44-5e1f7a4cea96) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '354e5a85-6881-4536-ad44-5e1f7a4cea96';

-- MARK INACTIVE & NOT FOUND: Brand Babu (ID: 3503734d-1c0e-47c0-8ff9-e4cfc22f7d71) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3503734d-1c0e-47c0-8ff9-e4cfc22f7d71';

-- MARK INACTIVE & NOT FOUND: The Four 3 (ID: 3510d363-313f-45c4-b37f-20824574b041) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3510d363-313f-45c4-b37f-20824574b041';

-- MARK INACTIVE & NOT FOUND: Matrubhoomi: A Nation Without Women (ID: 3535afc7-debd-481c-bc60-cb12de85f8b9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3535afc7-debd-481c-bc60-cb12de85f8b9';

-- LINK CATEGORIES: Matrubhoomi: A Nation Without Women (['1080p', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3535afc7-debd-481c-bc60-cb12de85f8b9', '1080p'), ('3535afc7-debd-481c-bc60-cb12de85f8b9', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: WWE SummerSlam 2025: Saturday (ID: 35667446-91bc-4abe-b58e-926ee58d3721) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '35667446-91bc-4abe-b58e-926ee58d3721';

-- MARK INACTIVE & NOT FOUND: Blade: Trinity (ID: 356a7ee8-61a4-4321-88d9-4874bdeeb89d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '356a7ee8-61a4-4321-88d9-4874bdeeb89d';

-- MARK INACTIVE & NOT FOUND: Perfume: The Story of a Murderer (ID: 356e199b-b1a8-4340-b0ad-20b3293be3ce) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '356e199b-b1a8-4340-b0ad-20b3293be3ce';

-- MARK INACTIVE & NOT FOUND: Akaash Vani (ID: 355b294e-0adb-4c55-b1bd-20adbf8a6d56) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '355b294e-0adb-4c55-b1bd-20adbf8a6d56';

-- MARK INACTIVE & NOT FOUND: Primal Fear (ID: 35c54625-9095-4d3e-b778-d2d0f26a56cf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '35c54625-9095-4d3e-b778-d2d0f26a56cf';

-- LINK CATEGORIES: Primal Fear (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('35c54625-9095-4d3e-b778-d2d0f26a56cf', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Cross Wars (ID: 35107e1e-2b10-4803-8826-9389f2a0b345) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '35107e1e-2b10-4803-8826-9389f2a0b345';

-- MARK INACTIVE & NOT FOUND: Missing on a Weekend (ID: 357f98ec-fd90-4706-bce3-59e787ffd97d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '357f98ec-fd90-4706-bce3-59e787ffd97d';

-- MARK INACTIVE & NOT FOUND: God's Crooked Lines (ID: 35a28688-639c-4caf-9e1f-720f1e930ac8) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/3649513039)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '35a28688-639c-4caf-9e1f-720f1e930ac8';

-- MARK INACTIVE & NOT FOUND: Pokkiri Raja (ID: 35d4dad0-ed11-4b5e-be3a-dbe2e73d4a26) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '35d4dad0-ed11-4b5e-be3a-dbe2e73d4a26';

-- UPDATE MOVIE: Antlers (ID: 35aa865d-5e75-4499-b55f-3c4dc5ccc552)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/375fqtqqz3woizz', file_size = '869.2 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '35aa865d-5e75-4499-b55f-3c4dc5ccc552';

-- MARK INACTIVE & NOT FOUND: 30 Days of Night (ID: 35e63884-550b-4dab-8bdc-2b1c34836c34) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '35e63884-550b-4dab-8bdc-2b1c34836c34';

-- LINK CATEGORIES: 30 Days of Night (['300mb', 'action', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('35e63884-550b-4dab-8bdc-2b1c34836c34', '300mb'), ('35e63884-550b-4dab-8bdc-2b1c34836c34', 'action'), ('35e63884-550b-4dab-8bdc-2b1c34836c34', 'hindi-dubbed'), ('35e63884-550b-4dab-8bdc-2b1c34836c34', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Three Wise Men and a Baby (ID: 3600b3f8-d5d7-4a9e-93a0-8e9e337e98ba) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3600b3f8-d5d7-4a9e-93a0-8e9e337e98ba';

-- MARK INACTIVE & NOT FOUND: Maryan (ID: 35d88b37-834d-4fd5-95a4-e56158a3b4bf) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '35d88b37-834d-4fd5-95a4-e56158a3b4bf';

-- LINK CATEGORIES: Maryan (['300mb', 'south-hindi-dubbed', 'drama', 'romance', 'thriller', 'action', 'hindi-dubbed', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('35d88b37-834d-4fd5-95a4-e56158a3b4bf', '300mb'), ('35d88b37-834d-4fd5-95a4-e56158a3b4bf', 'south-hindi-dubbed'), ('35d88b37-834d-4fd5-95a4-e56158a3b4bf', 'drama'), ('35d88b37-834d-4fd5-95a4-e56158a3b4bf', 'romance'), ('35d88b37-834d-4fd5-95a4-e56158a3b4bf', 'thriller'), ('35d88b37-834d-4fd5-95a4-e56158a3b4bf', 'action'), ('35d88b37-834d-4fd5-95a4-e56158a3b4bf', 'hindi-dubbed'), ('35d88b37-834d-4fd5-95a4-e56158a3b4bf', '1080p'), ('35d88b37-834d-4fd5-95a4-e56158a3b4bf', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Barroz: Guardian of Treasures (ID: 360cbf68-4c83-4699-aad4-9c8b513550fb) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '360cbf68-4c83-4699-aad4-9c8b513550fb';

-- MARK INACTIVE & NOT FOUND: You Are Here (ID: 364a784e-86a1-434e-af0c-c8692f8db960) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '364a784e-86a1-434e-af0c-c8692f8db960';

-- UPDATE MOVIE: Badlapur (ID: 35de1632-54ba-41d2-b029-4e411e0c938c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rdasmmawrkbwyzm', file_size = '1.16 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '35de1632-54ba-41d2-b029-4e411e0c938c';

-- UPDATE MOVIE: Fanaa (ID: 35e68b69-f369-4ecb-ac04-a430a27bee10)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8bheu1ejotbej1o', file_size = '1.51 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '35e68b69-f369-4ecb-ac04-a430a27bee10';

-- LINK CATEGORIES: Fanaa (['bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('35e68b69-f369-4ecb-ac04-a430a27bee10', 'bluray') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Dual (ID: 35ebe8ae-4d99-4f5e-8f76-a511c3c3e1bd)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/mspvaqkjq19tgga', file_size = '843.03 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '35ebe8ae-4d99-4f5e-8f76-a511c3c3e1bd';

-- MARK INACTIVE & NOT FOUND: Say Cheese (ID: 36794ec2-426f-4775-8a4b-bc523fa654d3) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '36794ec2-426f-4775-8a4b-bc523fa654d3';

-- LINK CATEGORIES: Say Cheese (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('36794ec2-426f-4775-8a4b-bc523fa654d3', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Redline (ID: 3609da3f-5de3-4f38-8c77-19725e6f3140) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3609da3f-5de3-4f38-8c77-19725e6f3140';

-- LINK CATEGORIES: Redline (['hollywood', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3609da3f-5de3-4f38-8c77-19725e6f3140', 'hollywood'), ('3609da3f-5de3-4f38-8c77-19725e6f3140', 'hindi-dubbed'), ('3609da3f-5de3-4f38-8c77-19725e6f3140', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Chasing Amy (ID: 368cde8f-3711-43ee-a595-087007404250) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '368cde8f-3711-43ee-a595-087007404250';

-- MARK INACTIVE & NOT FOUND: Incantation (ID: 365ba2eb-dd94-4a61-b9ba-dd573d8a9402) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '365ba2eb-dd94-4a61-b9ba-dd573d8a9402';

-- MARK INACTIVE & NOT FOUND: Sammohanam (ID: 36792318-c37c-470d-a059-cb2efc11789b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '36792318-c37c-470d-a059-cb2efc11789b';

-- UPDATE MOVIE: Pleasure (ID: 365354f9-a136-43ba-bc88-e04a3c9b0b33)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hq7f7vj334tq13f', file_size = '795.37 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '365354f9-a136-43ba-bc88-e04a3c9b0b33';

-- UPDATE MOVIE: The Intruder (ID: 36821a7a-cf13-4cd4-8780-9d66a14e4204)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/fcqfhcpd9d9ll6a', file_size = '1.93 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '36821a7a-cf13-4cd4-8780-9d66a14e4204';

-- UPDATE MOVIE: Soch Toh Parey (ID: 36bcc3e2-5b80-4756-94d7-9348b14f0136)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ry1obcebpbocbu8', file_size = '2.47 GB', status = 'active', updated_at = NOW(), quality = '1080p', director = 'Pankaj Verma' WHERE id = '36bcc3e2-5b80-4756-94d7-9348b14f0136';

-- LINK CATEGORIES: Soch Toh Parey (['punjabi', '300mb', 'romance', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('36bcc3e2-5b80-4756-94d7-9348b14f0136', 'punjabi'), ('36bcc3e2-5b80-4756-94d7-9348b14f0136', '300mb'), ('36bcc3e2-5b80-4756-94d7-9348b14f0136', 'romance'), ('36bcc3e2-5b80-4756-94d7-9348b14f0136', 'comedy') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Kora Kagazz (ID: 36a61896-e16d-4f15-88cc-cc449b709ff6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jrh1q2jklgi2nbo', file_size = '1.68 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '36a61896-e16d-4f15-88cc-cc449b709ff6';

-- MARK INACTIVE & NOT FOUND: Three Billboards Outside Ebbing, Missouri (ID: 36b1d323-0b30-4ab3-90d4-62ce591ebc0b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '36b1d323-0b30-4ab3-90d4-62ce591ebc0b';

-- MARK INACTIVE & NOT FOUND: Romeo Must Die (ID: 36d4243c-ad33-4a0a-983d-004c9f21d86c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '36d4243c-ad33-4a0a-983d-004c9f21d86c';

-- LINK CATEGORIES: Romeo Must Die (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('36d4243c-ad33-4a0a-983d-004c9f21d86c', 'hindi-dubbed'), ('36d4243c-ad33-4a0a-983d-004c9f21d86c', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Avan Thaan Manidhan (ID: 37004142-6d94-4ca8-9f05-fe53a8061248) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '37004142-6d94-4ca8-9f05-fe53a8061248';

-- LINK CATEGORIES: Avan Thaan Manidhan (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('37004142-6d94-4ca8-9f05-fe53a8061248', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Abhimanyu (ID: 372914e4-71dc-4ee9-85d2-98983aabefeb) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '372914e4-71dc-4ee9-85d2-98983aabefeb';

-- LINK CATEGORIES: Abhimanyu (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('372914e4-71dc-4ee9-85d2-98983aabefeb', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Guardian (ID: 3729eab1-2c7f-44fc-9ebc-5d2519d00b7a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3729eab1-2c7f-44fc-9ebc-5d2519d00b7a';

-- UPDATE MOVIE: The Illusionist (ID: 36b10e5c-c3b0-4da2-a034-ebe0cab7484d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/xkuczzrznocorbm', file_size = '1.07 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '36b10e5c-c3b0-4da2-a034-ebe0cab7484d';

-- LINK CATEGORIES: The Illusionist (['hindi-dubbed', 'dual-audio', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('36b10e5c-c3b0-4da2-a034-ebe0cab7484d', 'hindi-dubbed'), ('36b10e5c-c3b0-4da2-a034-ebe0cab7484d', 'dual-audio'), ('36b10e5c-c3b0-4da2-a034-ebe0cab7484d', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Great Father (ID: 36e7f7af-f692-47d8-bd60-45fa44b8a9c0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '36e7f7af-f692-47d8-bd60-45fa44b8a9c0';

-- LINK CATEGORIES: The Great Father (['hd', 'mystery', 'thriller', 'hindi-dubbed', 'malayalam', 'crime', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('36e7f7af-f692-47d8-bd60-45fa44b8a9c0', 'hd'), ('36e7f7af-f692-47d8-bd60-45fa44b8a9c0', 'mystery'), ('36e7f7af-f692-47d8-bd60-45fa44b8a9c0', 'thriller'), ('36e7f7af-f692-47d8-bd60-45fa44b8a9c0', 'hindi-dubbed'), ('36e7f7af-f692-47d8-bd60-45fa44b8a9c0', 'malayalam'), ('36e7f7af-f692-47d8-bd60-45fa44b8a9c0', 'crime'), ('36e7f7af-f692-47d8-bd60-45fa44b8a9c0', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Daddy's Home (ID: 36efe766-8718-4531-b7e4-069eda42dedd) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '36efe766-8718-4531-b7e4-069eda42dedd';

-- MARK INACTIVE & NOT FOUND: Chobbar (ID: 374a8ba3-1b41-4cf3-a084-1abfceac8baf) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '374a8ba3-1b41-4cf3-a084-1abfceac8baf';

-- MARK INACTIVE & NOT FOUND: The Art of Self-Defense (ID: 37523841-752e-45e0-994c-0c215f5899a4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '37523841-752e-45e0-994c-0c215f5899a4';

-- MARK INACTIVE & NOT FOUND: The Day the Earth Stood Still (ID: 3763694e-6f7d-4c01-944c-fc1a820d0bb9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3763694e-6f7d-4c01-944c-fc1a820d0bb9';

-- LINK CATEGORIES: The Day the Earth Stood Still (['sci-fi', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3763694e-6f7d-4c01-944c-fc1a820d0bb9', 'sci-fi'), ('3763694e-6f7d-4c01-944c-fc1a820d0bb9', 'hindi-dubbed'), ('3763694e-6f7d-4c01-944c-fc1a820d0bb9', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Shimla Mirchi (ID: 377d8abe-101d-44e7-9f6b-4d2f5d3c5f9a) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '377d8abe-101d-44e7-9f6b-4d2f5d3c5f9a';

-- UPDATE MOVIE: Saheb Biwi Aur Gangster Returns (ID: 37594c90-72b9-46fd-b255-0b295d804969)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/k5y2nww8_fccqiu', file_size = '1.32 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '37594c90-72b9-46fd-b255-0b295d804969';

-- UPDATE MOVIE: Handsome Guys (ID: 3796fdb3-e0bb-46a1-935c-2c9c81d42049)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hppusu1rmuchzai', file_size = '2.15 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3796fdb3-e0bb-46a1-935c-2c9c81d42049';

-- LINK CATEGORIES: Handsome Guys (['action', '300mb', 'hindi-dubbed', 'dual-audio', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3796fdb3-e0bb-46a1-935c-2c9c81d42049', 'action'), ('3796fdb3-e0bb-46a1-935c-2c9c81d42049', '300mb'), ('3796fdb3-e0bb-46a1-935c-2c9c81d42049', 'hindi-dubbed'), ('3796fdb3-e0bb-46a1-935c-2c9c81d42049', 'dual-audio'), ('3796fdb3-e0bb-46a1-935c-2c9c81d42049', 'hollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Equalizer 2 (ID: 37835912-843b-4d0f-8448-936f218d9231)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qgvow1gavfvgnfa', file_size = '2.36 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '37835912-843b-4d0f-8448-936f218d9231';

-- MARK INACTIVE & NOT FOUND: Killer Book Club (ID: 378131a9-04ff-4e8c-8f81-cd9dd26519e9) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '378131a9-04ff-4e8c-8f81-cd9dd26519e9';

-- UPDATE MOVIE: Nail Polish (ID: 379e5bad-0001-4884-a7f1-33385deabcf1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8nzszi1kszvbrv4', file_size = '1.59 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '379e5bad-0001-4884-a7f1-33385deabcf1';

-- MARK INACTIVE & NOT FOUND: Guillermo del Toro's Pinocchio (ID: 37aa8b33-a730-450a-8d0b-63bb8f0f85f3) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '37aa8b33-a730-450a-8d0b-63bb8f0f85f3';

-- MARK INACTIVE & NOT FOUND: Black Dawn (ID: 37a2944d-ba36-464f-be69-4af2bb434cfe) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '37a2944d-ba36-464f-be69-4af2bb434cfe';

-- LINK CATEGORIES: Black Dawn (['300mb', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('37a2944d-ba36-464f-be69-4af2bb434cfe', '300mb'), ('37a2944d-ba36-464f-be69-4af2bb434cfe', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Wedding Guest (ID: 37be6659-79cf-4931-a19c-37b3fcef61fb) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '37be6659-79cf-4931-a19c-37b3fcef61fb';

-- MARK INACTIVE & NOT FOUND: Cult Hero (ID: 3805e60f-0379-4539-a455-d52f62d03f4d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3805e60f-0379-4539-a455-d52f62d03f4d';

-- LINK CATEGORIES: Cult Hero (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3805e60f-0379-4539-a455-d52f62d03f4d', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Yennai Arindhaal (ID: 37bf1279-1483-4404-b9cf-fd1eae0729b0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '37bf1279-1483-4404-b9cf-fd1eae0729b0';

-- LINK CATEGORIES: Yennai Arindhaal (['south-hindi-dubbed', 'action', 'hd', 'drama', 'mystery', 'hindi-dubbed', 'tamil', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('37bf1279-1483-4404-b9cf-fd1eae0729b0', 'south-hindi-dubbed'), ('37bf1279-1483-4404-b9cf-fd1eae0729b0', 'action'), ('37bf1279-1483-4404-b9cf-fd1eae0729b0', 'hd'), ('37bf1279-1483-4404-b9cf-fd1eae0729b0', 'drama'), ('37bf1279-1483-4404-b9cf-fd1eae0729b0', 'mystery'), ('37bf1279-1483-4404-b9cf-fd1eae0729b0', 'hindi-dubbed'), ('37bf1279-1483-4404-b9cf-fd1eae0729b0', 'tamil'), ('37bf1279-1483-4404-b9cf-fd1eae0729b0', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Shastry Viruddh Shastry (ID: 381db1bd-65c0-4ca8-aa0c-64c710113c2b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '381db1bd-65c0-4ca8-aa0c-64c710113c2b';

-- MARK INACTIVE & NOT FOUND: Tillu (ID: 383af189-30df-459d-93c1-c4c39ebb1c47) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '383af189-30df-459d-93c1-c4c39ebb1c47';

-- MARK INACTIVE & NOT FOUND: Cargo (ID: 37cd0008-123f-4da6-b3bc-f8eaae7f899c) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2098558095)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '37cd0008-123f-4da6-b3bc-f8eaae7f899c';

-- MARK INACTIVE & NOT FOUND: Inkheart (ID: 37ff98f4-fc7a-4607-96d5-f794c80c7ba4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '37ff98f4-fc7a-4607-96d5-f794c80c7ba4';

-- LINK CATEGORIES: Inkheart (['hd', 'hindi-dubbed', 'fantasy', 'adventure', 'family', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('37ff98f4-fc7a-4607-96d5-f794c80c7ba4', 'hd'), ('37ff98f4-fc7a-4607-96d5-f794c80c7ba4', 'hindi-dubbed'), ('37ff98f4-fc7a-4607-96d5-f794c80c7ba4', 'fantasy'), ('37ff98f4-fc7a-4607-96d5-f794c80c7ba4', 'adventure'), ('37ff98f4-fc7a-4607-96d5-f794c80c7ba4', 'family'), ('37ff98f4-fc7a-4607-96d5-f794c80c7ba4', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Blade of Storm (ID: 37f6c66d-2e20-4b2b-9843-99638fa069f2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/y1i1_z5__bds5me', file_size = '816.92 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '37f6c66d-2e20-4b2b-9843-99638fa069f2';

-- MARK INACTIVE & NOT FOUND: November Criminals (ID: 38382cab-5eda-4aad-ab21-d4ed65c3750a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '38382cab-5eda-4aad-ab21-d4ed65c3750a';

-- MARK INACTIVE & NOT FOUND: The Dark Kingdom (ID: 385dca42-9732-4b7c-8602-21e834d9063d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '385dca42-9732-4b7c-8602-21e834d9063d';

-- UPDATE MOVIE: Bad Newz (ID: 38779df3-4b64-4128-a520-745df3b9e199)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/t0dcf4odw66ovg_', file_size = '2.72 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '38779df3-4b64-4128-a520-745df3b9e199';

-- LINK CATEGORIES: Bad Newz (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('38779df3-4b64-4128-a520-745df3b9e199', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Secret Headquarters (ID: 386742f4-0b24-4676-aec5-59c6effef73b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ubqrc45b_4boqb4', file_size = '1.71 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '386742f4-0b24-4676-aec5-59c6effef73b';

-- MARK INACTIVE & NOT FOUND: Achamindri (ID: 38682209-9281-495c-8b95-6774395fd6ed) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '38682209-9281-495c-8b95-6774395fd6ed';

-- UPDATE MOVIE: A Nun's Curse (ID: 3867806f-38b2-47af-b535-bc6a56724856)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ebrovnvneedvx2b', file_size = '788.72 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3867806f-38b2-47af-b535-bc6a56724856';

-- UPDATE MOVIE: Planes: Fire & Rescue (ID: 389f53de-cf7d-4877-843a-5ac1b8374ecb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ix0uviiwzi1whxz', file_size = '784.97 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '389f53de-cf7d-4877-843a-5ac1b8374ecb';

-- LINK CATEGORIES: Planes: Fire & Rescue (['hindi-dubbed', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('389f53de-cf7d-4877-843a-5ac1b8374ecb', 'hindi-dubbed'), ('389f53de-cf7d-4877-843a-5ac1b8374ecb', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Nannu Dochukunduvate (ID: 38c594e3-eb2c-46bd-a459-827e52fd02e8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '38c594e3-eb2c-46bd-a459-827e52fd02e8';

-- MARK INACTIVE & NOT FOUND: Zombiology: Enjoy Yourself Tonight (ID: 38edfec5-d40d-422d-a23e-76ca3162abcb) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '38edfec5-d40d-422d-a23e-76ca3162abcb';

-- LINK CATEGORIES: Zombiology: Enjoy Yourself Tonight (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('38edfec5-d40d-422d-a23e-76ca3162abcb', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Outlander (ID: 38d1203c-6055-4cc9-809d-2ca500722a77) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '38d1203c-6055-4cc9-809d-2ca500722a77';

-- LINK CATEGORIES: Outlander (['action', 'hd', 'sci-fi', 'hindi-dubbed', 'dual-audio', 'hollywood', 'adventure', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('38d1203c-6055-4cc9-809d-2ca500722a77', 'action'), ('38d1203c-6055-4cc9-809d-2ca500722a77', 'hd'), ('38d1203c-6055-4cc9-809d-2ca500722a77', 'sci-fi'), ('38d1203c-6055-4cc9-809d-2ca500722a77', 'hindi-dubbed'), ('38d1203c-6055-4cc9-809d-2ca500722a77', 'dual-audio'), ('38d1203c-6055-4cc9-809d-2ca500722a77', 'hollywood'), ('38d1203c-6055-4cc9-809d-2ca500722a77', 'adventure'), ('38d1203c-6055-4cc9-809d-2ca500722a77', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sumit Sourav: Vansh Ka Naash (ID: 38d2a1db-88cd-4a0a-84b2-678bb3ccb9d3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '38d2a1db-88cd-4a0a-84b2-678bb3ccb9d3';

-- UPDATE MOVIE: Sulthan (ID: 38de07e4-b095-4bc4-b0c6-84c6997b01e2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/btfbte1cee1plfg', file_size = '2.8 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '38de07e4-b095-4bc4-b0c6-84c6997b01e2';

-- UPDATE MOVIE: Nanna Prakara (ID: 38e7ca71-d0ca-407e-8e2f-bf615d66eb49)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/161k6_-zazvzmzo', file_size = '2.54 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '38e7ca71-d0ca-407e-8e2f-bf615d66eb49';

-- MARK INACTIVE & NOT FOUND: Battle: Los Angeles (ID: 38ef383d-37f1-4689-adf8-a0a7e11682fa) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '38ef383d-37f1-4689-adf8-a0a7e11682fa';

-- MARK INACTIVE & NOT FOUND: Tholi Prema (ID: 39177883-9770-476e-bd8a-1579391e1651) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '39177883-9770-476e-bd8a-1579391e1651';

-- UPDATE MOVIE: Liger (ID: 393c6700-55e4-4c23-8074-1feeed80428a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ojq35rf9s5osp58', file_size = '2.27 GB', status = 'active', updated_at = NOW(), quality = 'HQ-HDCAMRip' WHERE id = '393c6700-55e4-4c23-8074-1feeed80428a';

-- MARK INACTIVE & NOT FOUND: Poster Boys (ID: 391d5a15-b32f-4bad-8fae-188ab077b97d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '391d5a15-b32f-4bad-8fae-188ab077b97d';

-- MARK INACTIVE & NOT FOUND: Kabul Express (ID: 3931b3ef-3b66-43ef-b6e5-b3bc49217477) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3931b3ef-3b66-43ef-b6e5-b3bc49217477';

-- LINK CATEGORIES: Kabul Express (['adventure'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3931b3ef-3b66-43ef-b6e5-b3bc49217477', 'adventure') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Jind Mahi (ID: 396c74d3-5bab-466c-9624-b6b96095cd19) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '396c74d3-5bab-466c-9624-b6b96095cd19';

-- MARK INACTIVE & NOT FOUND: Spring Break Nightmare (ID: 393cce59-5ba4-4914-927b-6d8304b503ad) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '393cce59-5ba4-4914-927b-6d8304b503ad';

-- MARK INACTIVE & NOT FOUND: Atomic Blonde (ID: 39583091-9665-4971-95cf-1a58cc0ab5db) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '39583091-9665-4971-95cf-1a58cc0ab5db';

-- MARK INACTIVE & NOT FOUND: SuperGrid (ID: 39a686dd-087b-4fdd-8102-d1eb98b17418) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '39a686dd-087b-4fdd-8102-d1eb98b17418';

-- LINK CATEGORIES: SuperGrid (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('39a686dd-087b-4fdd-8102-d1eb98b17418', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Toy Story 4 (ID: 39990468-b558-4cfb-9e0d-d2cef0b95751) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '39990468-b558-4cfb-9e0d-d2cef0b95751';

-- MARK INACTIVE & NOT FOUND: Khuda Haafiz Chapter 2: Agni Pariksha (ID: 39d6a9b3-caec-4fac-a870-00a485bb8544) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '39d6a9b3-caec-4fac-a870-00a485bb8544';

-- UPDATE MOVIE: Code Name Banshee (ID: 3973f7ba-234a-4323-ae24-2e27614cb905)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/fjb1k42kuqh4gzs', file_size = '800.23 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3973f7ba-234a-4323-ae24-2e27614cb905';

-- UPDATE MOVIE: Last Night in Soho (ID: 398aa08f-898b-4299-b7c3-78b244266890)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/x5wgp5w_j7i05p1', file_size = '1.09 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '398aa08f-898b-4299-b7c3-78b244266890';

-- MARK INACTIVE & NOT FOUND: The Dark Side of Life: Mumbai City (ID: 39a0087c-e366-40e7-8898-36eef8819c5f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '39a0087c-e366-40e7-8898-36eef8819c5f';

-- MARK INACTIVE & NOT FOUND: Narvik (ID: 39ebac12-a52e-4ce7-849b-359c1709d0cc) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '39ebac12-a52e-4ce7-849b-359c1709d0cc';

-- UPDATE MOVIE: Raju Kannada Medium (ID: 39bf6a02-55b7-42be-a078-d35ff19334d6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/y5glorrc9olzx9e', file_size = '995.71 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '39bf6a02-55b7-42be-a078-d35ff19334d6';

-- UPDATE MOVIE: Big Octopus (ID: 39f69f66-51fc-4306-ad38-444e4ef8938e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/2y06mu0yxzy1z2x', file_size = '1.17 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '39f69f66-51fc-4306-ad38-444e4ef8938e';

-- MARK INACTIVE & NOT FOUND: Time Warrior (ID: 39fcc535-0931-4a6e-8fc4-700dbada921e) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '39fcc535-0931-4a6e-8fc4-700dbada921e';

-- UPDATE MOVIE: 12 Rounds 3: Lockdown (ID: 3a39a44c-725e-4c8d-aab8-6eda6306313a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/6gug7vkf0gqa71f', file_size = '2 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3a39a44c-725e-4c8d-aab8-6eda6306313a';

-- UPDATE MOVIE: Tetris (ID: 3a175a9a-174b-40e8-9f32-6f5bec657173)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/guwmk1yl2kp_ytw', file_size = '1.96 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3a175a9a-174b-40e8-9f32-6f5bec657173';

-- MARK INACTIVE & NOT FOUND: The King of Kings (ID: 3a5e390f-335c-4458-ad82-196b53fec745) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3a5e390f-335c-4458-ad82-196b53fec745';

-- MARK INACTIVE & NOT FOUND: 24 Kisses (ID: 3a46ad4a-0ce6-4abf-99ad-d989ff8d38a6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3a46ad4a-0ce6-4abf-99ad-d989ff8d38a6';

-- MARK INACTIVE & NOT FOUND: Kaafir - The Movie (ID: 3a6e5b2a-398d-400e-b96f-0fdffec8f79b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3a6e5b2a-398d-400e-b96f-0fdffec8f79b';

-- MARK INACTIVE & NOT FOUND: Bhoomi (ID: 3a1780fd-c793-4b24-9c84-21c4460052c3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3a1780fd-c793-4b24-9c84-21c4460052c3';

-- UPDATE MOVIE: Resident Evil: Damnation (ID: 3a3c1ba2-6eff-402b-9fdd-e9abc1150682)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vk-qh-4pd7q2-tm', file_size = '841.49 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3a3c1ba2-6eff-402b-9fdd-e9abc1150682';

-- MARK INACTIVE & NOT FOUND: Seetharama Kalyana (ID: 3a5c3ae7-f5cb-47a8-8115-273f144f8289) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3a5c3ae7-f5cb-47a8-8115-273f144f8289';

-- LINK CATEGORIES: Seetharama Kalyana (['drama', '1080p', 'hindi-dubbed', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3a5c3ae7-f5cb-47a8-8115-273f144f8289', 'drama'), ('3a5c3ae7-f5cb-47a8-8115-273f144f8289', '1080p'), ('3a5c3ae7-f5cb-47a8-8115-273f144f8289', 'hindi-dubbed'), ('3a5c3ae7-f5cb-47a8-8115-273f144f8289', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Pirates of the Caribbean: At World's End (ID: 3a638ee9-3549-4b64-95aa-1b8d9b4f76ac) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3a638ee9-3549-4b64-95aa-1b8d9b4f76ac';

-- LINK CATEGORIES: Pirates of the Caribbean: At World's End (['300mb', 'hindi-dubbed', 'dual-audio', '720p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3a638ee9-3549-4b64-95aa-1b8d9b4f76ac', '300mb'), ('3a638ee9-3549-4b64-95aa-1b8d9b4f76ac', 'hindi-dubbed'), ('3a638ee9-3549-4b64-95aa-1b8d9b4f76ac', 'dual-audio'), ('3a638ee9-3549-4b64-95aa-1b8d9b4f76ac', '720p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Red Riding Hood (ID: 3a6fd269-ce4e-49cd-86d0-8c04e886cf53) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3a6fd269-ce4e-49cd-86d0-8c04e886cf53';

-- UPDATE MOVIE: P-51 Dragon Fighter (ID: 3a703a9d-9e29-4828-8091-cce8f35f7a17)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dykokr97o9zqrht', file_size = '831.48 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3a703a9d-9e29-4828-8091-cce8f35f7a17';

-- UPDATE MOVIE: Happy Feet (ID: 3a86b5a3-fdf8-41ad-a93b-e6cde41976b3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/q9wvq0wwzaqrjg8', file_size = '1.05 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3a86b5a3-fdf8-41ad-a93b-e6cde41976b3';

-- LINK CATEGORIES: Happy Feet (['300mb', 'adventure', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3a86b5a3-fdf8-41ad-a93b-e6cde41976b3', '300mb'), ('3a86b5a3-fdf8-41ad-a93b-e6cde41976b3', 'adventure'), ('3a86b5a3-fdf8-41ad-a93b-e6cde41976b3', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Court Martial (ID: 3a9a710f-6eec-47b8-b714-ef13813ffbff) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3a9a710f-6eec-47b8-b714-ef13813ffbff';

-- MARK INACTIVE & NOT FOUND: Dharma Durai (ID: 3ab965c9-624c-42a9-b25c-9813cd3d0003) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ab965c9-624c-42a9-b25c-9813cd3d0003';

-- MARK INACTIVE & NOT FOUND: Penguin Highway (ID: 3b2610f1-c67d-4080-9f70-584842dae6ce) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3b2610f1-c67d-4080-9f70-584842dae6ce';

-- UPDATE MOVIE: Impact Earth (ID: 3a9dee2e-c1d4-4f89-8634-670fead9cbc2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/59ld5lmbz4fflzi', file_size = '811.61 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3a9dee2e-c1d4-4f89-8634-670fead9cbc2';

-- UPDATE MOVIE: Jamun (ID: 3ae84836-943d-4dbf-97a8-187e31c89f43)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zcmabe_rrhgejjl', file_size = '774.59 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3ae84836-943d-4dbf-97a8-187e31c89f43';

-- MARK INACTIVE & NOT FOUND: Jet Stream (ID: 3b0422c7-9a6a-46b3-900f-f2575ff0e9bd) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/797424716)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3b0422c7-9a6a-46b3-900f-f2575ff0e9bd';

-- UPDATE MOVIE: Chicken Curry Law (ID: 3b27b97d-432e-4689-bb37-381492988feb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/osvevqcuo7c1llk', file_size = '1.99 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3b27b97d-432e-4689-bb37-381492988feb';

-- MARK INACTIVE & NOT FOUND: Rough Cut (ID: 3b076427-469c-46d7-905e-fae1a13d95b9) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3b076427-469c-46d7-905e-fae1a13d95b9';

-- LINK CATEGORIES: Rough Cut (['action', '300mb', 'drama', 'hindi-dubbed', 'dual-audio', 'korean'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3b076427-469c-46d7-905e-fae1a13d95b9', 'action'), ('3b076427-469c-46d7-905e-fae1a13d95b9', '300mb'), ('3b076427-469c-46d7-905e-fae1a13d95b9', 'drama'), ('3b076427-469c-46d7-905e-fae1a13d95b9', 'hindi-dubbed'), ('3b076427-469c-46d7-905e-fae1a13d95b9', 'dual-audio'), ('3b076427-469c-46d7-905e-fae1a13d95b9', 'korean') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: American Insurrection (ID: 3b3a8f4f-bde0-43e1-8d8f-790b870806d7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qa6pmprxth6xnhx', file_size = '1.16 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3b3a8f4f-bde0-43e1-8d8f-790b870806d7';

-- MARK INACTIVE & NOT FOUND: Penguin Bloom (ID: 3b2d695f-1522-4a17-b1cc-b7cb60327356) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/839053581)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3b2d695f-1522-4a17-b1cc-b7cb60327356';

-- MARK INACTIVE & NOT FOUND: Adrishya Jalakangal (ID: 3b8ebddf-6bba-4be8-9105-df3e4773fbaf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3b8ebddf-6bba-4be8-9105-df3e4773fbaf';

-- MARK INACTIVE & NOT FOUND: Janaan (ID: 3b3f2598-ee51-426e-8521-5cdab1ffe57f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3b3f2598-ee51-426e-8521-5cdab1ffe57f';

-- LINK CATEGORIES: Janaan (['1080p', 'romance', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3b3f2598-ee51-426e-8521-5cdab1ffe57f', '1080p'), ('3b3f2598-ee51-426e-8521-5cdab1ffe57f', 'romance'), ('3b3f2598-ee51-426e-8521-5cdab1ffe57f', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Nightshade (ID: 3b72d807-8791-4c5b-b5ff-171d2f762c22) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1838031910)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3b72d807-8791-4c5b-b5ff-171d2f762c22';

-- MARK INACTIVE & NOT FOUND: Snakes on a Plane (ID: 3bda5012-96a7-4535-9860-3b67e2bcd790) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3bda5012-96a7-4535-9860-3b67e2bcd790';

-- LINK CATEGORIES: Snakes on a Plane (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3bda5012-96a7-4535-9860-3b67e2bcd790', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Half of It (ID: 3bd74e51-b748-4d84-9462-ded18a0bcf40) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3bd74e51-b748-4d84-9462-ded18a0bcf40';

-- MARK INACTIVE & NOT FOUND: Enemy of the State (ID: 3b99fcb4-d630-419b-a1fb-bba2bcb11af2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3b99fcb4-d630-419b-a1fb-bba2bcb11af2';

-- LINK CATEGORIES: Enemy of the State (['mystery', 'hindi-dubbed', 'dual-audio', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3b99fcb4-d630-419b-a1fb-bba2bcb11af2', 'mystery'), ('3b99fcb4-d630-419b-a1fb-bba2bcb11af2', 'hindi-dubbed'), ('3b99fcb4-d630-419b-a1fb-bba2bcb11af2', 'dual-audio'), ('3b99fcb4-d630-419b-a1fb-bba2bcb11af2', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Project E.1337: ALPHA (ID: 3b7a0c34-87fe-4873-87d5-185afab06abd) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3b7a0c34-87fe-4873-87d5-185afab06abd';

-- UPDATE MOVIE: Shortcut (ID: 3ba603a6-2c6f-4b77-a3ad-471f5157b4ea)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/f0wbgf5qkk5loue', file_size = '925.3 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3ba603a6-2c6f-4b77-a3ad-471f5157b4ea';

-- MARK INACTIVE & NOT FOUND: Thiri (ID: 3c1a9009-ea12-4ac5-b089-15d02ff5efeb) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3c1a9009-ea12-4ac5-b089-15d02ff5efeb';

-- MARK INACTIVE & NOT FOUND: Jack the Giant Slayer (ID: 3c1eb0ed-12df-4dac-9a9b-77a51a169a3b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3c1eb0ed-12df-4dac-9a9b-77a51a169a3b';

-- MARK INACTIVE & NOT FOUND: The Raid (ID: 3c2b509c-7bca-40db-86b2-cc35507ec214) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3c2b509c-7bca-40db-86b2-cc35507ec214';

-- UPDATE MOVIE: The Enchanting Phantom (ID: 3bea49b0-7314-4848-b3b3-32240dd40c9f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/0wwxi9ct959vti5', file_size = '2.11 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3bea49b0-7314-4848-b3b3-32240dd40c9f';

-- UPDATE MOVIE: Sharkdog’s Fintastic Halloween (ID: 3bedd4c7-1898-452b-8f34-fc480dc14904)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nz15cxrccemr1ea', file_size = '431.3 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3bedd4c7-1898-452b-8f34-fc480dc14904';

-- UPDATE MOVIE: 14 Phere (ID: 3c171dcd-5644-4d03-b4e4-53fb03a236f7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/o88a5k8olwcq5q5', file_size = '1.97 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3c171dcd-5644-4d03-b4e4-53fb03a236f7';

-- MARK INACTIVE & NOT FOUND: Maheshinte Prathikaaram (ID: 3c8ed1ed-2775-44c8-9043-98069a68cc22) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3c8ed1ed-2775-44c8-9043-98069a68cc22';

-- MARK INACTIVE & NOT FOUND: The Heir (ID: 3c5244b5-e14e-4775-837b-96c7a97c56a7) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3c5244b5-e14e-4775-837b-96c7a97c56a7';

-- UPDATE MOVIE: Jahaan Chaar Yaar (ID: 3c2f2bbc-433b-4a86-a02a-1a86297ba67f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/__e9z_tz_6z4gmh', file_size = '2.07 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '3c2f2bbc-433b-4a86-a02a-1a86297ba67f';

-- UPDATE MOVIE: Crystal Inferno (ID: 3c1b99c0-01d2-41b8-95c5-48f233764c35)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vhsq55uhnrnzth9', file_size = '935.8 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3c1b99c0-01d2-41b8-95c5-48f233764c35';

-- LINK CATEGORIES: Crystal Inferno (['action', 'hd', '300mb', 'hindi-dubbed', 'dual-audio', 'hollywood', 'adventure', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3c1b99c0-01d2-41b8-95c5-48f233764c35', 'action'), ('3c1b99c0-01d2-41b8-95c5-48f233764c35', 'hd'), ('3c1b99c0-01d2-41b8-95c5-48f233764c35', '300mb'), ('3c1b99c0-01d2-41b8-95c5-48f233764c35', 'hindi-dubbed'), ('3c1b99c0-01d2-41b8-95c5-48f233764c35', 'dual-audio'), ('3c1b99c0-01d2-41b8-95c5-48f233764c35', 'hollywood'), ('3c1b99c0-01d2-41b8-95c5-48f233764c35', 'adventure'), ('3c1b99c0-01d2-41b8-95c5-48f233764c35', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Run Baby Run (ID: 3ca9cb3f-d085-4f58-89e4-f1812dbaecdf)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/1gz9ii9pfazz9f1', file_size = '2.48 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3ca9cb3f-d085-4f58-89e4-f1812dbaecdf';

-- LINK CATEGORIES: Run Baby Run (['south-hindi-dubbed', 'drama', 'mystery', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3ca9cb3f-d085-4f58-89e4-f1812dbaecdf', 'south-hindi-dubbed'), ('3ca9cb3f-d085-4f58-89e4-f1812dbaecdf', 'drama'), ('3ca9cb3f-d085-4f58-89e4-f1812dbaecdf', 'mystery'), ('3ca9cb3f-d085-4f58-89e4-f1812dbaecdf', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Confidential Assignment 2: International (ID: 3cbec5d3-b6dd-45c4-a2de-c22e160b5ac8) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3cbec5d3-b6dd-45c4-a2de-c22e160b5ac8';

-- UPDATE MOVIE: 28 Degree Celsius (ID: 3cdc3993-f794-4259-acb1-9841270e1d1c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/h7h13j3t1i5j7xh', file_size = '2.19 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3cdc3993-f794-4259-acb1-9841270e1d1c';

-- LINK CATEGORIES: 28 Degree Celsius (['south-hindi-dubbed', 'telugu', '300mb', 'hindi-dubbed', 'romance', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3cdc3993-f794-4259-acb1-9841270e1d1c', 'south-hindi-dubbed'), ('3cdc3993-f794-4259-acb1-9841270e1d1c', 'telugu'), ('3cdc3993-f794-4259-acb1-9841270e1d1c', '300mb'), ('3cdc3993-f794-4259-acb1-9841270e1d1c', 'hindi-dubbed'), ('3cdc3993-f794-4259-acb1-9841270e1d1c', 'romance'), ('3cdc3993-f794-4259-acb1-9841270e1d1c', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Marne Bhi Do Yaaron (ID: 3c47155b-6a8b-4f87-878f-6050426bf6d2) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3c47155b-6a8b-4f87-878f-6050426bf6d2';

-- MARK INACTIVE & NOT FOUND: AranyaDeb (ID: 3ccc9735-1e89-4742-bf78-881088de7a84) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ccc9735-1e89-4742-bf78-881088de7a84';

-- MARK INACTIVE & NOT FOUND: Revolt (ID: 3cceb985-b4c2-4b94-a4c2-259d2082cad9) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3cceb985-b4c2-4b94-a4c2-259d2082cad9';

-- LINK CATEGORIES: Revolt (['hollywood', 'action', '1080p', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3cceb985-b4c2-4b94-a4c2-259d2082cad9', 'hollywood'), ('3cceb985-b4c2-4b94-a4c2-259d2082cad9', 'action'), ('3cceb985-b4c2-4b94-a4c2-259d2082cad9', '1080p'), ('3cceb985-b4c2-4b94-a4c2-259d2082cad9', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Na Maloom Afraad 2 (ID: 3cd8c374-79ac-4796-a0a5-2502f94b444c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3cd8c374-79ac-4796-a0a5-2502f94b444c';

-- MARK INACTIVE & NOT FOUND: Veerey Ki Wedding (ID: 3ce80655-a332-46bc-9b2e-2a7bdedb328f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ce80655-a332-46bc-9b2e-2a7bdedb328f';

-- MARK INACTIVE & NOT FOUND: Punjab Singh (ID: 3d080b6a-17cf-4a45-9bf8-031687121ab5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3d080b6a-17cf-4a45-9bf8-031687121ab5';

-- MARK INACTIVE & NOT FOUND: Maan Jao Naa (ID: 3d0d9410-4f87-4495-abe0-7fe2ab16efb9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3d0d9410-4f87-4495-abe0-7fe2ab16efb9';

-- MARK INACTIVE & NOT FOUND: Indu Sarkar (ID: 3d4d159f-aa54-420a-8775-5be7bb374189) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3d4d159f-aa54-420a-8775-5be7bb374189';

-- MARK INACTIVE & NOT FOUND: Operation Mekong (ID: 3d141542-28b1-45dc-83c6-fb117b3405f6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3d141542-28b1-45dc-83c6-fb117b3405f6';

-- MARK INACTIVE & NOT FOUND: Looper (ID: 3d453cc7-2bca-4376-89f6-ea9bead51449) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3d453cc7-2bca-4376-89f6-ea9bead51449';

-- MARK INACTIVE & NOT FOUND: The Chosen: Season 3  - Episodes 1 & 2 (ID: 3db11013-cec8-4d9e-8e52-d5970ad75fc9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3db11013-cec8-4d9e-8e52-d5970ad75fc9';

-- MARK INACTIVE & NOT FOUND: Varalaru Mukkiyam (ID: 3d7b8ead-9385-4e83-adb4-16ac1336e649) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3d7b8ead-9385-4e83-adb4-16ac1336e649';

-- UPDATE MOVIE: Drunken Fist (ID: 3d167666-4360-42bc-a1a9-bcf1a2819b97)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/phyhh1tyfyllnnu', file_size = '1.31 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3d167666-4360-42bc-a1a9-bcf1a2819b97';

-- MARK INACTIVE & NOT FOUND: Kanthaswamy (ID: 3d8466c2-eb83-4a6b-a49a-8a60db4215ef) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3d8466c2-eb83-4a6b-a49a-8a60db4215ef';

-- LINK CATEGORIES: Kanthaswamy (['south-hindi-dubbed', 'drama', 'thriller', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3d8466c2-eb83-4a6b-a49a-8a60db4215ef', 'south-hindi-dubbed'), ('3d8466c2-eb83-4a6b-a49a-8a60db4215ef', 'drama'), ('3d8466c2-eb83-4a6b-a49a-8a60db4215ef', 'thriller'), ('3d8466c2-eb83-4a6b-a49a-8a60db4215ef', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Raja the Great (ID: 3d9d1bc0-5dcd-430d-8c2f-ad352691767f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3d9d1bc0-5dcd-430d-8c2f-ad352691767f';

-- MARK INACTIVE & NOT FOUND: Remember Me (ID: 3db65e14-0ebf-4d14-8568-e97e605ea466) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3db65e14-0ebf-4d14-8568-e97e605ea466';

-- MARK INACTIVE & NOT FOUND: Intensive Care (ID: 3dc8e7fb-80d4-4957-934f-909b870eaf73) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3dc8e7fb-80d4-4957-934f-909b870eaf73';

-- MARK INACTIVE & NOT FOUND: Metaisland Trailer Febuary 2024 (ID: 3de34f12-5cc4-46a4-82ea-f8cc30975faf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3de34f12-5cc4-46a4-82ea-f8cc30975faf';

-- LINK CATEGORIES: Metaisland Trailer Febuary 2024 (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3de34f12-5cc4-46a4-82ea-f8cc30975faf', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Covenant (ID: 3e16bcc7-3e85-46b8-aa85-ba3c680f9b7f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/elbkhd8sdpr7ec7', file_size = '1.9 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3e16bcc7-3e85-46b8-aa85-ba3c680f9b7f';

-- LINK CATEGORIES: The Covenant (['300mb', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3e16bcc7-3e85-46b8-aa85-ba3c680f9b7f', '300mb'), ('3e16bcc7-3e85-46b8-aa85-ba3c680f9b7f', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Iruttu (ID: 3e01d7eb-e908-4d6a-b424-fc1d2aa388d4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/uczpuydck1j1krj', file_size = '2.67 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3e01d7eb-e908-4d6a-b424-fc1d2aa388d4';

-- UPDATE MOVIE: Olympus Has Fallen (ID: 3e26563f-d388-475f-ba23-8fa51e10c515)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/byyncjaphdoftxf', file_size = '2.02 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3e26563f-d388-475f-ba23-8fa51e10c515';

-- MARK INACTIVE & NOT FOUND: WWE Hell In A Cell 2012 (ID: 3e3b32d4-4199-4862-a49a-1c6210683fae) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3e3b32d4-4199-4862-a49a-1c6210683fae';

-- MARK INACTIVE & NOT FOUND: Kannum Kannum Kollaiyadithaal (ID: 3de8867c-b65a-47bf-9866-c4f7d28441b0) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3de8867c-b65a-47bf-9866-c4f7d28441b0';

-- MARK INACTIVE & NOT FOUND: Junoon e Ishq (ID: 3e8f2e5b-937e-42e2-ba63-97932a2a8063) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3e8f2e5b-937e-42e2-ba63-97932a2a8063';

-- LINK CATEGORIES: Junoon e Ishq (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3e8f2e5b-937e-42e2-ba63-97932a2a8063', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Vijetha Vikram (ID: 3e916c3a-c2d9-48f1-b115-cec21d3aebf8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3e916c3a-c2d9-48f1-b115-cec21d3aebf8';

-- MARK INACTIVE & NOT FOUND: Dracula Untold (ID: 3e18af85-73d2-4ae8-afc9-9022d9ac89b6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3e18af85-73d2-4ae8-afc9-9022d9ac89b6';

-- MARK INACTIVE & NOT FOUND: Lemony Snicket's A Series of Unfortunate Events (ID: 3ea07f59-9d82-4285-a413-23b923644016) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ea07f59-9d82-4285-a413-23b923644016';

-- MARK INACTIVE & NOT FOUND: Doosukeltha (ID: 3ea1700c-dd38-41bb-bde7-8eb135f856e2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ea1700c-dd38-41bb-bde7-8eb135f856e2';

-- MARK INACTIVE & NOT FOUND: Dirty Blondes from Beyond (ID: 3e304a30-abca-40ca-9fa6-7a9f1dc032f8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3e304a30-abca-40ca-9fa6-7a9f1dc032f8';

-- LINK CATEGORIES: Dirty Blondes from Beyond (['hd', '1080p', 'hollywood', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3e304a30-abca-40ca-9fa6-7a9f1dc032f8', 'hd'), ('3e304a30-abca-40ca-9fa6-7a9f1dc032f8', '1080p'), ('3e304a30-abca-40ca-9fa6-7a9f1dc032f8', 'hollywood'), ('3e304a30-abca-40ca-9fa6-7a9f1dc032f8', 'comedy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Viraata Parvam (ID: 3e62c2a8-36e1-431a-875b-2cf9a655f57d) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3e62c2a8-36e1-431a-875b-2cf9a655f57d';

-- MARK INACTIVE & NOT FOUND: Moondraam Ullaga Por (ID: 3e9ddb3b-2ecf-4eb6-8526-69d8b6891878) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3e9ddb3b-2ecf-4eb6-8526-69d8b6891878';

-- MARK INACTIVE & NOT FOUND: Ujda Chaman (ID: 3ebf6ba0-1cee-4f74-9b3f-de03eca9a2c1) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ebf6ba0-1cee-4f74-9b3f-de03eca9a2c1';

-- MARK INACTIVE & NOT FOUND: Now & Later (ID: 3e7f162e-a193-4f38-bb7e-5a14d81cdd0c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3e7f162e-a193-4f38-bb7e-5a14d81cdd0c';

-- LINK CATEGORIES: Now & Later (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3e7f162e-a193-4f38-bb7e-5a14d81cdd0c', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Scarlet Innocence (ID: 3f4c8407-2626-406f-b9ce-86b6311e2719) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3f4c8407-2626-406f-b9ce-86b6311e2719';

-- MARK INACTIVE & NOT FOUND: Khandaani Shafakhana (ID: 3f2bb85c-966c-4fc2-a9d1-ca46923b7bc8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3f2bb85c-966c-4fc2-a9d1-ca46923b7bc8';

-- MARK INACTIVE & NOT FOUND: The Stepfather (ID: 3f476117-b205-4710-a749-7a11a320e2bf) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3f476117-b205-4710-a749-7a11a320e2bf';

-- LINK CATEGORIES: The Stepfather (['dual-audio', 'hindi-dubbed', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3f476117-b205-4710-a749-7a11a320e2bf', 'dual-audio'), ('3f476117-b205-4710-a749-7a11a320e2bf', 'hindi-dubbed'), ('3f476117-b205-4710-a749-7a11a320e2bf', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: I Am Mother (ID: 3ef02301-88d9-4a61-9301-32133bb766ae) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ef02301-88d9-4a61-9301-32133bb766ae';

-- MARK INACTIVE & NOT FOUND: Madaari (ID: 3f3274ec-7f96-4cae-acf4-a7353a095e78) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3f3274ec-7f96-4cae-acf4-a7353a095e78';

-- MARK INACTIVE & NOT FOUND: Oh..! Sukumari (ID: 3fa8b0e7-c0da-454a-98f2-607e310384a7) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3fa8b0e7-c0da-454a-98f2-607e310384a7';

-- LINK CATEGORIES: Oh..! Sukumari (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3fa8b0e7-c0da-454a-98f2-607e310384a7', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Torque (ID: 3f656d24-4221-46cb-83cd-a0962954de07)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/y2jgyhbj0yj1jeb', file_size = '847.42 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3f656d24-4221-46cb-83cd-a0962954de07';

-- LINK CATEGORIES: Torque (['bluray', 'dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3f656d24-4221-46cb-83cd-a0962954de07', 'bluray'), ('3f656d24-4221-46cb-83cd-a0962954de07', 'dual-audio'), ('3f656d24-4221-46cb-83cd-a0962954de07', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Afraid (ID: 3f8d8694-197d-42b9-a235-597a7a042104)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/nyhgetmk9tnms11', file_size = '1.82 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3f8d8694-197d-42b9-a235-597a7a042104';

-- LINK CATEGORIES: Afraid (['300mb', 'dual-audio', 'hindi-dubbed', 'sci-fi'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3f8d8694-197d-42b9-a235-597a7a042104', '300mb'), ('3f8d8694-197d-42b9-a235-597a7a042104', 'dual-audio'), ('3f8d8694-197d-42b9-a235-597a7a042104', 'hindi-dubbed'), ('3f8d8694-197d-42b9-a235-597a7a042104', 'sci-fi') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Island Escape (ID: 3fbf9ea3-0e2d-49c5-acde-75ede06a651c) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2505224490)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3fbf9ea3-0e2d-49c5-acde-75ede06a651c';

-- UPDATE MOVIE: The Ex (ID: 3f859517-12de-4d37-83dc-861082f7afc4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dehtinerod08mb3', file_size = '1.17 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3f859517-12de-4d37-83dc-861082f7afc4';

-- MARK INACTIVE & NOT FOUND: The Green Mile (ID: 3ff4558e-af3f-422f-b866-e6c8d977baf2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ff4558e-af3f-422f-b866-e6c8d977baf2';

-- UPDATE MOVIE: Donnie Brasco (ID: 3fe8a9f5-544a-4de3-8f8a-918808b5d9ed)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jhvnvr1dnv1m5vm', file_size = '2.91 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '3fe8a9f5-544a-4de3-8f8a-918808b5d9ed';

-- LINK CATEGORIES: Donnie Brasco (['bluray', '300mb', 'biography', 'dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3fe8a9f5-544a-4de3-8f8a-918808b5d9ed', 'bluray'), ('3fe8a9f5-544a-4de3-8f8a-918808b5d9ed', '300mb'), ('3fe8a9f5-544a-4de3-8f8a-918808b5d9ed', 'biography'), ('3fe8a9f5-544a-4de3-8f8a-918808b5d9ed', 'dual-audio'), ('3fe8a9f5-544a-4de3-8f8a-918808b5d9ed', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Two Brothers (ID: 3fbc7b2e-e704-4eb5-bad1-33cbfc1ebb72)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/k5r8dcdc_ql88yy', file_size = '982.62 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '3fbc7b2e-e704-4eb5-bad1-33cbfc1ebb72';

-- LINK CATEGORIES: Two Brothers (['bluray', '300mb', 'dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3fbc7b2e-e704-4eb5-bad1-33cbfc1ebb72', 'bluray'), ('3fbc7b2e-e704-4eb5-bad1-33cbfc1ebb72', '300mb'), ('3fbc7b2e-e704-4eb5-bad1-33cbfc1ebb72', 'dual-audio'), ('3fbc7b2e-e704-4eb5-bad1-33cbfc1ebb72', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Ghost Storm (ID: 3fe03879-8aed-4da5-94d3-6c9fdd52d413) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3fe03879-8aed-4da5-94d3-6c9fdd52d413';

-- MARK INACTIVE & NOT FOUND: The School of Rock (ID: 4007eb7f-a6ef-45fe-9745-9aba0f02b698) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4007eb7f-a6ef-45fe-9745-9aba0f02b698';

-- MARK INACTIVE & NOT FOUND: Rendel (ID: 3ffb8e62-9b88-4689-882c-11ddaa383a0b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ffb8e62-9b88-4689-882c-11ddaa383a0b';

-- LINK CATEGORIES: Rendel (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('3ffb8e62-9b88-4689-882c-11ddaa383a0b', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Seducers (ID: 3ff71271-9544-4be3-b1a0-cb65a83ff4de) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '3ff71271-9544-4be3-b1a0-cb65a83ff4de';

-- MARK INACTIVE & NOT FOUND: The Jungle Book: The Legend of the Giant Claw (ID: 402d8a97-267a-4861-90f3-42af3afb5cdd) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '402d8a97-267a-4861-90f3-42af3afb5cdd';

-- MARK INACTIVE & NOT FOUND: D Block (ID: 40059711-554d-42b6-b467-986ec0acceb0) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '40059711-554d-42b6-b467-986ec0acceb0';

-- MARK INACTIVE & NOT FOUND: Hansan: Rising Dragon (ID: 403bf3c0-d68b-431f-b366-081049788a50) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '403bf3c0-d68b-431f-b366-081049788a50';

-- MARK INACTIVE & NOT FOUND: Conquest 1453 (ID: 405fdd91-2bd9-4fbc-aa99-64b6e40fc963) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '405fdd91-2bd9-4fbc-aa99-64b6e40fc963';

-- LINK CATEGORIES: Conquest 1453 (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('405fdd91-2bd9-4fbc-aa99-64b6e40fc963', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mowgli: Legend of the Jungle (ID: 40770f1d-7e9b-4f38-9a9e-091aa5ec008e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '40770f1d-7e9b-4f38-9a9e-091aa5ec008e';

-- LINK CATEGORIES: Mowgli: Legend of the Jungle (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('40770f1d-7e9b-4f38-9a9e-091aa5ec008e', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dumbo (ID: 40238d33-4eac-4aed-bc32-70b81bd8399e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '40238d33-4eac-4aed-bc32-70b81bd8399e';

-- MARK INACTIVE & NOT FOUND: The Lone Ranger (ID: 4051ff69-acca-46fd-895e-6274e1f09a59) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4051ff69-acca-46fd-895e-6274e1f09a59';

-- LINK CATEGORIES: The Lone Ranger (['action', '300mb', '1080p', 'adventure', 'hollywood', 'dual-audio', 'comedy', 'hd', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4051ff69-acca-46fd-895e-6274e1f09a59', 'action'), ('4051ff69-acca-46fd-895e-6274e1f09a59', '300mb'), ('4051ff69-acca-46fd-895e-6274e1f09a59', '1080p'), ('4051ff69-acca-46fd-895e-6274e1f09a59', 'adventure'), ('4051ff69-acca-46fd-895e-6274e1f09a59', 'hollywood'), ('4051ff69-acca-46fd-895e-6274e1f09a59', 'dual-audio'), ('4051ff69-acca-46fd-895e-6274e1f09a59', 'comedy'), ('4051ff69-acca-46fd-895e-6274e1f09a59', 'hd'), ('4051ff69-acca-46fd-895e-6274e1f09a59', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Funeral Home (ID: 402a6cc3-1b0b-4c64-aaeb-19e28a2128ad)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/s1ovo5ftlk1doff', file_size = '922.3 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '402a6cc3-1b0b-4c64-aaeb-19e28a2128ad';

-- MARK INACTIVE & NOT FOUND: Wedding Crashers (ID: 40aa5fb1-95d1-46f9-a0c9-87aa6cc99b3d) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/677a0222b1a5c)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '40aa5fb1-95d1-46f9-a0c9-87aa6cc99b3d';

-- LINK CATEGORIES: Wedding Crashers (['300mb', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('40aa5fb1-95d1-46f9-a0c9-87aa6cc99b3d', '300mb'), ('40aa5fb1-95d1-46f9-a0c9-87aa6cc99b3d', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Blue Story (ID: 40a84daa-b319-4908-94cc-36bb8ff2230e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wa7phi8ah4filfg', file_size = '1.86 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '40a84daa-b319-4908-94cc-36bb8ff2230e';

-- MARK INACTIVE & NOT FOUND: Untitled Dhanush - 7 Screens Film (ID: 40cac659-14f3-4c9a-8354-7694db163a6c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '40cac659-14f3-4c9a-8354-7694db163a6c';

-- LINK CATEGORIES: Untitled Dhanush - 7 Screens Film (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('40cac659-14f3-4c9a-8354-7694db163a6c', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: BloodRayne (ID: 4072b39c-29cc-4322-8780-906a21279386)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/g9axcpkuk37jp7p', file_size = '901.84 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4072b39c-29cc-4322-8780-906a21279386';

-- LINK CATEGORIES: BloodRayne (['bluray', '300mb', 'dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4072b39c-29cc-4322-8780-906a21279386', 'bluray'), ('4072b39c-29cc-4322-8780-906a21279386', '300mb'), ('4072b39c-29cc-4322-8780-906a21279386', 'dual-audio'), ('4072b39c-29cc-4322-8780-906a21279386', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Amityville: Where the Echo Lives (ID: 40afa0ad-c907-4bd0-9074-b653a27bf3ce) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '40afa0ad-c907-4bd0-9074-b653a27bf3ce';

-- MARK INACTIVE & NOT FOUND: Interceptor (ID: 407fee0f-d4ef-4093-b80a-06e69039fb40) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '407fee0f-d4ef-4093-b80a-06e69039fb40';

-- LINK CATEGORIES: Interceptor (['hollywood', 'dual-audio', 'crime', 'true-web-dl'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('407fee0f-d4ef-4093-b80a-06e69039fb40', 'hollywood'), ('407fee0f-d4ef-4093-b80a-06e69039fb40', 'dual-audio'), ('407fee0f-d4ef-4093-b80a-06e69039fb40', 'crime'), ('407fee0f-d4ef-4093-b80a-06e69039fb40', 'true-web-dl') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Trainwreck (ID: 41081b5f-1332-46f4-9e27-69af864f0fb9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '41081b5f-1332-46f4-9e27-69af864f0fb9';

-- UPDATE MOVIE: Rizwan (ID: 40c1ab2d-1123-41bb-9a61-fd28db6281d5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8ssrssyqluqsufy', file_size = '970.09 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '40c1ab2d-1123-41bb-9a61-fd28db6281d5';

-- MARK INACTIVE & NOT FOUND: Inside Out (ID: 40d3b4a7-6ae7-4c4b-833a-7fbb7f98043b) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '40d3b4a7-6ae7-4c4b-833a-7fbb7f98043b';

-- UPDATE MOVIE: Paayum Puli (ID: 412f7161-4753-4814-8c0e-abbebb01454e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ld3g3cr6azoolqb', file_size = '2.09 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '412f7161-4753-4814-8c0e-abbebb01454e';

-- MARK INACTIVE & NOT FOUND: Mojin: The Lost Legend (ID: 40f56031-d273-4788-a357-8f6410edd7a3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '40f56031-d273-4788-a357-8f6410edd7a3';

-- LINK CATEGORIES: Mojin: The Lost Legend (['drama', 'action', '1080p', 'adventure', 'chinese', 'hd', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('40f56031-d273-4788-a357-8f6410edd7a3', 'drama'), ('40f56031-d273-4788-a357-8f6410edd7a3', 'action'), ('40f56031-d273-4788-a357-8f6410edd7a3', '1080p'), ('40f56031-d273-4788-a357-8f6410edd7a3', 'adventure'), ('40f56031-d273-4788-a357-8f6410edd7a3', 'chinese'), ('40f56031-d273-4788-a357-8f6410edd7a3', 'hd'), ('40f56031-d273-4788-a357-8f6410edd7a3', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Shanghai Knights (ID: 41724b01-2e48-44c5-a7be-3576a14f6d7c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '41724b01-2e48-44c5-a7be-3576a14f6d7c';

-- LINK CATEGORIES: Shanghai Knights (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('41724b01-2e48-44c5-a7be-3576a14f6d7c', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: American Exit (ID: 41117241-6918-46ec-bd72-6c55140e9937)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dxrocrnno8mvqeq', file_size = '862.93 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '41117241-6918-46ec-bd72-6c55140e9937';

-- MARK INACTIVE & NOT FOUND: Naachiyaar (ID: 4166b4c1-f069-43b3-a87b-a08621263f54) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4166b4c1-f069-43b3-a87b-a08621263f54';

-- MARK INACTIVE & NOT FOUND: Judge Archer (ID: 416cf091-6fa3-4095-8f0e-d0177e140cf2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '416cf091-6fa3-4095-8f0e-d0177e140cf2';

-- MARK INACTIVE & NOT FOUND: Vanilla Sky (ID: 413c11c5-47d2-4613-bb7f-ca9326e37f7f) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '413c11c5-47d2-4613-bb7f-ca9326e37f7f';

-- LINK CATEGORIES: Vanilla Sky (['300mb', '1080p', 'hollywood', 'romance', 'dual-audio', 'hd', 'mystery', 'hindi-dubbed', 'fantasy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('413c11c5-47d2-4613-bb7f-ca9326e37f7f', '300mb'), ('413c11c5-47d2-4613-bb7f-ca9326e37f7f', '1080p'), ('413c11c5-47d2-4613-bb7f-ca9326e37f7f', 'hollywood'), ('413c11c5-47d2-4613-bb7f-ca9326e37f7f', 'romance'), ('413c11c5-47d2-4613-bb7f-ca9326e37f7f', 'dual-audio'), ('413c11c5-47d2-4613-bb7f-ca9326e37f7f', 'hd'), ('413c11c5-47d2-4613-bb7f-ca9326e37f7f', 'mystery'), ('413c11c5-47d2-4613-bb7f-ca9326e37f7f', 'hindi-dubbed'), ('413c11c5-47d2-4613-bb7f-ca9326e37f7f', 'fantasy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kee (ID: 41b7a415-942c-46c4-9aea-82528305944a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '41b7a415-942c-46c4-9aea-82528305944a';

-- UPDATE MOVIE: Ramarjuna (ID: 41b6c0f3-9cb3-4a57-9d41-b318e34fc8c5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/n1o_ovk1u1_c-o0', file_size = '1.14 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '41b6c0f3-9cb3-4a57-9d41-b318e34fc8c5';

-- MARK INACTIVE & NOT FOUND: The Change-Up (ID: 41d66409-dac2-4409-bdca-b1f141c83e65) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '41d66409-dac2-4409-bdca-b1f141c83e65';

-- MARK INACTIVE & NOT FOUND: The 12th Man (ID: 41e8daf1-f7c0-41e3-ac77-719c8d12266e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '41e8daf1-f7c0-41e3-ac77-719c8d12266e';

-- MARK INACTIVE & NOT FOUND: Bāhubali: The Epic (ID: 41e8cb1a-ed4a-4d90-92fe-d4cd935e18d8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '41e8cb1a-ed4a-4d90-92fe-d4cd935e18d8';

-- UPDATE MOVIE: Saint Maud (ID: 4222aaa5-4f65-4197-811c-2ed354353842)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8fyh29ykxhhqt32', file_size = '1.65 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4222aaa5-4f65-4197-811c-2ed354353842';

-- MARK INACTIVE & NOT FOUND: Rememory (ID: 4226b8c2-d2d1-4658-bf80-d9e12e78f454) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4226b8c2-d2d1-4658-bf80-d9e12e78f454';

-- MARK INACTIVE & NOT FOUND: Detective Byomkesh Bakshy! (ID: 41f89eaa-a351-407b-8672-025e3de45fec) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '41f89eaa-a351-407b-8672-025e3de45fec';

-- MARK INACTIVE & NOT FOUND: Jia aur Jia (ID: 426709a7-226a-412b-ad81-5787f2329bd2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '426709a7-226a-412b-ad81-5787f2329bd2';

-- UPDATE MOVIE: Robot Overlords (ID: 424ed1a3-5501-4ac7-bc6a-0efd91825065)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8i6rpikyj8vurvj', file_size = '943.87 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '424ed1a3-5501-4ac7-bc6a-0efd91825065';

-- MARK INACTIVE & NOT FOUND: Three of Us (ID: 427733f6-81ee-4608-b66a-5f16131e5cf5) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '427733f6-81ee-4608-b66a-5f16131e5cf5';

-- UPDATE MOVIE: Swarmed (ID: 4275b42d-42c6-48dd-83ca-13311b5ce45f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/skbky2ak9uei3bj', file_size = '1.01 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4275b42d-42c6-48dd-83ca-13311b5ce45f';

-- LINK CATEGORIES: Swarmed (['drama', '300mb', 'dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4275b42d-42c6-48dd-83ca-13311b5ce45f', 'drama'), ('4275b42d-42c6-48dd-83ca-13311b5ce45f', '300mb'), ('4275b42d-42c6-48dd-83ca-13311b5ce45f', 'dual-audio'), ('4275b42d-42c6-48dd-83ca-13311b5ce45f', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mayhem! (ID: 42876016-20a8-4cd8-8d97-3569d6094aab) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '42876016-20a8-4cd8-8d97-3569d6094aab';

-- UPDATE MOVIE: Barbarians (ID: 42a1efff-9ca1-4f7d-9378-6ffcbd476089)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/4pvddw3af5xxfvv', file_size = '783.69 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '42a1efff-9ca1-4f7d-9378-6ffcbd476089';

-- MARK INACTIVE & NOT FOUND: Eklavya: The Royal Guard (ID: 42a81107-bc86-4344-b75f-12623c6eb601) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '42a81107-bc86-4344-b75f-12623c6eb601';

-- LINK CATEGORIES: Eklavya: The Royal Guard (['drama', 'action', '300mb', 'thriller', '1080p', 'bollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('42a81107-bc86-4344-b75f-12623c6eb601', 'drama'), ('42a81107-bc86-4344-b75f-12623c6eb601', 'action'), ('42a81107-bc86-4344-b75f-12623c6eb601', '300mb'), ('42a81107-bc86-4344-b75f-12623c6eb601', 'thriller'), ('42a81107-bc86-4344-b75f-12623c6eb601', '1080p'), ('42a81107-bc86-4344-b75f-12623c6eb601', 'bollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Emoji (ID: 42fd4dbb-110c-4f9f-8761-194a1a69273d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '42fd4dbb-110c-4f9f-8761-194a1a69273d';

-- MARK INACTIVE & NOT FOUND: Escape from Germany (ID: 42c3a363-49fd-4b71-bd1a-8a7e144e9216) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '42c3a363-49fd-4b71-bd1a-8a7e144e9216';

-- UPDATE MOVIE: Let Us Prey (ID: 42b75e05-eed4-40f1-b164-005bf6402fbf)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/npv0zpmtokdj5jj', file_size = '1.26 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '42b75e05-eed4-40f1-b164-005bf6402fbf';

-- MARK INACTIVE & NOT FOUND: Playing for Keeps (ID: 42bdef67-ad7c-47e0-baf6-eaec27497819) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '42bdef67-ad7c-47e0-baf6-eaec27497819';

-- LINK CATEGORIES: Playing for Keeps (['1080p', 'hollywood', 'romance', 'dual-audio', 'comedy', 'hd', 'hindi-dubbed', 'sport'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('42bdef67-ad7c-47e0-baf6-eaec27497819', '1080p'), ('42bdef67-ad7c-47e0-baf6-eaec27497819', 'hollywood'), ('42bdef67-ad7c-47e0-baf6-eaec27497819', 'romance'), ('42bdef67-ad7c-47e0-baf6-eaec27497819', 'dual-audio'), ('42bdef67-ad7c-47e0-baf6-eaec27497819', 'comedy'), ('42bdef67-ad7c-47e0-baf6-eaec27497819', 'hd'), ('42bdef67-ad7c-47e0-baf6-eaec27497819', 'hindi-dubbed'), ('42bdef67-ad7c-47e0-baf6-eaec27497819', 'sport') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Good Boys (ID: 430102d6-cfd7-46a0-93f3-e06325472244) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '430102d6-cfd7-46a0-93f3-e06325472244';

-- MARK INACTIVE & NOT FOUND: Infini (ID: 42f480d9-6808-43ab-9614-fae180abf513) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '42f480d9-6808-43ab-9614-fae180abf513';

-- UPDATE MOVIE: Sunshine (ID: 4352a7b3-6ed4-443c-a366-d7f685a2a625)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/aourcbzxnar54fy', file_size = '1.7 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4352a7b3-6ed4-443c-a366-d7f685a2a625';

-- LINK CATEGORIES: Sunshine (['300mb', 'dual-audio', 'hindi-dubbed', 'sci-fi'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4352a7b3-6ed4-443c-a366-d7f685a2a625', '300mb'), ('4352a7b3-6ed4-443c-a366-d7f685a2a625', 'dual-audio'), ('4352a7b3-6ed4-443c-a366-d7f685a2a625', 'hindi-dubbed'), ('4352a7b3-6ed4-443c-a366-d7f685a2a625', 'sci-fi') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Emoji Movie (ID: 43074fc2-a536-4085-87bf-9e3b09e5f4cb) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43074fc2-a536-4085-87bf-9e3b09e5f4cb';

-- MARK INACTIVE & NOT FOUND: Joy (ID: 43259a82-ac7c-4b2a-ac3d-f1a5e5776162) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43259a82-ac7c-4b2a-ac3d-f1a5e5776162';

-- LINK CATEGORIES: Joy (['300mb', 'hollywood', 'biography'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('43259a82-ac7c-4b2a-ac3d-f1a5e5776162', '300mb'), ('43259a82-ac7c-4b2a-ac3d-f1a5e5776162', 'hollywood'), ('43259a82-ac7c-4b2a-ac3d-f1a5e5776162', 'biography') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mayasabha: The Hall of Illusion (ID: 439f27b8-647c-4851-8b5b-0f54149265ac) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '439f27b8-647c-4851-8b5b-0f54149265ac';

-- MARK INACTIVE & NOT FOUND: LUPIN THE 3rd vs. CAT'S EYE (ID: 4369f881-158e-4b19-99d6-4b95a9743210) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4369f881-158e-4b19-99d6-4b95a9743210';

-- MARK INACTIVE & NOT FOUND: Queenpins (ID: 435be3d1-9a5e-473a-bb37-9c496bafca6c) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/891838448)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '435be3d1-9a5e-473a-bb37-9c496bafca6c';

-- MARK INACTIVE & NOT FOUND: The Finest Hours (ID: 43b363aa-21f9-4d00-b196-8fee5c316380) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43b363aa-21f9-4d00-b196-8fee5c316380';

-- LINK CATEGORIES: The Finest Hours (['drama', 'action', '300mb', '1080p', 'hollywood', 'dual-audio', 'hd', 'hindi-dubbed', 'history'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('43b363aa-21f9-4d00-b196-8fee5c316380', 'drama'), ('43b363aa-21f9-4d00-b196-8fee5c316380', 'action'), ('43b363aa-21f9-4d00-b196-8fee5c316380', '300mb'), ('43b363aa-21f9-4d00-b196-8fee5c316380', '1080p'), ('43b363aa-21f9-4d00-b196-8fee5c316380', 'hollywood'), ('43b363aa-21f9-4d00-b196-8fee5c316380', 'dual-audio'), ('43b363aa-21f9-4d00-b196-8fee5c316380', 'hd'), ('43b363aa-21f9-4d00-b196-8fee5c316380', 'hindi-dubbed'), ('43b363aa-21f9-4d00-b196-8fee5c316380', 'history') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dark World: Equilibrium (ID: 43c4b137-f000-4049-aeb0-4a39bb0882a2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43c4b137-f000-4049-aeb0-4a39bb0882a2';

-- MARK INACTIVE & NOT FOUND: The Woman in Black 2: Angel of Death (ID: 43826d46-5113-4d6f-9e89-76aa03587af0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43826d46-5113-4d6f-9e89-76aa03587af0';

-- UPDATE MOVIE: Bunny the Killer Thing (ID: 43851070-82a9-43a8-961a-ab9f7634bd8b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/syuw5v85uficcuc', file_size = '1013.84 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '43851070-82a9-43a8-961a-ab9f7634bd8b';

-- MARK INACTIVE & NOT FOUND: Rangoon (ID: 43c6a467-bb60-484e-a04f-33da5c844333) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43c6a467-bb60-484e-a04f-33da5c844333';

-- UPDATE MOVIE: Yeshwant (ID: 43bc7596-2f49-4aaf-be93-7579cafb9c21)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/r6cjmviityciu6u', file_size = '971.9 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '43bc7596-2f49-4aaf-be93-7579cafb9c21';

-- LINK CATEGORIES: Yeshwant (['300mb', 'hollywood', 'dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('43bc7596-2f49-4aaf-be93-7579cafb9c21', '300mb'), ('43bc7596-2f49-4aaf-be93-7579cafb9c21', 'hollywood'), ('43bc7596-2f49-4aaf-be93-7579cafb9c21', 'dual-audio'), ('43bc7596-2f49-4aaf-be93-7579cafb9c21', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Manto Mavrogenous (ID: 43dfda28-75d5-42bf-bfa9-0aabf905b9a9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43dfda28-75d5-42bf-bfa9-0aabf905b9a9';

-- MARK INACTIVE & NOT FOUND: WWE Royal Rumble 2013 (ID: 43da98dc-6c7a-4577-a83d-fd47e6423de5) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43da98dc-6c7a-4577-a83d-fd47e6423de5';

-- MARK INACTIVE & NOT FOUND: Street Kings (ID: 43cbbb28-0f35-4567-a7df-3d4656d04de5) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43cbbb28-0f35-4567-a7df-3d4656d04de5';

-- LINK CATEGORIES: Street Kings (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('43cbbb28-0f35-4567-a7df-3d4656d04de5', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: 8 Mile (ID: 43fa25ce-28f9-4a62-8110-8dfd6a1ef519)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/_5lhnfnnymz25na', file_size = '2 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '43fa25ce-28f9-4a62-8110-8dfd6a1ef519';

-- UPDATE MOVIE: Rathaavara (ID: 440422a0-7492-462c-9f7b-579359630d6f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/upddkckbkc8ulkc', file_size = '2.31 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '440422a0-7492-462c-9f7b-579359630d6f';

-- MARK INACTIVE & NOT FOUND: Rattlesnake (ID: 43ebab9c-b09c-4e02-b096-d429241b3887) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '43ebab9c-b09c-4e02-b096-d429241b3887';

-- MARK INACTIVE & NOT FOUND: Machine Gun Preacher (ID: 4411c393-6e5a-4a5a-94f1-008e2b293711) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4411c393-6e5a-4a5a-94f1-008e2b293711';

-- UPDATE MOVIE: Vivo (ID: 43f1c0c7-0a0e-4d3c-aa25-8221dcaa1c4f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/iaxibwniukdwlyx', file_size = '1007.36 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '43f1c0c7-0a0e-4d3c-aa25-8221dcaa1c4f';

-- MARK INACTIVE & NOT FOUND: My True Friend (ID: 443f8128-4f76-4cb0-9a6e-3979530b6ccc) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '443f8128-4f76-4cb0-9a6e-3979530b6ccc';

-- LINK CATEGORIES: My True Friend (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('443f8128-4f76-4cb0-9a6e-3979530b6ccc', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Summit Fever (ID: 444b595b-1ced-4326-9612-51c77775177a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/_lr2m1ck23wv1pz', file_size = '1.94 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '444b595b-1ced-4326-9612-51c77775177a';

-- MARK INACTIVE & NOT FOUND: Jurassic World Dominion (ID: 4429ab3d-d7d0-45d0-9cc6-d7440b4b08c3) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/2009031042)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4429ab3d-d7d0-45d0-9cc6-d7440b4b08c3';

-- UPDATE MOVIE: Neethaane En Ponvasantham (ID: 442890d3-1110-4e4c-8c77-4c786914dc3a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/7-6h5c5kl17jjjl', file_size = '1.58 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '442890d3-1110-4e4c-8c77-4c786914dc3a';

-- MARK INACTIVE & NOT FOUND: אבא עושה בושות (ID: 448328fe-6fe2-409a-9dd4-6064854be634) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '448328fe-6fe2-409a-9dd4-6064854be634';

-- LINK CATEGORIES: אבא עושה בושות (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('448328fe-6fe2-409a-9dd4-6064854be634', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: ParaNorman (ID: 4443e934-9dda-48b8-b740-d9582253551f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4443e934-9dda-48b8-b740-d9582253551f';

-- LINK CATEGORIES: ParaNorman (['1080p', 'animation', 'hollywood', 'adventure', 'dual-audio', 'comedy', 'hd', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4443e934-9dda-48b8-b740-d9582253551f', '1080p'), ('4443e934-9dda-48b8-b740-d9582253551f', 'animation'), ('4443e934-9dda-48b8-b740-d9582253551f', 'hollywood'), ('4443e934-9dda-48b8-b740-d9582253551f', 'adventure'), ('4443e934-9dda-48b8-b740-d9582253551f', 'dual-audio'), ('4443e934-9dda-48b8-b740-d9582253551f', 'comedy'), ('4443e934-9dda-48b8-b740-d9582253551f', 'hd'), ('4443e934-9dda-48b8-b740-d9582253551f', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Chaar Sahibzaade (ID: 442ed33b-0dd0-4e36-9f49-088679717018)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/2ppsus75nvnnbwn', file_size = '1.01 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '442ed33b-0dd0-4e36-9f49-088679717018';

-- MARK INACTIVE & NOT FOUND: Artemis Fowl (ID: 44dc6932-8387-4ca5-8722-11e070c36312) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '44dc6932-8387-4ca5-8722-11e070c36312';

-- UPDATE MOVIE: Boxed (ID: 446d5920-f43c-4675-982f-2f1f2caca127)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/geee811zerurrre', file_size = '932.71 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '446d5920-f43c-4675-982f-2f1f2caca127';

-- MARK INACTIVE & NOT FOUND: Harami (ID: 4477cbaf-e110-4066-a2c7-9e81695db09a) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4477cbaf-e110-4066-a2c7-9e81695db09a';

-- MARK INACTIVE & NOT FOUND: Saw III (ID: 44c44774-bee1-4b2f-b8c0-1dbeef51d3fa) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '44c44774-bee1-4b2f-b8c0-1dbeef51d3fa';

-- LINK CATEGORIES: Saw III (['300mb', 'mystery', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('44c44774-bee1-4b2f-b8c0-1dbeef51d3fa', '300mb'), ('44c44774-bee1-4b2f-b8c0-1dbeef51d3fa', 'mystery'), ('44c44774-bee1-4b2f-b8c0-1dbeef51d3fa', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Gangster Squad (ID: 44905379-072c-4525-90a2-6bc3fe7b7763)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/e5telq_qxnxuthx', file_size = '1.11 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '44905379-072c-4525-90a2-6bc3fe7b7763';

-- UPDATE MOVIE: Raayan (ID: 44e62048-83bb-4200-bd2b-642e0dc0347b)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/ornaonpvfnbk1fv', file_size = '2.53 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '44e62048-83bb-4200-bd2b-642e0dc0347b';

-- LINK CATEGORIES: Raayan (['south-hindi-dubbed', 'dual-audio', 'hindi-dubbed', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('44e62048-83bb-4200-bd2b-642e0dc0347b', 'south-hindi-dubbed'), ('44e62048-83bb-4200-bd2b-642e0dc0347b', 'dual-audio'), ('44e62048-83bb-4200-bd2b-642e0dc0347b', 'hindi-dubbed'), ('44e62048-83bb-4200-bd2b-642e0dc0347b', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Barricade (ID: 455cf393-e72d-4f04-be40-7eae0da919e5) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '455cf393-e72d-4f04-be40-7eae0da919e5';

-- UPDATE MOVIE: Devotion (ID: 4521a1fc-dcfa-4d58-a21a-754207f13cc1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hp0fprcddl6xh5q', file_size = '1.19 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4521a1fc-dcfa-4d58-a21a-754207f13cc1';

-- MARK INACTIVE & NOT FOUND: My Father is a Hero (ID: 452922a3-97b9-41ab-9186-82302fb39bb0) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1112875087)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '452922a3-97b9-41ab-9186-82302fb39bb0';

-- LINK CATEGORIES: My Father is a Hero (['bluray', 'action', 'dual-audio', 'hindi-dubbed', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('452922a3-97b9-41ab-9186-82302fb39bb0', 'bluray'), ('452922a3-97b9-41ab-9186-82302fb39bb0', 'action'), ('452922a3-97b9-41ab-9186-82302fb39bb0', 'dual-audio'), ('452922a3-97b9-41ab-9186-82302fb39bb0', 'hindi-dubbed'), ('452922a3-97b9-41ab-9186-82302fb39bb0', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Pirates of the Caribbean: Dead Men Tell No Tales (ID: 45860c1e-bbc0-40a6-a608-0729ee92aee4) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '45860c1e-bbc0-40a6-a608-0729ee92aee4';

-- MARK INACTIVE & NOT FOUND: Lightyear (ID: 45862aa4-a2d7-4c8d-85b6-5a48bbb5fa87) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '45862aa4-a2d7-4c8d-85b6-5a48bbb5fa87';

-- MARK INACTIVE & NOT FOUND: Bongu (ID: 458f3e03-9742-467d-8424-cea6a7f99d92) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '458f3e03-9742-467d-8424-cea6a7f99d92';

-- MARK INACTIVE & NOT FOUND: Vil Ambu (ID: 45f7b0a4-c63c-4357-bd23-4e725100c69e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '45f7b0a4-c63c-4357-bd23-4e725100c69e';

-- MARK INACTIVE & NOT FOUND: Drunken Master Su Qier (ID: 45ad27b9-20a7-41aa-af9d-49e44f70fe12) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/3013891711)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '45ad27b9-20a7-41aa-af9d-49e44f70fe12';

-- MARK INACTIVE & NOT FOUND: Anjaniputra (ID: 46022698-dfa9-4b00-b452-ea333f550f8b) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '46022698-dfa9-4b00-b452-ea333f550f8b';

-- MARK INACTIVE & NOT FOUND: Two Buddies and a Badger 2: The Great Big Beast (ID: 4605e50e-a6ce-4e9b-8bcc-a337dd810e54) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4605e50e-a6ce-4e9b-8bcc-a337dd810e54';

-- MARK INACTIVE & NOT FOUND: Hail, Caesar! (ID: 4653da8f-5688-47a4-a7de-0234e19e6616) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4653da8f-5688-47a4-a7de-0234e19e6616';

-- MARK INACTIVE & NOT FOUND: Kadak Singh (ID: 462d8e06-223d-4377-8386-11981a14f36c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '462d8e06-223d-4377-8386-11981a14f36c';

-- MARK INACTIVE & NOT FOUND: Sapta Sagaradaache Ello – Side A (ID: 4615aab3-1f9d-4d8b-b2a4-1edb82f16fee) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4615aab3-1f9d-4d8b-b2a4-1edb82f16fee';

-- MARK INACTIVE & NOT FOUND: Bhonsle (ID: 4657a871-233a-4bb5-a25b-7f9ea5a04929) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4657a871-233a-4bb5-a25b-7f9ea5a04929';

-- UPDATE MOVIE: Moksha: Salvation (ID: 46122d51-2c6f-4815-9c26-4c08faeb7364)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1kkd6qjaak8qu6h', file_size = '1.14 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '46122d51-2c6f-4815-9c26-4c08faeb7364';

-- LINK CATEGORIES: Moksha: Salvation (['bollywood', 'hd', 'crime', '1080p', 'drama', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('46122d51-2c6f-4815-9c26-4c08faeb7364', 'bollywood'), ('46122d51-2c6f-4815-9c26-4c08faeb7364', 'hd'), ('46122d51-2c6f-4815-9c26-4c08faeb7364', 'crime'), ('46122d51-2c6f-4815-9c26-4c08faeb7364', '1080p'), ('46122d51-2c6f-4815-9c26-4c08faeb7364', 'drama'), ('46122d51-2c6f-4815-9c26-4c08faeb7364', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Lord of the Rings: The Rings of Power Global Fan Screening (ID: 468666f1-e99a-4c1f-b12e-8006839d1d5f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '468666f1-e99a-4c1f-b12e-8006839d1d5f';

-- MARK INACTIVE & NOT FOUND: The Extraordinary Journey of the Fakir (ID: 4667e746-951f-4c87-ab75-0c9961c1076c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4667e746-951f-4c87-ab75-0c9961c1076c';

-- MARK INACTIVE & NOT FOUND: The Burial (ID: 467dc29a-b00a-4fde-b710-53a7759c256e) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '467dc29a-b00a-4fde-b710-53a7759c256e';

-- MARK INACTIVE & NOT FOUND: Khajoor Pe Atke (ID: 469c2b4c-dcd5-4e6b-b531-5b0e7c266fa2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '469c2b4c-dcd5-4e6b-b531-5b0e7c266fa2';

-- MARK INACTIVE & NOT FOUND: Guest iin London (ID: 46799255-c3ee-465e-9c7d-3ede7ee10f37) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '46799255-c3ee-465e-9c7d-3ede7ee10f37';

-- MARK INACTIVE & NOT FOUND: Bait (ID: 469cf897-e992-41b0-8dd7-8329458170e7) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '469cf897-e992-41b0-8dd7-8329458170e7';

-- UPDATE MOVIE: Buried (ID: 46c63fca-e09d-4d88-9594-7ace269ad95c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1oi4k4b7qhjboas', file_size = '1.65 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '46c63fca-e09d-4d88-9594-7ace269ad95c';

-- LINK CATEGORIES: Buried (['hindi-dubbed', 'dual-audio', 'mystery', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('46c63fca-e09d-4d88-9594-7ace269ad95c', 'hindi-dubbed'), ('46c63fca-e09d-4d88-9594-7ace269ad95c', 'dual-audio'), ('46c63fca-e09d-4d88-9594-7ace269ad95c', 'mystery'), ('46c63fca-e09d-4d88-9594-7ace269ad95c', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Parched (ID: 46de660a-9b2d-4a7f-a966-667e74efb924) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '46de660a-9b2d-4a7f-a966-667e74efb924';

-- MARK INACTIVE & NOT FOUND: Retina (ID: 46b2e0f7-de7b-489e-925e-7e1f4654694e) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '46b2e0f7-de7b-489e-925e-7e1f4654694e';

-- MARK INACTIVE & NOT FOUND: Bulletproof (ID: 46dee5a4-331f-4424-9217-46cd24f04c0e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '46dee5a4-331f-4424-9217-46cd24f04c0e';

-- LINK CATEGORIES: Bulletproof (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('46dee5a4-331f-4424-9217-46cd24f04c0e', 'hindi-dubbed'), ('46dee5a4-331f-4424-9217-46cd24f04c0e', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Vekh Baraatan Challiyan (ID: 46e53652-9423-4383-91b4-796ec13b4050) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '46e53652-9423-4383-91b4-796ec13b4050';

-- MARK INACTIVE & NOT FOUND: Seizer (ID: 47010d5a-429a-4192-92d0-0beb53678302) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '47010d5a-429a-4192-92d0-0beb53678302';

-- MARK INACTIVE & NOT FOUND: Cash on Delivery (ID: 478b209c-6c01-4739-b51a-0f8afeb754f9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '478b209c-6c01-4739-b51a-0f8afeb754f9';

-- MARK INACTIVE & NOT FOUND: Point Blank (ID: 474dd4c0-22a6-4acf-8590-7a7d1397edb6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '474dd4c0-22a6-4acf-8590-7a7d1397edb6';

-- MARK INACTIVE & NOT FOUND: WarHunt (ID: 46e6317e-8851-4267-ba9a-142f87019bae) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '46e6317e-8851-4267-ba9a-142f87019bae';

-- UPDATE MOVIE: Tich Button (ID: 47644008-377b-4251-abc3-610e135b9972)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rrqr1pqq2ywzq11', file_size = '1.32 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '47644008-377b-4251-abc3-610e135b9972';

-- MARK INACTIVE & NOT FOUND: Unleashed (ID: 47839cc7-fa98-4447-b4e2-d5e7be74a169) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '47839cc7-fa98-4447-b4e2-d5e7be74a169';

-- LINK CATEGORIES: Unleashed (['hindi-dubbed', 'dual-audio', '720p', 'drama', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('47839cc7-fa98-4447-b4e2-d5e7be74a169', 'hindi-dubbed'), ('47839cc7-fa98-4447-b4e2-d5e7be74a169', 'dual-audio'), ('47839cc7-fa98-4447-b4e2-d5e7be74a169', '720p'), ('47839cc7-fa98-4447-b4e2-d5e7be74a169', 'drama'), ('47839cc7-fa98-4447-b4e2-d5e7be74a169', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Outlaws (ID: 47a1060d-dea8-4fa1-8c9c-3b6e91469e54)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/u1ggxt85gdun8dj', file_size = '1.67 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '47a1060d-dea8-4fa1-8c9c-3b6e91469e54';

-- MARK INACTIVE & NOT FOUND: The Road Home (ID: 47a46b92-f52c-4f63-aff0-7c04708765f0) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '47a46b92-f52c-4f63-aff0-7c04708765f0';

-- LINK CATEGORIES: The Road Home (['history', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('47a46b92-f52c-4f63-aff0-7c04708765f0', 'history'), ('47a46b92-f52c-4f63-aff0-7c04708765f0', 'dual-audio'), ('47a46b92-f52c-4f63-aff0-7c04708765f0', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Hitman's Wife's Bodyguard (ID: 47da684f-c470-4b04-a800-98fded9d2b5d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '47da684f-c470-4b04-a800-98fded9d2b5d';

-- MARK INACTIVE & NOT FOUND: Thor: The Dark World (ID: 47a70c6a-0344-4dfd-bef0-9889c95fdeec) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '47a70c6a-0344-4dfd-bef0-9889c95fdeec';

-- MARK INACTIVE & NOT FOUND: Hancock (ID: 47ac6258-b102-41a6-acd9-31cf8a0c2dc8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '47ac6258-b102-41a6-acd9-31cf8a0c2dc8';

-- LINK CATEGORIES: Hancock (['hollywood', 'hindi-dubbed', 'dual-audio', 'hd', '1080p', 'action', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('47ac6258-b102-41a6-acd9-31cf8a0c2dc8', 'hollywood'), ('47ac6258-b102-41a6-acd9-31cf8a0c2dc8', 'hindi-dubbed'), ('47ac6258-b102-41a6-acd9-31cf8a0c2dc8', 'dual-audio'), ('47ac6258-b102-41a6-acd9-31cf8a0c2dc8', 'hd'), ('47ac6258-b102-41a6-acd9-31cf8a0c2dc8', '1080p'), ('47ac6258-b102-41a6-acd9-31cf8a0c2dc8', 'action'), ('47ac6258-b102-41a6-acd9-31cf8a0c2dc8', 'drama') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Ad Vitam (ID: 47bd7350-add7-4b82-a4bb-e83bab146e71)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/9prpuurq0uprrpf', file_size = '2.05 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '47bd7350-add7-4b82-a4bb-e83bab146e71';

-- LINK CATEGORIES: Ad Vitam (['hollywood', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('47bd7350-add7-4b82-a4bb-e83bab146e71', 'hollywood'), ('47bd7350-add7-4b82-a4bb-e83bab146e71', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Gulaab Gang (ID: 47b6de63-0fbe-4c0b-a36d-b0d56f2843cd)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vtaharo4homummm', file_size = '1022.99 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '47b6de63-0fbe-4c0b-a36d-b0d56f2843cd';

-- UPDATE MOVIE: Play Dirty (ID: 47f01018-861f-4ed7-9d7c-a59824bc9b11)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zortaaozaarnovw', file_size = '2.69 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '47f01018-861f-4ed7-9d7c-a59824bc9b11';

-- LINK CATEGORIES: Play Dirty (['hindi-dubbed', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('47f01018-861f-4ed7-9d7c-a59824bc9b11', 'hindi-dubbed'), ('47f01018-861f-4ed7-9d7c-a59824bc9b11', 'dual-audio'), ('47f01018-861f-4ed7-9d7c-a59824bc9b11', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Black Cobra (ID: 4834a470-3219-4b79-b96d-ef1084d69607) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4834a470-3219-4b79-b96d-ef1084d69607';

-- LINK CATEGORIES: Black Cobra (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4834a470-3219-4b79-b96d-ef1084d69607', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Legends of Nethiah (ID: 47faa403-5b87-4dc1-bf7e-a0e52865110c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '47faa403-5b87-4dc1-bf7e-a0e52865110c';

-- MARK INACTIVE & NOT FOUND: Oblivion (ID: 4801dd17-c567-4ac6-a621-ba8c6721ae9b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4801dd17-c567-4ac6-a621-ba8c6721ae9b';

-- MARK INACTIVE & NOT FOUND: CBI 5: The Brain (ID: 48436288-ba5b-4357-b5cc-a2af8686d93c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '48436288-ba5b-4357-b5cc-a2af8686d93c';

-- MARK INACTIVE & NOT FOUND: Death to Sister Mary (ID: 485074e1-90de-4206-b382-e010cde25fa1) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '485074e1-90de-4206-b382-e010cde25fa1';

-- UPDATE MOVIE: LA Apocalypse (ID: 481c5c8a-14b9-46d8-b9f3-4a553fd937e4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/11qaui9itaaa5bi', file_size = '828.55 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '481c5c8a-14b9-46d8-b9f3-4a553fd937e4';

-- UPDATE MOVIE: The Crown and the Dragon (ID: 4833174b-cb49-42af-87da-fe453dc49508)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/fbszkr1fxlslrzo', file_size = '984.73 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4833174b-cb49-42af-87da-fe453dc49508';

-- UPDATE MOVIE: Luban Four Heroes (ID: 48374797-3f91-4a1c-80e2-2e8ca286aa7a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/_f8fsi_hsxl68if', file_size = '1.03 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '48374797-3f91-4a1c-80e2-2e8ca286aa7a';

-- MARK INACTIVE & NOT FOUND: Beats (ID: 484d1efc-f7a0-4e8c-8f1d-103798924036) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '484d1efc-f7a0-4e8c-8f1d-103798924036';

-- MARK INACTIVE & NOT FOUND: The Cycle (ID: 4888e279-107b-4e94-848a-3f3a6aa66c2a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4888e279-107b-4e94-848a-3f3a6aa66c2a';

-- UPDATE MOVIE: Squid Game in Conversation (ID: 4871e005-11e5-4dd3-8afb-c3eb59e24bb6)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/seukvefdeb03zku', file_size = '595.42 MB', status = 'active', updated_at = NOW(), quality = '1080p', director = 'N/A' WHERE id = '4871e005-11e5-4dd3-8afb-c3eb59e24bb6';

-- LINK CATEGORIES: Squid Game in Conversation (['hollywood', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4871e005-11e5-4dd3-8afb-c3eb59e24bb6', 'hollywood'), ('4871e005-11e5-4dd3-8afb-c3eb59e24bb6', 'dual-audio'), ('4871e005-11e5-4dd3-8afb-c3eb59e24bb6', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Star Wars: The Last Jedi (ID: 48603de7-ac8e-4804-a09e-f0790cc0859b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '48603de7-ac8e-4804-a09e-f0790cc0859b';

-- MARK INACTIVE & NOT FOUND: Miss. Shetty Mr. Polishetty (ID: 48733756-eb3a-4e0c-962c-5409a51e3ae8) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '48733756-eb3a-4e0c-962c-5409a51e3ae8';

-- MARK INACTIVE & NOT FOUND: A Mouthful of Air (ID: 4869bba6-66b7-4eee-9a94-f6a50c285ac4) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2331866244)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4869bba6-66b7-4eee-9a94-f6a50c285ac4';

-- MARK INACTIVE & NOT FOUND: Precious Cargo (ID: 488f3177-8519-4daf-903b-17bf903dcb35) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '488f3177-8519-4daf-903b-17bf903dcb35';

-- LINK CATEGORIES: Precious Cargo (['hollywood', 'hindi-dubbed', 'dual-audio', 'comedy', 'hd', 'crime', '1080p', '720p', 'action', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('488f3177-8519-4daf-903b-17bf903dcb35', 'hollywood'), ('488f3177-8519-4daf-903b-17bf903dcb35', 'hindi-dubbed'), ('488f3177-8519-4daf-903b-17bf903dcb35', 'dual-audio'), ('488f3177-8519-4daf-903b-17bf903dcb35', 'comedy'), ('488f3177-8519-4daf-903b-17bf903dcb35', 'hd'), ('488f3177-8519-4daf-903b-17bf903dcb35', 'crime'), ('488f3177-8519-4daf-903b-17bf903dcb35', '1080p'), ('488f3177-8519-4daf-903b-17bf903dcb35', '720p'), ('488f3177-8519-4daf-903b-17bf903dcb35', 'action'), ('488f3177-8519-4daf-903b-17bf903dcb35', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Main Te Bapu (ID: 488afdde-d439-41aa-91b6-c36ab88ee250) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '488afdde-d439-41aa-91b6-c36ab88ee250';

-- MARK INACTIVE & NOT FOUND: Murder at 1600 (ID: 4897ae83-f701-4fa6-8b57-d4a69ca40123) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4897ae83-f701-4fa6-8b57-d4a69ca40123';

-- LINK CATEGORIES: Murder at 1600 (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4897ae83-f701-4fa6-8b57-d4a69ca40123', 'hindi-dubbed'), ('4897ae83-f701-4fa6-8b57-d4a69ca40123', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Handmaiden (ID: 48a2b4c1-0721-4f6e-af80-ad29d1f3cfb6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/0tfjaw0091uwrw9', file_size = '2.66 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '48a2b4c1-0721-4f6e-af80-ad29d1f3cfb6';

-- MARK INACTIVE & NOT FOUND: The Quick and the Dead (ID: 489974c3-c4db-4f3a-aee0-13c85ab7775e) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '489974c3-c4db-4f3a-aee0-13c85ab7775e';

-- LINK CATEGORIES: The Quick and the Dead (['dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('489974c3-c4db-4f3a-aee0-13c85ab7775e', 'dual-audio'), ('489974c3-c4db-4f3a-aee0-13c85ab7775e', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mupparimanam (ID: 48d3c27d-5e53-4115-8430-6d966fc2ee6a) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2677684986)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '48d3c27d-5e53-4115-8430-6d966fc2ee6a';

-- UPDATE MOVIE: Mrs. Undercover (ID: 48e8a83f-3982-4a7a-a417-856db5d99975)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1nth7l62tkxgxux', file_size = '2.09 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '48e8a83f-3982-4a7a-a417-856db5d99975';

-- MARK INACTIVE & NOT FOUND: Two Chickens (ID: 492c05fe-173d-456f-a07a-24946b66a840) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '492c05fe-173d-456f-a07a-24946b66a840';

-- MARK INACTIVE & NOT FOUND: IDI: Inspector Dawood Ibrahim (ID: 48a4dc38-6e4d-4080-a5e0-d016065eca27) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '48a4dc38-6e4d-4080-a5e0-d016065eca27';

-- MARK INACTIVE & NOT FOUND: Speed 2: Cruise Control (ID: 4908fbbc-ee4a-40d0-90e4-a25c2b00c457) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4908fbbc-ee4a-40d0-90e4-a25c2b00c457';

-- LINK CATEGORIES: Speed 2: Cruise Control (['hindi-dubbed', 'dual-audio', 'crime', 'adventure'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4908fbbc-ee4a-40d0-90e4-a25c2b00c457', 'hindi-dubbed'), ('4908fbbc-ee4a-40d0-90e4-a25c2b00c457', 'dual-audio'), ('4908fbbc-ee4a-40d0-90e4-a25c2b00c457', 'crime'), ('4908fbbc-ee4a-40d0-90e4-a25c2b00c457', 'adventure') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Chronicles of Riddick (ID: 490a855d-03ca-4ef6-881d-f47abd7a67ac) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '490a855d-03ca-4ef6-881d-f47abd7a67ac';

-- LINK CATEGORIES: The Chronicles of Riddick (['hindi-dubbed', 'dual-audio', 'sci-fi', 'adventure'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('490a855d-03ca-4ef6-881d-f47abd7a67ac', 'hindi-dubbed'), ('490a855d-03ca-4ef6-881d-f47abd7a67ac', 'dual-audio'), ('490a855d-03ca-4ef6-881d-f47abd7a67ac', 'sci-fi'), ('490a855d-03ca-4ef6-881d-f47abd7a67ac', 'adventure') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Step Brothers (ID: 492d1ba4-e833-4c37-b5db-bc5dc05da198) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '492d1ba4-e833-4c37-b5db-bc5dc05da198';

-- LINK CATEGORIES: Step Brothers (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('492d1ba4-e833-4c37-b5db-bc5dc05da198', 'hindi-dubbed'), ('492d1ba4-e833-4c37-b5db-bc5dc05da198', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Fun with Dick and Jane (ID: 4943e1f6-9cde-4599-be0e-9a69bf0c359c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4943e1f6-9cde-4599-be0e-9a69bf0c359c';

-- LINK CATEGORIES: Fun with Dick and Jane (['hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4943e1f6-9cde-4599-be0e-9a69bf0c359c', 'hindi-dubbed'), ('4943e1f6-9cde-4599-be0e-9a69bf0c359c', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Aate Di Chidi (ID: 495199bc-0f1f-4203-a9e3-d844468d474b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '495199bc-0f1f-4203-a9e3-d844468d474b';

-- MARK INACTIVE & NOT FOUND: Clowntergeist (ID: 4912d3bf-594a-4bd0-bfd7-747a167ef190) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4912d3bf-594a-4bd0-bfd7-747a167ef190';

-- MARK INACTIVE & NOT FOUND: Xtreme Sightings (ID: 49c3d352-8ade-4053-a803-11765f8a19e9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '49c3d352-8ade-4053-a803-11765f8a19e9';

-- MARK INACTIVE & NOT FOUND: Vandae Maatharam (ID: 49773a89-784e-4d4b-b0d3-011a461a4a30) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '49773a89-784e-4d4b-b0d3-011a461a4a30';

-- LINK CATEGORIES: Vandae Maatharam (['south-hindi-dubbed', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('49773a89-784e-4d4b-b0d3-011a461a4a30', 'south-hindi-dubbed'), ('49773a89-784e-4d4b-b0d3-011a461a4a30', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Fakir of Venice (ID: 495e6583-6e7d-4140-92e1-fee9ad25f467) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '495e6583-6e7d-4140-92e1-fee9ad25f467';

-- LINK CATEGORIES: The Fakir of Venice (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('495e6583-6e7d-4140-92e1-fee9ad25f467', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Minions: The Rise of Gru (ID: 49e7a3b7-1436-4a5c-8ce1-9a962ee46452)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/_1rtvgo0g_wg_e0', file_size = '663.65 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '49e7a3b7-1436-4a5c-8ce1-9a962ee46452';

-- UPDATE MOVIE: Body of Sin (ID: 49578999-f84e-4780-88d2-e4ba2ec595cd)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/n0a0102b0p0xggm', file_size = '1.12 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '49578999-f84e-4780-88d2-e4ba2ec595cd';

-- UPDATE MOVIE: Dracula's Curse (ID: 49aebab4-2817-41cf-903d-595893b3b945)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/tfe9tnwhj1fpt9p', file_size = '1.46 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '49aebab4-2817-41cf-903d-595893b3b945';

-- MARK INACTIVE & NOT FOUND: The Assignment (ID: 4a19da8f-5fea-4867-a10b-764d7d4f5ba3) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4a19da8f-5fea-4867-a10b-764d7d4f5ba3';

-- UPDATE MOVIE: Real Steel (ID: 4a243bd4-82ff-4bff-8891-db054e8476d3)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/xxkabbw9mqsmxnk', file_size = '2.63 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4a243bd4-82ff-4bff-8891-db054e8476d3';

-- UPDATE MOVIE: The Hunt (ID: 4a4429b2-2a7c-4996-8b1b-eda32274c310)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/mfhjjxz3ww3tlv3', file_size = '1.62 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4a4429b2-2a7c-4996-8b1b-eda32274c310';

-- MARK INACTIVE & NOT FOUND: Mamangam (ID: 4a3b854e-aeb8-4e0a-8b0a-a36926576cd3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4a3b854e-aeb8-4e0a-8b0a-a36926576cd3';

-- UPDATE MOVIE: Department (ID: 4a1cb2f3-2050-408b-81a2-4d2d521d3728)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/mp4lmd4lduv0cbk', file_size = '1.33 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4a1cb2f3-2050-408b-81a2-4d2d521d3728';

-- LINK CATEGORIES: Department (['bollywood', 'hd', '1080p', 'crime', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4a1cb2f3-2050-408b-81a2-4d2d521d3728', 'bollywood'), ('4a1cb2f3-2050-408b-81a2-4d2d521d3728', 'hd'), ('4a1cb2f3-2050-408b-81a2-4d2d521d3728', '1080p'), ('4a1cb2f3-2050-408b-81a2-4d2d521d3728', 'crime'), ('4a1cb2f3-2050-408b-81a2-4d2d521d3728', 'action') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Rum Diary (ID: 4a8d8fb5-7309-46ee-a611-f4c5d1758c42) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4a8d8fb5-7309-46ee-a611-f4c5d1758c42';

-- UPDATE MOVIE: Sashi (ID: 4a6fe268-7c9a-4f86-b176-49d88c4fc3f7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lf016frk1e1nhcn', file_size = '2.9 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4a6fe268-7c9a-4f86-b176-49d88c4fc3f7';

-- MARK INACTIVE & NOT FOUND: Policegiri (ID: 4a4700ba-5b46-4352-8c80-13901df227a0) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4a4700ba-5b46-4352-8c80-13901df227a0';

-- LINK CATEGORIES: Policegiri (['bollywood', 'comedy', 'crime', '1080p', '720p', 'action', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4a4700ba-5b46-4352-8c80-13901df227a0', 'bollywood'), ('4a4700ba-5b46-4352-8c80-13901df227a0', 'comedy'), ('4a4700ba-5b46-4352-8c80-13901df227a0', 'crime'), ('4a4700ba-5b46-4352-8c80-13901df227a0', '1080p'), ('4a4700ba-5b46-4352-8c80-13901df227a0', '720p'), ('4a4700ba-5b46-4352-8c80-13901df227a0', 'action'), ('4a4700ba-5b46-4352-8c80-13901df227a0', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Island (ID: 4a8cbe72-a27d-4a67-8135-bb042069dd34)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/7vw_uztzg6cn_1_', file_size = '2.74 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4a8cbe72-a27d-4a67-8135-bb042069dd34';

-- LINK CATEGORIES: The Island (['hindi-dubbed', 'dual-audio', 'bluray', 'sci-fi', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4a8cbe72-a27d-4a67-8135-bb042069dd34', 'hindi-dubbed'), ('4a8cbe72-a27d-4a67-8135-bb042069dd34', 'dual-audio'), ('4a8cbe72-a27d-4a67-8135-bb042069dd34', 'bluray'), ('4a8cbe72-a27d-4a67-8135-bb042069dd34', 'sci-fi'), ('4a8cbe72-a27d-4a67-8135-bb042069dd34', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Lucky Man (ID: 4aed0e57-569f-4f12-a1cb-28085d60c97d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4aed0e57-569f-4f12-a1cb-28085d60c97d';

-- UPDATE MOVIE: Canopy (ID: 4a76dc6b-b8e7-4b35-8d5c-8eff4adb0f5c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/_5w58hnkn1p38kb', file_size = '829.45 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4a76dc6b-b8e7-4b35-8d5c-8eff4adb0f5c';

-- MARK INACTIVE & NOT FOUND: Kaaval Thurai (ID: 4b18558b-405f-4eb3-9c74-6a7d21294d34) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4b18558b-405f-4eb3-9c74-6a7d21294d34';

-- LINK CATEGORIES: Kaaval Thurai (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4b18558b-405f-4eb3-9c74-6a7d21294d34', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Zindagi Na Milegi Dobara (ID: 4a92b8e7-86ef-4216-88ce-8b9f8a2a2e0f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4a92b8e7-86ef-4216-88ce-8b9f8a2a2e0f';

-- MARK INACTIVE & NOT FOUND: The Longest Penalty Shot in the World (ID: 4b48ae66-0f12-44b8-9a55-5368f8afc618) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4b48ae66-0f12-44b8-9a55-5368f8afc618';

-- LINK CATEGORIES: The Longest Penalty Shot in the World (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4b48ae66-0f12-44b8-9a55-5368f8afc618', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Gamer (ID: 4af92f70-9008-44fd-9436-5077f9ef0def)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/t1t13a4i_1tqxtx', file_size = '1.49 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4af92f70-9008-44fd-9436-5077f9ef0def';

-- LINK CATEGORIES: Gamer (['hindi-dubbed', 'dual-audio', 'bluray', 'sci-fi', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4af92f70-9008-44fd-9436-5077f9ef0def', 'hindi-dubbed'), ('4af92f70-9008-44fd-9436-5077f9ef0def', 'dual-audio'), ('4af92f70-9008-44fd-9436-5077f9ef0def', 'bluray'), ('4af92f70-9008-44fd-9436-5077f9ef0def', 'sci-fi'), ('4af92f70-9008-44fd-9436-5077f9ef0def', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Persuasion (ID: 4aabaa6c-d2ec-4a09-bcdc-070936d4f8db) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4aabaa6c-d2ec-4a09-bcdc-070936d4f8db';

-- MARK INACTIVE & NOT FOUND: The Next 365 Days (ID: 4b7cca48-bd42-4cc3-bfae-8a9e8efd1aa5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4b7cca48-bd42-4cc3-bfae-8a9e8efd1aa5';

-- UPDATE MOVIE: May December (ID: 4aebc773-a381-4c96-a34e-3b0b583947b1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qqymw1inkquv2mh', file_size = '1.06 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4aebc773-a381-4c96-a34e-3b0b583947b1';

-- MARK INACTIVE & NOT FOUND: Vedi (ID: 4b35a2fc-06e9-43c9-9119-8e5096881ad7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4b35a2fc-06e9-43c9-9119-8e5096881ad7';

-- MARK INACTIVE & NOT FOUND: Balloon (ID: 4b540d23-997f-427e-8a5c-67c2ca0ee95b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4b540d23-997f-427e-8a5c-67c2ca0ee95b';

-- UPDATE MOVIE: The King of Staten Island (ID: 4b7c4d60-8bbc-469c-9ea1-ab52bb77b518)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/oxihx6iiwinhm0f', file_size = '2.65 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4b7c4d60-8bbc-469c-9ea1-ab52bb77b518';

-- MARK INACTIVE & NOT FOUND: Raman Raghav 2.0 (ID: 4b8c207d-a8fe-41eb-a596-737cc8858597) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4b8c207d-a8fe-41eb-a596-737cc8858597';

-- UPDATE MOVIE: Metal Lords (ID: 4b8da6e0-ec52-4a2d-a907-573615a3d3a9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/w1cp124qxwfqn5p', file_size = '1.98 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4b8da6e0-ec52-4a2d-a907-573615a3d3a9';

-- MARK INACTIVE & NOT FOUND: Thuppakki (ID: 4bec14d0-7f68-41d6-946b-8cc5cc08e142) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4bec14d0-7f68-41d6-946b-8cc5cc08e142';

-- LINK CATEGORIES: Thuppakki (['thriller', 'hindi-dubbed', 'hd', '1080p', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4bec14d0-7f68-41d6-946b-8cc5cc08e142', 'thriller'), ('4bec14d0-7f68-41d6-946b-8cc5cc08e142', 'hindi-dubbed'), ('4bec14d0-7f68-41d6-946b-8cc5cc08e142', 'hd'), ('4bec14d0-7f68-41d6-946b-8cc5cc08e142', '1080p'), ('4bec14d0-7f68-41d6-946b-8cc5cc08e142', 'action') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Bhaiaji Superhitt (ID: 4bfe512b-16f2-4d53-b7a4-8e6e11bfa880) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4bfe512b-16f2-4d53-b7a4-8e6e11bfa880';

-- UPDATE MOVIE: Priest (ID: 4bf0181c-76d0-4459-b4db-5a3b11571dee)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/njtkyjtststtk1y', file_size = '1.58 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4bf0181c-76d0-4459-b4db-5a3b11571dee';

-- MARK INACTIVE & NOT FOUND: Armed and Deadly (ID: 4c70640a-5c2e-4471-a073-5fd59631742c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4c70640a-5c2e-4471-a073-5fd59631742c';

-- UPDATE MOVIE: Carma (ID: 4c547807-0049-427b-b1e7-fceb2b6272c7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/j2vbmh42fv3tvmv', file_size = '1.88 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4c547807-0049-427b-b1e7-fceb2b6272c7';

-- MARK INACTIVE & NOT FOUND: Mitta Miraasu (ID: 4c79bc46-ac13-451b-b8f1-8600750786b4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4c79bc46-ac13-451b-b8f1-8600750786b4';

-- MARK INACTIVE & NOT FOUND: Ardh (ID: 4c172913-afa8-4cce-bc17-68350e1013c5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4c172913-afa8-4cce-bc17-68350e1013c5';

-- MARK INACTIVE & NOT FOUND: The Tomorrow Man (ID: 4c653f0d-9f10-42a9-96d0-def9bca3200e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4c653f0d-9f10-42a9-96d0-def9bca3200e';

-- MARK INACTIVE & NOT FOUND: Saagipo (ID: 4ccc9024-0b8d-4085-9961-b29a3c9ff638) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4ccc9024-0b8d-4085-9961-b29a3c9ff638';

-- LINK CATEGORIES: Saagipo (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4ccc9024-0b8d-4085-9961-b29a3c9ff638', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Fabricated City (ID: 4c128c6c-9ca6-444b-9797-29aa0f2e1460) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4c128c6c-9ca6-444b-9797-29aa0f2e1460';

-- MARK INACTIVE & NOT FOUND: Amazon Obhijaan (ID: 4c740ac0-3c43-467c-9294-441ae05493c5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4c740ac0-3c43-467c-9294-441ae05493c5';

-- MARK INACTIVE & NOT FOUND: Bangara s/o Bangarada Manushya (ID: 4c829169-1c64-4be4-b454-8f53182c7132) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4c829169-1c64-4be4-b454-8f53182c7132';

-- MARK INACTIVE & NOT FOUND: The Man Who Knew Infinity (ID: 4cb92f8a-1a5d-4dae-8b19-b2bb5fa1f438) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4cb92f8a-1a5d-4dae-8b19-b2bb5fa1f438';

-- MARK INACTIVE & NOT FOUND: Pataki (ID: 4cf2e0a2-ae0a-4bbb-9459-b005d9508461) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4cf2e0a2-ae0a-4bbb-9459-b005d9508461';

-- MARK INACTIVE & NOT FOUND: Monster Hunt (ID: 4cd89cd7-9bbf-48b2-847a-f0e642f52c67) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1004942760)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4cd89cd7-9bbf-48b2-847a-f0e642f52c67';

-- UPDATE MOVIE: Singam 2 (ID: 4cf87674-e24e-4004-9369-91b56f536160)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/c9opzolpyavlxvy', file_size = '3.34 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4cf87674-e24e-4004-9369-91b56f536160';

-- MARK INACTIVE & NOT FOUND: Ungarala Rambabu (ID: 4d128d60-a82c-4853-a20c-cf05b0b9d993) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d128d60-a82c-4853-a20c-cf05b0b9d993';

-- LINK CATEGORIES: Ungarala Rambabu (['hindi-dubbed', 'romance', 'comedy', 'hd', '1080p', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4d128d60-a82c-4853-a20c-cf05b0b9d993', 'hindi-dubbed'), ('4d128d60-a82c-4853-a20c-cf05b0b9d993', 'romance'), ('4d128d60-a82c-4853-a20c-cf05b0b9d993', 'comedy'), ('4d128d60-a82c-4853-a20c-cf05b0b9d993', 'hd'), ('4d128d60-a82c-4853-a20c-cf05b0b9d993', '1080p'), ('4d128d60-a82c-4853-a20c-cf05b0b9d993', 'action') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Bang Bang Betty: Valerie's Revenge (ID: 4d04791c-51d9-4c7c-8e6e-90477f2e636b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lh44bqclu4bqcuc', file_size = '1.19 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4d04791c-51d9-4c7c-8e6e-90477f2e636b';

-- MARK INACTIVE & NOT FOUND: Egghead Republic (ID: 4d458b77-08d1-4893-85fb-892e24e97413) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d458b77-08d1-4893-85fb-892e24e97413';

-- MARK INACTIVE & NOT FOUND: The Girl in the Picture (ID: 4d4a43a6-86e4-4b77-9e13-186427538ea0) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d4a43a6-86e4-4b77-9e13-186427538ea0';

-- MARK INACTIVE & NOT FOUND: Riyasat (ID: 4d12db54-3c7d-4cc0-8eb8-302cb58b3560) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d12db54-3c7d-4cc0-8eb8-302cb58b3560';

-- MARK INACTIVE & NOT FOUND: V/H/S/94 (ID: 4d19852b-bccb-4105-855a-e3e5af845ffd) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/954005034)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d19852b-bccb-4105-855a-e3e5af845ffd';

-- MARK INACTIVE & NOT FOUND: Storm War (ID: 4d6c6ba7-b43e-4490-85aa-25d297e11a4a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d6c6ba7-b43e-4490-85aa-25d297e11a4a';

-- UPDATE MOVIE: Kaathuvaakula Rendu Kaadhal (ID: 4d56789b-3f70-4a5f-8f46-288c9f7c5da0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/flgyb91kpakdw1i', file_size = '2.96 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4d56789b-3f70-4a5f-8f46-288c9f7c5da0';

-- MARK INACTIVE & NOT FOUND: Disorder (ID: 4d28bb75-bbe8-4f5e-90b0-8fed4aec6ea0) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d28bb75-bbe8-4f5e-90b0-8fed4aec6ea0';

-- LINK CATEGORIES: Disorder (['thriller', 'hollywood', 'hindi-dubbed', 'dual-audio', 'crime', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4d28bb75-bbe8-4f5e-90b0-8fed4aec6ea0', 'thriller'), ('4d28bb75-bbe8-4f5e-90b0-8fed4aec6ea0', 'hollywood'), ('4d28bb75-bbe8-4f5e-90b0-8fed4aec6ea0', 'hindi-dubbed'), ('4d28bb75-bbe8-4f5e-90b0-8fed4aec6ea0', 'dual-audio'), ('4d28bb75-bbe8-4f5e-90b0-8fed4aec6ea0', 'crime'), ('4d28bb75-bbe8-4f5e-90b0-8fed4aec6ea0', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Meri Adalat (ID: 4da4adde-c8a0-4113-9f1d-593b44f70848) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4da4adde-c8a0-4113-9f1d-593b44f70848';

-- LINK CATEGORIES: Meri Adalat (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4da4adde-c8a0-4113-9f1d-593b44f70848', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Last Knights (ID: 4d5fce1c-2024-41f6-8788-4ce7250c2370) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d5fce1c-2024-41f6-8788-4ce7250c2370';

-- MARK INACTIVE & NOT FOUND: C'mon C'mon (ID: 4d434dd0-e620-474c-a66d-ca01d5c9e9e7) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1838538636)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d434dd0-e620-474c-a66d-ca01d5c9e9e7';

-- MARK INACTIVE & NOT FOUND: F2: Fun and Frustration (ID: 4d8831b7-9b65-4182-bd74-b67b944f4474) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d8831b7-9b65-4182-bd74-b67b944f4474';

-- MARK INACTIVE & NOT FOUND: Mister Mummy (ID: 4d97c8cb-4150-4fda-976d-68ee7b6ab63f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4d97c8cb-4150-4fda-976d-68ee7b6ab63f';

-- UPDATE MOVIE: Azhar (ID: 4da6842a-3366-4597-a6fd-13ef8f9e8a21)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ag3dj8gj8q7x4hr', file_size = '1.22 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4da6842a-3366-4597-a6fd-13ef8f9e8a21';

-- MARK INACTIVE & NOT FOUND: Photograph 51 (ID: 4df452a8-13a0-44cd-af06-5de162c7870f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4df452a8-13a0-44cd-af06-5de162c7870f';

-- MARK INACTIVE & NOT FOUND: Maali (The Gardener) (ID: 4df833e0-19ba-439b-8678-aa314b3e3862) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4df833e0-19ba-439b-8678-aa314b3e3862';

-- MARK INACTIVE & NOT FOUND: Dilwale Dulhania Le Jayenge (ID: 4e38e49b-0a2f-4a20-857d-54dd528c2fb6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4e38e49b-0a2f-4a20-857d-54dd528c2fb6';

-- UPDATE MOVIE: Corrective Measures (ID: 4dbcf845-6935-4eda-b0fe-3f6fc5c5dbd1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/v9f9zvteegz1lfe', file_size = '2.07 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4dbcf845-6935-4eda-b0fe-3f6fc5c5dbd1';

-- MARK INACTIVE & NOT FOUND: Hello Guru Prema Kosame (ID: 4df75635-8c8b-4c8a-9aba-438634bbec03) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4df75635-8c8b-4c8a-9aba-438634bbec03';

-- MARK INACTIVE & NOT FOUND: Radius (ID: 4db88f88-00ea-434e-b30c-e6180f26313a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4db88f88-00ea-434e-b30c-e6180f26313a';

-- MARK INACTIVE & NOT FOUND: Budget Padmanabhan (ID: 4e866b69-1dab-4b7e-ab5b-17ede76a4ca3) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4e866b69-1dab-4b7e-ab5b-17ede76a4ca3';

-- MARK INACTIVE & NOT FOUND: Chhalaang (ID: 4e392958-3833-4801-bc69-03b655d5c8a9) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4e392958-3833-4801-bc69-03b655d5c8a9';

-- LINK CATEGORIES: Chhalaang (['comedy', 'hd', '1080p', '300mb', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4e392958-3833-4801-bc69-03b655d5c8a9', 'comedy'), ('4e392958-3833-4801-bc69-03b655d5c8a9', 'hd'), ('4e392958-3833-4801-bc69-03b655d5c8a9', '1080p'), ('4e392958-3833-4801-bc69-03b655d5c8a9', '300mb'), ('4e392958-3833-4801-bc69-03b655d5c8a9', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Wasteland (ID: 4dd85e86-aa62-428b-b646-540cdda18c60) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/2155661027)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4dd85e86-aa62-428b-b646-540cdda18c60';

-- UPDATE MOVIE: Twilight of the Warriors: Walled In (ID: 4e454ad6-b364-4e96-9ca2-0ba3280054ac)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/df2wx1nt41ei8ue', file_size = '2.58 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4e454ad6-b364-4e96-9ca2-0ba3280054ac';

-- LINK CATEGORIES: Twilight of the Warriors: Walled In (['dual-audio', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4e454ad6-b364-4e96-9ca2-0ba3280054ac', 'dual-audio'), ('4e454ad6-b364-4e96-9ca2-0ba3280054ac', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Help! I’ve Shrunk the Family (ID: 4e9b5f43-78eb-487e-ae6f-3914ee120793) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4e9b5f43-78eb-487e-ae6f-3914ee120793';

-- LINK CATEGORIES: Help! I’ve Shrunk the Family (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4e9b5f43-78eb-487e-ae6f-3914ee120793', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: California Typewriter (ID: 4e9d3e33-b3a9-4e25-bb38-f29ed045d572) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4e9d3e33-b3a9-4e25-bb38-f29ed045d572';

-- MARK INACTIVE & NOT FOUND: Kaththi (ID: 4e649f4f-5f8b-414e-b9e7-89dbd10311f6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4e649f4f-5f8b-414e-b9e7-89dbd10311f6';

-- UPDATE MOVIE: Get Out (ID: 4e99dd03-f6f2-41b6-816b-0ae126ccd28e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8bfb1g1jdwd11xc', file_size = '2.03 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4e99dd03-f6f2-41b6-816b-0ae126ccd28e';

-- MARK INACTIVE & NOT FOUND: Axegrinder 666 (ID: 4f4ac05b-94d2-47fa-9122-e8620382e027) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4f4ac05b-94d2-47fa-9122-e8620382e027';

-- UPDATE MOVIE: Atithi Devobhava (ID: 4ecc6fcc-a9c6-4769-890b-8f6bd20a6747)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8jyhhlhthl99hsh', file_size = '2.6 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4ecc6fcc-a9c6-4769-890b-8f6bd20a6747';

-- UPDATE MOVIE: Blood Quantum (ID: 4e93ea7d-2379-40b5-a9f6-a264e8e82560)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/behwf9xe3txebg7', file_size = '837.08 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4e93ea7d-2379-40b5-a9f6-a264e8e82560';

-- MARK INACTIVE & NOT FOUND: Yaanum Theeyavan (ID: 4e973c40-ad51-40ff-86bc-cd5ad0467ec4) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4e973c40-ad51-40ff-86bc-cd5ad0467ec4';

-- UPDATE MOVIE: The Kitchen (ID: 4f56f16f-ebc2-46a9-9d56-ac1401834573)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/limryz1nnlw5fnn', file_size = '1.53 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4f56f16f-ebc2-46a9-9d56-ac1401834573';

-- LINK CATEGORIES: The Kitchen (['sci-fi', 'hindi-dubbed', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4f56f16f-ebc2-46a9-9d56-ac1401834573', 'sci-fi'), ('4f56f16f-ebc2-46a9-9d56-ac1401834573', 'hindi-dubbed'), ('4f56f16f-ebc2-46a9-9d56-ac1401834573', 'dual-audio'), ('4f56f16f-ebc2-46a9-9d56-ac1401834573', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Don't Worry Darling (ID: 4f79a29f-3505-460d-9918-ab8528dc9902)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/x_x8rqxietifrsa', file_size = '2.03 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4f79a29f-3505-460d-9918-ab8528dc9902';

-- MARK INACTIVE & NOT FOUND: Manikarnika: The Queen of Jhansi (ID: 4ee15881-d009-4246-9c6e-358245430a2c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4ee15881-d009-4246-9c6e-358245430a2c';

-- MARK INACTIVE & NOT FOUND: Chekka Chivantha Vaanam (ID: 4f584592-3325-4ec0-9ddd-3026dc77ec1d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4f584592-3325-4ec0-9ddd-3026dc77ec1d';

-- UPDATE MOVIE: Magma: Volcanic Disaster (ID: 4f713307-698c-4bfb-b83d-c67115fd9c91)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/xn9donfsrwwdses', file_size = '963.72 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4f713307-698c-4bfb-b83d-c67115fd9c91';

-- LINK CATEGORIES: Magma: Volcanic Disaster (['adventure', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4f713307-698c-4bfb-b83d-c67115fd9c91', 'adventure'), ('4f713307-698c-4bfb-b83d-c67115fd9c91', 'dual-audio'), ('4f713307-698c-4bfb-b83d-c67115fd9c91', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Kung Fu Hustle (ID: 4f96ca32-a6ff-4ae4-b7c6-c86510d0df45)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/3pl12z3ty221bga', file_size = '2.08 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4f96ca32-a6ff-4ae4-b7c6-c86510d0df45';

-- UPDATE MOVIE: The Takeover (ID: 4fa7bffe-63ef-47fd-9fa7-57d11545c378)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lemrgbvbzrlyn1n', file_size = '1.6 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4fa7bffe-63ef-47fd-9fa7-57d11545c378';

-- UPDATE MOVIE: Jai Ganesh (ID: 4fd84677-db4e-4a82-8fcd-3c1c0583d857)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/6fldnffldwc1tny', file_size = '2.65 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4fd84677-db4e-4a82-8fcd-3c1c0583d857';

-- UPDATE MOVIE: A Fairy Tale (ID: 4fcc66b0-48bd-4285-9aa9-eda95b564bbd)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/elkkfxoeneoarag', file_size = '1.23 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '4fcc66b0-48bd-4285-9aa9-eda95b564bbd';

-- MARK INACTIVE & NOT FOUND: Happy New Year (ID: 4fa8c439-f7ec-407b-9386-b0a56902242c) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4fa8c439-f7ec-407b-9386-b0a56902242c';

-- MARK INACTIVE & NOT FOUND: The Hole in the Ground (ID: 4fd2fee1-cdf1-4d81-a461-1265d56782c2) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4fd2fee1-cdf1-4d81-a461-1265d56782c2';

-- LINK CATEGORIES: The Hole in the Ground (['1080p', 'mystery', 'hindi-dubbed', 'dual-audio', 'thriller', 'hollywood', 'drama', 'horror'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4fd2fee1-cdf1-4d81-a461-1265d56782c2', '1080p'), ('4fd2fee1-cdf1-4d81-a461-1265d56782c2', 'mystery'), ('4fd2fee1-cdf1-4d81-a461-1265d56782c2', 'hindi-dubbed'), ('4fd2fee1-cdf1-4d81-a461-1265d56782c2', 'dual-audio'), ('4fd2fee1-cdf1-4d81-a461-1265d56782c2', 'thriller'), ('4fd2fee1-cdf1-4d81-a461-1265d56782c2', 'hollywood'), ('4fd2fee1-cdf1-4d81-a461-1265d56782c2', 'drama'), ('4fd2fee1-cdf1-4d81-a461-1265d56782c2', 'horror') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Last Color (ID: 4faee4d6-e5b9-46ca-9923-787e98c19fc6) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4faee4d6-e5b9-46ca-9923-787e98c19fc6';

-- MARK INACTIVE & NOT FOUND: Her Private Hell (ID: 4feaa1e9-9a47-4026-9260-f0a34e729d33) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4feaa1e9-9a47-4026-9260-f0a34e729d33';

-- LINK CATEGORIES: Her Private Hell (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('4feaa1e9-9a47-4026-9260-f0a34e729d33', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Bad Guys Always Die (ID: 4ffd3c3f-07e1-44d4-aeb1-c69a6bd7075f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '4ffd3c3f-07e1-44d4-aeb1-c69a6bd7075f';

-- MARK INACTIVE & NOT FOUND: Better Criminal (ID: 5061b9eb-94e6-48cc-8519-0424015044c7) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5061b9eb-94e6-48cc-8519-0424015044c7';

-- UPDATE MOVIE: Toofaan (ID: 4fdf3971-5940-4fc7-a135-9b3cf333334a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/z1dyzlrizvvlwzw', file_size = '2.98 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '4fdf3971-5940-4fc7-a135-9b3cf333334a';

-- MARK INACTIVE & NOT FOUND: The Perfect Date (ID: 504ea4ad-9c91-4218-b72e-93c156ffa3bc) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '504ea4ad-9c91-4218-b72e-93c156ffa3bc';

-- MARK INACTIVE & NOT FOUND: Noah (ID: 504d860e-d6af-4861-9c29-861b23a8b000) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '504d860e-d6af-4861-9c29-861b23a8b000';

-- MARK INACTIVE & NOT FOUND: Sleepless in Seattle (ID: 5087c499-0dc4-4d10-b9e5-769073f83a35) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5087c499-0dc4-4d10-b9e5-769073f83a35';

-- LINK CATEGORIES: Sleepless in Seattle (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5087c499-0dc4-4d10-b9e5-769073f83a35', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Mere Huzoor (ID: 50566cfb-8046-441d-9b63-8756f09788f6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8saf08jun1ny1if', file_size = '1.37 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '50566cfb-8046-441d-9b63-8756f09788f6';

-- LINK CATEGORIES: Mere Huzoor (['bollywood', 'hd', 'romance', '1080p', '300mb', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('50566cfb-8046-441d-9b63-8756f09788f6', 'bollywood'), ('50566cfb-8046-441d-9b63-8756f09788f6', 'hd'), ('50566cfb-8046-441d-9b63-8756f09788f6', 'romance'), ('50566cfb-8046-441d-9b63-8756f09788f6', '1080p'), ('50566cfb-8046-441d-9b63-8756f09788f6', '300mb'), ('50566cfb-8046-441d-9b63-8756f09788f6', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kagitha Kappal (ID: 50a30583-db0a-4a3f-9ee1-eb3177f2fb03) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '50a30583-db0a-4a3f-9ee1-eb3177f2fb03';

-- MARK INACTIVE & NOT FOUND: Half Brothers (ID: 50c3a9ae-2ee2-4485-b554-0ed2e00e86b0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '50c3a9ae-2ee2-4485-b554-0ed2e00e86b0';

-- UPDATE MOVIE: The Bride! (ID: 506a4038-cff2-4058-9f1a-c849f17f6a3e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ufa1f2zyq2focpo', file_size = '1 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '506a4038-cff2-4058-9f1a-c849f17f6a3e';

-- UPDATE MOVIE: Akaal: The Unconquered (ID: 50f7c44b-b245-455a-8c0e-5c98762496df)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/tnd05ipsizt4dci', file_size = '2.61 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '50f7c44b-b245-455a-8c0e-5c98762496df';

-- LINK CATEGORIES: Akaal: The Unconquered (['bollywood', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('50f7c44b-b245-455a-8c0e-5c98762496df', 'bollywood'), ('50f7c44b-b245-455a-8c0e-5c98762496df', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: John Jani Janardhan (ID: 506afb56-6da7-4209-b5d9-0b34011f1974) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '506afb56-6da7-4209-b5d9-0b34011f1974';

-- UPDATE MOVIE: Varudu Kaavalenu (ID: 50824fd1-358c-4e67-a227-80498549a81e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/yavhzvahfh7d7fh', file_size = '2.57 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '50824fd1-358c-4e67-a227-80498549a81e';

-- MARK INACTIVE & NOT FOUND: Sex Education Mistresses (ID: 51261f50-0c45-4578-92bd-6a906ccaed60) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51261f50-0c45-4578-92bd-6a906ccaed60';

-- UPDATE MOVIE: Sakthi (ID: 50be69bf-d64e-4204-8a17-4a71856db26b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/12kn2ij41xci5ni', file_size = '3.29 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '50be69bf-d64e-4204-8a17-4a71856db26b';

-- LINK CATEGORIES: Sakthi (['adventure', 'hd', 'hindi-dubbed', 'dual-audio', 'action', 'bluray', 'hollywood', '300mb', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('50be69bf-d64e-4204-8a17-4a71856db26b', 'adventure'), ('50be69bf-d64e-4204-8a17-4a71856db26b', 'hd'), ('50be69bf-d64e-4204-8a17-4a71856db26b', 'hindi-dubbed'), ('50be69bf-d64e-4204-8a17-4a71856db26b', 'dual-audio'), ('50be69bf-d64e-4204-8a17-4a71856db26b', 'action'), ('50be69bf-d64e-4204-8a17-4a71856db26b', 'bluray'), ('50be69bf-d64e-4204-8a17-4a71856db26b', 'hollywood'), ('50be69bf-d64e-4204-8a17-4a71856db26b', '300mb'), ('50be69bf-d64e-4204-8a17-4a71856db26b', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Ratsasan (ID: 51222a12-8c8b-403c-8c46-6b729855d1fb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/s5loguyfy6zy00a', file_size = '2.68 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '51222a12-8c8b-403c-8c46-6b729855d1fb';

-- MARK INACTIVE & NOT FOUND: Gorilla (ID: 5125a16b-831a-4be7-9a0d-05d70904f3c4) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5125a16b-831a-4be7-9a0d-05d70904f3c4';

-- LINK CATEGORIES: Gorilla (['comedy', 'hd', 'hindi-dubbed', 'dual-audio', 'south-hindi-dubbed', '300mb', '1080p', 'tamil'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5125a16b-831a-4be7-9a0d-05d70904f3c4', 'comedy'), ('5125a16b-831a-4be7-9a0d-05d70904f3c4', 'hd'), ('5125a16b-831a-4be7-9a0d-05d70904f3c4', 'hindi-dubbed'), ('5125a16b-831a-4be7-9a0d-05d70904f3c4', 'dual-audio'), ('5125a16b-831a-4be7-9a0d-05d70904f3c4', 'south-hindi-dubbed'), ('5125a16b-831a-4be7-9a0d-05d70904f3c4', '300mb'), ('5125a16b-831a-4be7-9a0d-05d70904f3c4', '1080p'), ('5125a16b-831a-4be7-9a0d-05d70904f3c4', 'tamil') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: 100 Days to Live (ID: 50dbf5c8-7c82-4fbd-850e-864e07e75448)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vu9mswz8u9188zu', file_size = '938.14 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '50dbf5c8-7c82-4fbd-850e-864e07e75448';

-- MARK INACTIVE & NOT FOUND: Ashke (ID: 512e724c-7af4-420e-8066-5793c328fd65) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '512e724c-7af4-420e-8066-5793c328fd65';

-- MARK INACTIVE & NOT FOUND: WWE SummerSlam 2025: Sunday (ID: 5157b23d-2814-4eb3-8d4a-268ded254cfa) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5157b23d-2814-4eb3-8d4a-268ded254cfa';

-- UPDATE MOVIE: How to Build a Girl (ID: 5126c18c-6ab1-476e-9d79-8998e647662c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/xbc_aqq9b4ajqsa', file_size = '926.15 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5126c18c-6ab1-476e-9d79-8998e647662c';

-- MARK INACTIVE & NOT FOUND: Kingdom of Heaven (ID: 515b15f4-251d-4f69-bb30-5f0fac391f4e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '515b15f4-251d-4f69-bb30-5f0fac391f4e';

-- MARK INACTIVE & NOT FOUND: Birbal Trilogy: Case 1 – Finding Vajramuni (ID: 517302c0-3691-4abc-bfe6-d22663608ae3) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '517302c0-3691-4abc-bfe6-d22663608ae3';

-- LINK CATEGORIES: Birbal Trilogy: Case 1 – Finding Vajramuni (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('517302c0-3691-4abc-bfe6-d22663608ae3', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Veerame Vaagai Soodum (ID: 513960df-85af-417b-8ac1-e8a30b9bd237) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '513960df-85af-417b-8ac1-e8a30b9bd237';

-- MARK INACTIVE & NOT FOUND: The Invasion (ID: 51484317-9383-496e-90e8-09871236baa0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51484317-9383-496e-90e8-09871236baa0';

-- LINK CATEGORIES: The Invasion (['sci-fi', 'hd', 'hindi-dubbed', 'dual-audio', 'thriller', 'hollywood', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('51484317-9383-496e-90e8-09871236baa0', 'sci-fi'), ('51484317-9383-496e-90e8-09871236baa0', 'hd'), ('51484317-9383-496e-90e8-09871236baa0', 'hindi-dubbed'), ('51484317-9383-496e-90e8-09871236baa0', 'dual-audio'), ('51484317-9383-496e-90e8-09871236baa0', 'thriller'), ('51484317-9383-496e-90e8-09871236baa0', 'hollywood'), ('51484317-9383-496e-90e8-09871236baa0', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Out of Death (ID: 51751a9b-c4ed-4c41-b6f6-f314d42265b3) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2967559729)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51751a9b-c4ed-4c41-b6f6-f314d42265b3';

-- MARK INACTIVE & NOT FOUND: Gulaebaghavali (ID: 514d5995-6266-45e9-a613-250f3333ee60) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '514d5995-6266-45e9-a613-250f3333ee60';

-- LINK CATEGORIES: Gulaebaghavali (['comedy', 'hd', 'hindi-dubbed', 'south-hindi-dubbed', 'action', '1080p', 'tamil'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('514d5995-6266-45e9-a613-250f3333ee60', 'comedy'), ('514d5995-6266-45e9-a613-250f3333ee60', 'hd'), ('514d5995-6266-45e9-a613-250f3333ee60', 'hindi-dubbed'), ('514d5995-6266-45e9-a613-250f3333ee60', 'south-hindi-dubbed'), ('514d5995-6266-45e9-a613-250f3333ee60', 'action'), ('514d5995-6266-45e9-a613-250f3333ee60', '1080p'), ('514d5995-6266-45e9-a613-250f3333ee60', 'tamil') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Speedunnodu (ID: 516c3689-bd33-4c46-8100-57ef80866652) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '516c3689-bd33-4c46-8100-57ef80866652';

-- UPDATE MOVIE: My Girl (ID: 518816dc-8cb6-41f0-bb94-482b6c7a6dad)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/mjtdkxzfuuseupg', file_size = '1.01 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '518816dc-8cb6-41f0-bb94-482b6c7a6dad';

-- LINK CATEGORIES: My Girl (['dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('518816dc-8cb6-41f0-bb94-482b6c7a6dad', 'dual-audio'), ('518816dc-8cb6-41f0-bb94-482b6c7a6dad', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Four Assassins (ID: 51b20200-0b79-4f28-a822-31d2dfdbd350) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51b20200-0b79-4f28-a822-31d2dfdbd350';

-- MARK INACTIVE & NOT FOUND: Cruel Jaws (ID: 5195377b-7133-4754-a630-3d7ea0fadbcd) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5195377b-7133-4754-a630-3d7ea0fadbcd';

-- LINK CATEGORIES: Cruel Jaws (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5195377b-7133-4754-a630-3d7ea0fadbcd', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Ratchet and Clank: Life of Pie (ID: 51a6237d-a5d6-4427-9c2d-d698be2a02a9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51a6237d-a5d6-4427-9c2d-d698be2a02a9';

-- MARK INACTIVE & NOT FOUND: Chaman Bahaar (ID: 51bbb5c4-9aee-4a3f-b856-47412d07c90c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51bbb5c4-9aee-4a3f-b856-47412d07c90c';

-- MARK INACTIVE & NOT FOUND: We Just Wanna Have a Good Time All the Time (ID: 51f48f97-2cb6-4093-b6bd-06988f3f5179) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51f48f97-2cb6-4093-b6bd-06988f3f5179';

-- MARK INACTIVE & NOT FOUND: Monster Hunt 2 (ID: 51b2f3c7-f25b-4558-bc8b-59eb38aea242) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51b2f3c7-f25b-4558-bc8b-59eb38aea242';

-- MARK INACTIVE & NOT FOUND: Aadhavan (ID: 51d4fe18-18d9-4206-bcbd-0b7a6174a57a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51d4fe18-18d9-4206-bcbd-0b7a6174a57a';

-- LINK CATEGORIES: Aadhavan (['hindi-dubbed', 'south-hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('51d4fe18-18d9-4206-bcbd-0b7a6174a57a', 'hindi-dubbed'), ('51d4fe18-18d9-4206-bcbd-0b7a6174a57a', 'south-hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kerry on Kutton (ID: 51b7928f-3b8b-4845-ac24-e5fe2be90adc) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51b7928f-3b8b-4845-ac24-e5fe2be90adc';

-- MARK INACTIVE & NOT FOUND: Touch Chesi Chudu (ID: 525c8fec-bf3f-4ac4-9306-7cf2df2234b2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '525c8fec-bf3f-4ac4-9306-7cf2df2234b2';

-- LINK CATEGORIES: Touch Chesi Chudu (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('525c8fec-bf3f-4ac4-9306-7cf2df2234b2', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Invitation to a Murder (ID: 51f00595-254b-466f-b49c-d74be239561e) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.sbs/file/1683339362)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '51f00595-254b-466f-b49c-d74be239561e';

-- MARK INACTIVE & NOT FOUND: Bombairiya (ID: 523f14c5-7747-4d5a-894e-ae74bb6fb246) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '523f14c5-7747-4d5a-894e-ae74bb6fb246';

-- MARK INACTIVE & NOT FOUND: How Do You Know (ID: 5257eb30-a654-4f8c-86fd-099fdda33efa) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5257eb30-a654-4f8c-86fd-099fdda33efa';

-- UPDATE MOVIE: Shaadisthan (ID: 525d0ceb-462d-44aa-8ab6-ed066c7f79f5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/q3s8p57g7jqh14g', file_size = '1.72 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '525d0ceb-462d-44aa-8ab6-ed066c7f79f5';

-- UPDATE MOVIE: The Wife (ID: 51f4d8cb-2dbe-4bd5-9c8e-a17a663e73b0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dpkeqd2iqwqqn8q', file_size = '1013.52 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '51f4d8cb-2dbe-4bd5-9c8e-a17a663e73b0';

-- MARK INACTIVE & NOT FOUND: Monster on a Plane (ID: 52999df4-4a93-423a-bf6b-ba864a2c53de) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '52999df4-4a93-423a-bf6b-ba864a2c53de';

-- MARK INACTIVE & NOT FOUND: Ardha Shathabdham (ID: 52a47c2c-ea32-4411-a903-7f7e7f6e922d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '52a47c2c-ea32-4411-a903-7f7e7f6e922d';

-- MARK INACTIVE & NOT FOUND: Romeo and Juliet Act 3 Scene 3 (ID: 52f91c58-2a17-4adf-b6c9-43e3b564e3b6) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '52f91c58-2a17-4adf-b6c9-43e3b564e3b6';

-- LINK CATEGORIES: Romeo and Juliet Act 3 Scene 3 (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('52f91c58-2a17-4adf-b6c9-43e3b564e3b6', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Basanti (ID: 530028b1-34a3-4aee-b889-8af621400df8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '530028b1-34a3-4aee-b889-8af621400df8';

-- LINK CATEGORIES: Basanti (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('530028b1-34a3-4aee-b889-8af621400df8', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Iru Mugan (ID: 5260e466-c2c2-4636-b5b1-635697f0c2e3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/_2_oyan2aoodpdo', file_size = '1.45 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5260e466-c2c2-4636-b5b1-635697f0c2e3';

-- MARK INACTIVE & NOT FOUND: WWE Money in the Bank 2024 (ID: 53075abb-c2e1-4fb2-b248-aef2042cfa15) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '53075abb-c2e1-4fb2-b248-aef2042cfa15';

-- MARK INACTIVE & NOT FOUND: Darwinte Parinamam (ID: 5322936a-341b-44f1-b794-a22a7616b7ad) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5322936a-341b-44f1-b794-a22a7616b7ad';

-- MARK INACTIVE & NOT FOUND: Anacondas: The Hunt for the Blood Orchid (ID: 5355f968-04f8-40ad-a8b7-d74355a9fd0f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5355f968-04f8-40ad-a8b7-d74355a9fd0f';

-- MARK INACTIVE & NOT FOUND: Narrow Nambul (ID: 53589ac0-68ad-4ece-8eb5-6606a8e48dcf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '53589ac0-68ad-4ece-8eb5-6606a8e48dcf';

-- LINK CATEGORIES: Narrow Nambul (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('53589ac0-68ad-4ece-8eb5-6606a8e48dcf', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Twelve Monkeys (ID: 5261ae88-b41b-4d4b-a8c0-54a4e54c8135) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5261ae88-b41b-4d4b-a8c0-54a4e54c8135';

-- LINK CATEGORIES: Twelve Monkeys (['sci-fi', 'hindi-dubbed', 'dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5261ae88-b41b-4d4b-a8c0-54a4e54c8135', 'sci-fi'), ('5261ae88-b41b-4d4b-a8c0-54a4e54c8135', 'hindi-dubbed'), ('5261ae88-b41b-4d4b-a8c0-54a4e54c8135', 'dual-audio') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Until Dawn (ID: 53626db8-e69a-4ace-8628-fa6af96dab6c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5vrajbythybrjer', file_size = '2.19 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '53626db8-e69a-4ace-8628-fa6af96dab6c';

-- LINK CATEGORIES: Until Dawn (['hindi-dubbed', 'dual-audio', 'hollywood', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('53626db8-e69a-4ace-8628-fa6af96dab6c', 'hindi-dubbed'), ('53626db8-e69a-4ace-8628-fa6af96dab6c', 'dual-audio'), ('53626db8-e69a-4ace-8628-fa6af96dab6c', 'hollywood'), ('53626db8-e69a-4ace-8628-fa6af96dab6c', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Babysitter (ID: 52f933ed-bd90-4cd1-b969-c2c6dcea0377) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '52f933ed-bd90-4cd1-b969-c2c6dcea0377';

-- MARK INACTIVE & NOT FOUND: Finders Keepers (ID: 53068b37-3a7c-4ca8-be7a-393e98d617fd) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '53068b37-3a7c-4ca8-be7a-393e98d617fd';

-- LINK CATEGORIES: Finders Keepers (['comedy', 'hd', 'hindi-dubbed', 'dual-audio', 'hollywood', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('53068b37-3a7c-4ca8-be7a-393e98d617fd', 'comedy'), ('53068b37-3a7c-4ca8-be7a-393e98d617fd', 'hd'), ('53068b37-3a7c-4ca8-be7a-393e98d617fd', 'hindi-dubbed'), ('53068b37-3a7c-4ca8-be7a-393e98d617fd', 'dual-audio'), ('53068b37-3a7c-4ca8-be7a-393e98d617fd', 'hollywood'), ('53068b37-3a7c-4ca8-be7a-393e98d617fd', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Operation Parindey (ID: 527bf859-cff1-44de-85e3-ff3a399490c5) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '527bf859-cff1-44de-85e3-ff3a399490c5';

-- MARK INACTIVE & NOT FOUND: Halahal (ID: 53592857-bf91-4936-9d5e-bc1315b43c71) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '53592857-bf91-4936-9d5e-bc1315b43c71';

-- MARK INACTIVE & NOT FOUND: Brahmotsavam (ID: 537f6c31-9021-4149-a4d6-d74ed87363c8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '537f6c31-9021-4149-a4d6-d74ed87363c8';

-- UPDATE MOVIE: Blind Spot (ID: 539c42b0-5c06-41a7-b6e8-b99a41e956b7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/avqfqqq81v58r1s', file_size = '1.87 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '539c42b0-5c06-41a7-b6e8-b99a41e956b7';

-- LINK CATEGORIES: Blind Spot (['mystery', 'dual-audio', 'south-hindi-dubbed', 'telugu', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('539c42b0-5c06-41a7-b6e8-b99a41e956b7', 'mystery'), ('539c42b0-5c06-41a7-b6e8-b99a41e956b7', 'dual-audio'), ('539c42b0-5c06-41a7-b6e8-b99a41e956b7', 'south-hindi-dubbed'), ('539c42b0-5c06-41a7-b6e8-b99a41e956b7', 'telugu'), ('539c42b0-5c06-41a7-b6e8-b99a41e956b7', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Omerta (ID: 53a0e996-288a-4b3d-ac7f-7d81897c158e) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1200358787)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '53a0e996-288a-4b3d-ac7f-7d81897c158e';

-- MARK INACTIVE & NOT FOUND: (Love Song) (ID: 53a452a1-4084-4d22-9942-b17a19796d18) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '53a452a1-4084-4d22-9942-b17a19796d18';

-- MARK INACTIVE & NOT FOUND: Selfie Raja (ID: 5381d796-e1f7-41f1-a175-9fb616282338) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5381d796-e1f7-41f1-a175-9fb616282338';

-- UPDATE MOVIE: Edge of Tomorrow (ID: 53c6993e-680c-4801-8787-98db121a1bd3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/9uykggmdcya1yk1', file_size = '1.73 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '53c6993e-680c-4801-8787-98db121a1bd3';

-- UPDATE MOVIE: Ramprasad Ki Tehrvi (ID: 539b0f3c-82df-4296-8817-523e1f9257e6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dl3rgf--grqvm7w', file_size = '908.67 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '539b0f3c-82df-4296-8817-523e1f9257e6';

-- MARK INACTIVE & NOT FOUND: Pottu (ID: 53dc7953-73cc-4082-8729-900438cec90c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '53dc7953-73cc-4082-8729-900438cec90c';

-- MARK INACTIVE & NOT FOUND: Let's Get Married (ID: 53e33af9-43f6-43b2-8e0f-14a73966e4f4) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '53e33af9-43f6-43b2-8e0f-14a73966e4f4';

-- UPDATE MOVIE: The Princess and the Frog (ID: 53eae2fc-cdee-4b99-a931-e05c2269b41e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/cklpwestrwtvrrg', file_size = '1.73 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '53eae2fc-cdee-4b99-a931-e05c2269b41e';

-- LINK CATEGORIES: The Princess and the Frog (['adventure', 'hindi-dubbed', 'dual-audio', 'bluray', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('53eae2fc-cdee-4b99-a931-e05c2269b41e', 'adventure'), ('53eae2fc-cdee-4b99-a931-e05c2269b41e', 'hindi-dubbed'), ('53eae2fc-cdee-4b99-a931-e05c2269b41e', 'dual-audio'), ('53eae2fc-cdee-4b99-a931-e05c2269b41e', 'bluray'), ('53eae2fc-cdee-4b99-a931-e05c2269b41e', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Gang Leader (ID: 53f53e4e-4fb3-44ea-a6a8-48487919bde9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '53f53e4e-4fb3-44ea-a6a8-48487919bde9';

-- UPDATE MOVIE: Kabzaa (ID: 53f7910f-3a50-4ef6-9d22-a150917c7552)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/2ipqypzp1vovaze', file_size = '2.48 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '53f7910f-3a50-4ef6-9d22-a150917c7552';

-- UPDATE MOVIE: Ninu Veedani Needanu Nene (ID: 53fba1af-ef7b-4edf-8312-fda8d17328d5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nmsmioyyeekksro', file_size = '692.46 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '53fba1af-ef7b-4edf-8312-fda8d17328d5';

-- MARK INACTIVE & NOT FOUND: Assassin's Creed (ID: 540e4dc6-9ffd-4140-8b6d-091f3dcc085f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '540e4dc6-9ffd-4140-8b6d-091f3dcc085f';

-- MARK INACTIVE & NOT FOUND: Tie the Knot (ID: 54142ace-66d7-43ad-85f8-27d155b25493) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '54142ace-66d7-43ad-85f8-27d155b25493';

-- MARK INACTIVE & NOT FOUND: Dongata (ID: 54378ad4-19b9-4190-8a23-d1aa0bb6bc96) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/2585229274)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '54378ad4-19b9-4190-8a23-d1aa0bb6bc96';

-- MARK INACTIVE & NOT FOUND: The Shallows (ID: 54263baf-c1ee-4030-8e2b-ff7b9957d616) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '54263baf-c1ee-4030-8e2b-ff7b9957d616';

-- UPDATE MOVIE: Case of Kondana (ID: 54a1bb6d-528f-497f-bddb-bbe1caecc07d)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/fjvvbfayvaffay5', file_size = '2.88 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '54a1bb6d-528f-497f-bddb-bbe1caecc07d';

-- LINK CATEGORIES: Case of Kondana (['hindi-dubbed', 'dual-audio', 'south-hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('54a1bb6d-528f-497f-bddb-bbe1caecc07d', 'hindi-dubbed'), ('54a1bb6d-528f-497f-bddb-bbe1caecc07d', 'dual-audio'), ('54a1bb6d-528f-497f-bddb-bbe1caecc07d', 'south-hindi-dubbed'), ('54a1bb6d-528f-497f-bddb-bbe1caecc07d', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: What Jennifer Did (ID: 546c49b6-c75a-4ff5-841c-8476f16ab8e6)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/ye0zdlnto10l0ol', file_size = '1.85 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '546c49b6-c75a-4ff5-841c-8476f16ab8e6';

-- LINK CATEGORIES: What Jennifer Did (['hindi-dubbed', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('546c49b6-c75a-4ff5-841c-8476f16ab8e6', 'hindi-dubbed'), ('546c49b6-c75a-4ff5-841c-8476f16ab8e6', 'dual-audio'), ('546c49b6-c75a-4ff5-841c-8476f16ab8e6', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: 6-Headed Shark Attack (ID: 544f863b-ad0a-4006-be55-01ae9ee5d188)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/cebjrfd4evvdxfy', file_size = '915.25 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '544f863b-ad0a-4006-be55-01ae9ee5d188';

-- MARK INACTIVE & NOT FOUND: Lakadbaggha (ID: 548d2fca-8e21-4b02-b328-1f8a1ed5a7c0) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '548d2fca-8e21-4b02-b328-1f8a1ed5a7c0';

-- MARK INACTIVE & NOT FOUND: Pranaam (ID: 5487b8c0-2d67-43d9-8b41-362ce93073dd) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5487b8c0-2d67-43d9-8b41-362ce93073dd';

-- MARK INACTIVE & NOT FOUND: Monkey Up (ID: 54a1c634-98fe-4bbd-b445-652e741cd8b7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '54a1c634-98fe-4bbd-b445-652e741cd8b7';

-- UPDATE MOVIE: Bakasuran (ID: 54c722a2-a867-4eef-b6f7-c2502560aeae)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ipuokkpona5zyky', file_size = '2.61 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '54c722a2-a867-4eef-b6f7-c2502560aeae';

-- UPDATE MOVIE: Prisoners of the Ghostland (ID: 54a7cd8e-b52d-4e34-8508-9274452acc67)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rmmxvrtvoc8cbop', file_size = '950.58 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '54a7cd8e-b52d-4e34-8508-9274452acc67';

-- MARK INACTIVE & NOT FOUND: Dookudu (ID: 54ea77ec-4780-4e88-9eee-a200fdc71ea8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '54ea77ec-4780-4e88-9eee-a200fdc71ea8';

-- MARK INACTIVE & NOT FOUND: Shaitan (ID: 54ec6e5b-39e9-42dc-b21e-519072b7d62c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '54ec6e5b-39e9-42dc-b21e-519072b7d62c';

-- LINK CATEGORIES: Shaitan (['hd', 'hindi-dubbed', 'thriller', 'action', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('54ec6e5b-39e9-42dc-b21e-519072b7d62c', 'hd'), ('54ec6e5b-39e9-42dc-b21e-519072b7d62c', 'hindi-dubbed'), ('54ec6e5b-39e9-42dc-b21e-519072b7d62c', 'thriller'), ('54ec6e5b-39e9-42dc-b21e-519072b7d62c', 'action'), ('54ec6e5b-39e9-42dc-b21e-519072b7d62c', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Love Actually (ID: 55079d1d-bd4b-484b-b7f9-b5ef07862061)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/t1hfwggbgwhiwru', file_size = '3.3 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '55079d1d-bd4b-484b-b7f9-b5ef07862061';

-- LINK CATEGORIES: Love Actually (['hindi-dubbed', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('55079d1d-bd4b-484b-b7f9-b5ef07862061', 'hindi-dubbed'), ('55079d1d-bd4b-484b-b7f9-b5ef07862061', 'dual-audio'), ('55079d1d-bd4b-484b-b7f9-b5ef07862061', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kumari 21F (ID: 54ef0c8e-c771-4a64-93fd-3b7fe5f04e93) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '54ef0c8e-c771-4a64-93fd-3b7fe5f04e93';

-- UPDATE MOVIE: Magic Man (ID: 550f7ed4-6788-42e3-86a6-2065fa952149)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ozzz_zujeedfqly', file_size = '850.19 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '550f7ed4-6788-42e3-86a6-2065fa952149';

-- UPDATE MOVIE: 7Aum Arivu (ID: 55102ec4-1a07-4678-a3ba-ab215b0d9685)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zb125-zugbjwtxq', file_size = '1.32 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '55102ec4-1a07-4678-a3ba-ab215b0d9685';

-- LINK CATEGORIES: 7Aum Arivu (['sci-fi', 'hd', 'action', 'dual-audio', 'south-hindi-dubbed', 'telugu', '300mb', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('55102ec4-1a07-4678-a3ba-ab215b0d9685', 'sci-fi'), ('55102ec4-1a07-4678-a3ba-ab215b0d9685', 'hd'), ('55102ec4-1a07-4678-a3ba-ab215b0d9685', 'action'), ('55102ec4-1a07-4678-a3ba-ab215b0d9685', 'dual-audio'), ('55102ec4-1a07-4678-a3ba-ab215b0d9685', 'south-hindi-dubbed'), ('55102ec4-1a07-4678-a3ba-ab215b0d9685', 'telugu'), ('55102ec4-1a07-4678-a3ba-ab215b0d9685', '300mb'), ('55102ec4-1a07-4678-a3ba-ab215b0d9685', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Hunter Killer (ID: 55133290-e191-4dd3-804b-525a8d3692a0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/mhllriofchc9a0r', file_size = '2.14 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '55133290-e191-4dd3-804b-525a8d3692a0';

-- MARK INACTIVE & NOT FOUND: Everything Everywhere All at Once (ID: 5536c8fa-cc90-4f96-9fcf-ee85a9eac94a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5536c8fa-cc90-4f96-9fcf-ee85a9eac94a';

-- MARK INACTIVE & NOT FOUND: Hichki (ID: 553da0f5-b7c7-4fa9-bae8-c24e05fb6c73) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '553da0f5-b7c7-4fa9-bae8-c24e05fb6c73';

-- MARK INACTIVE & NOT FOUND: Khatta Meetha (ID: 55593ca2-c255-41e9-8183-8bba505c644e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '55593ca2-c255-41e9-8183-8bba505c644e';

-- MARK INACTIVE & NOT FOUND: Panchatantra (ID: 552aa6d6-7cae-4d35-a139-6a77926732c2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '552aa6d6-7cae-4d35-a139-6a77926732c2';

-- MARK INACTIVE & NOT FOUND: Neighbors 2: Sorority Rising (ID: 559987c6-3168-4cf8-8374-095bb530de00) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '559987c6-3168-4cf8-8374-095bb530de00';

-- MARK INACTIVE & NOT FOUND: Chanakya (ID: 556e7b9a-2926-4062-bbdd-410c22f16ec1) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '556e7b9a-2926-4062-bbdd-410c22f16ec1';

-- MARK INACTIVE & NOT FOUND: Lesson Plan (ID: 559502e3-8d75-45d4-a9b6-204b977befcc) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '559502e3-8d75-45d4-a9b6-204b977befcc';

-- MARK INACTIVE & NOT FOUND: The Actress (ID: 55be444e-8d01-4801-a050-71625685315c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '55be444e-8d01-4801-a050-71625685315c';

-- LINK CATEGORIES: The Actress (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('55be444e-8d01-4801-a050-71625685315c', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Good Time (ID: 5596873f-ee8a-4bf9-ab6c-7f3e0af01f20) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5596873f-ee8a-4bf9-ab6c-7f3e0af01f20';

-- LINK CATEGORIES: Good Time (['hd', 'crime', '1080p', 'drama', 'hollywood', 'thriller'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5596873f-ee8a-4bf9-ab6c-7f3e0af01f20', 'hd'), ('5596873f-ee8a-4bf9-ab6c-7f3e0af01f20', 'crime'), ('5596873f-ee8a-4bf9-ab6c-7f3e0af01f20', '1080p'), ('5596873f-ee8a-4bf9-ab6c-7f3e0af01f20', 'drama'), ('5596873f-ee8a-4bf9-ab6c-7f3e0af01f20', 'hollywood'), ('5596873f-ee8a-4bf9-ab6c-7f3e0af01f20', 'thriller') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Entrapment (ID: 55a10c5c-df39-4b14-9cc3-056ae68eaaaf) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '55a10c5c-df39-4b14-9cc3-056ae68eaaaf';

-- LINK CATEGORIES: Entrapment (['crime', 'dual-audio', 'action', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('55a10c5c-df39-4b14-9cc3-056ae68eaaaf', 'crime'), ('55a10c5c-df39-4b14-9cc3-056ae68eaaaf', 'dual-audio'), ('55a10c5c-df39-4b14-9cc3-056ae68eaaaf', 'action'), ('55a10c5c-df39-4b14-9cc3-056ae68eaaaf', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Okka Ammayi Thappa (ID: 55cfdf40-9cd1-42d9-98df-d32e5180c250) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '55cfdf40-9cd1-42d9-98df-d32e5180c250';

-- MARK INACTIVE & NOT FOUND: Avengers: Doomsday (ID: 55f0b7b6-db2a-4793-aca2-a373036e21bf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '55f0b7b6-db2a-4793-aca2-a373036e21bf';

-- MARK INACTIVE & NOT FOUND: Perception (ID: 5594236a-fa6e-4d4d-9601-5daeee5679c0) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5594236a-fa6e-4d4d-9601-5daeee5679c0';

-- MARK INACTIVE & NOT FOUND: Gurtunda Seetakalam (ID: 562d654c-5334-4d77-99c6-7592edd6d197) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '562d654c-5334-4d77-99c6-7592edd6d197';

-- MARK INACTIVE & NOT FOUND: Tera Intezaar (ID: 5639289c-c382-4284-9f92-e3ae5c82ecb4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5639289c-c382-4284-9f92-e3ae5c82ecb4';

-- MARK INACTIVE & NOT FOUND: Bhooloham (ID: 563cf534-c84d-4fcb-a3a1-f9bdc25c3cdc) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '563cf534-c84d-4fcb-a3a1-f9bdc25c3cdc';

-- UPDATE MOVIE: GTMAX (ID: 55fe5108-18f7-4caa-b011-c9a9267d8bce)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/mqizbk014uhikg4', file_size = '2.16 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '55fe5108-18f7-4caa-b011-c9a9267d8bce';

-- LINK CATEGORIES: GTMAX (['dual-audio', 'hindi-dubbed', 'drama', 'hollywood', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('55fe5108-18f7-4caa-b011-c9a9267d8bce', 'dual-audio'), ('55fe5108-18f7-4caa-b011-c9a9267d8bce', 'hindi-dubbed'), ('55fe5108-18f7-4caa-b011-c9a9267d8bce', 'drama'), ('55fe5108-18f7-4caa-b011-c9a9267d8bce', 'hollywood'), ('55fe5108-18f7-4caa-b011-c9a9267d8bce', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Two Moon Junction (ID: 55a44561-a547-4def-b70e-58fc84a59a54) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '55a44561-a547-4def-b70e-58fc84a59a54';

-- LINK CATEGORIES: Two Moon Junction (['hd', 'dual-audio', '1080p', 'hindi-dubbed', 'romance', 'drama', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('55a44561-a547-4def-b70e-58fc84a59a54', 'hd'), ('55a44561-a547-4def-b70e-58fc84a59a54', 'dual-audio'), ('55a44561-a547-4def-b70e-58fc84a59a54', '1080p'), ('55a44561-a547-4def-b70e-58fc84a59a54', 'hindi-dubbed'), ('55a44561-a547-4def-b70e-58fc84a59a54', 'romance'), ('55a44561-a547-4def-b70e-58fc84a59a54', 'drama'), ('55a44561-a547-4def-b70e-58fc84a59a54', 'bluray') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Last Looks (ID: 55bed98a-891b-4f53-882a-43491c59436e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/0j0foneofefkqjg', file_size = '1010.51 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '55bed98a-891b-4f53-882a-43491c59436e';

-- MARK INACTIVE & NOT FOUND: Nocturnal Animals (ID: 567ee342-00b5-45b1-bdc4-c5e6781bf24b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '567ee342-00b5-45b1-bdc4-c5e6781bf24b';

-- UPDATE MOVIE: Curse of the Blind Dead (ID: 562167da-b28d-4ffe-b24c-5aee69879b05)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qq7x5_lcuhhc3hx', file_size = '937.51 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '562167da-b28d-4ffe-b24c-5aee69879b05';

-- MARK INACTIVE & NOT FOUND: Baadshaho (ID: 563e940f-3aa6-49bf-b771-f88bea0e20a1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '563e940f-3aa6-49bf-b771-f88bea0e20a1';

-- LINK CATEGORIES: Baadshaho (['hd', 'action', 'adventure', 'bollywood', '1080p', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('563e940f-3aa6-49bf-b771-f88bea0e20a1', 'hd'), ('563e940f-3aa6-49bf-b771-f88bea0e20a1', 'action'), ('563e940f-3aa6-49bf-b771-f88bea0e20a1', 'adventure'), ('563e940f-3aa6-49bf-b771-f88bea0e20a1', 'bollywood'), ('563e940f-3aa6-49bf-b771-f88bea0e20a1', '1080p'), ('563e940f-3aa6-49bf-b771-f88bea0e20a1', 'drama') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Section 8 (ID: 565d50f6-9262-49be-9ed5-381f4a9b9be6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1xvrzmobc11hcyh', file_size = '1.59 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '565d50f6-9262-49be-9ed5-381f4a9b9be6';

-- MARK INACTIVE & NOT FOUND: Music School (ID: 56677f59-3a11-462e-9dde-5b6751b484cb) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '56677f59-3a11-462e-9dde-5b6751b484cb';

-- MARK INACTIVE & NOT FOUND: The Apparition (ID: 568e16f5-5b62-4b40-a077-5172ccd484f6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '568e16f5-5b62-4b40-a077-5172ccd484f6';

-- MARK INACTIVE & NOT FOUND: Bubble Gum (ID: 569dfbff-93dc-4381-8b7c-7317024a495c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '569dfbff-93dc-4381-8b7c-7317024a495c';

-- MARK INACTIVE & NOT FOUND: About Fate (ID: 56928bb4-8c55-40ca-ba7e-a3f2b33a32e8) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/1950266352)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '56928bb4-8c55-40ca-ba7e-a3f2b33a32e8';

-- UPDATE MOVIE: Free Birds (ID: 56b2e31f-2d6a-4603-8d9c-d9212e24df34)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/w7mtzgt0ghwrq7d', file_size = '1.55 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '56b2e31f-2d6a-4603-8d9c-d9212e24df34';

-- MARK INACTIVE & NOT FOUND: Mr Joe B. Carvalho (ID: 56a86d9a-e291-47e9-ba19-190a0334b6f4) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '56a86d9a-e291-47e9-ba19-190a0334b6f4';

-- UPDATE MOVIE: Sauda Khara Khara (ID: 56d5b6fc-2e4a-4776-9db0-791b4e94659e)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/4goravyom4w4vxt', file_size = '2.49 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '56d5b6fc-2e4a-4776-9db0-791b4e94659e';

-- LINK CATEGORIES: Sauda Khara Khara (['300mb', 'punjabi'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('56d5b6fc-2e4a-4776-9db0-791b4e94659e', '300mb'), ('56d5b6fc-2e4a-4776-9db0-791b4e94659e', 'punjabi') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Babysitter: Killer Queen (ID: 56b30f08-170a-483c-a348-2fa8092a8773) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '56b30f08-170a-483c-a348-2fa8092a8773';

-- MARK INACTIVE & NOT FOUND: Kanabadutaledu (ID: 56c3310a-80ef-41ba-8bf0-a9b5582262a7) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/2863427330)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '56c3310a-80ef-41ba-8bf0-a9b5582262a7';

-- MARK INACTIVE & NOT FOUND: The Last Warrior (ID: 56eb8ab2-a2e3-49e0-9b5f-101538f296af) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '56eb8ab2-a2e3-49e0-9b5f-101538f296af';

-- MARK INACTIVE & NOT FOUND: Opposite of Blood (ID: 5702c7a6-78e0-4d76-a152-be4bf4f62f8b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5702c7a6-78e0-4d76-a152-be4bf4f62f8b';

-- UPDATE MOVIE: The Voyeurs (ID: 56dfefa7-581a-42f9-8860-f21c47c15c4b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qwtwfeddlctnce2', file_size = '900.02 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '56dfefa7-581a-42f9-8860-f21c47c15c4b';

-- UPDATE MOVIE: The White Tiger (ID: 56f99b82-09a7-4541-a7ed-9ab8c886fcfc)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/o4wdxxay9kyay32', file_size = '2.18 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '56f99b82-09a7-4541-a7ed-9ab8c886fcfc';

-- MARK INACTIVE & NOT FOUND: A Mistake (ID: 56fe7edb-66a8-4ebc-8ee0-c4f2a48403c9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '56fe7edb-66a8-4ebc-8ee0-c4f2a48403c9';

-- LINK CATEGORIES: A Mistake (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('56fe7edb-66a8-4ebc-8ee0-c4f2a48403c9', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Back to the Outback (ID: 56fce928-c5aa-4c4c-93ae-3d7a12fa0519) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '56fce928-c5aa-4c4c-93ae-3d7a12fa0519';

-- UPDATE MOVIE: Aaradugula Bullet (ID: 570ca17d-b93c-449e-9685-e7d25335579f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1yjmi599y1vil1m', file_size = '2.68 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '570ca17d-b93c-449e-9685-e7d25335579f';

-- UPDATE MOVIE: Greta (ID: 5710f547-7fb6-4d7d-81a1-b83e96821700)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vf8ry8gbn2vcosc', file_size = '1.91 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5710f547-7fb6-4d7d-81a1-b83e96821700';

-- MARK INACTIVE & NOT FOUND: Agneepath (ID: 571ad591-4290-4205-8279-6653427d5bfb) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '571ad591-4290-4205-8279-6653427d5bfb';

-- UPDATE MOVIE: Return to Space (ID: 5730f1df-4de2-4c52-8a8c-45f2e66bff5e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/awhn8qf9yhw1hdp', file_size = '2.58 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5730f1df-4de2-4c52-8a8c-45f2e66bff5e';

-- MARK INACTIVE & NOT FOUND: Chalo Dilli (ID: 57b6c38b-dc3a-40ff-b512-403d7fc611ff) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '57b6c38b-dc3a-40ff-b512-403d7fc611ff';

-- UPDATE MOVIE: Call Sign "Banderas" (ID: 57274464-76a9-428b-90cc-2fccca0bb19d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pt4r400k44qxnib', file_size = '1.04 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '57274464-76a9-428b-90cc-2fccca0bb19d';

-- MARK INACTIVE & NOT FOUND: Aksar 2 (ID: 5756b528-46f3-437d-b105-912922a87f21) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5756b528-46f3-437d-b105-912922a87f21';

-- MARK INACTIVE & NOT FOUND: Pasanga 2 (ID: 578000ec-7406-4e56-b7dd-e9ee0e6182c1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '578000ec-7406-4e56-b7dd-e9ee0e6182c1';

-- LINK CATEGORIES: Pasanga 2 (['hd', 'family', '1080p', 'hindi-dubbed', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('578000ec-7406-4e56-b7dd-e9ee0e6182c1', 'hd'), ('578000ec-7406-4e56-b7dd-e9ee0e6182c1', 'family'), ('578000ec-7406-4e56-b7dd-e9ee0e6182c1', '1080p'), ('578000ec-7406-4e56-b7dd-e9ee0e6182c1', 'hindi-dubbed'), ('578000ec-7406-4e56-b7dd-e9ee0e6182c1', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Siddharth Roy (ID: 57b24ad4-972e-43bd-b17c-550ab225b11f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '57b24ad4-972e-43bd-b17c-550ab225b11f';

-- MARK INACTIVE & NOT FOUND: Space Jam (ID: 57baf9e2-d079-45c5-9b6a-40502dd49667) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '57baf9e2-d079-45c5-9b6a-40502dd49667';

-- LINK CATEGORIES: Space Jam (['dual-audio', 'adventure', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('57baf9e2-d079-45c5-9b6a-40502dd49667', 'dual-audio'), ('57baf9e2-d079-45c5-9b6a-40502dd49667', 'adventure'), ('57baf9e2-d079-45c5-9b6a-40502dd49667', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Express Raja (ID: 57d057e6-bd1c-4353-9521-19e0b2e34cbb) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '57d057e6-bd1c-4353-9521-19e0b2e34cbb';

-- UPDATE MOVIE: Kanchana 2 (ID: 57cac2ca-710f-4512-b436-d0bccadc75e7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jzjx-0zh02dzqz0', file_size = '1.64 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '57cac2ca-710f-4512-b436-d0bccadc75e7';

-- UPDATE MOVIE: War Path (ID: 57d17c54-a5e0-4df7-973a-57b7dde91171)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qllzhzvmwmlllel', file_size = '984.76 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '57d17c54-a5e0-4df7-973a-57b7dde91171';

-- MARK INACTIVE & NOT FOUND: All the Money in the World (ID: 57deb591-5a6e-4233-8075-dbd10dd0abdd) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '57deb591-5a6e-4233-8075-dbd10dd0abdd';

-- UPDATE MOVIE: Rise of the Zombies (ID: 57d90931-2b1d-40a4-a3d6-f21ad8619de2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dvm_m3dnv_4oqqd', file_size = '894.02 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '57d90931-2b1d-40a4-a3d6-f21ad8619de2';

-- LINK CATEGORIES: Rise of the Zombies (['hd', 'dual-audio', 'adventure', '1080p', 'hindi-dubbed', 'action', 'bluray', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('57d90931-2b1d-40a4-a3d6-f21ad8619de2', 'hd'), ('57d90931-2b1d-40a4-a3d6-f21ad8619de2', 'dual-audio'), ('57d90931-2b1d-40a4-a3d6-f21ad8619de2', 'adventure'), ('57d90931-2b1d-40a4-a3d6-f21ad8619de2', '1080p'), ('57d90931-2b1d-40a4-a3d6-f21ad8619de2', 'hindi-dubbed'), ('57d90931-2b1d-40a4-a3d6-f21ad8619de2', 'action'), ('57d90931-2b1d-40a4-a3d6-f21ad8619de2', 'bluray'), ('57d90931-2b1d-40a4-a3d6-f21ad8619de2', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Bhool Bhulaiyaa (ID: 57e4404d-d834-4707-823f-55cfdf43acda)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pdc8wtjlsbebppd', file_size = '1.17 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '57e4404d-d834-4707-823f-55cfdf43acda';

-- LINK CATEGORIES: Bhool Bhulaiyaa (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('57e4404d-d834-4707-823f-55cfdf43acda', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Krack (ID: 5807c863-7b74-4b80-a795-92c46628ac29)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kykh0k_qvsiqh-v', file_size = '2.55 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5807c863-7b74-4b80-a795-92c46628ac29';

-- MARK INACTIVE & NOT FOUND: Bbuddah Hoga Terra Baap (ID: 57edd771-8cbb-4b1d-b0ca-9dbf77e016d1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '57edd771-8cbb-4b1d-b0ca-9dbf77e016d1';

-- LINK CATEGORIES: Bbuddah Hoga Terra Baap (['crime', 'bollywood', '1080p', 'action', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('57edd771-8cbb-4b1d-b0ca-9dbf77e016d1', 'crime'), ('57edd771-8cbb-4b1d-b0ca-9dbf77e016d1', 'bollywood'), ('57edd771-8cbb-4b1d-b0ca-9dbf77e016d1', '1080p'), ('57edd771-8cbb-4b1d-b0ca-9dbf77e016d1', 'action'), ('57edd771-8cbb-4b1d-b0ca-9dbf77e016d1', 'comedy') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Nadhoo Khan (ID: 585fb8c3-9f40-42a2-a7dd-86d3adb90cab)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ucb70zoj7lioehw', file_size = '2.08 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '585fb8c3-9f40-42a2-a7dd-86d3adb90cab';

-- MARK INACTIVE & NOT FOUND: 102 Not Out (ID: 5833e6c1-664e-4d8a-8907-b7c20987ba4b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5833e6c1-664e-4d8a-8907-b7c20987ba4b';

-- UPDATE MOVIE: Sharaabi (ID: 587f759c-0972-4d8a-9b36-1eac6cc6d4f4)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/ykmoaunq93cnhuc', file_size = '3 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '587f759c-0972-4d8a-9b36-1eac6cc6d4f4';

-- LINK CATEGORIES: Sharaabi (['comedy', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('587f759c-0972-4d8a-9b36-1eac6cc6d4f4', 'comedy'), ('587f759c-0972-4d8a-9b36-1eac6cc6d4f4', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Ben 10 vs. the Universe: The Movie (ID: 58ae29ac-5937-4856-8c79-706bdadcb00f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '58ae29ac-5937-4856-8c79-706bdadcb00f';

-- MARK INACTIVE & NOT FOUND: Batti Gul Meter Chalu (ID: 58a2aa07-d65c-45c7-8440-6f91aa34f18e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '58a2aa07-d65c-45c7-8440-6f91aa34f18e';

-- MARK INACTIVE & NOT FOUND: Jagga Jiunda E (ID: 588facee-0dc2-47ce-8b05-947f7e99cf17) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '588facee-0dc2-47ce-8b05-947f7e99cf17';

-- MARK INACTIVE & NOT FOUND: Game Over, Man! (ID: 589df62b-72f5-4a2c-9850-1c99c52abc90) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '589df62b-72f5-4a2c-9850-1c99c52abc90';

-- MARK INACTIVE & NOT FOUND: Kadugu (ID: 58dce562-74a3-4b58-a462-882f874fd76c) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '58dce562-74a3-4b58-a462-882f874fd76c';

-- MARK INACTIVE & NOT FOUND: Mitran Nu Shaunk Hathyaran Da (ID: 58b99855-8fd5-4287-b9a5-868ea4f2ec52) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '58b99855-8fd5-4287-b9a5-868ea4f2ec52';

-- LINK CATEGORIES: Mitran Nu Shaunk Hathyaran Da (['hd', 'bollywood', '1080p', 'action', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('58b99855-8fd5-4287-b9a5-868ea4f2ec52', 'hd'), ('58b99855-8fd5-4287-b9a5-868ea4f2ec52', 'bollywood'), ('58b99855-8fd5-4287-b9a5-868ea4f2ec52', '1080p'), ('58b99855-8fd5-4287-b9a5-868ea4f2ec52', 'action'), ('58b99855-8fd5-4287-b9a5-868ea4f2ec52', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Killing Season (ID: 5888ed41-f0f9-4242-afa4-70bab59bc35c) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1166499130)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5888ed41-f0f9-4242-afa4-70bab59bc35c';

-- UPDATE MOVIE: Raja Vikramarka (ID: 58ce8039-35d2-44e3-9cc4-db15fbaa4ee7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ajpwg3gjop9w3zj', file_size = '2.49 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '58ce8039-35d2-44e3-9cc4-db15fbaa4ee7';

-- UPDATE MOVIE: Alexander (ID: 5903f8ae-787b-4eec-a08d-b1ff878609e4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1ummu1ekv1s1egd', file_size = '7.67 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5903f8ae-787b-4eec-a08d-b1ff878609e4';

-- LINK CATEGORIES: Alexander (['hd', 'dual-audio', 'bluray', '1080p', 'hindi-dubbed', 'action', 'hollywood', '300mb', 'biography'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5903f8ae-787b-4eec-a08d-b1ff878609e4', 'hd'), ('5903f8ae-787b-4eec-a08d-b1ff878609e4', 'dual-audio'), ('5903f8ae-787b-4eec-a08d-b1ff878609e4', 'bluray'), ('5903f8ae-787b-4eec-a08d-b1ff878609e4', '1080p'), ('5903f8ae-787b-4eec-a08d-b1ff878609e4', 'hindi-dubbed'), ('5903f8ae-787b-4eec-a08d-b1ff878609e4', 'action'), ('5903f8ae-787b-4eec-a08d-b1ff878609e4', 'hollywood'), ('5903f8ae-787b-4eec-a08d-b1ff878609e4', '300mb'), ('5903f8ae-787b-4eec-a08d-b1ff878609e4', 'biography') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Badla (ID: 58ebd48b-7650-40c0-b774-91efdb2e0e36) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '58ebd48b-7650-40c0-b774-91efdb2e0e36';

-- MARK INACTIVE & NOT FOUND: The Other Guys (ID: 5960412e-283b-490b-8a80-d8ce582824fb) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5960412e-283b-490b-8a80-d8ce582824fb';

-- MARK INACTIVE & NOT FOUND: Forsaken (ID: 592fc4b2-8291-4831-957a-3134aaf14d4c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '592fc4b2-8291-4831-957a-3134aaf14d4c';

-- MARK INACTIVE & NOT FOUND: Mukhbiir (ID: 59ad8cc2-abf7-41e8-af65-9f17aa5812a4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '59ad8cc2-abf7-41e8-af65-9f17aa5812a4';

-- LINK CATEGORIES: Mukhbiir (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('59ad8cc2-abf7-41e8-af65-9f17aa5812a4', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Greatest Beer Run Ever (ID: 5926a08d-fa8e-426c-87a6-82b19a21a229)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nbvkvittnxvlq6b', file_size = '1.09 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5926a08d-fa8e-426c-87a6-82b19a21a229';

-- MARK INACTIVE & NOT FOUND: JUNG_E (ID: 594cae19-dcab-4f4c-8130-c4a375773755) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '594cae19-dcab-4f4c-8130-c4a375773755';

-- MARK INACTIVE & NOT FOUND: Step Up (ID: 59b9611a-3080-4e8e-9593-d4f08131504a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '59b9611a-3080-4e8e-9593-d4f08131504a';

-- UPDATE MOVIE: Thadam (ID: 5991f1b2-fd53-4df4-b7f0-92739a516e01)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/l6bfnukpbjdjv2d', file_size = '2.56 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5991f1b2-fd53-4df4-b7f0-92739a516e01';

-- MARK INACTIVE & NOT FOUND: Bloodline Killer (ID: 5a053713-b48a-42cc-a8b1-b575623d1d08) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5a053713-b48a-42cc-a8b1-b575623d1d08';

-- LINK CATEGORIES: Bloodline Killer (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5a053713-b48a-42cc-a8b1-b575623d1d08', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Indoo Ki Jawani (ID: 59af4df7-8d99-454b-95de-e4c83e4f40e3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/mxnltlfmmtjulun', file_size = '2.07 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '59af4df7-8d99-454b-95de-e4c83e4f40e3';

-- UPDATE MOVIE: It's What's Inside (ID: 5a11a4c3-ad1f-41d3-b529-f1cb6ac9011e)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/bx0kcc9_6o0o6yo', file_size = '1.89 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5a11a4c3-ad1f-41d3-b529-f1cb6ac9011e';

-- LINK CATEGORIES: It's What's Inside (['dual-audio', 'sci-fi', 'hindi-dubbed', 'thriller'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5a11a4c3-ad1f-41d3-b529-f1cb6ac9011e', 'dual-audio'), ('5a11a4c3-ad1f-41d3-b529-f1cb6ac9011e', 'sci-fi'), ('5a11a4c3-ad1f-41d3-b529-f1cb6ac9011e', 'hindi-dubbed'), ('5a11a4c3-ad1f-41d3-b529-f1cb6ac9011e', 'thriller') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Heyy Babyy (ID: 5a3b6832-580f-4904-b714-b4a502d87454) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5a3b6832-580f-4904-b714-b4a502d87454';

-- LINK CATEGORIES: Heyy Babyy (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5a3b6832-580f-4904-b714-b4a502d87454', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Under the Skin (ID: 59b8a8f7-3d47-4ae6-bc41-8d4baf9e7569)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vhw638go366s4ga', file_size = '884.21 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '59b8a8f7-3d47-4ae6-bc41-8d4baf9e7569';

-- UPDATE MOVIE: Awake (ID: 5a034e5f-a663-41bb-a540-eb1e9abcba7e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8kyyhpykhksh8xc', file_size = '1.84 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5a034e5f-a663-41bb-a540-eb1e9abcba7e';

-- MARK INACTIVE & NOT FOUND: Kiss and Kill (ID: 59d3c8f9-fa20-41bb-b281-22d7ec95300c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '59d3c8f9-fa20-41bb-b281-22d7ec95300c';

-- MARK INACTIVE & NOT FOUND: Fast & Furious Presents: Hobbs & Shaw (ID: 5a761c3d-58d4-45f2-a2cc-8f1388905572) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5a761c3d-58d4-45f2-a2cc-8f1388905572';

-- MARK INACTIVE & NOT FOUND: Human Desires (ID: 5a32a727-de2d-466a-a1c3-9cbc5be019e1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5a32a727-de2d-466a-a1c3-9cbc5be019e1';

-- LINK CATEGORIES: Human Desires (['crime', 'dual-audio', 'hindi-dubbed', 'drama', '300mb', 'thriller'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5a32a727-de2d-466a-a1c3-9cbc5be019e1', 'crime'), ('5a32a727-de2d-466a-a1c3-9cbc5be019e1', 'dual-audio'), ('5a32a727-de2d-466a-a1c3-9cbc5be019e1', 'hindi-dubbed'), ('5a32a727-de2d-466a-a1c3-9cbc5be019e1', 'drama'), ('5a32a727-de2d-466a-a1c3-9cbc5be019e1', '300mb'), ('5a32a727-de2d-466a-a1c3-9cbc5be019e1', 'thriller') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: A Better Life (ID: 5a44aa79-9155-4385-9dd8-dea8f087643f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5a44aa79-9155-4385-9dd8-dea8f087643f';

-- LINK CATEGORIES: A Better Life (['hd', 'dual-audio', '1080p', 'hindi-dubbed', 'romance', 'drama', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5a44aa79-9155-4385-9dd8-dea8f087643f', 'hd'), ('5a44aa79-9155-4385-9dd8-dea8f087643f', 'dual-audio'), ('5a44aa79-9155-4385-9dd8-dea8f087643f', '1080p'), ('5a44aa79-9155-4385-9dd8-dea8f087643f', 'hindi-dubbed'), ('5a44aa79-9155-4385-9dd8-dea8f087643f', 'romance'), ('5a44aa79-9155-4385-9dd8-dea8f087643f', 'drama'), ('5a44aa79-9155-4385-9dd8-dea8f087643f', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Safe (ID: 5a53b9d0-9300-4e93-99bf-4020d82df031) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5a53b9d0-9300-4e93-99bf-4020d82df031';

-- MARK INACTIVE & NOT FOUND: The Double (ID: 5a8d5d85-9e50-4e19-ab7f-fc77c7687482) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5a8d5d85-9e50-4e19-ab7f-fc77c7687482';

-- UPDATE MOVIE: Happiness Ever After (ID: 5a7efd29-7874-4565-978d-9dc3eeaa5ef0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jort2utb2jw1tw1', file_size = '798.86 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5a7efd29-7874-4565-978d-9dc3eeaa5ef0';

-- MARK INACTIVE & NOT FOUND: August 15 (ID: 5a942f84-c980-4bb6-953c-f2d0a33f270b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5a942f84-c980-4bb6-953c-f2d0a33f270b';

-- MARK INACTIVE & NOT FOUND: Iké Boys (ID: 5abd9972-7d00-4bfc-a9be-9c5bba401442) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5abd9972-7d00-4bfc-a9be-9c5bba401442';

-- MARK INACTIVE & NOT FOUND: The Good, the Bad and the Ugly (ID: 5ac7148c-2f5e-4597-b7c8-67bae049da85) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5ac7148c-2f5e-4597-b7c8-67bae049da85';

-- UPDATE MOVIE: Munna (ID: 5a944b4e-774f-474d-bdc4-da8468aa9e23)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/cq2m2j612kyb6zj', file_size = '2.9 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5a944b4e-774f-474d-bdc4-da8468aa9e23';

-- LINK CATEGORIES: Munna (['hindi-dubbed', 'drama', 'south-hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5a944b4e-774f-474d-bdc4-da8468aa9e23', 'hindi-dubbed'), ('5a944b4e-774f-474d-bdc4-da8468aa9e23', 'drama'), ('5a944b4e-774f-474d-bdc4-da8468aa9e23', 'south-hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Fast and Furious (ID: 5ad4db21-20b4-4de4-9900-d4bdfe0da9ae)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/u1wareoe6qnrpsg', file_size = '2.63 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5ad4db21-20b4-4de4-9900-d4bdfe0da9ae';

-- LINK CATEGORIES: Fast and Furious (['dual-audio', 'hindi-dubbed', 'action', 'bluray', 'thriller'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5ad4db21-20b4-4de4-9900-d4bdfe0da9ae', 'dual-audio'), ('5ad4db21-20b4-4de4-9900-d4bdfe0da9ae', 'hindi-dubbed'), ('5ad4db21-20b4-4de4-9900-d4bdfe0da9ae', 'action'), ('5ad4db21-20b4-4de4-9900-d4bdfe0da9ae', 'bluray'), ('5ad4db21-20b4-4de4-9900-d4bdfe0da9ae', 'thriller') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Exodus: Gods and Kings (ID: 5aa72e79-1243-48f0-b664-33fcb777c8f1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5aa72e79-1243-48f0-b664-33fcb777c8f1';

-- MARK INACTIVE & NOT FOUND: Training Day (ID: 5ac31bd4-b694-4e9d-8914-738342aca758) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5ac31bd4-b694-4e9d-8914-738342aca758';

-- LINK CATEGORIES: Training Day (['hd', 'crime', 'dual-audio', '1080p', 'hindi-dubbed', 'drama', 'hollywood', 'thriller'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5ac31bd4-b694-4e9d-8914-738342aca758', 'hd'), ('5ac31bd4-b694-4e9d-8914-738342aca758', 'crime'), ('5ac31bd4-b694-4e9d-8914-738342aca758', 'dual-audio'), ('5ac31bd4-b694-4e9d-8914-738342aca758', '1080p'), ('5ac31bd4-b694-4e9d-8914-738342aca758', 'hindi-dubbed'), ('5ac31bd4-b694-4e9d-8914-738342aca758', 'drama'), ('5ac31bd4-b694-4e9d-8914-738342aca758', 'hollywood'), ('5ac31bd4-b694-4e9d-8914-738342aca758', 'thriller') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Stake Land (ID: 5ac1e68f-440a-42e0-a99c-d2aa8cb02ebf) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.in/file/1878636914)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5ac1e68f-440a-42e0-a99c-d2aa8cb02ebf';

-- LINK CATEGORIES: Stake Land (['dual-audio', 'bluray', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5ac1e68f-440a-42e0-a99c-d2aa8cb02ebf', 'dual-audio'), ('5ac1e68f-440a-42e0-a99c-d2aa8cb02ebf', 'bluray'), ('5ac1e68f-440a-42e0-a99c-d2aa8cb02ebf', 'hindi-dubbed'), ('5ac1e68f-440a-42e0-a99c-d2aa8cb02ebf', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Marked Men: Rule + Shaw (ID: 5b013567-160f-4996-b366-030e330293ae) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5b013567-160f-4996-b366-030e330293ae';

-- MARK INACTIVE & NOT FOUND: Maayavan (ID: 5ad99c91-02bd-4f23-9000-2620c9febb03) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5ad99c91-02bd-4f23-9000-2620c9febb03';

-- MARK INACTIVE & NOT FOUND: Sympathy for the Devil (ID: 5b00a2e2-5f00-4954-af32-3d7d2ebc8108) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5b00a2e2-5f00-4954-af32-3d7d2ebc8108';

-- UPDATE MOVIE: House on Elm Lake (ID: 5adc3b77-aa9b-4a71-9e9a-fd1fd5138650)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/77edi1stxsbuems', file_size = '1.05 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5adc3b77-aa9b-4a71-9e9a-fd1fd5138650';

-- MARK INACTIVE & NOT FOUND: Snatched (ID: 5ae8c5bd-071e-4907-9ac5-ba29b012fe23) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5ae8c5bd-071e-4907-9ac5-ba29b012fe23';

-- LINK CATEGORIES: Snatched (['hd', 'dual-audio', '1080p', 'hindi-dubbed', 'action', 'hollywood', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5ae8c5bd-071e-4907-9ac5-ba29b012fe23', 'hd'), ('5ae8c5bd-071e-4907-9ac5-ba29b012fe23', 'dual-audio'), ('5ae8c5bd-071e-4907-9ac5-ba29b012fe23', '1080p'), ('5ae8c5bd-071e-4907-9ac5-ba29b012fe23', 'hindi-dubbed'), ('5ae8c5bd-071e-4907-9ac5-ba29b012fe23', 'action'), ('5ae8c5bd-071e-4907-9ac5-ba29b012fe23', 'hollywood'), ('5ae8c5bd-071e-4907-9ac5-ba29b012fe23', 'comedy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Zoolander (ID: 5b07c922-a27f-422a-a46c-3484fd5339ba) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5b07c922-a27f-422a-a46c-3484fd5339ba';

-- LINK CATEGORIES: Zoolander (['hd', 'dual-audio', '1080p', 'hindi-dubbed', 'hollywood', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5b07c922-a27f-422a-a46c-3484fd5339ba', 'hd'), ('5b07c922-a27f-422a-a46c-3484fd5339ba', 'dual-audio'), ('5b07c922-a27f-422a-a46c-3484fd5339ba', '1080p'), ('5b07c922-a27f-422a-a46c-3484fd5339ba', 'hindi-dubbed'), ('5b07c922-a27f-422a-a46c-3484fd5339ba', 'hollywood'), ('5b07c922-a27f-422a-a46c-3484fd5339ba', 'comedy') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Piano Lesson (ID: 5b2db754-27f8-4489-9177-1cc84f196276)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/4xgs5vzn57sestl', file_size = '2.65 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5b2db754-27f8-4489-9177-1cc84f196276';

-- MARK INACTIVE & NOT FOUND: Adipurush (ID: 5b15d27a-5a41-47f9-9886-d71365b3fdd4) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5b15d27a-5a41-47f9-9886-d71365b3fdd4';

-- MARK INACTIVE & NOT FOUND: My Father's Dragon (ID: 5b09d6af-5f31-4c59-8b54-a3cc86989272) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/1919639773)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5b09d6af-5f31-4c59-8b54-a3cc86989272';

-- MARK INACTIVE & NOT FOUND: Recoil (ID: 5b39fbe1-ab10-4492-819b-b31501a21a18) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5b39fbe1-ab10-4492-819b-b31501a21a18';

-- LINK CATEGORIES: Recoil (['hd', 'dual-audio', '1080p', 'hindi-dubbed', 'action', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5b39fbe1-ab10-4492-819b-b31501a21a18', 'hd'), ('5b39fbe1-ab10-4492-819b-b31501a21a18', 'dual-audio'), ('5b39fbe1-ab10-4492-819b-b31501a21a18', '1080p'), ('5b39fbe1-ab10-4492-819b-b31501a21a18', 'hindi-dubbed'), ('5b39fbe1-ab10-4492-819b-b31501a21a18', 'action'), ('5b39fbe1-ab10-4492-819b-b31501a21a18', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: My Lucky Stars (ID: 5b4155d6-f0ca-43b6-ab5f-cd98863adef3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5b4155d6-f0ca-43b6-ab5f-cd98863adef3';

-- LINK CATEGORIES: My Lucky Stars (['dual-audio', 'hindi-dubbed', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5b4155d6-f0ca-43b6-ab5f-cd98863adef3', 'dual-audio'), ('5b4155d6-f0ca-43b6-ab5f-cd98863adef3', 'hindi-dubbed'), ('5b4155d6-f0ca-43b6-ab5f-cd98863adef3', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: PAW Patrol: The Mighty Movie (ID: 5b5295bb-9d2c-4df6-ad26-36d98dd4ed4f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5b5295bb-9d2c-4df6-ad26-36d98dd4ed4f';

-- UPDATE MOVIE: Raksha Bandhan (ID: 5b7c6cfe-d5b8-44a2-bce3-f442d405da63)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/gzgltzhfhxt44i3', file_size = '1.89 GB', status = 'active', updated_at = NOW(), quality = 'HQ-HDCAMRip' WHERE id = '5b7c6cfe-d5b8-44a2-bce3-f442d405da63';

-- UPDATE MOVIE: Troy: The Odyssey (ID: 5b4ea00a-0b43-49cd-824f-9b9668503905)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1uswuvgtpm2nrtw', file_size = '1.23 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5b4ea00a-0b43-49cd-824f-9b9668503905';

-- MARK INACTIVE & NOT FOUND: Sorry I Killed You (ID: 5ba0c2d6-f656-48ac-a063-c3b0485861a2) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5ba0c2d6-f656-48ac-a063-c3b0485861a2';

-- MARK INACTIVE & NOT FOUND: Finals (ID: 5bf87e7d-a589-4960-8214-582519df0819) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5bf87e7d-a589-4960-8214-582519df0819';

-- LINK CATEGORIES: Finals (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5bf87e7d-a589-4960-8214-582519df0819', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Tom & Jerry (ID: 5b914f01-c1df-41bb-a978-02b170aac1bd)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/0ycz13ipzzpbi1d', file_size = '808.91 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5b914f01-c1df-41bb-a978-02b170aac1bd';

-- UPDATE MOVIE: Ash (ID: 5bb3d354-dbdb-4845-9340-a396fb13b685)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/z1lmuqdqmlux11c', file_size = '2.46 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5bb3d354-dbdb-4845-9340-a396fb13b685';

-- LINK CATEGORIES: Ash (['sci-fi', 'dual-audio', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5bb3d354-dbdb-4845-9340-a396fb13b685', 'sci-fi'), ('5bb3d354-dbdb-4845-9340-a396fb13b685', 'dual-audio'), ('5bb3d354-dbdb-4845-9340-a396fb13b685', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kaatru Veliyidai (ID: 5ba7cb65-4391-4d14-8c8e-93af90b1ad12) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5ba7cb65-4391-4d14-8c8e-93af90b1ad12';

-- UPDATE MOVIE: Tom and Jerry: The Movie (ID: 5bd4410a-c85d-4088-97c5-0ffe3d5efedb)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/q3qhkxist7ftqgt', file_size = '1.72 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5bd4410a-c85d-4088-97c5-0ffe3d5efedb';

-- LINK CATEGORIES: Tom and Jerry: The Movie (['dual-audio', 'adventure', 'hindi-dubbed', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5bd4410a-c85d-4088-97c5-0ffe3d5efedb', 'dual-audio'), ('5bd4410a-c85d-4088-97c5-0ffe3d5efedb', 'adventure'), ('5bd4410a-c85d-4088-97c5-0ffe3d5efedb', 'hindi-dubbed'), ('5bd4410a-c85d-4088-97c5-0ffe3d5efedb', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Caller (ID: 5bfe0309-7eba-4b3a-ad87-8b067ffa3f0d) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5bfe0309-7eba-4b3a-ad87-8b067ffa3f0d';

-- MARK INACTIVE & NOT FOUND: Crawl (ID: 5c011e65-474f-46dc-879e-9a5a4a44b297) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/3357444318)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c011e65-474f-46dc-879e-9a5a4a44b297';

-- UPDATE MOVIE: Kuruthi Aattam (ID: 5c1b2660-da33-4cc8-b5df-a366594162f0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/r1twh2r111g2hu2', file_size = '2.91 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5c1b2660-da33-4cc8-b5df-a366594162f0';

-- UPDATE MOVIE: Chal Mohan Ranga (ID: 5c2f9f6b-6154-4148-b073-3bfd2f393cb3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qx-jajjplpymnai', file_size = '2.69 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5c2f9f6b-6154-4148-b073-3bfd2f393cb3';

-- UPDATE MOVIE: Upside Down (ID: 5c179cd7-ddc9-4ca1-9fb0-7526f48517ed)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ehvop3q38oll9qu', file_size = '1.55 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5c179cd7-ddc9-4ca1-9fb0-7526f48517ed';

-- MARK INACTIVE & NOT FOUND: Dand Nayak (ID: 5c40f62d-3ffe-466d-8f2f-e42f1d93a8ac) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c40f62d-3ffe-466d-8f2f-e42f1d93a8ac';

-- LINK CATEGORIES: Dand Nayak (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5c40f62d-3ffe-466d-8f2f-e42f1d93a8ac', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Masterpiece (ID: 5c3202d4-6e1f-4f48-956e-91541da805cb) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c3202d4-6e1f-4f48-956e-91541da805cb';

-- MARK INACTIVE & NOT FOUND: Jaani Dushman (ID: 5c57631e-ab5b-48f2-bff6-fd51619140b2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c57631e-ab5b-48f2-bff6-fd51619140b2';

-- MARK INACTIVE & NOT FOUND: Comali (ID: 5c08f42e-c0f2-45a2-a150-e988a6512849) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c08f42e-c0f2-45a2-a150-e988a6512849';

-- MARK INACTIVE & NOT FOUND: WWE Fastlane 2016 (ID: 5c6aeb41-3147-4ea7-957e-1c99fc650af4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c6aeb41-3147-4ea7-957e-1c99fc650af4';

-- UPDATE MOVIE: The Calendar Killer (ID: 5c3eab7d-7d3e-42aa-b1c6-4f7352b56b0e)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/xuu6zx6ynczk12y', file_size = '1.97 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5c3eab7d-7d3e-42aa-b1c6-4f7352b56b0e';

-- LINK CATEGORIES: The Calendar Killer (['hindi-dubbed', 'dual-audio', '300mb', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5c3eab7d-7d3e-42aa-b1c6-4f7352b56b0e', 'hindi-dubbed'), ('5c3eab7d-7d3e-42aa-b1c6-4f7352b56b0e', 'dual-audio'), ('5c3eab7d-7d3e-42aa-b1c6-4f7352b56b0e', '300mb'), ('5c3eab7d-7d3e-42aa-b1c6-4f7352b56b0e', 'hollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Accident or Conspiracy: Godhra (ID: 5c762807-5a01-4cb0-a6bd-9b9227e4354f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/za1kzc6rhzknial', file_size = '2.52 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5c762807-5a01-4cb0-a6bd-9b9227e4354f';

-- MARK INACTIVE & NOT FOUND: Game Over (ID: 5c432444-e717-4a19-8f8d-a0620ae4d6d3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c432444-e717-4a19-8f8d-a0620ae4d6d3';

-- MARK INACTIVE & NOT FOUND: Siddhartha (ID: 5c44b955-8449-49f0-9bc5-70b24eb8bfd1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c44b955-8449-49f0-9bc5-70b24eb8bfd1';

-- MARK INACTIVE & NOT FOUND: Badass Monster Killer (ID: 5c6123b1-3d69-4526-a40d-f5fe5ca18e61) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c6123b1-3d69-4526-a40d-f5fe5ca18e61';

-- LINK CATEGORIES: Badass Monster Killer (['hd', 'hindi-dubbed', 'dual-audio', '1080p', 'action', 'horror', 'comedy', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5c6123b1-3d69-4526-a40d-f5fe5ca18e61', 'hd'), ('5c6123b1-3d69-4526-a40d-f5fe5ca18e61', 'hindi-dubbed'), ('5c6123b1-3d69-4526-a40d-f5fe5ca18e61', 'dual-audio'), ('5c6123b1-3d69-4526-a40d-f5fe5ca18e61', '1080p'), ('5c6123b1-3d69-4526-a40d-f5fe5ca18e61', 'action'), ('5c6123b1-3d69-4526-a40d-f5fe5ca18e61', 'horror'), ('5c6123b1-3d69-4526-a40d-f5fe5ca18e61', 'comedy'), ('5c6123b1-3d69-4526-a40d-f5fe5ca18e61', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Chitrangada (ID: 5c84b789-23ab-4445-b933-f0c21c76a4df) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c84b789-23ab-4445-b933-f0c21c76a4df';

-- MARK INACTIVE & NOT FOUND: Unbroken: Path to Redemption (ID: 5c875de9-2a66-4e47-b049-b7f12d9fcac8) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1991042340)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c875de9-2a66-4e47-b049-b7f12d9fcac8';

-- MARK INACTIVE & NOT FOUND: The Flu (ID: 5c859834-7269-471f-aca0-4453a39df061) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5c859834-7269-471f-aca0-4453a39df061';

-- LINK CATEGORIES: The Flu (['hd', 'drama', '1080p', 'thriller', 'action', 'sci-fi', '300mb', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5c859834-7269-471f-aca0-4453a39df061', 'hd'), ('5c859834-7269-471f-aca0-4453a39df061', 'drama'), ('5c859834-7269-471f-aca0-4453a39df061', '1080p'), ('5c859834-7269-471f-aca0-4453a39df061', 'thriller'), ('5c859834-7269-471f-aca0-4453a39df061', 'action'), ('5c859834-7269-471f-aca0-4453a39df061', 'sci-fi'), ('5c859834-7269-471f-aca0-4453a39df061', '300mb'), ('5c859834-7269-471f-aca0-4453a39df061', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dasvi (ID: 5cafa1fd-3bae-41d3-8464-91dfeb4f1045) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5cafa1fd-3bae-41d3-8464-91dfeb4f1045';

-- UPDATE MOVIE: Jyo Achyutananda (ID: 5cc05d13-f8e7-48e1-807f-00e252c9d593)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/urrroc6sl0ouk6k', file_size = '2.46 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5cc05d13-f8e7-48e1-807f-00e252c9d593';

-- MARK INACTIVE & NOT FOUND: TR (ID: 5d0d8566-5251-4169-9e16-3bdb78bfceb0) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5d0d8566-5251-4169-9e16-3bdb78bfceb0';

-- MARK INACTIVE & NOT FOUND: Three Kings (ID: 5cd09604-6fa7-4eff-b860-e77e580fe8b5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5cd09604-6fa7-4eff-b860-e77e580fe8b5';

-- LINK CATEGORIES: Three Kings (['adventure', 'hindi-dubbed', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5cd09604-6fa7-4eff-b860-e77e580fe8b5', 'adventure'), ('5cd09604-6fa7-4eff-b860-e77e580fe8b5', 'hindi-dubbed'), ('5cd09604-6fa7-4eff-b860-e77e580fe8b5', 'dual-audio'), ('5cd09604-6fa7-4eff-b860-e77e580fe8b5', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Splice (ID: 5cdb36ed-a2df-48ca-81d9-c5769392af64) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5cdb36ed-a2df-48ca-81d9-c5769392af64';

-- LINK CATEGORIES: Splice (['hindi-dubbed', 'dual-audio', 'drama', 'sci-fi'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5cdb36ed-a2df-48ca-81d9-c5769392af64', 'hindi-dubbed'), ('5cdb36ed-a2df-48ca-81d9-c5769392af64', 'dual-audio'), ('5cdb36ed-a2df-48ca-81d9-c5769392af64', 'drama'), ('5cdb36ed-a2df-48ca-81d9-c5769392af64', 'sci-fi') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Big Muddy (ID: 5d263bbf-4b43-4562-a8ab-4ec15a7b8680) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5d263bbf-4b43-4562-a8ab-4ec15a7b8680';

-- MARK INACTIVE & NOT FOUND: Hard Luck (ID: 5d009668-4e9c-49e9-a2b9-aa4f0adba190) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5d009668-4e9c-49e9-a2b9-aa4f0adba190';

-- LINK CATEGORIES: Hard Luck (['dual-audio', 'action', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5d009668-4e9c-49e9-a2b9-aa4f0adba190', 'dual-audio'), ('5d009668-4e9c-49e9-a2b9-aa4f0adba190', 'action'), ('5d009668-4e9c-49e9-a2b9-aa4f0adba190', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Freezer (ID: 5d1d3f7e-673d-4daf-8b8a-46d8ee08a2e7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5d1d3f7e-673d-4daf-8b8a-46d8ee08a2e7';

-- UPDATE MOVIE: The Little Vampire (ID: 5d0111e1-5d8b-4be8-955c-e6a019e5df81)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/55mbuzzpumwwm6i', file_size = '819.32 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5d0111e1-5d8b-4be8-955c-e6a019e5df81';

-- LINK CATEGORIES: The Little Vampire (['hindi-dubbed', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5d0111e1-5d8b-4be8-955c-e6a019e5df81', 'hindi-dubbed'), ('5d0111e1-5d8b-4be8-955c-e6a019e5df81', 'dual-audio'), ('5d0111e1-5d8b-4be8-955c-e6a019e5df81', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Terminus (ID: 5d24f2f2-0638-407e-b027-f0fd12e1950a) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2373804964)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5d24f2f2-0638-407e-b027-f0fd12e1950a';

-- UPDATE MOVIE: Kalki (ID: 5d541542-f281-4f9e-96ed-aceb5849c5be)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/xw1omxgyyd0s0xy', file_size = '3.54 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5d541542-f281-4f9e-96ed-aceb5849c5be';

-- LINK CATEGORIES: Kalki (['south-hindi-dubbed', 'hindi-dubbed', 'action', 'sci-fi', '300mb', 'fantasy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5d541542-f281-4f9e-96ed-aceb5849c5be', 'south-hindi-dubbed'), ('5d541542-f281-4f9e-96ed-aceb5849c5be', 'hindi-dubbed'), ('5d541542-f281-4f9e-96ed-aceb5849c5be', 'action'), ('5d541542-f281-4f9e-96ed-aceb5849c5be', 'sci-fi'), ('5d541542-f281-4f9e-96ed-aceb5849c5be', '300mb'), ('5d541542-f281-4f9e-96ed-aceb5849c5be', 'fantasy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Avalon High (ID: 5d2b4fb6-5042-4b2b-90ec-517ff94e903b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5d2b4fb6-5042-4b2b-90ec-517ff94e903b';

-- UPDATE MOVIE: Earthfall (ID: 5d295af1-7692-450b-8509-b5eeb63920d3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lx-5_p4kr4j_oyp', file_size = '1 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5d295af1-7692-450b-8509-b5eeb63920d3';

-- MARK INACTIVE & NOT FOUND: Stuntmen (ID: 5d655c5d-5d52-46ef-85f2-b729c7b7f654) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5d655c5d-5d52-46ef-85f2-b729c7b7f654';

-- LINK CATEGORIES: Stuntmen (['hindi-dubbed', 'dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5d655c5d-5d52-46ef-85f2-b729c7b7f654', 'hindi-dubbed'), ('5d655c5d-5d52-46ef-85f2-b729c7b7f654', 'dual-audio'), ('5d655c5d-5d52-46ef-85f2-b729c7b7f654', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Legendary Lighter (ID: 5dac54fe-8c25-4f7a-bfb3-b40ea0a33593) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5dac54fe-8c25-4f7a-bfb3-b40ea0a33593';

-- MARK INACTIVE & NOT FOUND: Sinam (ID: 5d923ae1-1313-429b-8053-96e8f5262303) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5d923ae1-1313-429b-8053-96e8f5262303';

-- MARK INACTIVE & NOT FOUND: Jaya Jaya Jaya Jaya Hey (ID: 5dea18a0-6934-4f90-bf8a-a223a38bf616) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5dea18a0-6934-4f90-bf8a-a223a38bf616';

-- MARK INACTIVE & NOT FOUND: Mindhunters (ID: 5dc1a340-955f-435a-93d8-66da0239c277) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5dc1a340-955f-435a-93d8-66da0239c277';

-- LINK CATEGORIES: Mindhunters (['mystery', 'hd', 'hindi-dubbed', 'dual-audio', '1080p', 'horror', 'crime', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5dc1a340-955f-435a-93d8-66da0239c277', 'mystery'), ('5dc1a340-955f-435a-93d8-66da0239c277', 'hd'), ('5dc1a340-955f-435a-93d8-66da0239c277', 'hindi-dubbed'), ('5dc1a340-955f-435a-93d8-66da0239c277', 'dual-audio'), ('5dc1a340-955f-435a-93d8-66da0239c277', '1080p'), ('5dc1a340-955f-435a-93d8-66da0239c277', 'horror'), ('5dc1a340-955f-435a-93d8-66da0239c277', 'crime'), ('5dc1a340-955f-435a-93d8-66da0239c277', 'hollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Kolaiyuthir Kaalam (ID: 5db430d1-cb27-45d8-9f3e-faf137fd5128)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/s9vhvdaatz-79d2', file_size = '934.74 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5db430d1-cb27-45d8-9f3e-faf137fd5128';

-- UPDATE MOVIE: King of Snake (ID: 5d6b0194-4ae0-461f-bd92-139931e3da5f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jcto3ec1s6v1cto', file_size = '1.01 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5d6b0194-4ae0-461f-bd92-139931e3da5f';

-- MARK INACTIVE & NOT FOUND: Pete's Dragon (ID: 5e06923e-c8b7-4ef9-861d-1dc2b52f4061) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5e06923e-c8b7-4ef9-861d-1dc2b52f4061';

-- UPDATE MOVIE: Jumper (ID: 5e2cfc42-3b7d-4a54-82d1-15f13d5b9cfd)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/y4awmgfbbja4f-b', file_size = '1.31 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5e2cfc42-3b7d-4a54-82d1-15f13d5b9cfd';

-- LINK CATEGORIES: Jumper (['hindi-dubbed', 'sci-fi'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5e2cfc42-3b7d-4a54-82d1-15f13d5b9cfd', 'hindi-dubbed'), ('5e2cfc42-3b7d-4a54-82d1-15f13d5b9cfd', 'sci-fi') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Mr & Mrs 420 Returns (ID: 5e5805fe-43a0-4311-a230-95b605c92b67)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dqodzs_do9ejwe_', file_size = '2.8 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5e5805fe-43a0-4311-a230-95b605c92b67';

-- MARK INACTIVE & NOT FOUND: Breakout (ID: 5e195889-9806-48a4-827f-54a2d1d713a8) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5e195889-9806-48a4-827f-54a2d1d713a8';

-- MARK INACTIVE & NOT FOUND: Rurouni Kenshin Part II: Kyoto Inferno (ID: 5ea51bbc-7085-4302-ba3c-c6ad957d1a4d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5ea51bbc-7085-4302-ba3c-c6ad957d1a4d';

-- MARK INACTIVE & NOT FOUND: Lakshmana (ID: 5eb84df9-d706-4c35-94b2-dfe518e250c4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5eb84df9-d706-4c35-94b2-dfe518e250c4';

-- LINK CATEGORIES: Lakshmana (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5eb84df9-d706-4c35-94b2-dfe518e250c4', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mindcage (ID: 5e25f3a4-85ff-47b2-93b6-4c5e1da6cc59) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/1771447535)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5e25f3a4-85ff-47b2-93b6-4c5e1da6cc59';

-- LINK CATEGORIES: Mindcage (['drama', '300mb', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5e25f3a4-85ff-47b2-93b6-4c5e1da6cc59', 'drama'), ('5e25f3a4-85ff-47b2-93b6-4c5e1da6cc59', '300mb'), ('5e25f3a4-85ff-47b2-93b6-4c5e1da6cc59', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: A Different Man (ID: 5e98cce6-5c0d-4828-a79d-32e03a53d01d) | Reason: Extracted link is invalid non-HubCloud URL (https://1fichier.com/)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5e98cce6-5c0d-4828-a79d-32e03a53d01d';

-- UPDATE MOVIE: Ved (ID: 5eb13694-5458-4ac4-ac0b-5f9b88def218)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zyl9q89fmy8a8wk', file_size = '2.49 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5eb13694-5458-4ac4-ac0b-5f9b88def218';

-- MARK INACTIVE & NOT FOUND: Rustum (ID: 5edab47d-b13e-49b6-90d0-9c1ce4a39b41) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5edab47d-b13e-49b6-90d0-9c1ce4a39b41';

-- LINK CATEGORIES: Rustum (['hd', 'south-hindi-dubbed', 'hindi-dubbed', 'dual-audio', '1080p', 'thriller', 'action', '300mb', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5edab47d-b13e-49b6-90d0-9c1ce4a39b41', 'hd'), ('5edab47d-b13e-49b6-90d0-9c1ce4a39b41', 'south-hindi-dubbed'), ('5edab47d-b13e-49b6-90d0-9c1ce4a39b41', 'hindi-dubbed'), ('5edab47d-b13e-49b6-90d0-9c1ce4a39b41', 'dual-audio'), ('5edab47d-b13e-49b6-90d0-9c1ce4a39b41', '1080p'), ('5edab47d-b13e-49b6-90d0-9c1ce4a39b41', 'thriller'), ('5edab47d-b13e-49b6-90d0-9c1ce4a39b41', 'action'), ('5edab47d-b13e-49b6-90d0-9c1ce4a39b41', '300mb'), ('5edab47d-b13e-49b6-90d0-9c1ce4a39b41', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Cry Macho (ID: 5ea1584b-4918-41ce-bb26-f98a7e754fed) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/787445672)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5ea1584b-4918-41ce-bb26-f98a7e754fed';

-- UPDATE MOVIE: Collider (ID: 5ec36fb0-fba9-4a48-aed9-1fbf99f0af03)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/unupiiuih3uchku', file_size = '793.94 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5ec36fb0-fba9-4a48-aed9-1fbf99f0af03';

-- UPDATE MOVIE: Mountain King (ID: 5ec994b6-a6df-4c07-bc97-2162078c7561)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ru3fhfkynn4fjze', file_size = '819.13 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5ec994b6-a6df-4c07-bc97-2162078c7561';

-- MARK INACTIVE & NOT FOUND: Due Date (ID: 5f048038-61c4-424e-b4fe-38b5a32fcf9e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5f048038-61c4-424e-b4fe-38b5a32fcf9e';

-- MARK INACTIVE & NOT FOUND: The Battleship Island (ID: 5f296de2-0465-4ea5-bb9d-016c178588f2) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5f296de2-0465-4ea5-bb9d-016c178588f2';

-- UPDATE MOVIE: Vaalvi (ID: 5f20a854-f57d-48af-9ce8-b70588882bd0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dkozsds8g7ww9hs', file_size = '1.96 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5f20a854-f57d-48af-9ce8-b70588882bd0';

-- UPDATE MOVIE: Once Upon a Time... in Hollywood (ID: 5f34204e-fc49-44a8-ae9a-a5c1579149e4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hrlhklfhgqrlz4l', file_size = '2.82 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5f34204e-fc49-44a8-ae9a-a5c1579149e4';

-- MARK INACTIVE & NOT FOUND: Athidhi (ID: 5f3ac5e6-8105-43bc-9f46-60251952a54b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5f3ac5e6-8105-43bc-9f46-60251952a54b';

-- LINK CATEGORIES: Athidhi (['hindi-dubbed', 'drama', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5f3ac5e6-8105-43bc-9f46-60251952a54b', 'hindi-dubbed'), ('5f3ac5e6-8105-43bc-9f46-60251952a54b', 'drama'), ('5f3ac5e6-8105-43bc-9f46-60251952a54b', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: TÁR (ID: 5f7cc299-3e77-4ef0-97e6-c9cbca227453) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5f7cc299-3e77-4ef0-97e6-c9cbca227453';

-- UPDATE MOVIE: Neelakasham Pachakadal Chuvanna Bhoomi (ID: 5f4e8587-0365-4c53-a941-67989789ada4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/s7utowmwid1ds16', file_size = '2.84 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5f4e8587-0365-4c53-a941-67989789ada4';

-- MARK INACTIVE & NOT FOUND: Goppinti Alludu (ID: 5f893fb6-37fd-44bc-a85d-9cd6c578c60f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5f893fb6-37fd-44bc-a85d-9cd6c578c60f';

-- LINK CATEGORIES: Goppinti Alludu (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5f893fb6-37fd-44bc-a85d-9cd6c578c60f', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Mama (ID: 5f51aa06-4e47-43b5-b5ce-8967dd522307)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nltoo-jk0y780ra', file_size = '1.95 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5f51aa06-4e47-43b5-b5ce-8967dd522307';

-- LINK CATEGORIES: Mama (['dual-audio'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5f51aa06-4e47-43b5-b5ce-8967dd522307', 'dual-audio') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Laung Laachi (ID: 5f55908e-d826-4a6b-ae43-fe5500fedeaa) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5f55908e-d826-4a6b-ae43-fe5500fedeaa';

-- UPDATE MOVIE: Crown Vic (ID: 5f5a8325-1096-43c6-b81f-e03a9b1a0a5c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/tmxym7fyfspp61y', file_size = '987.29 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5f5a8325-1096-43c6-b81f-e03a9b1a0a5c';

-- UPDATE MOVIE: The Beastmaster (ID: 5fb80545-998d-41bb-a854-f891a2ce6aba)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/vn08cohulxls6xa', file_size = '2.15 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5fb80545-998d-41bb-a854-f891a2ce6aba';

-- LINK CATEGORIES: The Beastmaster (['dual-audio', 'bluray', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('5fb80545-998d-41bb-a854-f891a2ce6aba', 'dual-audio'), ('5fb80545-998d-41bb-a854-f891a2ce6aba', 'bluray'), ('5fb80545-998d-41bb-a854-f891a2ce6aba', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Dungeons & Dragons: Honor Among Thieves (ID: 5f972535-eddf-41d2-84de-2c4784103787)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/tibsuxhc1vqbosu', file_size = '2.46 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5f972535-eddf-41d2-84de-2c4784103787';

-- UPDATE MOVIE: The Wrath of God (ID: 5fd07037-3dc9-4e2f-9492-a3a9f657c2fc)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jx2lxnw1jnaanur', file_size = '1.99 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '5fd07037-3dc9-4e2f-9492-a3a9f657c2fc';

-- MARK INACTIVE & NOT FOUND: Zoombies 2 (ID: 5fcc8e46-48e0-4261-9b3d-ab23ce784ced) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5fcc8e46-48e0-4261-9b3d-ab23ce784ced';

-- UPDATE MOVIE: Nasha (ID: 5f93b8d6-823a-4e8a-a415-18311653cdec)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/p_goopr7p5_6h_5', file_size = '1.07 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '5f93b8d6-823a-4e8a-a415-18311653cdec';

-- MARK INACTIVE & NOT FOUND: Operation Gold Fish (ID: 5fd5ca95-1e13-4f27-b41f-a00042723484) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5fd5ca95-1e13-4f27-b41f-a00042723484';

-- MARK INACTIVE & NOT FOUND: Kolamavu Kokila (ID: 6003aced-15b7-45b8-84e2-dbf9ba91f762) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6003aced-15b7-45b8-84e2-dbf9ba91f762';

-- MARK INACTIVE & NOT FOUND: Luckunnodu (ID: 5fd169dc-fd98-4432-83fe-8f4fbc5060a8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '5fd169dc-fd98-4432-83fe-8f4fbc5060a8';

-- MARK INACTIVE & NOT FOUND: Top Gear: Apocalypse (ID: 602c5592-ebff-4385-b5fd-b0ea77def5bd) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '602c5592-ebff-4385-b5fd-b0ea77def5bd';

-- MARK INACTIVE & NOT FOUND: Never Let Go (2024) (ID: 60388cd9-034a-4b54-8e74-3e61bd246510) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '60388cd9-034a-4b54-8e74-3e61bd246510';

-- MARK INACTIVE & NOT FOUND: Sixteen Candles (ID: 604c1550-d647-4868-af83-5d1d3c8a58ab) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '604c1550-d647-4868-af83-5d1d3c8a58ab';

-- MARK INACTIVE & NOT FOUND: Pet Sematary: Bloodlines (ID: 600f6555-1b34-4f31-9c14-38bda5249a1e) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '600f6555-1b34-4f31-9c14-38bda5249a1e';

-- MARK INACTIVE & NOT FOUND: Shikari (ID: 602aeaae-dd59-44be-924c-f5bc211b7ba5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '602aeaae-dd59-44be-924c-f5bc211b7ba5';

-- UPDATE MOVIE: Silukkuvarupatti Singam (ID: 602b4e14-f183-400b-950e-a89869500cb6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/cxf-7fefxbvaw55', file_size = '2.48 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '602b4e14-f183-400b-950e-a89869500cb6';

-- UPDATE MOVIE: It Follows (ID: 606933ed-1bf8-40de-900d-e0bbc6979be9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ilbe8lixxiwyaeq', file_size = '1.73 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '606933ed-1bf8-40de-900d-e0bbc6979be9';

-- MARK INACTIVE & NOT FOUND: Miracles from Heaven (ID: 60c9f1dd-2976-43bc-a784-1e7250560bec) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '60c9f1dd-2976-43bc-a784-1e7250560bec';

-- MARK INACTIVE & NOT FOUND: Kaala (ID: 602ccd4b-af6e-4ccb-9885-51e9135f8670) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '602ccd4b-af6e-4ccb-9885-51e9135f8670';

-- MARK INACTIVE & NOT FOUND: Kadaikutty Singam (ID: 608c10e7-b69b-4317-9263-f5025301ffb5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '608c10e7-b69b-4317-9263-f5025301ffb5';

-- UPDATE MOVIE: Kenau (ID: 60e0107a-61fd-4c1f-ae5f-ac64993096f2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5bn7nb7ka2pbwu_', file_size = '2.3 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '60e0107a-61fd-4c1f-ae5f-ac64993096f2';

-- UPDATE MOVIE: The 355 (ID: 60c5bc78-8686-4575-9c46-f253c1f7a9c0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/moi1vyjfh_1jxmi', file_size = '977.96 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '60c5bc78-8686-4575-9c46-f253c1f7a9c0';

-- MARK INACTIVE & NOT FOUND: Reprisal (ID: 60cf8243-aa1e-414d-9e0b-396e7ff63451) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '60cf8243-aa1e-414d-9e0b-396e7ff63451';

-- LINK CATEGORIES: Reprisal (['hd', '1080p', 'thriller', 'action', 'crime', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('60cf8243-aa1e-414d-9e0b-396e7ff63451', 'hd'), ('60cf8243-aa1e-414d-9e0b-396e7ff63451', '1080p'), ('60cf8243-aa1e-414d-9e0b-396e7ff63451', 'thriller'), ('60cf8243-aa1e-414d-9e0b-396e7ff63451', 'action'), ('60cf8243-aa1e-414d-9e0b-396e7ff63451', 'crime'), ('60cf8243-aa1e-414d-9e0b-396e7ff63451', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kyon Ki... (ID: 60c33d2d-edea-4c1e-8b09-4428f1c9b0c7) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '60c33d2d-edea-4c1e-8b09-4428f1c9b0c7';

-- MARK INACTIVE & NOT FOUND: Allari Premikudu (ID: 6119ba1f-025d-49e7-875b-cb62e44160dc) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6119ba1f-025d-49e7-875b-cb62e44160dc';

-- MARK INACTIVE & NOT FOUND: Django Unchained (ID: 60e705b4-ae5d-4919-ac2d-04d4eebf6b9f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '60e705b4-ae5d-4919-ac2d-04d4eebf6b9f';

-- MARK INACTIVE & NOT FOUND: Mission: Impossible - Rogue Nation (ID: 612652a3-7db8-415a-8026-0f3e3db672a6) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '612652a3-7db8-415a-8026-0f3e3db672a6';

-- LINK CATEGORIES: Mission: Impossible - Rogue Nation (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('612652a3-7db8-415a-8026-0f3e3db672a6', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: A Sound of Thunder (ID: 60ec7f47-c29f-4a22-989c-8577e4f4faa9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '60ec7f47-c29f-4a22-989c-8577e4f4faa9';

-- LINK CATEGORIES: A Sound of Thunder (['hindi-dubbed', 'dual-audio', 'horror'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('60ec7f47-c29f-4a22-989c-8577e4f4faa9', 'hindi-dubbed'), ('60ec7f47-c29f-4a22-989c-8577e4f4faa9', 'dual-audio'), ('60ec7f47-c29f-4a22-989c-8577e4f4faa9', 'horror') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Sin City: A Dame to Kill For (ID: 6100428c-de23-46e3-acb9-e3ffade43950)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/l_ezrppe11szprs', file_size = '1.71 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6100428c-de23-46e3-acb9-e3ffade43950';

-- UPDATE MOVIE: Blood Fest (ID: 60f7a0b1-44b9-4ea2-b5c9-2e364ab7780a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/plq1q3qa1aphpjc', file_size = '787.31 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '60f7a0b1-44b9-4ea2-b5c9-2e364ab7780a';

-- MARK INACTIVE & NOT FOUND: World Famous Lover (ID: 613108a2-586e-4777-b69c-aa3c43bdd504) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '613108a2-586e-4777-b69c-aa3c43bdd504';

-- UPDATE MOVIE: Tamasha (ID: 611a0ec7-c3e5-4605-a4c4-c5ebb7d4073d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/c1cxa-ntcntxuu-', file_size = '1.29 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '611a0ec7-c3e5-4605-a4c4-c5ebb7d4073d';

-- UPDATE MOVIE: Subham (ID: 6178835d-ad95-45fb-97cc-b17d85206d2d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/bbvqce55nevv1b2', file_size = '2.47 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6178835d-ad95-45fb-97cc-b17d85206d2d';

-- LINK CATEGORIES: Subham (['south-hindi-dubbed', 'hindi-dubbed', 'dual-audio', 'telugu', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6178835d-ad95-45fb-97cc-b17d85206d2d', 'south-hindi-dubbed'), ('6178835d-ad95-45fb-97cc-b17d85206d2d', 'hindi-dubbed'), ('6178835d-ad95-45fb-97cc-b17d85206d2d', 'dual-audio'), ('6178835d-ad95-45fb-97cc-b17d85206d2d', 'telugu'), ('6178835d-ad95-45fb-97cc-b17d85206d2d', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Trainwreck: The Cult of American Apparel (ID: 61a469f9-27a1-46cb-8286-e59748f15837)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/om7hxpz9hjkpscs', file_size = '985.64 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '61a469f9-27a1-46cb-8286-e59748f15837';

-- LINK CATEGORIES: Trainwreck: The Cult of American Apparel (['dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('61a469f9-27a1-46cb-8286-e59748f15837', 'dual-audio'), ('61a469f9-27a1-46cb-8286-e59748f15837', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Forbidden Love (ID: 61817f0a-4634-44cc-9be6-0de59a1bdb27) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '61817f0a-4634-44cc-9be6-0de59a1bdb27';

-- UPDATE MOVIE: The Equalizer (ID: 61b2a001-5a70-4cf1-b007-e702ae545285)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/gzyb88zs81yfee7', file_size = '2.58 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '61b2a001-5a70-4cf1-b007-e702ae545285';

-- MARK INACTIVE & NOT FOUND: The Hurt Locker (ID: 619a4758-373b-4b2f-a762-d76cdadbb02c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '619a4758-373b-4b2f-a762-d76cdadbb02c';

-- LINK CATEGORIES: The Hurt Locker (['hindi-dubbed', 'dual-audio', 'history'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('619a4758-373b-4b2f-a762-d76cdadbb02c', 'hindi-dubbed'), ('619a4758-373b-4b2f-a762-d76cdadbb02c', 'dual-audio'), ('619a4758-373b-4b2f-a762-d76cdadbb02c', 'history') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Vanquisher (ID: 61caf568-a9b1-4bee-ad6f-de3d05227bd0) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '61caf568-a9b1-4bee-ad6f-de3d05227bd0';

-- MARK INACTIVE & NOT FOUND: Piku (ID: 617b8205-32e9-49a2-a1f7-54657df82a08) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '617b8205-32e9-49a2-a1f7-54657df82a08';

-- LINK CATEGORIES: Piku (['hd', 'drama', 'bollywood', '1080p', '720p', 'comedy', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('617b8205-32e9-49a2-a1f7-54657df82a08', 'hd'), ('617b8205-32e9-49a2-a1f7-54657df82a08', 'drama'), ('617b8205-32e9-49a2-a1f7-54657df82a08', 'bollywood'), ('617b8205-32e9-49a2-a1f7-54657df82a08', '1080p'), ('617b8205-32e9-49a2-a1f7-54657df82a08', '720p'), ('617b8205-32e9-49a2-a1f7-54657df82a08', 'comedy'), ('617b8205-32e9-49a2-a1f7-54657df82a08', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Ninnila Ninnila (ID: 61b7ada2-5ca4-4a53-b66d-679585f99791)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nhnntttzyls4zzp', file_size = '1.64 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '61b7ada2-5ca4-4a53-b66d-679585f99791';

-- MARK INACTIVE & NOT FOUND: Ek Ladki Ko Dekha Toh Aisa Laga (ID: 61be5010-aa81-4235-a910-81d171805201) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '61be5010-aa81-4235-a910-81d171805201';

-- MARK INACTIVE & NOT FOUND: Si 3 (ID: 620a88de-1df2-44a5-b909-f74312f4c756) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '620a88de-1df2-44a5-b909-f74312f4c756';

-- MARK INACTIVE & NOT FOUND: Brochevarevarura (ID: 61c8c0d2-68e7-4144-9c23-6c0cabf4a35d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '61c8c0d2-68e7-4144-9c23-6c0cabf4a35d';

-- MARK INACTIVE & NOT FOUND: Louis & Luca: Mission to the Moon (ID: 6251a2cb-4306-4c15-9d5f-adb9ceca0d57) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6251a2cb-4306-4c15-9d5f-adb9ceca0d57';

-- MARK INACTIVE & NOT FOUND: Red Dawn (ID: 61d737d6-cd5c-4def-8268-3bb15e4975ad) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '61d737d6-cd5c-4def-8268-3bb15e4975ad';

-- LINK CATEGORIES: Red Dawn (['hd', 'hindi-dubbed', 'dual-audio', '1080p', 'thriller', 'action', 'sci-fi', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('61d737d6-cd5c-4def-8268-3bb15e4975ad', 'hd'), ('61d737d6-cd5c-4def-8268-3bb15e4975ad', 'hindi-dubbed'), ('61d737d6-cd5c-4def-8268-3bb15e4975ad', 'dual-audio'), ('61d737d6-cd5c-4def-8268-3bb15e4975ad', '1080p'), ('61d737d6-cd5c-4def-8268-3bb15e4975ad', 'thriller'), ('61d737d6-cd5c-4def-8268-3bb15e4975ad', 'action'), ('61d737d6-cd5c-4def-8268-3bb15e4975ad', 'sci-fi'), ('61d737d6-cd5c-4def-8268-3bb15e4975ad', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Big Miracle (ID: 62018a0d-fc1e-466c-9a77-8e2507a6b667) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '62018a0d-fc1e-466c-9a77-8e2507a6b667';

-- MARK INACTIVE & NOT FOUND: El Gringo (ID: 62a65ab3-9ce3-45d6-af61-70d9f2d2bf5a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '62a65ab3-9ce3-45d6-af61-70d9f2d2bf5a';

-- MARK INACTIVE & NOT FOUND: War of the Worlds: Annihilation (ID: 61d78ea7-cd65-47a7-aac2-c29e42357e09) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '61d78ea7-cd65-47a7-aac2-c29e42357e09';

-- MARK INACTIVE & NOT FOUND: Prisoners (ID: 624efd44-fae6-499b-a05a-16509d053a78) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '624efd44-fae6-499b-a05a-16509d053a78';

-- MARK INACTIVE & NOT FOUND: Martyrs Lane (ID: 627f5df8-7836-4ffc-bf09-93e19ab4b791) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '627f5df8-7836-4ffc-bf09-93e19ab4b791';

-- MARK INACTIVE & NOT FOUND: The Clearing (ID: 627f21cd-45c7-4f6c-9c26-d845048fc05f) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/2520510004)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '627f21cd-45c7-4f6c-9c26-d845048fc05f';

-- MARK INACTIVE & NOT FOUND: Devi(L) (ID: 62ac73ed-2d2a-441f-979a-0b6b4482aaf8) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '62ac73ed-2d2a-441f-979a-0b6b4482aaf8';

-- MARK INACTIVE & NOT FOUND: Ittefaq (ID: 62bf7afa-6290-4d1b-a959-23c7ad2a7166) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '62bf7afa-6290-4d1b-a959-23c7ad2a7166';

-- LINK CATEGORIES: Ittefaq (['mystery', 'thriller', '1080p', 'bollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('62bf7afa-6290-4d1b-a959-23c7ad2a7166', 'mystery'), ('62bf7afa-6290-4d1b-a959-23c7ad2a7166', 'thriller'), ('62bf7afa-6290-4d1b-a959-23c7ad2a7166', '1080p'), ('62bf7afa-6290-4d1b-a959-23c7ad2a7166', 'bollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Deep House (ID: 62be8e52-1f6a-470c-87f0-fbbe957cb84e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/swnct1plq5q0_4g', file_size = '777.89 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '62be8e52-1f6a-470c-87f0-fbbe957cb84e';

-- MARK INACTIVE & NOT FOUND: The Pacifier (ID: 62c425c7-e927-4732-a37c-994233542037) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '62c425c7-e927-4732-a37c-994233542037';

-- LINK CATEGORIES: The Pacifier (['hindi-dubbed', 'dual-audio', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('62c425c7-e927-4732-a37c-994233542037', 'hindi-dubbed'), ('62c425c7-e927-4732-a37c-994233542037', 'dual-audio'), ('62c425c7-e927-4732-a37c-994233542037', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Ready or Not: Here I Come (ID: 630ba399-7b03-4d80-9f1e-bb8658939b36) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '630ba399-7b03-4d80-9f1e-bb8658939b36';

-- UPDATE MOVIE: When Geek Meets Serial Killer (ID: 62e0ee4e-7b79-41e8-b759-af07d3c99909)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/2haln1ll2olowj0', file_size = '1.24 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '62e0ee4e-7b79-41e8-b759-af07d3c99909';

-- MARK INACTIVE & NOT FOUND: Jagga Jasoos (ID: 63020079-3598-4084-8552-fccbb97cd5f7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '63020079-3598-4084-8552-fccbb97cd5f7';

-- MARK INACTIVE & NOT FOUND: Derailed (ID: 62f1bef6-9f0c-491b-9628-9fcbd4cd8775) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '62f1bef6-9f0c-491b-9628-9fcbd4cd8775';

-- LINK CATEGORIES: Derailed (['hd', 'hindi-dubbed', 'dual-audio', '1080p', 'thriller', 'action', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('62f1bef6-9f0c-491b-9628-9fcbd4cd8775', 'hd'), ('62f1bef6-9f0c-491b-9628-9fcbd4cd8775', 'hindi-dubbed'), ('62f1bef6-9f0c-491b-9628-9fcbd4cd8775', 'dual-audio'), ('62f1bef6-9f0c-491b-9628-9fcbd4cd8775', '1080p'), ('62f1bef6-9f0c-491b-9628-9fcbd4cd8775', 'thriller'), ('62f1bef6-9f0c-491b-9628-9fcbd4cd8775', 'action'), ('62f1bef6-9f0c-491b-9628-9fcbd4cd8775', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Confirmation (ID: 631db9a9-c0d7-42d3-a85e-e1b9acc34e96) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '631db9a9-c0d7-42d3-a85e-e1b9acc34e96';

-- MARK INACTIVE & NOT FOUND: All Is Well (ID: 63159685-771c-4704-83b9-ce79eaaf2048) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '63159685-771c-4704-83b9-ce79eaaf2048';

-- MARK INACTIVE & NOT FOUND: Break Even (ID: 6342c771-01c7-4c4a-84fc-8f57ec372bf2) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6342c771-01c7-4c4a-84fc-8f57ec372bf2';

-- MARK INACTIVE & NOT FOUND: The Devil Wears Prada (ID: 637bb985-883c-4bc0-afa8-7dd5357a08b3) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '637bb985-883c-4bc0-afa8-7dd5357a08b3';

-- UPDATE MOVIE: The Enforcer (ID: 638f3a47-4539-469b-badf-c598e2fd4e7d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/smblmblneq7mmsq', file_size = '1.44 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '638f3a47-4539-469b-badf-c598e2fd4e7d';

-- UPDATE MOVIE: Varaal (ID: 63935539-ac5f-4b91-bbc4-48073890151e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zeuiqpg116dd6lx', file_size = '1.86 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '63935539-ac5f-4b91-bbc4-48073890151e';

-- MARK INACTIVE & NOT FOUND: Shivalinga (ID: 637c3172-0023-4ec1-b3e8-2c99ba5d06ce) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '637c3172-0023-4ec1-b3e8-2c99ba5d06ce';

-- UPDATE MOVIE: The Tragedy of Macbeth (ID: 6370a6af-171b-4c27-848e-4ce912be66cc)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vygb1qqwnywwo2x', file_size = '901.23 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6370a6af-171b-4c27-848e-4ce912be66cc';

-- MARK INACTIVE & NOT FOUND: Escape Plan 2: Hades (ID: 6391936c-116f-4e0a-98cb-d00dceb3dad5) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6391936c-116f-4e0a-98cb-d00dceb3dad5';

-- UPDATE MOVIE: Saroj Ka Rishta (ID: 63c43953-ae7a-4d2e-99f4-21d60a46281e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vih35y34rbbizva', file_size = '1.77 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '63c43953-ae7a-4d2e-99f4-21d60a46281e';

-- UPDATE MOVIE: Tarzan II (ID: 6398b3a7-8932-466b-8539-186b20eccd82)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8pp4pes5vazo2vr', file_size = '674.68 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6398b3a7-8932-466b-8539-186b20eccd82';

-- MARK INACTIVE & NOT FOUND: 420 IPC (ID: 6407bfc1-8a57-49cc-acb8-4bf345f78ac1) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6407bfc1-8a57-49cc-acb8-4bf345f78ac1';

-- MARK INACTIVE & NOT FOUND: The 40 Year Old Virgin (ID: 63d3d2bf-e874-458f-9625-03ff908b1a13) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '63d3d2bf-e874-458f-9625-03ff908b1a13';

-- LINK CATEGORIES: The 40 Year Old Virgin (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('63d3d2bf-e874-458f-9625-03ff908b1a13', 'dual-audio'), ('63d3d2bf-e874-458f-9625-03ff908b1a13', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Act of Valor (ID: 63e3798d-b32c-45bd-bbc2-fd5258fd1b61) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '63e3798d-b32c-45bd-bbc2-fd5258fd1b61';

-- MARK INACTIVE & NOT FOUND: 800 (ID: 63e8bb35-b18b-4883-a0ea-2a87c300d1a3) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '63e8bb35-b18b-4883-a0ea-2a87c300d1a3';

-- LINK CATEGORIES: 800 (['south-hindi-dubbed', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('63e8bb35-b18b-4883-a0ea-2a87c300d1a3', 'south-hindi-dubbed'), ('63e8bb35-b18b-4883-a0ea-2a87c300d1a3', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Hawaa Hawaai (ID: 6457a603-fdc2-4070-b9ff-03a5c3f5f734) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6457a603-fdc2-4070-b9ff-03a5c3f5f734';

-- MARK INACTIVE & NOT FOUND: Love Ni Bhavai (ID: 63fd83d9-c6f8-4d51-be8d-a5e918db61d1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '63fd83d9-c6f8-4d51-be8d-a5e918db61d1';

-- MARK INACTIVE & NOT FOUND: Rent (ID: 64b0bca1-4906-4115-9256-b53163fcabec) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '64b0bca1-4906-4115-9256-b53163fcabec';

-- LINK CATEGORIES: Rent (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('64b0bca1-4906-4115-9256-b53163fcabec', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Fantastic Beasts and Where to Find Them (ID: 6418eb14-e591-4544-be7b-9a9ad40a0a1e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6418eb14-e591-4544-be7b-9a9ad40a0a1e';

-- MARK INACTIVE & NOT FOUND: Carry On Jatta 2 (ID: 64aecc05-8d89-4fef-89e3-0a87b5df00aa) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '64aecc05-8d89-4fef-89e3-0a87b5df00aa';

-- MARK INACTIVE & NOT FOUND: Never Back Down (ID: 64aa069f-8450-466a-824a-a6131b66d609) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '64aa069f-8450-466a-824a-a6131b66d609';

-- LINK CATEGORIES: Never Back Down (['dual-audio', 'sport', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('64aa069f-8450-466a-824a-a6131b66d609', 'dual-audio'), ('64aa069f-8450-466a-824a-a6131b66d609', 'sport'), ('64aa069f-8450-466a-824a-a6131b66d609', 'hindi-dubbed'), ('64aa069f-8450-466a-824a-a6131b66d609', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Delhi 47 km (ID: 644be8fb-561f-4a12-9a6d-0c87b91a09a5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nxtttwy_n6-tkap', file_size = '820.77 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '644be8fb-561f-4a12-9a6d-0c87b91a09a5';

-- UPDATE MOVIE: Wrath of Man (ID: 64bc13ab-b66e-4da9-bdd6-e5136bf8d949)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1fbeui11n3ll1ov', file_size = '2.22 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '64bc13ab-b66e-4da9-bdd6-e5136bf8d949';

-- UPDATE MOVIE: Allegiant (ID: 64ce179c-0d3f-457e-8bd8-7ed892e12700)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/mh7ht392jh_yncw', file_size = '2.03 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '64ce179c-0d3f-457e-8bd8-7ed892e12700';

-- MARK INACTIVE & NOT FOUND: Welcome Home (ID: 64d4af90-1753-4d21-816f-2358097f59c1) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '64d4af90-1753-4d21-816f-2358097f59c1';

-- LINK CATEGORIES: Welcome Home (['hd', 'crime', '300mb', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('64d4af90-1753-4d21-816f-2358097f59c1', 'hd'), ('64d4af90-1753-4d21-816f-2358097f59c1', 'crime'), ('64d4af90-1753-4d21-816f-2358097f59c1', '300mb'), ('64d4af90-1753-4d21-816f-2358097f59c1', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Equilibrium (ID: 64bdc95d-7fa3-4214-b914-4f43df3f8d2d) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '64bdc95d-7fa3-4214-b914-4f43df3f8d2d';

-- LINK CATEGORIES: Equilibrium (['dual-audio', 'sci-fi', 'hindi-dubbed', '300mb', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('64bdc95d-7fa3-4214-b914-4f43df3f8d2d', 'dual-audio'), ('64bdc95d-7fa3-4214-b914-4f43df3f8d2d', 'sci-fi'), ('64bdc95d-7fa3-4214-b914-4f43df3f8d2d', 'hindi-dubbed'), ('64bdc95d-7fa3-4214-b914-4f43df3f8d2d', '300mb'), ('64bdc95d-7fa3-4214-b914-4f43df3f8d2d', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Cold Light of Day (ID: 64d425d1-edc5-4fa1-aefe-e1078d062024) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '64d425d1-edc5-4fa1-aefe-e1078d062024';

-- UPDATE MOVIE: Apocalypse Rising (ID: 64d99ad6-aecc-47d1-bb42-6b50325f7541)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pueaw-cmgua4g_s', file_size = '734 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '64d99ad6-aecc-47d1-bb42-6b50325f7541';

-- MARK INACTIVE & NOT FOUND: American Woman (ID: 65354198-e4bb-4a39-9ccc-442e35738bff) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65354198-e4bb-4a39-9ccc-442e35738bff';

-- UPDATE MOVIE: Stars at Noon (ID: 656bf581-9134-4771-969b-c92e4fa5a268)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vnm_m6mmdxv3fua', file_size = '2.29 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '656bf581-9134-4771-969b-c92e4fa5a268';

-- MARK INACTIVE & NOT FOUND: Setup (ID: 64f5c1cd-36e9-422a-9c5e-a2096d7bf57c) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2666237616)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '64f5c1cd-36e9-422a-9c5e-a2096d7bf57c';

-- LINK CATEGORIES: Setup (['dual-audio', 'hd', 'hollywood', 'action', 'crime', 'hindi-dubbed', '300mb', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('64f5c1cd-36e9-422a-9c5e-a2096d7bf57c', 'dual-audio'), ('64f5c1cd-36e9-422a-9c5e-a2096d7bf57c', 'hd'), ('64f5c1cd-36e9-422a-9c5e-a2096d7bf57c', 'hollywood'), ('64f5c1cd-36e9-422a-9c5e-a2096d7bf57c', 'action'), ('64f5c1cd-36e9-422a-9c5e-a2096d7bf57c', 'crime'), ('64f5c1cd-36e9-422a-9c5e-a2096d7bf57c', 'hindi-dubbed'), ('64f5c1cd-36e9-422a-9c5e-a2096d7bf57c', '300mb'), ('64f5c1cd-36e9-422a-9c5e-a2096d7bf57c', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dunston Checks In (ID: 6577ab0e-3e51-46bf-865e-fe5ba99ed133) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6577ab0e-3e51-46bf-865e-fe5ba99ed133';

-- LINK CATEGORIES: Dunston Checks In (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6577ab0e-3e51-46bf-865e-fe5ba99ed133', 'dual-audio'), ('6577ab0e-3e51-46bf-865e-fe5ba99ed133', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Namma Veettu Pillai (ID: 653abc18-b3f7-48bc-bad5-18ccaa3a4eb8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/e9tw7pc_l6ep6up', file_size = '1.47 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '653abc18-b3f7-48bc-bad5-18ccaa3a4eb8';

-- MARK INACTIVE & NOT FOUND: Mortal Game (ID: 65a39724-51b5-4c88-b396-233d17d6a4bf) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65a39724-51b5-4c88-b396-233d17d6a4bf';

-- LINK CATEGORIES: Mortal Game (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('65a39724-51b5-4c88-b396-233d17d6a4bf', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Baby and Me (ID: 65895ac8-f329-4f6a-a38a-b599e2ea833b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65895ac8-f329-4f6a-a38a-b599e2ea833b';

-- UPDATE MOVIE: Govindudu Andarivaadele (ID: 6584ebcf-075e-4d41-956b-52e409485263)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pm62cz7eomy7bbb', file_size = '2.81 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6584ebcf-075e-4d41-956b-52e409485263';

-- MARK INACTIVE & NOT FOUND: Adam Joan (ID: 65c21448-7414-4c9d-b1ae-5400e987d049) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65c21448-7414-4c9d-b1ae-5400e987d049';

-- MARK INACTIVE & NOT FOUND: In a Valley of Violence (ID: 65b884a2-278d-4cf6-8dba-8ad2e26e45c5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65b884a2-278d-4cf6-8dba-8ad2e26e45c5';

-- MARK INACTIVE & NOT FOUND: End of Watch (ID: 659a0138-03e5-4b13-91cc-6b98dff5c0f1) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '659a0138-03e5-4b13-91cc-6b98dff5c0f1';

-- UPDATE MOVIE: You Should Have Left (ID: 65c5edba-430e-4eeb-8dd5-25c7e17ff6bf)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/bipbvv5pygw1pvc', file_size = '812.77 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '65c5edba-430e-4eeb-8dd5-25c7e17ff6bf';

-- MARK INACTIVE & NOT FOUND: Grand Illusion (ID: 65e7b5ed-d0a2-4f22-9864-a80b4e15dd59) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65e7b5ed-d0a2-4f22-9864-a80b4e15dd59';

-- UPDATE MOVIE: Shaakuntalam (ID: 65cab719-d7f2-4e69-a82b-4c98168678c4)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/c1c1eelgt8rcvtr', file_size = '2.68 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '65cab719-d7f2-4e69-a82b-4c98168678c4';

-- MARK INACTIVE & NOT FOUND: Mafia (ID: 6605ace1-bde0-4404-ab65-b1a5fe917cfe) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6605ace1-bde0-4404-ab65-b1a5fe917cfe';

-- MARK INACTIVE & NOT FOUND: The Wicker Man (ID: 65caafaa-5159-4263-b57b-ed77febf7b07) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65caafaa-5159-4263-b57b-ed77febf7b07';

-- LINK CATEGORIES: The Wicker Man (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('65caafaa-5159-4263-b57b-ed77febf7b07', 'dual-audio'), ('65caafaa-5159-4263-b57b-ed77febf7b07', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Spy (ID: 6606091c-986c-4b93-a5e2-201d2e9d5ee3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6606091c-986c-4b93-a5e2-201d2e9d5ee3';

-- MARK INACTIVE & NOT FOUND: Red: Werewolf Hunter (ID: 65de7e5f-b150-455a-94c6-8de52be309c0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65de7e5f-b150-455a-94c6-8de52be309c0';

-- UPDATE MOVIE: Bhairavam (ID: 66317abe-2a03-4997-a49a-1dd9e44c7b7f)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pvsvxxqt3rxstst', file_size = '2.94 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '66317abe-2a03-4997-a49a-1dd9e44c7b7f';

-- LINK CATEGORIES: Bhairavam (['dual-audio', 'south-hindi-dubbed', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('66317abe-2a03-4997-a49a-1dd9e44c7b7f', 'dual-audio'), ('66317abe-2a03-4997-a49a-1dd9e44c7b7f', 'south-hindi-dubbed'), ('66317abe-2a03-4997-a49a-1dd9e44c7b7f', 'hindi-dubbed'), ('66317abe-2a03-4997-a49a-1dd9e44c7b7f', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mogudu (ID: 65e50013-7036-4938-8c46-b6a28829ae19) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65e50013-7036-4938-8c46-b6a28829ae19';

-- LINK CATEGORIES: Mogudu (['south-hindi-dubbed', '1080p', 'drama', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('65e50013-7036-4938-8c46-b6a28829ae19', 'south-hindi-dubbed'), ('65e50013-7036-4938-8c46-b6a28829ae19', '1080p'), ('65e50013-7036-4938-8c46-b6a28829ae19', 'drama'), ('65e50013-7036-4938-8c46-b6a28829ae19', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: RoboCop (ID: 664b7ecd-e7dd-4c01-852d-227eab592ed1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '664b7ecd-e7dd-4c01-852d-227eab592ed1';

-- MARK INACTIVE & NOT FOUND: Aakasa Ramanna (ID: 65efc92c-397b-453d-a250-5e14c6d8e9fc) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '65efc92c-397b-453d-a250-5e14c6d8e9fc';

-- LINK CATEGORIES: Aakasa Ramanna (['hindi-dubbed', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('65efc92c-397b-453d-a250-5e14c6d8e9fc', 'hindi-dubbed'), ('65efc92c-397b-453d-a250-5e14c6d8e9fc', 'drama') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Bandook (ID: 663708ad-8101-485d-955f-41fd5bee528a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kyljxdwvouynd4y', file_size = '2.21 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '663708ad-8101-485d-955f-41fd5bee528a';

-- MARK INACTIVE & NOT FOUND: Sword Master (ID: 663f2537-deb4-4d52-bb53-99dc831ae541) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '663f2537-deb4-4d52-bb53-99dc831ae541';

-- MARK INACTIVE & NOT FOUND: Taboo 3: The Unforgettable Act (ID: 66bd196f-9f4c-430e-8310-36c7b99bb9b9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '66bd196f-9f4c-430e-8310-36c7b99bb9b9';

-- LINK CATEGORIES: Taboo 3: The Unforgettable Act (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('66bd196f-9f4c-430e-8310-36c7b99bb9b9', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Money Heist: The Phenomenon (ID: 66be7724-87b7-4d15-9425-53845c3726ac) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '66be7724-87b7-4d15-9425-53845c3726ac';

-- UPDATE MOVIE: Ghost in the Shell (ID: 66b0b2a3-f224-4cd3-9169-30835598f5ff)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ugxkjdzgzyvgadv', file_size = '1.65 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '66b0b2a3-f224-4cd3-9169-30835598f5ff';

-- MARK INACTIVE & NOT FOUND: The Unbearable Weight of Massive Talent (ID: 6677ea92-0352-44f8-8f80-5b46c952dbee) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6677ea92-0352-44f8-8f80-5b46c952dbee';

-- UPDATE MOVIE: Pamela, A Love Story (ID: 66561f12-5268-4fa2-9cae-d07fac94211a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/svtsbo3shv15iun', file_size = '987.69 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '66561f12-5268-4fa2-9cae-d07fac94211a';

-- MARK INACTIVE & NOT FOUND: Kangaroo Jack (ID: 67095d3c-887f-49a8-8ee9-99fd8179c8f3) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '67095d3c-887f-49a8-8ee9-99fd8179c8f3';

-- UPDATE MOVIE: In Harm's Way (ID: 6692ee24-6203-45d9-992c-32ea0312f6d8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/eyrwelrrbkwd56p', file_size = '954.66 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6692ee24-6203-45d9-992c-32ea0312f6d8';

-- LINK CATEGORIES: In Harm's Way (['dual-audio', 'hollywood', 'hd', 'hindi-dubbed', '300mb', '1080p', 'romance', 'history'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6692ee24-6203-45d9-992c-32ea0312f6d8', 'dual-audio'), ('6692ee24-6203-45d9-992c-32ea0312f6d8', 'hollywood'), ('6692ee24-6203-45d9-992c-32ea0312f6d8', 'hd'), ('6692ee24-6203-45d9-992c-32ea0312f6d8', 'hindi-dubbed'), ('6692ee24-6203-45d9-992c-32ea0312f6d8', '300mb'), ('6692ee24-6203-45d9-992c-32ea0312f6d8', '1080p'), ('6692ee24-6203-45d9-992c-32ea0312f6d8', 'romance'), ('6692ee24-6203-45d9-992c-32ea0312f6d8', 'history') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: 777 Charlie (ID: 66df0b74-ed33-4656-8538-f579fe191806)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/71rg11ufhw1mwev', file_size = '3.1 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '66df0b74-ed33-4656-8538-f579fe191806';

-- MARK INACTIVE & NOT FOUND: Smugglers (ID: 66e63f41-efbc-41aa-913f-c99e2a63fc80) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '66e63f41-efbc-41aa-913f-c99e2a63fc80';

-- MARK INACTIVE & NOT FOUND: Laatu (ID: 670eba40-e09d-4bbe-9d0c-571960f329d6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '670eba40-e09d-4bbe-9d0c-571960f329d6';

-- UPDATE MOVIE: The Cursed (ID: 66f3a0eb-2cd0-4030-833d-457ea19c4135)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zprwrbfk1ofvqkf', file_size = '795.71 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '66f3a0eb-2cd0-4030-833d-457ea19c4135';

-- MARK INACTIVE & NOT FOUND: Heist (ID: 67580d74-8daa-4314-b6f9-fd5f7b23a745) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '67580d74-8daa-4314-b6f9-fd5f7b23a745';

-- LINK CATEGORIES: Heist (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('67580d74-8daa-4314-b6f9-fd5f7b23a745', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Alludu Seenu (ID: 6720d4f9-688d-436f-afc7-5140d7707fde) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6720d4f9-688d-436f-afc7-5140d7707fde';

-- MARK INACTIVE & NOT FOUND: Chi La Sow (ID: 672ce265-8e0d-49bb-9763-af8b0b10fd90) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '672ce265-8e0d-49bb-9763-af8b0b10fd90';

-- MARK INACTIVE & NOT FOUND: Astro Boy (ID: 6774fc70-23b9-4d88-9e2b-60312402ca1b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6774fc70-23b9-4d88-9e2b-60312402ca1b';

-- LINK CATEGORIES: Astro Boy (['dual-audio', 'hindi-dubbed', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6774fc70-23b9-4d88-9e2b-60312402ca1b', 'dual-audio'), ('6774fc70-23b9-4d88-9e2b-60312402ca1b', 'hindi-dubbed'), ('6774fc70-23b9-4d88-9e2b-60312402ca1b', 'comedy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Self/less (ID: 67826d09-e0af-4615-bd96-2d807bf05cbe) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '67826d09-e0af-4615-bd96-2d807bf05cbe';

-- LINK CATEGORIES: Self/less (['dual-audio', 'mystery', 'sci-fi', 'hollywood', 'hd', 'action', 'hindi-dubbed', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('67826d09-e0af-4615-bd96-2d807bf05cbe', 'dual-audio'), ('67826d09-e0af-4615-bd96-2d807bf05cbe', 'mystery'), ('67826d09-e0af-4615-bd96-2d807bf05cbe', 'sci-fi'), ('67826d09-e0af-4615-bd96-2d807bf05cbe', 'hollywood'), ('67826d09-e0af-4615-bd96-2d807bf05cbe', 'hd'), ('67826d09-e0af-4615-bd96-2d807bf05cbe', 'action'), ('67826d09-e0af-4615-bd96-2d807bf05cbe', 'hindi-dubbed'), ('67826d09-e0af-4615-bd96-2d807bf05cbe', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Possession Experiment (ID: 67502ac6-199e-4d66-a1ea-e579438e60f5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/cyvyq1nqtwn3ymd', file_size = '1.16 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '67502ac6-199e-4d66-a1ea-e579438e60f5';

-- MARK INACTIVE & NOT FOUND: Airaa (ID: 67e607a5-52bf-41aa-beb9-4d4a82d31f27) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '67e607a5-52bf-41aa-beb9-4d4a82d31f27';

-- MARK INACTIVE & NOT FOUND: Zakhmo Ka Hisaab (ID: 67e3ee3c-a55a-4a64-ac7a-6138721fd331) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '67e3ee3c-a55a-4a64-ac7a-6138721fd331';

-- MARK INACTIVE & NOT FOUND: 72 Hours: Martyr Who Never Died (ID: 67ee9f94-bc72-4bee-9bce-8cadef467239) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '67ee9f94-bc72-4bee-9bce-8cadef467239';

-- UPDATE MOVIE: Lunana: A Yak in the Classroom (ID: 67b94b4a-f531-4241-9a8b-bc63e0378906)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/2ootvcnovpv23lv', file_size = '921.92 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '67b94b4a-f531-4241-9a8b-bc63e0378906';

-- MARK INACTIVE & NOT FOUND: Battalion 609 (ID: 67f1496c-7205-4b04-a26a-0d33a0de6514) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '67f1496c-7205-4b04-a26a-0d33a0de6514';

-- MARK INACTIVE & NOT FOUND: Aadyaa (ID: 6845546d-6f50-4b26-926b-6181b2834f5a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6845546d-6f50-4b26-926b-6181b2834f5a';

-- LINK CATEGORIES: Aadyaa (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6845546d-6f50-4b26-926b-6181b2834f5a', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Jathi Ratnalu (ID: 67f1b71a-93dc-4e3d-93fb-84fc035d9ab6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/2aezvqmhqj28p3e', file_size = '2.6 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '67f1b71a-93dc-4e3d-93fb-84fc035d9ab6';

-- LINK CATEGORIES: Jathi Ratnalu (['south-hindi-dubbed', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('67f1b71a-93dc-4e3d-93fb-84fc035d9ab6', 'south-hindi-dubbed'), ('67f1b71a-93dc-4e3d-93fb-84fc035d9ab6', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Srimadhvirata Parvamu (ID: 68759a25-27e4-49bf-9a87-3053d8659990) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '68759a25-27e4-49bf-9a87-3053d8659990';

-- MARK INACTIVE & NOT FOUND: The Boogeyman (ID: 68372557-3488-470c-8e3f-1f1b6758056e) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '68372557-3488-470c-8e3f-1f1b6758056e';

-- MARK INACTIVE & NOT FOUND: The Hunt for Red October (ID: 68154e03-f33b-4778-ab55-3ad2b9c6e9e3) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '68154e03-f33b-4778-ab55-3ad2b9c6e9e3';

-- LINK CATEGORIES: The Hunt for Red October (['dual-audio', 'hindi-dubbed', 'adventure'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('68154e03-f33b-4778-ab55-3ad2b9c6e9e3', 'dual-audio'), ('68154e03-f33b-4778-ab55-3ad2b9c6e9e3', 'hindi-dubbed'), ('68154e03-f33b-4778-ab55-3ad2b9c6e9e3', 'adventure') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Inttelligent (ID: 6861eb7e-b04f-489a-8fa0-0a098ed23306) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6861eb7e-b04f-489a-8fa0-0a098ed23306';

-- MARK INACTIVE & NOT FOUND: KILL ZONE 2:EPIC DEVELOPPMENT (ID: 68daf936-9ef8-4c5b-a94e-18776c18fac4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '68daf936-9ef8-4c5b-a94e-18776c18fac4';

-- LINK CATEGORIES: KILL ZONE 2:EPIC DEVELOPPMENT (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('68daf936-9ef8-4c5b-a94e-18776c18fac4', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Point Break (ID: 6841fa89-1d16-4299-8a73-db448a5a9b0c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wj4wjwfcirtvivj', file_size = '1.21 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6841fa89-1d16-4299-8a73-db448a5a9b0c';

-- MARK INACTIVE & NOT FOUND: Werewolf by Night (ID: 68d29bf2-29db-400a-a9c0-ac048338124c) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '68d29bf2-29db-400a-a9c0-ac048338124c';

-- LINK CATEGORIES: Werewolf by Night (['hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('68d29bf2-29db-400a-a9c0-ac048338124c', 'hollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Bangaru Bullodu (ID: 68d610f5-f4a6-4511-a21b-bb0cd2117644)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ucbycbb5j_butcg', file_size = '1.12 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '68d610f5-f4a6-4511-a21b-bb0cd2117644';

-- MARK INACTIVE & NOT FOUND: Hotel Mumbai (ID: 689cf3d3-83d8-4f0c-abc8-f413a1f07269) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '689cf3d3-83d8-4f0c-abc8-f413a1f07269';

-- MARK INACTIVE & NOT FOUND: Deepwater Horizon (ID: 68fa01af-b32a-405e-9b3c-dd4ea84e3e77) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '68fa01af-b32a-405e-9b3c-dd4ea84e3e77';

-- LINK CATEGORIES: Deepwater Horizon (['dual-audio', 'hd', 'hollywood', 'action', 'hindi-dubbed', 'history', '300mb', '1080p', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('68fa01af-b32a-405e-9b3c-dd4ea84e3e77', 'dual-audio'), ('68fa01af-b32a-405e-9b3c-dd4ea84e3e77', 'hd'), ('68fa01af-b32a-405e-9b3c-dd4ea84e3e77', 'hollywood'), ('68fa01af-b32a-405e-9b3c-dd4ea84e3e77', 'action'), ('68fa01af-b32a-405e-9b3c-dd4ea84e3e77', 'hindi-dubbed'), ('68fa01af-b32a-405e-9b3c-dd4ea84e3e77', 'history'), ('68fa01af-b32a-405e-9b3c-dd4ea84e3e77', '300mb'), ('68fa01af-b32a-405e-9b3c-dd4ea84e3e77', '1080p'), ('68fa01af-b32a-405e-9b3c-dd4ea84e3e77', 'drama') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Super Cyclone (ID: 68de3ea7-9e35-4997-b082-e2434b2340d2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ittztwzpqebuqtd', file_size = '1.03 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '68de3ea7-9e35-4997-b082-e2434b2340d2';

-- MARK INACTIVE & NOT FOUND: The Man Who Feels No Pain (ID: 693a0049-96de-4a13-8ea9-e425d5bd1076) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '693a0049-96de-4a13-8ea9-e425d5bd1076';

-- UPDATE MOVIE: Anth the End (ID: 6918eb6d-f900-4fc2-9a41-2d4a13b8d30e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/uz558ej8grrzxrs', file_size = '1.63 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '6918eb6d-f900-4fc2-9a41-2d4a13b8d30e';

-- MARK INACTIVE & NOT FOUND: Boonie Bears: The Big Top Secret (ID: 690009d2-5b9a-47ee-8609-24e789bd8650) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '690009d2-5b9a-47ee-8609-24e789bd8650';

-- UPDATE MOVIE: Adbhut (ID: 6941a358-4792-4416-8db7-365b56c61120)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/v3tk1dkykqkuqeh', file_size = '2.26 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6941a358-4792-4416-8db7-365b56c61120';

-- LINK CATEGORIES: Adbhut (['300mb', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6941a358-4792-4416-8db7-365b56c61120', '300mb'), ('6941a358-4792-4416-8db7-365b56c61120', 'drama') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Vezham (ID: 69253a55-7e15-4c8c-8e3b-2ec698a367f8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/sk1ana1wks77yyy', file_size = '2.44 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '69253a55-7e15-4c8c-8e3b-2ec698a367f8';

-- MARK INACTIVE & NOT FOUND: Justin and the Knights of Valour (ID: 691915e8-99e1-4c69-a1f6-2b0eaedf5858) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '691915e8-99e1-4c69-a1f6-2b0eaedf5858';

-- LINK CATEGORIES: Justin and the Knights of Valour (['dual-audio', 'hd', 'hollywood', 'adventure', 'hindi-dubbed', 'fantasy', '300mb', '1080p', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('691915e8-99e1-4c69-a1f6-2b0eaedf5858', 'dual-audio'), ('691915e8-99e1-4c69-a1f6-2b0eaedf5858', 'hd'), ('691915e8-99e1-4c69-a1f6-2b0eaedf5858', 'hollywood'), ('691915e8-99e1-4c69-a1f6-2b0eaedf5858', 'adventure'), ('691915e8-99e1-4c69-a1f6-2b0eaedf5858', 'hindi-dubbed'), ('691915e8-99e1-4c69-a1f6-2b0eaedf5858', 'fantasy'), ('691915e8-99e1-4c69-a1f6-2b0eaedf5858', '300mb'), ('691915e8-99e1-4c69-a1f6-2b0eaedf5858', '1080p'), ('691915e8-99e1-4c69-a1f6-2b0eaedf5858', 'comedy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Jagadam (ID: 699976a1-afeb-4fb6-9ed8-42b2e31040c0) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '699976a1-afeb-4fb6-9ed8-42b2e31040c0';

-- UPDATE MOVIE: Super Fuzz (ID: 69ab5ac0-e76a-42df-bcc7-765a3794ea58)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/cobzb1ee72hspof', file_size = '1.9 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '69ab5ac0-e76a-42df-bcc7-765a3794ea58';

-- LINK CATEGORIES: Super Fuzz (['dual-audio', 'hollywood', '300mb', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('69ab5ac0-e76a-42df-bcc7-765a3794ea58', 'dual-audio'), ('69ab5ac0-e76a-42df-bcc7-765a3794ea58', 'hollywood'), ('69ab5ac0-e76a-42df-bcc7-765a3794ea58', '300mb'), ('69ab5ac0-e76a-42df-bcc7-765a3794ea58', 'bluray') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Valley of the Lanterns (ID: 69420d71-efc2-42a4-9d7d-5a94abbdcc85)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ywpalbcr_cgrrwy', file_size = '1.92 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '69420d71-efc2-42a4-9d7d-5a94abbdcc85';

-- MARK INACTIVE & NOT FOUND: Jab Tum Kaho (ID: 6986c46f-401c-402e-8819-9e71645a9571) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6986c46f-401c-402e-8819-9e71645a9571';

-- MARK INACTIVE & NOT FOUND: Kill the Messenger (ID: 698c8604-ee11-4478-99ec-674df223a320) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '698c8604-ee11-4478-99ec-674df223a320';

-- MARK INACTIVE & NOT FOUND: Paharganj (ID: 695ea046-505d-4739-8ddb-61449bf4db77) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '695ea046-505d-4739-8ddb-61449bf4db77';

-- LINK CATEGORIES: Paharganj (['mystery', 'hd', '1080p', 'romance', 'crime', '300mb', 'bollywood', 'thriller', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('695ea046-505d-4739-8ddb-61449bf4db77', 'mystery'), ('695ea046-505d-4739-8ddb-61449bf4db77', 'hd'), ('695ea046-505d-4739-8ddb-61449bf4db77', '1080p'), ('695ea046-505d-4739-8ddb-61449bf4db77', 'romance'), ('695ea046-505d-4739-8ddb-61449bf4db77', 'crime'), ('695ea046-505d-4739-8ddb-61449bf4db77', '300mb'), ('695ea046-505d-4739-8ddb-61449bf4db77', 'bollywood'), ('695ea046-505d-4739-8ddb-61449bf4db77', 'thriller'), ('695ea046-505d-4739-8ddb-61449bf4db77', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Town (ID: 69b5706d-a733-4923-a3a1-24917b5ef9fe) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '69b5706d-a733-4923-a3a1-24917b5ef9fe';

-- LINK CATEGORIES: The Town (['dual-audio', 'action', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('69b5706d-a733-4923-a3a1-24917b5ef9fe', 'dual-audio'), ('69b5706d-a733-4923-a3a1-24917b5ef9fe', 'action'), ('69b5706d-a733-4923-a3a1-24917b5ef9fe', 'hindi-dubbed'), ('69b5706d-a733-4923-a3a1-24917b5ef9fe', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Superman Returns (ID: 6a15a26f-ba33-41e8-a45a-6205be87eb69)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dvrdrmqiihdmqmf', file_size = '2.9 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6a15a26f-ba33-41e8-a45a-6205be87eb69';

-- LINK CATEGORIES: Superman Returns (['dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6a15a26f-ba33-41e8-a45a-6205be87eb69', 'dual-audio'), ('6a15a26f-ba33-41e8-a45a-6205be87eb69', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Space Jam: A New Legacy (ID: 69dbd789-4279-4f51-bf17-9020e76c497d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/fkf1_cyylbrscls', file_size = '2.25 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '69dbd789-4279-4f51-bf17-9020e76c497d';

-- MARK INACTIVE & NOT FOUND: Skin in Flames (ID: 69f3c966-6772-4306-ad76-e9314109dc1f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '69f3c966-6772-4306-ad76-e9314109dc1f';

-- UPDATE MOVIE: Ace (ID: 6a83a429-efc8-4ef0-ae4d-8361bb6620cf)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/gr51gi5okzufesm', file_size = '3.13 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6a83a429-efc8-4ef0-ae4d-8361bb6620cf';

-- LINK CATEGORIES: Ace (['dual-audio', 'south-hindi-dubbed', 'tamil', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6a83a429-efc8-4ef0-ae4d-8361bb6620cf', 'dual-audio'), ('6a83a429-efc8-4ef0-ae4d-8361bb6620cf', 'south-hindi-dubbed'), ('6a83a429-efc8-4ef0-ae4d-8361bb6620cf', 'tamil'), ('6a83a429-efc8-4ef0-ae4d-8361bb6620cf', 'hindi-dubbed'), ('6a83a429-efc8-4ef0-ae4d-8361bb6620cf', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dwaraka (ID: 6a2c8fdb-f6d1-45a1-acbf-6b30ebb2e497) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6a2c8fdb-f6d1-45a1-acbf-6b30ebb2e497';

-- MARK INACTIVE & NOT FOUND: Tom and Jerry: Forbidden Compass (ID: 6a8d35b3-bb37-4fe4-aac7-1c75ab585f31) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6a8d35b3-bb37-4fe4-aac7-1c75ab585f31';

-- UPDATE MOVIE: Turbo (ID: 6a5b1b00-05aa-428f-8a75-4419d1118af9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/03z0qinueibms5q', file_size = '1.84 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6a5b1b00-05aa-428f-8a75-4419d1118af9';

-- MARK INACTIVE & NOT FOUND: Madras Cafe (ID: 6a3252bb-63ca-401e-b1a0-138b28451f26) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6a3252bb-63ca-401e-b1a0-138b28451f26';

-- UPDATE MOVIE: Friends: The Reunion (ID: 6a84f0aa-7238-4252-a07c-c93d7a4c7123)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/7gyud_81y8rwq_g', file_size = '1.67 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6a84f0aa-7238-4252-a07c-c93d7a4c7123';

-- MARK INACTIVE & NOT FOUND: Monk Comes Down the Mountain (ID: 6a848b14-07e5-4d49-b0fd-a6a4c330946b) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6a848b14-07e5-4d49-b0fd-a6a4c330946b';

-- MARK INACTIVE & NOT FOUND: Razor (ID: 6a967b2f-1db2-4ad6-8fc6-0a2acfd82266) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6a967b2f-1db2-4ad6-8fc6-0a2acfd82266';

-- MARK INACTIVE & NOT FOUND: Anjaam Pathiraa (ID: 6abc05de-aa8b-4fcb-8968-ebe5d83348a5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6abc05de-aa8b-4fcb-8968-ebe5d83348a5';

-- MARK INACTIVE & NOT FOUND: Mission Mangal (ID: 6ab3ae64-cb75-4169-aeba-654102a17eb8) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6ab3ae64-cb75-4169-aeba-654102a17eb8';

-- UPDATE MOVIE: Genghis: The Legend of the Ten (ID: 6ac281cc-8ecf-4b04-bae0-eb85e6baaced)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/9ebb2aaiwer9lin', file_size = '1002.78 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6ac281cc-8ecf-4b04-bae0-eb85e6baaced';

-- LINK CATEGORIES: Genghis: The Legend of the Ten (['hollywood', 'hd', 'action', 'bluray', '1080p', 'history'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6ac281cc-8ecf-4b04-bae0-eb85e6baaced', 'hollywood'), ('6ac281cc-8ecf-4b04-bae0-eb85e6baaced', 'hd'), ('6ac281cc-8ecf-4b04-bae0-eb85e6baaced', 'action'), ('6ac281cc-8ecf-4b04-bae0-eb85e6baaced', 'bluray'), ('6ac281cc-8ecf-4b04-bae0-eb85e6baaced', '1080p'), ('6ac281cc-8ecf-4b04-bae0-eb85e6baaced', 'history') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Jungle Book (ID: 6acb6580-dcd8-4051-bcca-d35fa06bfb6f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6acb6580-dcd8-4051-bcca-d35fa06bfb6f';

-- MARK INACTIVE & NOT FOUND: Pelé: Birth of a Legend (ID: 6b4f04ae-9855-4d0d-89c1-d6c68f5fb85e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6b4f04ae-9855-4d0d-89c1-d6c68f5fb85e';

-- LINK CATEGORIES: Pelé: Birth of a Legend (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6b4f04ae-9855-4d0d-89c1-d6c68f5fb85e', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Krishnam Vande Jagadgurum (ID: 6ad23254-419c-4df8-a15a-6eba30c2226e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/r61gfrkgtvfzxcv', file_size = '1.37 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6ad23254-419c-4df8-a15a-6eba30c2226e';

-- LINK CATEGORIES: Krishnam Vande Jagadgurum (['dual-audio', 'hd', 'south-hindi-dubbed', 'action', 'bluray', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6ad23254-419c-4df8-a15a-6eba30c2226e', 'dual-audio'), ('6ad23254-419c-4df8-a15a-6eba30c2226e', 'hd'), ('6ad23254-419c-4df8-a15a-6eba30c2226e', 'south-hindi-dubbed'), ('6ad23254-419c-4df8-a15a-6eba30c2226e', 'action'), ('6ad23254-419c-4df8-a15a-6eba30c2226e', 'bluray'), ('6ad23254-419c-4df8-a15a-6eba30c2226e', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: White Noise (ID: 6af896b2-4134-4aed-9094-ace6018be97d) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2217227380)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6af896b2-4134-4aed-9094-ace6018be97d';

-- LINK CATEGORIES: White Noise (['hollywood', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6af896b2-4134-4aed-9094-ace6018be97d', 'hollywood'), ('6af896b2-4134-4aed-9094-ace6018be97d', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Mann Kasturi Re (ID: 6b472c16-b166-4cbb-8211-e4c897db8130)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ab1rb219jy1mmo1', file_size = '2.04 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6b472c16-b166-4cbb-8211-e4c897db8130';

-- MARK INACTIVE & NOT FOUND: 13 Going on 30 (ID: 6b2765d7-f72f-42d4-aa2c-aa3c18b11740) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6b2765d7-f72f-42d4-aa2c-aa3c18b11740';

-- LINK CATEGORIES: 13 Going on 30 (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6b2765d7-f72f-42d4-aa2c-aa3c18b11740', 'dual-audio'), ('6b2765d7-f72f-42d4-aa2c-aa3c18b11740', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Phir Hera Pheri (ID: 6b6ac219-5b79-41b6-8350-754eb27edab1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ce11nstvvn1rdd1', file_size = '2.45 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6b6ac219-5b79-41b6-8350-754eb27edab1';

-- LINK CATEGORIES: Phir Hera Pheri (['crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6b6ac219-5b79-41b6-8350-754eb27edab1', 'crime') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Raging Phoenix (ID: 6b7c768b-c8ff-451a-8782-baa65f1a3ab4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1r894s8r-uxsoxu', file_size = '1005.62 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6b7c768b-c8ff-451a-8782-baa65f1a3ab4';

-- LINK CATEGORIES: Raging Phoenix (['dual-audio', 'hindi-dubbed', 'bluray', 'romance'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6b7c768b-c8ff-451a-8782-baa65f1a3ab4', 'dual-audio'), ('6b7c768b-c8ff-451a-8782-baa65f1a3ab4', 'hindi-dubbed'), ('6b7c768b-c8ff-451a-8782-baa65f1a3ab4', 'bluray'), ('6b7c768b-c8ff-451a-8782-baa65f1a3ab4', 'romance') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Jaan-E-Mann (ID: 6b92c49e-a1fb-4d5d-8f94-e24bcb2ab9a1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rkcrsyuqjizfpii', file_size = '1.29 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6b92c49e-a1fb-4d5d-8f94-e24bcb2ab9a1';

-- LINK CATEGORIES: Jaan-E-Mann (['300mb', 'comedy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6b92c49e-a1fb-4d5d-8f94-e24bcb2ab9a1', '300mb'), ('6b92c49e-a1fb-4d5d-8f94-e24bcb2ab9a1', 'comedy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Night (ID: 6bbd1f13-d28c-4f29-8376-2349d8ff4608) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6bbd1f13-d28c-4f29-8376-2349d8ff4608';

-- MARK INACTIVE & NOT FOUND: Michael Jackson: The Life of an Icon (ID: 6bd617cc-cc79-4dd5-a9cf-fc9dc829fe50) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6bd617cc-cc79-4dd5-a9cf-fc9dc829fe50';

-- MARK INACTIVE & NOT FOUND: 3:10 to Yuma (ID: 6c08dcd9-544d-4ac4-9bdc-7b7190560514) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6c08dcd9-544d-4ac4-9bdc-7b7190560514';

-- LINK CATEGORIES: 3:10 to Yuma (['dual-audio', '300mb', 'action', 'drama', 'hindi-dubbed', 'adventure', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6c08dcd9-544d-4ac4-9bdc-7b7190560514', 'dual-audio'), ('6c08dcd9-544d-4ac4-9bdc-7b7190560514', '300mb'), ('6c08dcd9-544d-4ac4-9bdc-7b7190560514', 'action'), ('6c08dcd9-544d-4ac4-9bdc-7b7190560514', 'drama'), ('6c08dcd9-544d-4ac4-9bdc-7b7190560514', 'hindi-dubbed'), ('6c08dcd9-544d-4ac4-9bdc-7b7190560514', 'adventure'), ('6c08dcd9-544d-4ac4-9bdc-7b7190560514', 'crime') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Dead Heading (ID: 6c5893fe-ec22-472a-a4b1-863a8a630059)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/d9xvdx7xd58dv9y', file_size = '1.24 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6c5893fe-ec22-472a-a4b1-863a8a630059';

-- MARK INACTIVE & NOT FOUND: Pompeii (ID: 6bb7455c-aefd-4649-8c1b-8c2991cedad5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6bb7455c-aefd-4649-8c1b-8c2991cedad5';

-- MARK INACTIVE & NOT FOUND: Simran (ID: 6bdd2d0c-b35e-4f42-973c-35868fa5e0e6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6bdd2d0c-b35e-4f42-973c-35868fa5e0e6';

-- LINK CATEGORIES: Simran (['romance', 'drama', 'hd', 'bollywood', 'crime', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6bdd2d0c-b35e-4f42-973c-35868fa5e0e6', 'romance'), ('6bdd2d0c-b35e-4f42-973c-35868fa5e0e6', 'drama'), ('6bdd2d0c-b35e-4f42-973c-35868fa5e0e6', 'hd'), ('6bdd2d0c-b35e-4f42-973c-35868fa5e0e6', 'bollywood'), ('6bdd2d0c-b35e-4f42-973c-35868fa5e0e6', 'crime'), ('6bdd2d0c-b35e-4f42-973c-35868fa5e0e6', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Street Dancer 3D (ID: 6c7314a5-dd32-4385-82da-e0a4ef687713) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6c7314a5-dd32-4385-82da-e0a4ef687713';

-- UPDATE MOVIE: This Girl's Life (ID: 6c3fb4e4-266d-4b84-9267-6368aa44e7a7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/sr4knx3w2is82b2', file_size = '810.38 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6c3fb4e4-266d-4b84-9267-6368aa44e7a7';

-- UPDATE MOVIE: Raana (ID: 6c7be0e7-06ad-49e3-a553-1db0050af7a7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ahgrduka7uphapm', file_size = '2 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6c7be0e7-06ad-49e3-a553-1db0050af7a7';

-- MARK INACTIVE & NOT FOUND: Quicksand (ID: 6c80a320-291d-4350-869d-87e6b44e8ef3) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6c80a320-291d-4350-869d-87e6b44e8ef3';

-- LINK CATEGORIES: Quicksand (['dual-audio', 'hollywood', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6c80a320-291d-4350-869d-87e6b44e8ef3', 'dual-audio'), ('6c80a320-291d-4350-869d-87e6b44e8ef3', 'hollywood'), ('6c80a320-291d-4350-869d-87e6b44e8ef3', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Shriek If You Know What I Did Last Friday the Thirteenth (ID: 6cefcaf9-85c3-4ee1-bda4-28f05677d94d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6cefcaf9-85c3-4ee1-bda4-28f05677d94d';

-- MARK INACTIVE & NOT FOUND: Rakht Charitra 2 (ID: 6d00fee9-6b6b-432e-a898-c790f9cc93b4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d00fee9-6b6b-432e-a898-c790f9cc93b4';

-- MARK INACTIVE & NOT FOUND: Neymar (ID: 6c96ff2f-7794-41f7-a2ab-64317d73f25d) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6c96ff2f-7794-41f7-a2ab-64317d73f25d';

-- MARK INACTIVE & NOT FOUND: Young Detective Dee: Rise of the Sea Dragon (ID: 6d0dac27-af00-4abb-af53-80f38883232a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d0dac27-af00-4abb-af53-80f38883232a';

-- LINK CATEGORIES: Young Detective Dee: Rise of the Sea Dragon (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6d0dac27-af00-4abb-af53-80f38883232a', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Pink Floyd: The Wall (ID: 6d19038e-e725-43ad-9c61-fc8c88551201) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d19038e-e725-43ad-9c61-fc8c88551201';

-- LINK CATEGORIES: Pink Floyd: The Wall (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6d19038e-e725-43ad-9c61-fc8c88551201', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Rope Curse 4: Kuntilanak (ID: 6d1be268-62d9-45ce-a4a3-810240f53eee) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d1be268-62d9-45ce-a4a3-810240f53eee';

-- LINK CATEGORIES: The Rope Curse 4: Kuntilanak (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6d1be268-62d9-45ce-a4a3-810240f53eee', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dheet Patangey (ID: 6c65e66c-286d-4b1a-bc25-c2eaaf4473d5) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6c65e66c-286d-4b1a-bc25-c2eaaf4473d5';

-- MARK INACTIVE & NOT FOUND: They Die by Dawn (ID: 6d20e3ee-a797-4faf-b702-af772de2fb78) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d20e3ee-a797-4faf-b702-af772de2fb78';

-- MARK INACTIVE & NOT FOUND: Pirates of the Caribbean: On Stranger Tides (ID: 6cea5910-b3db-4b53-8272-733abc174c18) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6cea5910-b3db-4b53-8272-733abc174c18';

-- MARK INACTIVE & NOT FOUND: 7 Din Mohabbat In (ID: 6d2dbb7b-3db6-4f8f-919d-f1ffdffb5bbe) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d2dbb7b-3db6-4f8f-919d-f1ffdffb5bbe';

-- UPDATE MOVIE: Residue (ID: 6cef88b8-452a-45ac-a23b-33b7e97a321b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ehpew_hepvz6rbw', file_size = '1.11 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6cef88b8-452a-45ac-a23b-33b7e97a321b';

-- MARK INACTIVE & NOT FOUND: Theeradha Vilaiyattu Pillai (ID: 6d432978-d0d2-4bb4-8ec3-fddd9f148e85) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d432978-d0d2-4bb4-8ec3-fddd9f148e85';

-- UPDATE MOVIE: To Kill The Dragon (ID: 6d1d90f1-6661-4d52-a498-5261f4575c60)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/c39gs1z9bvpanb4', file_size = '965.76 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6d1d90f1-6661-4d52-a498-5261f4575c60';

-- MARK INACTIVE & NOT FOUND: Lost in Translation (ID: 6d804b2a-cedb-4d15-98e0-77a098a31028) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d804b2a-cedb-4d15-98e0-77a098a31028';

-- MARK INACTIVE & NOT FOUND: Andhhagadu (ID: 6d81a60f-daa5-475b-921f-911b84b8fcd1) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d81a60f-daa5-475b-921f-911b84b8fcd1';

-- LINK CATEGORIES: Andhhagadu (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6d81a60f-daa5-475b-921f-911b84b8fcd1', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kariya 2 (ID: 6d4ce3ac-9b1b-4d54-b12b-260eea88442f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d4ce3ac-9b1b-4d54-b12b-260eea88442f';

-- MARK INACTIVE & NOT FOUND: Poisoned: The Dirty Truth About Your Food (ID: 6d69de83-8de4-45be-a0b6-5d947429f672) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d69de83-8de4-45be-a0b6-5d947429f672';

-- MARK INACTIVE & NOT FOUND: Half Girlfriend (ID: 6d919c24-3076-4a54-9468-6724d6d6928a) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d919c24-3076-4a54-9468-6724d6d6928a';

-- MARK INACTIVE & NOT FOUND: Chhalawa (ID: 6d54de6e-80c8-4892-8589-798679db6ccc) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6d54de6e-80c8-4892-8589-798679db6ccc';

-- LINK CATEGORIES: Chhalawa (['300mb', 'drama', 'family', 'hd', 'comedy', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6d54de6e-80c8-4892-8589-798679db6ccc', '300mb'), ('6d54de6e-80c8-4892-8589-798679db6ccc', 'drama'), ('6d54de6e-80c8-4892-8589-798679db6ccc', 'family'), ('6d54de6e-80c8-4892-8589-798679db6ccc', 'hd'), ('6d54de6e-80c8-4892-8589-798679db6ccc', 'comedy'), ('6d54de6e-80c8-4892-8589-798679db6ccc', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Namak (ID: 6d752bda-698e-4dd3-b858-3745d17793b9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/dyxdxd0n59u71hv', file_size = '1.34 GB', status = 'active', updated_at = NOW(), quality = '1080p', director = 'Kawal Sharma' WHERE id = '6d752bda-698e-4dd3-b858-3745d17793b9';

-- LINK CATEGORIES: Namak (['300mb', 'action', 'drama'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6d752bda-698e-4dd3-b858-3745d17793b9', '300mb'), ('6d752bda-698e-4dd3-b858-3745d17793b9', 'action'), ('6d752bda-698e-4dd3-b858-3745d17793b9', 'drama') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: WWE SummerSlam 2012 (ID: 6dd1321b-ab18-4de9-a827-954184095cc6) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6dd1321b-ab18-4de9-a827-954184095cc6';

-- UPDATE MOVIE: Zora (ID: 6db0244b-67e1-4565-aa5b-3912296cf5a0)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/v5z8icookqykjk1', file_size = '2.76 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6db0244b-67e1-4565-aa5b-3912296cf5a0';

-- LINK CATEGORIES: Zora (['bollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6db0244b-67e1-4565-aa5b-3912296cf5a0', 'bollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Jab Harry Met Sejal (ID: 6dd29026-8faa-4edc-9264-01eafeed4e24) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6dd29026-8faa-4edc-9264-01eafeed4e24';

-- MARK INACTIVE & NOT FOUND: Blood Valentine (ID: 6da396bf-ac7f-4db1-ba78-634898580140) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1036971421)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6da396bf-ac7f-4db1-ba78-634898580140';

-- UPDATE MOVIE: The Final Blade (ID: 6daf1fba-48aa-49ad-b257-2b1e00066502)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/0gddul77ddxpapd', file_size = '886.9 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6daf1fba-48aa-49ad-b257-2b1e00066502';

-- MARK INACTIVE & NOT FOUND: Interview with a Hitman (ID: 6dbe06bf-4756-4299-be82-f33a2735fe75) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6dbe06bf-4756-4299-be82-f33a2735fe75';

-- MARK INACTIVE & NOT FOUND: Dead Bite (ID: 6df54cb0-4dd7-40a4-9360-8fdd3e5bbe5f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6df54cb0-4dd7-40a4-9360-8fdd3e5bbe5f';

-- MARK INACTIVE & NOT FOUND: Dangar Doctor Jelly (ID: 6dd5a0c2-1288-4ef2-be03-d767e63c69b0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6dd5a0c2-1288-4ef2-be03-d767e63c69b0';

-- MARK INACTIVE & NOT FOUND: Detective Dee and The Pact with the Underworld Gods (ID: 6e09723e-c12f-4162-a17e-f48cc6aba582) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e09723e-c12f-4162-a17e-f48cc6aba582';

-- MARK INACTIVE & NOT FOUND: Union Leader (ID: 6dd8ba72-dbfe-4d03-a659-b131cd42cf8c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6dd8ba72-dbfe-4d03-a659-b131cd42cf8c';

-- UPDATE MOVIE: Snake Eyes (ID: 6debbb14-4dd4-4b76-b25f-2d5425803ae6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/53c4cqzbqphxpgf', file_size = '1.5 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6debbb14-4dd4-4b76-b25f-2d5425803ae6';

-- LINK CATEGORIES: Snake Eyes (['dual-audio', 'bluray', '300mb', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6debbb14-4dd4-4b76-b25f-2d5425803ae6', 'dual-audio'), ('6debbb14-4dd4-4b76-b25f-2d5425803ae6', 'bluray'), ('6debbb14-4dd4-4b76-b25f-2d5425803ae6', '300mb'), ('6debbb14-4dd4-4b76-b25f-2d5425803ae6', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Incoming (2024) (ID: 6e55e137-326f-4b31-b50e-47dea420faf7) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e55e137-326f-4b31-b50e-47dea420faf7';

-- MARK INACTIVE & NOT FOUND: Sarkar (ID: 6deda5cc-cf8f-4e3c-abb8-012efc62d846) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6deda5cc-cf8f-4e3c-abb8-012efc62d846';

-- MARK INACTIVE & NOT FOUND: Room in Rome (ID: 6e059586-060b-44c0-96e9-6ee8adff72da) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e059586-060b-44c0-96e9-6ee8adff72da';

-- MARK INACTIVE & NOT FOUND: Sardaar Gabbar Singh (ID: 6e5ed124-5ba1-46b9-b535-4c739dcc3805) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e5ed124-5ba1-46b9-b535-4c739dcc3805';

-- MARK INACTIVE & NOT FOUND: The Pale Blue Eye (ID: 6e43682f-3047-49a5-a721-325c76e3a924) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e43682f-3047-49a5-a721-325c76e3a924';

-- UPDATE MOVIE: Meka Suri (ID: 6e4dc869-8521-478a-af31-1229b0c62030)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/llrldeblrlzl5sn', file_size = '1.18 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6e4dc869-8521-478a-af31-1229b0c62030';

-- MARK INACTIVE & NOT FOUND: Flat 211 (ID: 6e5caf09-3fea-4a73-9b0e-2013d50ebb85) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e5caf09-3fea-4a73-9b0e-2013d50ebb85';

-- LINK CATEGORIES: Flat 211 (['mystery', 'thriller', 'hd', 'bollywood', 'crime', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6e5caf09-3fea-4a73-9b0e-2013d50ebb85', 'mystery'), ('6e5caf09-3fea-4a73-9b0e-2013d50ebb85', 'thriller'), ('6e5caf09-3fea-4a73-9b0e-2013d50ebb85', 'hd'), ('6e5caf09-3fea-4a73-9b0e-2013d50ebb85', 'bollywood'), ('6e5caf09-3fea-4a73-9b0e-2013d50ebb85', 'crime'), ('6e5caf09-3fea-4a73-9b0e-2013d50ebb85', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: In the Shadow of the Moon (ID: 6e763a43-125f-4014-b1b1-2b7c4b02b832) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e763a43-125f-4014-b1b1-2b7c4b02b832';

-- MARK INACTIVE & NOT FOUND: A Scandall (ID: 6e6791ee-07e2-4a6b-9bc4-b15c60f78093) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e6791ee-07e2-4a6b-9bc4-b15c60f78093';

-- MARK INACTIVE & NOT FOUND: Mr. Deeds (ID: 6e8edec2-54c1-42d4-88fe-13f0b74bb24e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e8edec2-54c1-42d4-88fe-13f0b74bb24e';

-- LINK CATEGORIES: Mr. Deeds (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6e8edec2-54c1-42d4-88fe-13f0b74bb24e', 'dual-audio'), ('6e8edec2-54c1-42d4-88fe-13f0b74bb24e', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Anwar Ka Ajab Kissa (ID: 6e90e510-260b-41a1-ab5b-a1fc8aa24280) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e90e510-260b-41a1-ab5b-a1fc8aa24280';

-- LINK CATEGORIES: Anwar Ka Ajab Kissa (['300mb', 'drama', 'hd', 'adventure', 'comedy', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6e90e510-260b-41a1-ab5b-a1fc8aa24280', '300mb'), ('6e90e510-260b-41a1-ab5b-a1fc8aa24280', 'drama'), ('6e90e510-260b-41a1-ab5b-a1fc8aa24280', 'hd'), ('6e90e510-260b-41a1-ab5b-a1fc8aa24280', 'adventure'), ('6e90e510-260b-41a1-ab5b-a1fc8aa24280', 'comedy'), ('6e90e510-260b-41a1-ab5b-a1fc8aa24280', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: ABCD (ID: 6e92efa8-4325-4ade-8809-5c34cd098f05)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/gt3xxwpp881dxx1', file_size = '2.64 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6e92efa8-4325-4ade-8809-5c34cd098f05';

-- UPDATE MOVIE: Materialists (ID: 6e96c807-5600-43cc-b5b6-ad582c7bd281)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/njfn1nuaa1vj41v', file_size = '2.58 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6e96c807-5600-43cc-b5b6-ad582c7bd281';

-- LINK CATEGORIES: Materialists (['dual-audio', '300mb', 'hindi-dubbed', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6e96c807-5600-43cc-b5b6-ad582c7bd281', 'dual-audio'), ('6e96c807-5600-43cc-b5b6-ad582c7bd281', '300mb'), ('6e96c807-5600-43cc-b5b6-ad582c7bd281', 'hindi-dubbed'), ('6e96c807-5600-43cc-b5b6-ad582c7bd281', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Outpost: Black Sun (ID: 6e9c4c18-b063-4776-a56c-a3109753371b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6e9c4c18-b063-4776-a56c-a3109753371b';

-- LINK CATEGORIES: Outpost: Black Sun (['dual-audio', 'action', 'hollywood', 'hindi-dubbed', 'hd', '1080p', 'horror', 'sci-fi'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6e9c4c18-b063-4776-a56c-a3109753371b', 'dual-audio'), ('6e9c4c18-b063-4776-a56c-a3109753371b', 'action'), ('6e9c4c18-b063-4776-a56c-a3109753371b', 'hollywood'), ('6e9c4c18-b063-4776-a56c-a3109753371b', 'hindi-dubbed'), ('6e9c4c18-b063-4776-a56c-a3109753371b', 'hd'), ('6e9c4c18-b063-4776-a56c-a3109753371b', '1080p'), ('6e9c4c18-b063-4776-a56c-a3109753371b', 'horror'), ('6e9c4c18-b063-4776-a56c-a3109753371b', 'sci-fi') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Martial Universe: Nine Talisman Tower (ID: 6ed57073-e54c-45a5-88ee-342eb04ad8e8) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6ed57073-e54c-45a5-88ee-342eb04ad8e8';

-- UPDATE MOVIE: Always Shine (ID: 6e9da720-4441-4586-b734-b3774da9408c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nmjh-nbj1zg-1-u', file_size = '833.3 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6e9da720-4441-4586-b734-b3774da9408c';

-- MARK INACTIVE & NOT FOUND: Imai (ID: 6ec59820-6247-4791-9b69-e4a0393f2ab6) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6ec59820-6247-4791-9b69-e4a0393f2ab6';

-- UPDATE MOVIE: Angel of the Skies (ID: 6ec23a61-ef66-491a-83fd-4e0b72b0b393)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/qzzzead0anrlqlz', file_size = '1019.83 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6ec23a61-ef66-491a-83fd-4e0b72b0b393';

-- UPDATE MOVIE: New York Ninja (ID: 6ec38c6d-b7a6-4920-b774-75b9a1338680)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/w1i81fzinq21o8w', file_size = '795.55 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6ec38c6d-b7a6-4920-b774-75b9a1338680';

-- MARK INACTIVE & NOT FOUND: Our Life at the Cottage (ID: 6ef797fb-a2ba-425d-a263-11aa6a0a1f0f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6ef797fb-a2ba-425d-a263-11aa6a0a1f0f';

-- MARK INACTIVE & NOT FOUND: Joru (ID: 6f0005f7-df3e-4daa-82d3-86b99e65ea22) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6f0005f7-df3e-4daa-82d3-86b99e65ea22';

-- LINK CATEGORIES: Joru (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6f0005f7-df3e-4daa-82d3-86b99e65ea22', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Good, the Bad, the Weird (ID: 6f43d752-bac1-4490-8f52-0a509f0f8be1)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rb8gt1r9mrr5mdq', file_size = '2.51 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6f43d752-bac1-4490-8f52-0a509f0f8be1';

-- LINK CATEGORIES: The Good, the Bad, the Weird (['dual-audio', '300mb', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6f43d752-bac1-4490-8f52-0a509f0f8be1', 'dual-audio'), ('6f43d752-bac1-4490-8f52-0a509f0f8be1', '300mb'), ('6f43d752-bac1-4490-8f52-0a509f0f8be1', 'hollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Scammy Boys (ID: 6ee63bdf-c825-48a5-8020-6ee082834da3)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/38v3k13b311g3un', file_size = '2.05 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6ee63bdf-c825-48a5-8020-6ee082834da3';

-- MARK INACTIVE & NOT FOUND: Brotherhood of Blades II: The Infernal Battlefield (ID: 6f2d877f-adb4-473b-9ab3-585bdf0d6f67) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6f2d877f-adb4-473b-9ab3-585bdf0d6f67';

-- UPDATE MOVIE: Scintilla (ID: 6ed95893-973d-4228-9ed6-ddc8b178c3b7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ogonb1lgwmymlfg', file_size = '1013.78 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6ed95893-973d-4228-9ed6-ddc8b178c3b7';

-- UPDATE MOVIE: Do Aur Do Paanch (ID: 6f69222d-9532-41d0-bbfb-a27c0da05b12)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/1leeur06kks6qsf', file_size = '3.12 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6f69222d-9532-41d0-bbfb-a27c0da05b12';

-- LINK CATEGORIES: Do Aur Do Paanch (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6f69222d-9532-41d0-bbfb-a27c0da05b12', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kabhi Khushi Kabhie Gham (ID: 6f06851d-6ec3-4890-a370-109b164161bc) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6f06851d-6ec3-4890-a370-109b164161bc';

-- LINK CATEGORIES: Kabhi Khushi Kabhie Gham (['bluray', 'romance', 'drama', 'hd', 'bollywood', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6f06851d-6ec3-4890-a370-109b164161bc', 'bluray'), ('6f06851d-6ec3-4890-a370-109b164161bc', 'romance'), ('6f06851d-6ec3-4890-a370-109b164161bc', 'drama'), ('6f06851d-6ec3-4890-a370-109b164161bc', 'hd'), ('6f06851d-6ec3-4890-a370-109b164161bc', 'bollywood'), ('6f06851d-6ec3-4890-a370-109b164161bc', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Golimaar (ID: 6f8f3dbf-f8c5-4206-a657-59b5e1bc6d78) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6f8f3dbf-f8c5-4206-a657-59b5e1bc6d78';

-- LINK CATEGORIES: Golimaar (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6f8f3dbf-f8c5-4206-a657-59b5e1bc6d78', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Andhadhun (ID: 6f5e7c71-31c3-4a57-90ca-e25e17600f02) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6f5e7c71-31c3-4a57-90ca-e25e17600f02';

-- MARK INACTIVE & NOT FOUND: The Wrath of Vajra (ID: 6f83604a-6cef-4bd3-a131-18f1e503fe5b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6f83604a-6cef-4bd3-a131-18f1e503fe5b';

-- UPDATE MOVIE: Hideout (ID: 6f7e05c3-9d69-4cf6-961c-e065020401a3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jjn4j-d-0x9j1nx', file_size = '795.78 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6f7e05c3-9d69-4cf6-961c-e065020401a3';

-- MARK INACTIVE & NOT FOUND: Dances with Wolves (ID: 6fc9dd3a-03cd-4950-987f-e324d9f344d9) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6fc9dd3a-03cd-4950-987f-e324d9f344d9';

-- MARK INACTIVE & NOT FOUND: Martin Luther King (ID: 6fba6fee-7c2f-483e-b06b-a1215ae9544e) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6fba6fee-7c2f-483e-b06b-a1215ae9544e';

-- MARK INACTIVE & NOT FOUND: Time for Him to Come Home for Christmas (ID: 6f836c8e-7ad2-488b-b112-e31bf287f47e) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6f836c8e-7ad2-488b-b112-e31bf287f47e';

-- UPDATE MOVIE: Om Shanti Om (ID: 6fa55410-c7be-4fa7-af59-1a5ebde8b40e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8zjl6hzurnlmvea', file_size = '1.51 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '6fa55410-c7be-4fa7-af59-1a5ebde8b40e';

-- LINK CATEGORIES: Om Shanti Om (['bluray', 'action'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6fa55410-c7be-4fa7-af59-1a5ebde8b40e', 'bluray'), ('6fa55410-c7be-4fa7-af59-1a5ebde8b40e', 'action') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Protégé (ID: 6ff28d39-04fc-4184-bea7-6567edc73ae4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6ff28d39-04fc-4184-bea7-6567edc73ae4';

-- MARK INACTIVE & NOT FOUND: Beethoven's 2nd (ID: 6fe0da0a-c50f-4775-937f-7adb7c4a702f) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6fe0da0a-c50f-4775-937f-7adb7c4a702f';

-- LINK CATEGORIES: Beethoven's 2nd (['dual-audio', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6fe0da0a-c50f-4775-937f-7adb7c4a702f', 'dual-audio'), ('6fe0da0a-c50f-4775-937f-7adb7c4a702f', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: AK vs AK (ID: 6fe47d85-6e1f-40de-9254-d8810e438c4a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/l1jh-h8tkkh55f-', file_size = '1.84 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '6fe47d85-6e1f-40de-9254-d8810e438c4a';

-- MARK INACTIVE & NOT FOUND: Malibu Rescue: The Next Wave (ID: 6fe84663-7184-41ca-b34b-5cd4375755df) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/1453915989)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6fe84663-7184-41ca-b34b-5cd4375755df';

-- LINK CATEGORIES: Malibu Rescue: The Next Wave (['dual-audio', '300mb', 'action', 'hindi-dubbed', 'adventure', 'comedy', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('6fe84663-7184-41ca-b34b-5cd4375755df', 'dual-audio'), ('6fe84663-7184-41ca-b34b-5cd4375755df', '300mb'), ('6fe84663-7184-41ca-b34b-5cd4375755df', 'action'), ('6fe84663-7184-41ca-b34b-5cd4375755df', 'hindi-dubbed'), ('6fe84663-7184-41ca-b34b-5cd4375755df', 'adventure'), ('6fe84663-7184-41ca-b34b-5cd4375755df', 'comedy'), ('6fe84663-7184-41ca-b34b-5cd4375755df', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Cha Cha Real Smooth (ID: 6fc50b4c-1cab-4b8c-accb-bd0ff367d29b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '6fc50b4c-1cab-4b8c-accb-bd0ff367d29b';

-- MARK INACTIVE & NOT FOUND: My Dear Prime Minister (ID: 703eaba8-8232-4b5a-afb0-625e00b74793) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '703eaba8-8232-4b5a-afb0-625e00b74793';

-- LINK CATEGORIES: My Dear Prime Minister (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('703eaba8-8232-4b5a-afb0-625e00b74793', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Maan Karate (ID: 70502ace-e15f-4db5-8afe-1a531baf295e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '70502ace-e15f-4db5-8afe-1a531baf295e';

-- MARK INACTIVE & NOT FOUND: Village Barn Dance (ID: 7076e5b6-d59f-4c58-b939-4169341ae1b4) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7076e5b6-d59f-4c58-b939-4169341ae1b4';

-- MARK INACTIVE & NOT FOUND: Chitralahari (ID: 700cce69-6f2f-45c0-a96c-1e4346c586ff) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '700cce69-6f2f-45c0-a96c-1e4346c586ff';

-- UPDATE MOVIE: Surkhi Bindi (ID: 701d0678-a13d-4945-8b5e-87abd71ec419)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/tiicuflrkb0liii', file_size = '2.54 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '701d0678-a13d-4945-8b5e-87abd71ec419';

-- MARK INACTIVE & NOT FOUND: Salt (ID: 7011658f-4f1b-4f65-a982-8e836bdff476) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7011658f-4f1b-4f65-a982-8e836bdff476';

-- MARK INACTIVE & NOT FOUND: Bangalore Underworld (ID: 707cfa85-5ba0-42d3-929b-0cf23644b982) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '707cfa85-5ba0-42d3-929b-0cf23644b982';

-- UPDATE MOVIE: Zakhm (ID: 703df891-3701-4432-b8f5-5421fe280f41)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/e1oa1yyj6d1hggd', file_size = '1.02 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '703df891-3701-4432-b8f5-5421fe280f41';

-- LINK CATEGORIES: Zakhm (['300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('703df891-3701-4432-b8f5-5421fe280f41', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Aayirathonnu Nunakal (ID: 708bb46a-adce-4085-ad31-fbfb69db1061) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '708bb46a-adce-4085-ad31-fbfb69db1061';

-- LINK CATEGORIES: Aayirathonnu Nunakal (['300mb', 'south-hindi-dubbed', 'hindi-dubbed', 'mystery'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('708bb46a-adce-4085-ad31-fbfb69db1061', '300mb'), ('708bb46a-adce-4085-ad31-fbfb69db1061', 'south-hindi-dubbed'), ('708bb46a-adce-4085-ad31-fbfb69db1061', 'hindi-dubbed'), ('708bb46a-adce-4085-ad31-fbfb69db1061', 'mystery') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Bachchhan Paandey (ID: 70945286-8a91-4c94-8f38-b9eac201fbfe)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/sgywukbkezgzwyk', file_size = '2.66 GB', status = 'active', updated_at = NOW(), quality = 'WEB-DL' WHERE id = '70945286-8a91-4c94-8f38-b9eac201fbfe';

-- UPDATE MOVIE: The Greatest Showman (ID: 70a71c1e-3e1c-4775-9abb-9d79fcea3c65)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/l5izycc5juilcun', file_size = '1.78 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '70a71c1e-3e1c-4775-9abb-9d79fcea3c65';

-- LINK CATEGORIES: The Greatest Showman (['dual-audio', 'bluray', '300mb', 'biography', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('70a71c1e-3e1c-4775-9abb-9d79fcea3c65', 'dual-audio'), ('70a71c1e-3e1c-4775-9abb-9d79fcea3c65', 'bluray'), ('70a71c1e-3e1c-4775-9abb-9d79fcea3c65', '300mb'), ('70a71c1e-3e1c-4775-9abb-9d79fcea3c65', 'biography'), ('70a71c1e-3e1c-4775-9abb-9d79fcea3c65', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Maze Runner: The Scorch Trials (ID: 709a010e-fa95-465f-8c2b-44111ee02bd9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '709a010e-fa95-465f-8c2b-44111ee02bd9';

-- MARK INACTIVE & NOT FOUND: Assassination Games (ID: 709d3883-8f5b-4e01-9177-434dcebf67ac) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '709d3883-8f5b-4e01-9177-434dcebf67ac';

-- MARK INACTIVE & NOT FOUND: What Are the Odds? (ID: 70c08d8a-5da1-4fdd-9558-648fb15be6f6) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '70c08d8a-5da1-4fdd-9558-648fb15be6f6';

-- UPDATE MOVIE: Dharala Prabhu (ID: 70f73977-e924-43f5-aff8-74dbe959d909)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/aehtvl17zgs5leh', file_size = '2.05 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '70f73977-e924-43f5-aff8-74dbe959d909';

-- MARK INACTIVE & NOT FOUND: Happy Phirr Bhag Jayegi (ID: 70c400d2-4fdb-4adc-9bd4-7883beef2154) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '70c400d2-4fdb-4adc-9bd4-7883beef2154';

-- MARK INACTIVE & NOT FOUND: Bawri Chhori (ID: 711628f2-aafc-417e-b7c2-6120830434c9) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2201026824)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '711628f2-aafc-417e-b7c2-6120830434c9';

-- UPDATE MOVIE: Padakkalam (ID: 713c3014-696e-476d-a8f4-e8e56d03675e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/fu4tdpf3hpaft3d', file_size = '2.54 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '713c3014-696e-476d-a8f4-e8e56d03675e';

-- LINK CATEGORIES: Padakkalam (['dual-audio', '300mb', 'malayalam', 'south-hindi-dubbed', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('713c3014-696e-476d-a8f4-e8e56d03675e', 'dual-audio'), ('713c3014-696e-476d-a8f4-e8e56d03675e', '300mb'), ('713c3014-696e-476d-a8f4-e8e56d03675e', 'malayalam'), ('713c3014-696e-476d-a8f4-e8e56d03675e', 'south-hindi-dubbed'), ('713c3014-696e-476d-a8f4-e8e56d03675e', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Cell (ID: 7102bf95-2f8e-41c3-9715-3207ec5dacf4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7102bf95-2f8e-41c3-9715-3207ec5dacf4';

-- LINK CATEGORIES: The Cell (['dual-audio', 'hindi-dubbed', 'sci-fi'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7102bf95-2f8e-41c3-9715-3207ec5dacf4', 'dual-audio'), ('7102bf95-2f8e-41c3-9715-3207ec5dacf4', 'hindi-dubbed'), ('7102bf95-2f8e-41c3-9715-3207ec5dacf4', 'sci-fi') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Sarkaru Vaari Paata (ID: 7111cd11-1ed8-4795-b432-e33e0d66fc6b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7111cd11-1ed8-4795-b432-e33e0d66fc6b';

-- MARK INACTIVE & NOT FOUND: Nighthawks (ID: 716b97ba-75cd-4fd8-a8da-24de41a17b57) | Reason: [HubCloud Server] button not found on HubDrive page (https://new19.gdtot.dad/file/2022046702)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '716b97ba-75cd-4fd8-a8da-24de41a17b57';

-- LINK CATEGORIES: Nighthawks (['dual-audio', '300mb', 'drama', 'hollywood', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('716b97ba-75cd-4fd8-a8da-24de41a17b57', 'dual-audio'), ('716b97ba-75cd-4fd8-a8da-24de41a17b57', '300mb'), ('716b97ba-75cd-4fd8-a8da-24de41a17b57', 'drama'), ('716b97ba-75cd-4fd8-a8da-24de41a17b57', 'hollywood'), ('716b97ba-75cd-4fd8-a8da-24de41a17b57', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Tower Heist (ID: 71390e90-0e4a-4faf-a95a-6e8ca9227764) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '71390e90-0e4a-4faf-a95a-6e8ca9227764';

-- MARK INACTIVE & NOT FOUND: Peechay Tou Dekho (ID: 71587bdb-8d36-4d7c-ab50-d3bf0503198b) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '71587bdb-8d36-4d7c-ab50-d3bf0503198b';

-- MARK INACTIVE & NOT FOUND: B. A. Pass 2 (ID: 71866619-0cae-4636-aada-9d6b54df6907) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '71866619-0cae-4636-aada-9d6b54df6907';

-- MARK INACTIVE & NOT FOUND: The Four 2 (ID: 71b2713b-8a92-4f98-9646-03f912529be1) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '71b2713b-8a92-4f98-9646-03f912529be1';

-- MARK INACTIVE & NOT FOUND: Chaurya Paatam (ID: 72259f29-b58f-4049-8d49-6779b32fdd5f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '72259f29-b58f-4049-8d49-6779b32fdd5f';

-- MARK INACTIVE & NOT FOUND: Blitz (ID: 71d3df39-ef8a-4cac-aa3e-9115fecb74e0) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '71d3df39-ef8a-4cac-aa3e-9115fecb74e0';

-- LINK CATEGORIES: Blitz (['300mb', 'action', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('71d3df39-ef8a-4cac-aa3e-9115fecb74e0', '300mb'), ('71d3df39-ef8a-4cac-aa3e-9115fecb74e0', 'action'), ('71d3df39-ef8a-4cac-aa3e-9115fecb74e0', 'hollywood') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Scooby-Doo! Abracadabra-Doo (ID: 71c1eac3-eb87-44ff-8c60-2226d0ef2778)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zzfnoifz777o071', file_size = '723.11 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '71c1eac3-eb87-44ff-8c60-2226d0ef2778';

-- LINK CATEGORIES: Scooby-Doo! Abracadabra-Doo (['dual-audio', 'action', 'hindi-dubbed', 'horror'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('71c1eac3-eb87-44ff-8c60-2226d0ef2778', 'dual-audio'), ('71c1eac3-eb87-44ff-8c60-2226d0ef2778', 'action'), ('71c1eac3-eb87-44ff-8c60-2226d0ef2778', 'hindi-dubbed'), ('71c1eac3-eb87-44ff-8c60-2226d0ef2778', 'horror') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Fatteshikast (ID: 722bb08a-53eb-4474-8645-cd9628d449d5) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/4428666379)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '722bb08a-53eb-4474-8645-cd9628d449d5';

-- LINK CATEGORIES: Fatteshikast (['300mb', 'action', 'history', 'drama', 'bollywood', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('722bb08a-53eb-4474-8645-cd9628d449d5', '300mb'), ('722bb08a-53eb-4474-8645-cd9628d449d5', 'action'), ('722bb08a-53eb-4474-8645-cd9628d449d5', 'history'), ('722bb08a-53eb-4474-8645-cd9628d449d5', 'drama'), ('722bb08a-53eb-4474-8645-cd9628d449d5', 'bollywood'), ('722bb08a-53eb-4474-8645-cd9628d449d5', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Them That Follow (ID: 71d4ccaf-fe29-4f2a-9132-7408a6fcdf43) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '71d4ccaf-fe29-4f2a-9132-7408a6fcdf43';

-- LINK CATEGORIES: Them That Follow (['dual-audio', 'bluray', '300mb', 'drama', 'hindi-dubbed', 'thriller', 'hollywood', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('71d4ccaf-fe29-4f2a-9132-7408a6fcdf43', 'dual-audio'), ('71d4ccaf-fe29-4f2a-9132-7408a6fcdf43', 'bluray'), ('71d4ccaf-fe29-4f2a-9132-7408a6fcdf43', '300mb'), ('71d4ccaf-fe29-4f2a-9132-7408a6fcdf43', 'drama'), ('71d4ccaf-fe29-4f2a-9132-7408a6fcdf43', 'hindi-dubbed'), ('71d4ccaf-fe29-4f2a-9132-7408a6fcdf43', 'thriller'), ('71d4ccaf-fe29-4f2a-9132-7408a6fcdf43', 'hollywood'), ('71d4ccaf-fe29-4f2a-9132-7408a6fcdf43', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: The Last Producer (ID: 72609920-279b-4044-b308-b8d66b955288) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '72609920-279b-4044-b308-b8d66b955288';

-- MARK INACTIVE & NOT FOUND: Durgamati: The Myth (ID: 727e0d44-04ed-4f10-90a5-9418948d7302) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '727e0d44-04ed-4f10-90a5-9418948d7302';

-- MARK INACTIVE & NOT FOUND: Ateet (ID: 721b26c6-b12c-4a0c-b9f4-fe8d24689f76) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '721b26c6-b12c-4a0c-b9f4-fe8d24689f76';

-- MARK INACTIVE & NOT FOUND: Polar (ID: 724df9ea-7b63-4714-a82a-f73ba3b46cdc) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '724df9ea-7b63-4714-a82a-f73ba3b46cdc';

-- MARK INACTIVE & NOT FOUND: WWE WrestleMania 39 Saturday Kickoff (ID: 72b04898-237c-418b-89c4-1b929d8a583b) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '72b04898-237c-418b-89c4-1b929d8a583b';

-- MARK INACTIVE & NOT FOUND: Extraordinary Mission (ID: 723ef5d5-49f2-4604-8705-86a5c0bca738) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '723ef5d5-49f2-4604-8705-86a5c0bca738';

-- MARK INACTIVE & NOT FOUND: The Hate U Give (ID: 725638ff-fb30-4418-bc58-e6c61b9d5e82) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '725638ff-fb30-4418-bc58-e6c61b9d5e82';

-- MARK INACTIVE & NOT FOUND: Van Wilder 2: The Rise of Taj (ID: 72991a6f-63de-4f48-8597-901273828a40) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '72991a6f-63de-4f48-8597-901273828a40';

-- LINK CATEGORIES: Van Wilder 2: The Rise of Taj (['hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('72991a6f-63de-4f48-8597-901273828a40', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Mah e Mir (ID: 729b4d17-1f57-4b82-8190-2b843ad99a8d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '729b4d17-1f57-4b82-8190-2b843ad99a8d';

-- UPDATE MOVIE: The Lost King (ID: 72df83da-a759-400a-a38b-039b90f7fbbd)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wpesgzwwvfsalws', file_size = '950.2 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '72df83da-a759-400a-a38b-039b90f7fbbd';

-- UPDATE MOVIE: Cube Zero (ID: 73170e5c-e56a-46cf-9dcc-4eb6ffccbf09)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wtgts9fzla9e9lg', file_size = '788.45 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '73170e5c-e56a-46cf-9dcc-4eb6ffccbf09';

-- LINK CATEGORIES: Cube Zero (['dual-audio', 'hindi-dubbed', '300mb', 'drama', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('73170e5c-e56a-46cf-9dcc-4eb6ffccbf09', 'dual-audio'), ('73170e5c-e56a-46cf-9dcc-4eb6ffccbf09', 'hindi-dubbed'), ('73170e5c-e56a-46cf-9dcc-4eb6ffccbf09', '300mb'), ('73170e5c-e56a-46cf-9dcc-4eb6ffccbf09', 'drama'), ('73170e5c-e56a-46cf-9dcc-4eb6ffccbf09', 'bluray') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Weaponized (ID: 72dd0ed8-c432-4523-9df5-f3dde3898656)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/jvgvb-nesb5127v', file_size = '782.12 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '72dd0ed8-c432-4523-9df5-f3dde3898656';

-- MARK INACTIVE & NOT FOUND: Parris Jayaraj (ID: 7331888c-b70e-448e-bfbf-1413f0339422) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7331888c-b70e-448e-bfbf-1413f0339422';

-- MARK INACTIVE & NOT FOUND: Vaandu (ID: 731601af-2dc4-45e8-9362-cb7db7e3b41c) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '731601af-2dc4-45e8-9362-cb7db7e3b41c';

-- MARK INACTIVE & NOT FOUND: Urumeen (ID: 72caea2b-522c-42c7-9013-bf05d75d7e1d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '72caea2b-522c-42c7-9013-bf05d75d7e1d';

-- LINK CATEGORIES: Urumeen (['hindi-dubbed', 'south-hindi-dubbed', '1080p', 'tamil', 'thriller', 'action', 'hd', 'fantasy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('72caea2b-522c-42c7-9013-bf05d75d7e1d', 'hindi-dubbed'), ('72caea2b-522c-42c7-9013-bf05d75d7e1d', 'south-hindi-dubbed'), ('72caea2b-522c-42c7-9013-bf05d75d7e1d', '1080p'), ('72caea2b-522c-42c7-9013-bf05d75d7e1d', 'tamil'), ('72caea2b-522c-42c7-9013-bf05d75d7e1d', 'thriller'), ('72caea2b-522c-42c7-9013-bf05d75d7e1d', 'action'), ('72caea2b-522c-42c7-9013-bf05d75d7e1d', 'hd'), ('72caea2b-522c-42c7-9013-bf05d75d7e1d', 'fantasy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Angrezi Medium (ID: 7322d2a4-ec06-453b-8357-75a2b575dff7) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7322d2a4-ec06-453b-8357-75a2b575dff7';

-- MARK INACTIVE & NOT FOUND: Hebbuli (ID: 7333a63a-2ba6-42af-9b07-6e6234a71ff3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7333a63a-2ba6-42af-9b07-6e6234a71ff3';

-- MARK INACTIVE & NOT FOUND: 8MM 2 (ID: 7331e963-ce96-45f7-8484-400644918773) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7331e963-ce96-45f7-8484-400644918773';

-- LINK CATEGORIES: 8MM 2 (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7331e963-ce96-45f7-8484-400644918773', 'dual-audio'), ('7331e963-ce96-45f7-8484-400644918773', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Pretham (ID: 7327c6b1-fa08-4c68-831b-28bf04ffb0bc) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7327c6b1-fa08-4c68-831b-28bf04ffb0bc';

-- LINK CATEGORIES: Pretham (['hindi-dubbed', '300mb', '1080p', 'comedy', 'thriller', 'horror', 'hd', 'mystery'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7327c6b1-fa08-4c68-831b-28bf04ffb0bc', 'hindi-dubbed'), ('7327c6b1-fa08-4c68-831b-28bf04ffb0bc', '300mb'), ('7327c6b1-fa08-4c68-831b-28bf04ffb0bc', '1080p'), ('7327c6b1-fa08-4c68-831b-28bf04ffb0bc', 'comedy'), ('7327c6b1-fa08-4c68-831b-28bf04ffb0bc', 'thriller'), ('7327c6b1-fa08-4c68-831b-28bf04ffb0bc', 'horror'), ('7327c6b1-fa08-4c68-831b-28bf04ffb0bc', 'hd'), ('7327c6b1-fa08-4c68-831b-28bf04ffb0bc', 'mystery') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Bhavesh Joshi Superhero (ID: 737094f9-a004-4336-a1f8-df4765ff7bf3) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '737094f9-a004-4336-a1f8-df4765ff7bf3';

-- UPDATE MOVIE: Highway One (ID: 73467620-822c-44f4-ba3a-0fc67b2b42e9)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/8d1gdb1llcxjuzn', file_size = '794.95 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '73467620-822c-44f4-ba3a-0fc67b2b42e9';

-- MARK INACTIVE & NOT FOUND: Guru (ID: 7346cfa7-eb6f-482a-ae81-846c26ae45a0) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7346cfa7-eb6f-482a-ae81-846c26ae45a0';

-- LINK CATEGORIES: Guru (['720p', '300mb', 'biography'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7346cfa7-eb6f-482a-ae81-846c26ae45a0', '720p'), ('7346cfa7-eb6f-482a-ae81-846c26ae45a0', '300mb'), ('7346cfa7-eb6f-482a-ae81-846c26ae45a0', 'biography') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Human Capital (ID: 7353dcdc-3204-4fd1-8477-f92e00db0dd3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/pumqi4um4uorss_', file_size = '1.84 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '7353dcdc-3204-4fd1-8477-f92e00db0dd3';

-- MARK INACTIVE & NOT FOUND: A Beautiful Day in the Neighborhood (ID: 73e01cfd-8f51-4e56-9043-82c555088a37) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '73e01cfd-8f51-4e56-9043-82c555088a37';

-- MARK INACTIVE & NOT FOUND: Mohini (ID: 73a0aa1b-10ae-4d27-b98f-8c9ff0c43f7f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '73a0aa1b-10ae-4d27-b98f-8c9ff0c43f7f';

-- UPDATE MOVIE: Tadka (ID: 73d20ea3-9aba-4609-8cc1-e4838de9b45c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/nd78qn7jjduxoe8', file_size = '2.26 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '73d20ea3-9aba-4609-8cc1-e4838de9b45c';

-- MARK INACTIVE & NOT FOUND: Black Friday (ID: 73a81f95-babc-4786-b7ed-dd74868cf04e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '73a81f95-babc-4786-b7ed-dd74868cf04e';

-- LINK CATEGORIES: Black Friday (['bollywood', 'thriller', 'drama', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('73a81f95-babc-4786-b7ed-dd74868cf04e', 'bollywood'), ('73a81f95-babc-4786-b7ed-dd74868cf04e', 'thriller'), ('73a81f95-babc-4786-b7ed-dd74868cf04e', 'drama'), ('73a81f95-babc-4786-b7ed-dd74868cf04e', 'crime') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Bending All the Rules (ID: 74644d7c-c8e3-4dbf-9016-64af418b4378) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '74644d7c-c8e3-4dbf-9016-64af418b4378';

-- MARK INACTIVE & NOT FOUND: After Porn Ends 2 (ID: 7465f970-6a2c-4cd5-8137-98c19695533e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7465f970-6a2c-4cd5-8137-98c19695533e';

-- MARK INACTIVE & NOT FOUND: Neeya 2 (ID: 74696101-9dc3-49ea-a7a4-0323bf93fe45) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '74696101-9dc3-49ea-a7a4-0323bf93fe45';

-- LINK CATEGORIES: Neeya 2 (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('74696101-9dc3-49ea-a7a4-0323bf93fe45', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Re/Member: The Last Night (ID: 746b5bf6-ca3a-4a97-88c9-9cddcab32d8d) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '746b5bf6-ca3a-4a97-88c9-9cddcab32d8d';

-- MARK INACTIVE & NOT FOUND: The Adventurers (ID: 7404f3d3-ef96-4129-a8bf-03f1497278bf) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7404f3d3-ef96-4129-a8bf-03f1497278bf';

-- LINK CATEGORIES: The Adventurers (['hindi-dubbed', '1080p', 'chinese', 'action', 'crime', 'hd', 'adventure'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7404f3d3-ef96-4129-a8bf-03f1497278bf', 'hindi-dubbed'), ('7404f3d3-ef96-4129-a8bf-03f1497278bf', '1080p'), ('7404f3d3-ef96-4129-a8bf-03f1497278bf', 'chinese'), ('7404f3d3-ef96-4129-a8bf-03f1497278bf', 'action'), ('7404f3d3-ef96-4129-a8bf-03f1497278bf', 'crime'), ('7404f3d3-ef96-4129-a8bf-03f1497278bf', 'hd'), ('7404f3d3-ef96-4129-a8bf-03f1497278bf', 'adventure') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Writer Padmabhushan (ID: 743b71ef-5f80-47c0-9c96-4ff1e9f999d0)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/uhh9uyk_l_y17_i', file_size = '2.01 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '743b71ef-5f80-47c0-9c96-4ff1e9f999d0';

-- MARK INACTIVE & NOT FOUND: Thor: Ragnarok (ID: 74567f88-fc96-4cb5-8121-51e311366149) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '74567f88-fc96-4cb5-8121-51e311366149';

-- UPDATE MOVIE: Supercool (ID: 74187c64-551d-47ae-ad90-ca304af431b2)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/7k5qqdonond-ntp', file_size = '794.86 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '74187c64-551d-47ae-ad90-ca304af431b2';

-- MARK INACTIVE & NOT FOUND: Mathu Vadalara 2 (ID: 74b110c1-11ef-49c5-b30e-25320cd780e4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '74b110c1-11ef-49c5-b30e-25320cd780e4';

-- MARK INACTIVE & NOT FOUND: Kho Gaye Hum Kahan (ID: 7483810b-a0de-45a7-91f3-7cb455e18741) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7483810b-a0de-45a7-91f3-7cb455e18741';

-- UPDATE MOVIE: The Roads Not Taken (ID: 74b6d8f3-6045-422b-8e1a-2e0ba5420f9e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/xnz4yglyngagux8', file_size = '1.47 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '74b6d8f3-6045-422b-8e1a-2e0ba5420f9e';

-- MARK INACTIVE & NOT FOUND: Virus (ID: 74bc1ef6-8aba-44c5-b79b-9d0acfbf5ff5) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/3223069345)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '74bc1ef6-8aba-44c5-b79b-9d0acfbf5ff5';

-- MARK INACTIVE & NOT FOUND: 2018 (ID: 74dcd485-a716-439c-9aa6-91546b44caa1) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '74dcd485-a716-439c-9aa6-91546b44caa1';

-- MARK INACTIVE & NOT FOUND: Zoom (ID: 7526cf14-a6c5-469e-9a78-e2021c009141) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7526cf14-a6c5-469e-9a78-e2021c009141';

-- LINK CATEGORIES: Zoom (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7526cf14-a6c5-469e-9a78-e2021c009141', 'dual-audio'), ('7526cf14-a6c5-469e-9a78-e2021c009141', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Rurouni Kenshin: The Final (ID: 753639f5-06d0-492f-a918-f231e1239e62) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '753639f5-06d0-492f-a918-f231e1239e62';

-- MARK INACTIVE & NOT FOUND: Pirates of the Caribbean: The Curse of the Black Pearl (ID: 7501e5cf-8e1c-4bd4-9125-2c96279ad2b4) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7501e5cf-8e1c-4bd4-9125-2c96279ad2b4';

-- LINK CATEGORIES: Pirates of the Caribbean: The Curse of the Black Pearl (['dual-audio', 'hindi-dubbed', '300mb', '720p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7501e5cf-8e1c-4bd4-9125-2c96279ad2b4', 'dual-audio'), ('7501e5cf-8e1c-4bd4-9125-2c96279ad2b4', 'hindi-dubbed'), ('7501e5cf-8e1c-4bd4-9125-2c96279ad2b4', '300mb'), ('7501e5cf-8e1c-4bd4-9125-2c96279ad2b4', '720p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Spider-Man Homecoming (ID: 7509f711-7814-429c-9f31-4299a35ca40d) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7509f711-7814-429c-9f31-4299a35ca40d';

-- UPDATE MOVIE: Extinction (ID: 74bfde7a-3e43-488e-b9ca-0b3852174a6e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/3m0ayqflsgygmyl', file_size = '1.11 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '74bfde7a-3e43-488e-b9ca-0b3852174a6e';

-- UPDATE MOVIE: Theeran Adhigaaram Ondru (ID: 74fd9b6f-b05b-4a30-a726-60653c51ba77)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/u9aef5chb8elrel', file_size = '1.31 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '74fd9b6f-b05b-4a30-a726-60653c51ba77';

-- MARK INACTIVE & NOT FOUND: Toronto Apartment (ID: 759f157a-1827-415c-bc0a-1ffbd122c612) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '759f157a-1827-415c-bc0a-1ffbd122c612';

-- LINK CATEGORIES: Toronto Apartment (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('759f157a-1827-415c-bc0a-1ffbd122c612', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Dongalunnaru Jagratha (ID: 75a63021-c555-455b-a1ab-3094ef871a44) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '75a63021-c555-455b-a1ab-3094ef871a44';

-- MARK INACTIVE & NOT FOUND: Birkhit (ID: 75bea0e1-278b-4e00-a6a6-eac1ab342c3e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '75bea0e1-278b-4e00-a6a6-eac1ab342c3e';

-- MARK INACTIVE & NOT FOUND: Wild Orchid (ID: 75507950-2302-479c-819d-e934ec159414) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '75507950-2302-479c-819d-e934ec159414';

-- LINK CATEGORIES: Wild Orchid (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('75507950-2302-479c-819d-e934ec159414', 'dual-audio'), ('75507950-2302-479c-819d-e934ec159414', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Emancipation (ID: 754322e5-3d28-4079-882b-14440d22a875)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/vm46mww81itpc_8', file_size = '1.13 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '754322e5-3d28-4079-882b-14440d22a875';

-- MARK INACTIVE & NOT FOUND: Fight to the Finish (ID: 75c2ee51-8d5e-4ee3-99c3-c09a58dc579d) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '75c2ee51-8d5e-4ee3-99c3-c09a58dc579d';

-- MARK INACTIVE & NOT FOUND: Blue Bird (ID: 7606507d-fd41-4289-9d5a-f99957e5b144) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7606507d-fd41-4289-9d5a-f99957e5b144';

-- MARK INACTIVE & NOT FOUND: The Three Musketeers (ID: 7600d798-74d4-46a8-bbf4-a5002e4fb9bf) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7600d798-74d4-46a8-bbf4-a5002e4fb9bf';

-- LINK CATEGORIES: The Three Musketeers (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7600d798-74d4-46a8-bbf4-a5002e4fb9bf', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: New Police Story (ID: 7546eb0a-dc33-4802-9fb0-261afef19c10)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/lmzkxvlpjtcmxl1', file_size = '1.1 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '7546eb0a-dc33-4802-9fb0-261afef19c10';

-- LINK CATEGORIES: New Police Story (['dual-audio', 'hindi-dubbed', 'bluray'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7546eb0a-dc33-4802-9fb0-261afef19c10', 'dual-audio'), ('7546eb0a-dc33-4802-9fb0-261afef19c10', 'hindi-dubbed'), ('7546eb0a-dc33-4802-9fb0-261afef19c10', 'bluray') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Kanithan (ID: 75ac9cc4-64f2-4df5-bb63-29643d411519) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '75ac9cc4-64f2-4df5-bb63-29643d411519';

-- MARK INACTIVE & NOT FOUND: The Hungry (ID: 75d33b95-b2d1-4d95-ad9d-fb3f38bcc618) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '75d33b95-b2d1-4d95-ad9d-fb3f38bcc618';

-- MARK INACTIVE & NOT FOUND: WWE No Mercy 2008 (ID: 76261c7f-11df-4c85-9c26-7effe583f373) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '76261c7f-11df-4c85-9c26-7effe583f373';

-- LINK CATEGORIES: WWE No Mercy 2008 (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('76261c7f-11df-4c85-9c26-7effe583f373', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: My Soul to Take (ID: 76080ea4-e1fb-41ab-80a3-10dc8e4d41d9) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '76080ea4-e1fb-41ab-80a3-10dc8e4d41d9';

-- MARK INACTIVE & NOT FOUND: The Childe (ID: 7617db59-b8eb-42d0-98e2-29fdff07c4f7) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7617db59-b8eb-42d0-98e2-29fdff07c4f7';

-- UPDATE MOVIE: The Infernal Machine (ID: 7620eb4c-a586-4dd5-a721-b2371c5ca01e)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rrmqhx_nxdfhgk9', file_size = '1.83 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '7620eb4c-a586-4dd5-a721-b2371c5ca01e';

-- MARK INACTIVE & NOT FOUND: Into the Sun (ID: 7616cd2b-a006-4d29-9b14-793d65290189) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7616cd2b-a006-4d29-9b14-793d65290189';

-- LINK CATEGORIES: Into the Sun (['dual-audio', '300mb', 'thriller'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7616cd2b-a006-4d29-9b14-793d65290189', 'dual-audio'), ('7616cd2b-a006-4d29-9b14-793d65290189', '300mb'), ('7616cd2b-a006-4d29-9b14-793d65290189', 'thriller') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Scream 2 (ID: 76a9f423-7e80-40f1-b0ff-53d9b4fc561e) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '76a9f423-7e80-40f1-b0ff-53d9b4fc561e';

-- UPDATE MOVIE: Devathayai Kanden (ID: 76838d49-f149-4f71-b123-6847764473e3)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/thqe90uwh0hbl0q', file_size = '2.67 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '76838d49-f149-4f71-b123-6847764473e3';

-- LINK CATEGORIES: Devathayai Kanden (['dual-audio', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('76838d49-f149-4f71-b123-6847764473e3', 'dual-audio'), ('76838d49-f149-4f71-b123-6847764473e3', 'hindi-dubbed'), ('76838d49-f149-4f71-b123-6847764473e3', '300mb') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Legendary Assassin (ID: 768655ec-8716-452d-b12b-75f4e29286d8) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '768655ec-8716-452d-b12b-75f4e29286d8';

-- LINK CATEGORIES: Legendary Assassin (['hindi-dubbed', '1080p', 'thriller', 'chinese', 'action', 'romance', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('768655ec-8716-452d-b12b-75f4e29286d8', 'hindi-dubbed'), ('768655ec-8716-452d-b12b-75f4e29286d8', '1080p'), ('768655ec-8716-452d-b12b-75f4e29286d8', 'thriller'), ('768655ec-8716-452d-b12b-75f4e29286d8', 'chinese'), ('768655ec-8716-452d-b12b-75f4e29286d8', 'action'), ('768655ec-8716-452d-b12b-75f4e29286d8', 'romance'), ('768655ec-8716-452d-b12b-75f4e29286d8', 'hd') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: What Men Want (ID: 767219e0-e931-43d3-914c-dcb0ee175d78)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/brypjya7heasj8b', file_size = '1004.81 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '767219e0-e931-43d3-914c-dcb0ee175d78';

-- MARK INACTIVE & NOT FOUND: U-571 (ID: 76897aad-a3b3-4131-b81f-ab233e45d634) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '76897aad-a3b3-4131-b81f-ab233e45d634';

-- LINK CATEGORIES: U-571 (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('76897aad-a3b3-4131-b81f-ab233e45d634', 'dual-audio'), ('76897aad-a3b3-4131-b81f-ab233e45d634', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Ghantadi (ID: 76c1679f-eee7-4f72-b5b6-3d6231b66bf6) | Reason: [HubCloud Server] button not found on HubDrive page (https://drivehub.ws/file/3448173928)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '76c1679f-eee7-4f72-b5b6-3d6231b66bf6';

-- MARK INACTIVE & NOT FOUND: Kaamyaab (ID: 76c93588-4af0-4c6a-bcbb-1e62649b99ca) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '76c93588-4af0-4c6a-bcbb-1e62649b99ca';

-- MARK INACTIVE & NOT FOUND: Synecdoche, New York (ID: 770d0f58-b8a6-476e-a9f0-24e3054bed5f) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '770d0f58-b8a6-476e-a9f0-24e3054bed5f';

-- MARK INACTIVE & NOT FOUND: The French Dispatch of the Liberty, Kansas Evening Sun (ID: 770d9cff-3207-4022-b7c4-d4aeb9c73ebe) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '770d9cff-3207-4022-b7c4-d4aeb9c73ebe';

-- MARK INACTIVE & NOT FOUND: Munna Bhai M.B.B.S. (ID: 76d83a8b-6f0f-4c47-9c8d-bf0b3fbc0157) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '76d83a8b-6f0f-4c47-9c8d-bf0b3fbc0157';

-- MARK INACTIVE & NOT FOUND: The Meg (ID: 770b640d-6176-4f73-959c-53fad560aa71) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '770b640d-6176-4f73-959c-53fad560aa71';

-- MARK INACTIVE & NOT FOUND: Dorasaani (ID: 7739d235-1198-4a96-a054-e0fb40e52d10) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7739d235-1198-4a96-a054-e0fb40e52d10';

-- UPDATE MOVIE: Aa Karaala Ratri (ID: 773664fb-61ca-4336-afeb-9090f14941bc)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/gqr8rqt1w8hu8c_', file_size = '1.96 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '773664fb-61ca-4336-afeb-9090f14941bc';

-- UPDATE MOVIE: Coolie No. 1 (ID: 773d662c-d8fa-4d37-b65f-197f21fc97a4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zan1avagzp8dppa', file_size = '2.32 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '773d662c-d8fa-4d37-b65f-197f21fc97a4';

-- MARK INACTIVE & NOT FOUND: Despicable Me 3 (ID: 76d57889-73ab-423a-94d3-25835163daee) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '76d57889-73ab-423a-94d3-25835163daee';

-- MARK INACTIVE & NOT FOUND: Wind River (ID: 76f6ff36-752e-41b4-8589-831df55f6d9f) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '76f6ff36-752e-41b4-8589-831df55f6d9f';

-- LINK CATEGORIES: Wind River (['hd', 'hollywood', '1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('76f6ff36-752e-41b4-8589-831df55f6d9f', 'hd'), ('76f6ff36-752e-41b4-8589-831df55f6d9f', 'hollywood'), ('76f6ff36-752e-41b4-8589-831df55f6d9f', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Silencing (ID: 772c28f1-2df7-4d83-a40d-bf04f640bdc4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/1wzz-z7--l8zrkj', file_size = '809.53 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '772c28f1-2df7-4d83-a40d-bf04f640bdc4';

-- MARK INACTIVE & NOT FOUND: Forensic (ID: 775ada59-e1e3-47f7-a86d-bfb227c14230) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '775ada59-e1e3-47f7-a86d-bfb227c14230';

-- MARK INACTIVE & NOT FOUND: The Wax Mask (ID: 777ee440-6433-4a15-87bc-c95d808013c5) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '777ee440-6433-4a15-87bc-c95d808013c5';

-- LINK CATEGORIES: The Wax Mask (['dual-audio', 'hindi-dubbed', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('777ee440-6433-4a15-87bc-c95d808013c5', 'dual-audio'), ('777ee440-6433-4a15-87bc-c95d808013c5', 'hindi-dubbed'), ('777ee440-6433-4a15-87bc-c95d808013c5', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Load Wedding (ID: 7776cca4-02e7-42c7-9dd8-7b9668326ee0) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7776cca4-02e7-42c7-9dd8-7b9668326ee0';

-- MARK INACTIVE & NOT FOUND: Unfriended: Dark Web (ID: 7788db1e-8665-4ad0-9a91-351de0f9e12c) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2502777876)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7788db1e-8665-4ad0-9a91-351de0f9e12c';

-- MARK INACTIVE & NOT FOUND: Hollow Man (ID: 77a5be83-f932-4bc1-9d21-c666b2bc8fb2) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '77a5be83-f932-4bc1-9d21-c666b2bc8fb2';

-- UPDATE MOVIE: Siya (ID: 7764ea8f-ddd2-40a8-b536-56e4804f548d)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/z17w271wwq2z1vf', file_size = '1.03 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '7764ea8f-ddd2-40a8-b536-56e4804f548d';

-- UPDATE MOVIE: Maa Da Ladla (ID: 779e9ad5-ba46-4a4e-8953-7d48de83928b)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5443zk7pbjm4lfg', file_size = '1.14 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '779e9ad5-ba46-4a4e-8953-7d48de83928b';

-- UPDATE MOVIE: Moon Crash (ID: 77a01563-3bf1-4120-bf4b-ab8e3d4d2cee)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/90gck1swkhw7by0', file_size = '794.9 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '77a01563-3bf1-4120-bf4b-ab8e3d4d2cee';

-- MARK INACTIVE & NOT FOUND: 2036 Origin Unknown (ID: 77e61bd9-1a1d-4671-ac7f-0e1d526b9ac2) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '77e61bd9-1a1d-4671-ac7f-0e1d526b9ac2';

-- UPDATE MOVIE: Dragon Blade (ID: 77d4bd0e-8bdc-424d-859d-db940762070c)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/amlejm4r994-j4e', file_size = '1.25 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '77d4bd0e-8bdc-424d-859d-db940762070c';

-- UPDATE MOVIE: Doctor G (ID: 77e179e4-c337-4907-ad5c-d2e28c502049)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/o2az2ytr22myasf', file_size = '1.06 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '77e179e4-c337-4907-ad5c-d2e28c502049';

-- UPDATE MOVIE: Catwoman: Hunted (ID: 77d77da4-1da0-4ab4-aa1f-750423b49475)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/kywj8aynncawyaf', file_size = '696.21 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '77d77da4-1da0-4ab4-aa1f-750423b49475';

-- MARK INACTIVE & NOT FOUND: Fashion Designa (ID: 77f9b127-5df1-44ba-b0df-b7d3574efadb) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '77f9b127-5df1-44ba-b0df-b7d3574efadb';

-- LINK CATEGORIES: Fashion Designa (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('77f9b127-5df1-44ba-b0df-b7d3574efadb', '1080p') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Viraam (ID: 77e60800-848a-45d0-a0e5-2b1cd84c7409) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '77e60800-848a-45d0-a0e5-2b1cd84c7409';

-- MARK INACTIVE & NOT FOUND: Bruce Lee, the Legend (ID: 77ea0028-d945-4a08-b6bd-3fd86d6860e4) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '77ea0028-d945-4a08-b6bd-3fd86d6860e4';

-- LINK CATEGORIES: Bruce Lee, the Legend (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('77ea0028-d945-4a08-b6bd-3fd86d6860e4', 'dual-audio'), ('77ea0028-d945-4a08-b6bd-3fd86d6860e4', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: In the Line of Fire (ID: 780f6e37-00ab-4532-a619-80a1306b2349) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '780f6e37-00ab-4532-a619-80a1306b2349';

-- LINK CATEGORIES: In the Line of Fire (['dual-audio', 'hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('780f6e37-00ab-4532-a619-80a1306b2349', 'dual-audio'), ('780f6e37-00ab-4532-a619-80a1306b2349', 'hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Lazarus Effect (ID: 77f10bda-84f4-4fb6-a34c-491eea3c63e4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/ytbrb967x1hwvo1', file_size = '827.08 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '77f10bda-84f4-4fb6-a34c-491eea3c63e4';

-- UPDATE MOVIE: Pain Threshold (ID: 7833bf35-0f1b-4a20-ab21-ae5bc5eb24e6)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/l_p5lnjp1gpanse', file_size = '985.8 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '7833bf35-0f1b-4a20-ab21-ae5bc5eb24e6';

-- MARK INACTIVE & NOT FOUND: Snakehead (ID: 783bbda4-afa5-4dd4-bc74-a5b61f99a3fd) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/893564230)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '783bbda4-afa5-4dd4-bc74-a5b61f99a3fd';

-- UPDATE MOVIE: Shark Season (ID: 784967b6-2f37-4c51-9d15-1610e83df4f7)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/3hv1c3m3ft31k3n', file_size = '940.87 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '784967b6-2f37-4c51-9d15-1610e83df4f7';

-- MARK INACTIVE & NOT FOUND: Armed Response (ID: 789b411f-8028-466f-8f50-1bc689a335ae) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '789b411f-8028-466f-8f50-1bc689a335ae';

-- MARK INACTIVE & NOT FOUND: Laali Ki Shaadi Mein Laaddoo Deewana (ID: 787e263a-e13b-41d0-82e7-3a5cfb2c9b1f) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '787e263a-e13b-41d0-82e7-3a5cfb2c9b1f';

-- MARK INACTIVE & NOT FOUND: Sitting in Bars with Cake (ID: 78b0bcfe-b014-465f-9dda-51a4700222bb) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '78b0bcfe-b014-465f-9dda-51a4700222bb';

-- MARK INACTIVE & NOT FOUND: The Bad Batch (ID: 78ccdcde-31e2-4976-8381-65888259c99a) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '78ccdcde-31e2-4976-8381-65888259c99a';

-- MARK INACTIVE & NOT FOUND: Kyaa Kool Hain Hum 3 (ID: 78942b10-5059-4cd7-b880-48b37af07bf9) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '78942b10-5059-4cd7-b880-48b37af07bf9';

-- LINK CATEGORIES: Kyaa Kool Hain Hum 3 (['bollywood', '300mb', '1080p', 'comedy', 'hd'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('78942b10-5059-4cd7-b880-48b37af07bf9', 'bollywood'), ('78942b10-5059-4cd7-b880-48b37af07bf9', '300mb'), ('78942b10-5059-4cd7-b880-48b37af07bf9', '1080p'), ('78942b10-5059-4cd7-b880-48b37af07bf9', 'comedy'), ('78942b10-5059-4cd7-b880-48b37af07bf9', 'hd') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: WrestleMania 41: Sunday (ID: 78df70c8-e851-4351-832a-1e3a7aab092e) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '78df70c8-e851-4351-832a-1e3a7aab092e';

-- UPDATE MOVIE: Ghislaine Maxwell: Filthy Rich (ID: 7850ef70-5ec8-4d02-aa05-3b63f13269cf)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/zq1psus15tvb1sa', file_size = '954.83 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '7850ef70-5ec8-4d02-aa05-3b63f13269cf';

-- MARK INACTIVE & NOT FOUND: For a Few Bullets (ID: 787dca4b-7e14-4208-ae6a-3ff3f9ab6b01) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '787dca4b-7e14-4208-ae6a-3ff3f9ab6b01';

-- UPDATE MOVIE: Keedam (ID: 78adbb16-29b6-4a11-b175-f433653ac4f8)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/abl1tt7ldeq14t1', file_size = '980.87 MB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '78adbb16-29b6-4a11-b175-f433653ac4f8';

-- UPDATE MOVIE: Centauro (ID: 78e111c4-950b-46b1-bc70-4a38440fbd09)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/epnklgg4mucwucf', file_size = '1.83 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '78e111c4-950b-46b1-bc70-4a38440fbd09';

-- UPDATE MOVIE: Ishq Pashmina (ID: 78f35b51-4b78-4594-9b87-9d82a6c1a189)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/eg47dd11tbx1fco', file_size = '1.95 GB', status = 'active', updated_at = NOW(), quality = 'HDCAMRip' WHERE id = '78f35b51-4b78-4594-9b87-9d82a6c1a189';

-- MARK INACTIVE & NOT FOUND: Japan Sinks (ID: 7901608c-a30f-47e4-a12a-fd349bf23d54) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7901608c-a30f-47e4-a12a-fd349bf23d54';

-- MARK INACTIVE & NOT FOUND: Inside North Korea: The Next Leader (ID: 791a2bd4-17b6-43c9-95cf-9ef7d4d9c302) | Reason: Search yielded 0 results on HDHub4u
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '791a2bd4-17b6-43c9-95cf-9ef7d4d9c302';

-- LINK CATEGORIES: Inside North Korea: The Next Leader (['1080p'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('791a2bd4-17b6-43c9-95cf-9ef7d4d9c302', '1080p') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: The Darker the Lake (ID: 78cea430-9343-40d9-bdbf-bd4fade26b96)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/o4vsvcvpvchfd1v', file_size = '1.08 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '78cea430-9343-40d9-bdbf-bd4fade26b96';

-- UPDATE MOVIE: Oh My Kadavule (ID: 78feb248-4a99-4b68-b748-deb68c7cf90a)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/rfiz799ox6i1uqe', file_size = '3.01 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '78feb248-4a99-4b68-b748-deb68c7cf90a';

-- UPDATE MOVIE: Bimbisara (ID: 795f2f3a-6cd2-4eff-969b-0bcf62151193)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/wgql1jtjwftqjq6', file_size = '2.38 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '795f2f3a-6cd2-4eff-969b-0bcf62151193';

-- MARK INACTIVE & NOT FOUND: Oozham (ID: 7945fd89-f29c-438a-8cbd-4051eb087305) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7945fd89-f29c-438a-8cbd-4051eb087305';

-- MARK INACTIVE & NOT FOUND: The Wolf Hour (ID: 79696389-f699-4b29-8de4-58fa739364be) | Reason: [HubCloud Server] button not found on HubDrive page (https://hubdrive.tips/file/2188169178)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '79696389-f699-4b29-8de4-58fa739364be';

-- UPDATE MOVIE: CIA: Comrade In America (ID: 79789b9f-f32d-429d-a09d-cb38d51046f4)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/exaax0oqwqesxly', file_size = '2.25 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '79789b9f-f32d-429d-a09d-cb38d51046f4';

-- MARK INACTIVE & NOT FOUND: Scrapper (ID: 7900167a-938a-4611-9dfe-41b2c040d944) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7900167a-938a-4611-9dfe-41b2c040d944';

-- UPDATE MOVIE: Proper Patola (ID: 798cfc64-6bcc-458f-9e66-0109dda0f002)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/5woboxppy1npvfx', file_size = '1.95 GB', status = 'active', updated_at = NOW(), quality = '720p' WHERE id = '798cfc64-6bcc-458f-9e66-0109dda0f002';

-- MARK INACTIVE & NOT FOUND: Iratta (ID: 79babbe7-22d8-48bc-ae5c-f63003418edf) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '79babbe7-22d8-48bc-ae5c-f63003418edf';

-- LINK CATEGORIES: Iratta (['mystery', 'crime'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('79babbe7-22d8-48bc-ae5c-f63003418edf', 'mystery'), ('79babbe7-22d8-48bc-ae5c-f63003418edf', 'crime') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Blood Red Sky (ID: 7a0d54e6-127b-4a2b-b41e-88e4bb93c9e5)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/owck-u1cg3gwfqq', file_size = '1.91 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '7a0d54e6-127b-4a2b-b41e-88e4bb93c9e5';

-- MARK INACTIVE & NOT FOUND: Miss Peregrine's Home for Peculiar Children (ID: 79a75022-ae14-4912-880b-a616edc19c34) | Reason: Neither 1080p nor 720p mediator link found on page (480p is explicitly ignored)
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '79a75022-ae14-4912-880b-a616edc19c34';

-- LINK CATEGORIES: Miss Peregrine's Home for Peculiar Children (['dual-audio', 'hindi-dubbed', '300mb', '1080p', 'hd', 'hollywood', 'adventure', 'fantasy'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('79a75022-ae14-4912-880b-a616edc19c34', 'dual-audio'), ('79a75022-ae14-4912-880b-a616edc19c34', 'hindi-dubbed'), ('79a75022-ae14-4912-880b-a616edc19c34', '300mb'), ('79a75022-ae14-4912-880b-a616edc19c34', '1080p'), ('79a75022-ae14-4912-880b-a616edc19c34', 'hd'), ('79a75022-ae14-4912-880b-a616edc19c34', 'hollywood'), ('79a75022-ae14-4912-880b-a616edc19c34', 'adventure'), ('79a75022-ae14-4912-880b-a616edc19c34', 'fantasy') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: DragonHeart (ID: 7a150ac9-90fc-408f-9661-7269c5f4beed) | Reason: Could not extract valid file size from HubCloud page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7a150ac9-90fc-408f-9661-7269c5f4beed';

-- LINK CATEGORIES: DragonHeart (['dual-audio', 'hindi-dubbed', '300mb'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7a150ac9-90fc-408f-9661-7269c5f4beed', 'dual-audio'), ('7a150ac9-90fc-408f-9661-7269c5f4beed', 'hindi-dubbed'), ('7a150ac9-90fc-408f-9661-7269c5f4beed', '300mb') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Thalavan (ID: 7a4a6298-d608-474c-8e5e-de51c1910f4f)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/1be10s1wmbsaghb', file_size = '2.76 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '7a4a6298-d608-474c-8e5e-de51c1910f4f';

-- LINK CATEGORIES: Thalavan (['dual-audio', 'hindi-dubbed', '300mb', 'south-hindi-dubbed'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7a4a6298-d608-474c-8e5e-de51c1910f4f', 'dual-audio'), ('7a4a6298-d608-474c-8e5e-de51c1910f4f', 'hindi-dubbed'), ('7a4a6298-d608-474c-8e5e-de51c1910f4f', '300mb'), ('7a4a6298-d608-474c-8e5e-de51c1910f4f', 'south-hindi-dubbed') ON CONFLICT DO NOTHING;

-- UPDATE MOVIE: Mindscape (ID: 7a17b49f-ac9e-41f6-91a1-1af9823b9159)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/hxftjw69klrx5b0', file_size = '1.77 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '7a17b49f-ac9e-41f6-91a1-1af9823b9159';

-- UPDATE MOVIE: Torbaaz (ID: 7a5e41b8-a57c-4f40-b849-925b7154bc77)
UPDATE movies SET download_url = 'https://hubcloud.cx/drive/2pxaypkekzk1jua', file_size = '2.31 GB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '7a5e41b8-a57c-4f40-b849-925b7154bc77';

-- UPDATE MOVIE: Trainwreck: Poop Cruise (ID: 7a8287e8-fd38-40d6-aa14-b15d97269d7e)
UPDATE movies SET download_url = 'https://hubcloud.ist/drive/1y5xdfrm51g1snn', file_size = '1005.69 MB', status = 'active', updated_at = NOW(), quality = '1080p' WHERE id = '7a8287e8-fd38-40d6-aa14-b15d97269d7e';

-- LINK CATEGORIES: Trainwreck: Poop Cruise (['dual-audio', '300mb', 'hollywood'])
INSERT INTO movie_categories (movie_id, category_slug) VALUES ('7a8287e8-fd38-40d6-aa14-b15d97269d7e', 'dual-audio'), ('7a8287e8-fd38-40d6-aa14-b15d97269d7e', '300mb'), ('7a8287e8-fd38-40d6-aa14-b15d97269d7e', 'hollywood') ON CONFLICT DO NOTHING;

-- MARK INACTIVE & NOT FOUND: Romeo + Juliet (ID: 7a403f7f-d32f-49ef-a94c-6d642fc7c387) | Reason: HubCloud/HubDrive link not found on HUBLinks page
UPDATE movies SET download_url = 'not_found', status = 'inactive', updated_at = NOW() WHERE id = '7a403f7f-d32f-49ef-a94c-6d642fc7c387';

