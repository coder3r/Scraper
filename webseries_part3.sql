-- DEV DOWNLOADER SQL UPDATE - PART 3 OF 3

-- UPDATE SEASON: Sacred Games S1 (ID: 5f7e5a39-e87a-4f32-9433-247cc13b1ae2)
UPDATE seasons SET download_url_720p = 'https://hubdrive.pics/', download_url_1080p = NULL, file_size_720p = '12 mb', file_size_1080p = NULL, updated_at = NOW() WHERE id = '5f7e5a39-e87a-4f32-9433-247cc13b1ae2';

-- UPDATE SEASON: Four More Shots Please! S1 (ID: fc5d0421-0245-44e0-a02e-4fe4710e71cc)
UPDATE seasons SET download_url_720p = NULL, download_url_1080p = 'https://hubcloud.ist/drive/search-recover.php?from_ac=rGPxohA61nTtQGD26juftN9WF-8oFz6a4DAjxgLz4CPSAFa2&q=Rm91ciBNb3JlIFNob3RzIFBsZWFzZSEgUzAyIDEwODBwIHppcA', file_size_720p = NULL, file_size_1080p = '32.6GB', updated_at = NOW() WHERE id = 'fc5d0421-0245-44e0-a02e-4fe4710e71cc';