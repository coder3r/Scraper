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

