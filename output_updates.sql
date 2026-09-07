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

