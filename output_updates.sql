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

