-- Cities
INSERT INTO cities (name, photo, symbol) VALUES
  ('Vancouver', 'vancouver.jpg', 'vancouver.jpg'),
  ('Burnaby', 'burnaby.jpg', 'burnaby.jpg'),
  ('North Vancouver', 'northvan.jpg', 'northvan.jpg'),
  ('Coquitlam', 'coquitlam.jpg', 'coquitlam.jpg'),
  ('Richmond', 'richmond.jpg', 'richmond.jpg'),
  ('Langley', 'langley.jpg', 'langley.jpg');

-- users
INSERT INTO users (first_name, last_name, city_id, email, password_digest) VALUES
  ('Tehi', 'Kim', 1, 'tehi@example.com', 'pwd123'),
  ('Hyerin', 'Cheon', 2, 'hlyn@example.com', 'pwd123'),
  ('Michael', 'Johnson', 2, 'michael@example.com', 'pwd123'),
  ('Alice', 'Williams', 4, 'alice@example.com', 'pwd123'),
  ('Robert', 'Brown', 5, 'robert@example.com', 'pwd123'),
  ('Emily', 'Jones', 1, 'emily@example.com', 'pwd123'),
  ('Daniel', 'Davis', 3, 'daniel@example.com', 'pwd123'),
  ('Emma', 'Miller', 2, 'emma@example.com', 'pwd123'),
  ('Christopher', 'Wilson', 6, 'christopher@example.com', 'pwd123'),
  ('Olivia', 'Lee', 4, 'olivia@example.com', 'pwd123'),
  ('Raj', 'Patel', 6, 'raj.patel@example.com', 'pwd123'),
  ('Li', 'Chen', 1,'li.chen@example.com', 'pwd123'),
  ('Haruki', 'Nakamura', 5,'haruki.nakamura@example.com', 'pwd123'),
  ('Ji-hye', 'Lee', 3,'ji-hye.lee@example.com', 'pwd123'),
  ('Wei', 'Liu', 4,'wei.liu@example.com', 'pwd123'),
  ('Rina', 'Takahashi', 2,'rina.takahashi@example.com', 'pwd123'),
  ('Aarav', 'Sharma', 3,'aarav.sharma@example.com', 'pwd123'),
  ('Mei', 'Wong', 6,'mei.wong@example.com', 'pwd123'),
  ('Grace', 'Kim', 5,'Grace.Kim@example.com', 'pwd123'),
  ('Ethan', 'Smith', 1,'Ethan.Smith@example.com', 'pwd123'),
  ('Sophia', 'Johnson', 4,'Sophia.Johnson@example.com', 'pwd123'),
  ('William', 'Williams', 2,'William.Williams@example.com', 'pwd123'),
  ('Mia', 'Davis', 3,'Mia.Davis@example.com', 'pwd123'),
  ('James', 'Brown', 6,'James.Brown@example.com', 'pwd123'),
  ('Lola', 'Luise', 2,'Lola.Davis@example.com', 'pwd123'),
  ('Takahasi', 'aya', 5,'Takahasi.Brown@example.com', 'pwd123'),
  ('John', 'Doe', 2, 'john.doe@example.com', 'pwd123'),
  ('Jane', 'Smith', 2, 'jane.smith@example.com', 'pwd123'),
  ('David', 'Lee', 2, 'david.lee@example.com', 'pwd123'),
  ('Sarah', 'Johnson', 2, 'sarah.johnson@example.com', 'pwd123'),
  ('Nebula', 'Starlight', 1,'Nebula.Starlight@example.com', 'pwd123'),
  ('Zephyr', 'Frostbite', 1,'Zephyr.Frostbite@example.com', 'pwd123'),
  ('Blaze', 'Kim', 1,'Grace.Kim@example.com', 'pwd123'),
  ('Lyric', 'Smith', 1,'Lyric.Smith@example.com', 'pwd123'),
  ('Xander', 'Johnson', 1,'Xander.Johnson@example.com', 'pwd123'),
  ('Seraphina', 'Williams', 1,'Seraphina.Williams@example.com', 'pwd123'),
  ('Ragnarok', 'Davis', 3,'Ragnarok.Davis@example.com', 'pwd123'),
  ('Aurora', 'Brown', 3,'Aurora.Brown@example.com', 'pwd123'),
  ('Tempest', 'Luise', 4,'Tempest.Davis@example.com', 'pwd123'),
  ('Luna', 'aya', 4,'Luna.Brown@example.com', 'pwd123'),
  ('Orion', 'Doe', 5, 'Orion.doe@example.com', 'pwd123'),
  ('Valkyrie', 'Smith', 5, 'Valkyrie.smith@example.com', 'pwd123'),
  ('Cypher', 'Lee', 6, 'Cypher.lee@example.com', 'pwd123'),
  ('Astrid', 'Johnson', 6, 'Astrid.johnson@example.com', 'pwd123');


-- city user
INSERT INTO city_user (user_id, city_id) VALUES
  (1, 1),
  (2, 2),
  (3, 2),
  (4, 4),
  (5, 5),
  (6, 1),
  (7, 3),
  (8, 2),
  (9, 6),
  (10, 4),
  (11, 6),
  (12, 1),
  (13, 5),
  (14, 3),
  (15, 4),
  (16, 2),
  (17, 3),
  (18, 6),
  (19, 5),
  (20, 1),
  (21, 4),
  (22, 2),
  (23, 3),
  (24, 6),
  (25, 2),
  (26, 5),
  (27, 2),
  (28, 2),
  (29, 2),
  (30, 2),
  (31, 1),
  (32, 1),
  (33, 1),
  (34, 1),
  (35, 1),
  (36, 1),
  (37, 3),
  (38, 3),
  (39, 4),
  (40, 4),
  (41, 5),
  (42, 5),
  (43, 6),
  (44, 6);

-- points
INSERT INTO points (user_id, city_id, point, date) VALUES
  (1, 1, 60, '2023-05-02T07:00:00.000Z'),
  (2, 2, 5, '2023-05-02T07:00:00.000Z'),
  (3, 2, 35, '2023-08-02T07:00:00.000Z'),
  (4, 4, 5, '2023-08-02T07:00:00.000Z'),
  (5, 5, 120, '2023-08-02T07:00:00.000Z'),
  (6, 1, 5, '2023-08-02T07:00:00.000Z'),
  (7, 3, 20, '2023-08-02T07:00:00.000Z'),
  (8, 2, 5, '2023-08-02T07:00:00.000Z'),
  (9, 6, 20, '2023-08-02T07:00:00.000Z'),
  (10, 4, 5, '2023-08-02T07:00:00.000Z'),
  (11, 6, 5, '2023-08-02T07:00:00.000Z'),
  (12, 1, 20, '2023-08-02T07:00:00.000Z' ),
  (13, 5, 20, '2023-08-02T07:00:00.000Z' ),
  (14, 3, 5, '2023-08-02T07:00:00.000Z'),
  (15, 4, 20, '2023-08-02T07:00:00.000Z' ),
  (16, 2, 5, '2023-08-02T07:00:00.000Z'),
  (17, 3, 20, '2023-08-02T07:00:00.000Z' ),
  (18, 6, 25, '2023-08-02T07:00:00.000Z'),
  (1, 1, 35, '2023-06-02T07:00:00.000Z'),
  (2, 2, 25, '2023-06-02T07:00:00.000Z'),
  (1, 1, 85, '2023-07-02T07:00:00.000Z'),
  (2, 2, 20, '2023-07-02T07:00:00.000Z'),
  (1, 1, 45, '2023-08-02T07:00:00.000Z'),
  (2, 2, 20, '2023-08-02T07:00:00.000Z'),
  (1, 1, 20, '2023-08-02T07:00:00.000Z'),
  (2, 2, 55, '2023-08-02T07:00:00.000Z'),
  (1, 1, 15, '2023-08-02T07:00:00.000Z'),
  (2, 2, 5, '2023-08-02T07:00:00.000Z'),
  (1, 1, 20, '2023-08-02T07:00:00.000Z'),
  (2, 2, 75, '2023-08-02T07:00:00.000Z'),
  (1, 1, 20, '2023-08-02T07:00:00.000Z'),
  (2, 2, 15, '2023-08-02T07:00:00.000Z'),
  (1, 1, 5, '2023-08-02T07:00:00.000Z'),
  (2, 2, 35, '2023-08-02T07:00:00.000Z'),
  (1, 1, 20, '2023-08-02T07:00:00.000Z'),
  (2, 2, 15, '2023-08-02T07:00:00.000Z'),
  (1, 1, 20, '2023-08-02T07:00:00.000Z'),
  (2, 2, 45, '2023-08-02T07:00:00.000Z'),
  (19, 5, 20, '2023-08-02T07:00:00.000Z' ),
  (20, 1, 15, '2023-08-02T07:00:00.000Z'),
  (21, 4, 20, '2023-08-02T07:00:00.000Z' ),
  (22, 2, 45, '2023-08-02T07:00:00.000Z'),
  (23, 3, 20, '2023-08-02T07:00:00.000Z' ),
  (24, 6, 55, '2023-08-02T07:00:00.000Z'),
  (25, 2, 20, '2023-08-02T07:00:00.000Z'),
  (26, 5, 95, '2023-08-02T07:00:00.000Z'),
  (27, 2, 20, '2023-08-02T07:00:00.000Z' ),
  (28, 5, 15, '2023-08-02T07:00:00.000Z'),
  (29, 2, 20, '2023-08-02T07:00:00.000Z' ),
  (30, 2, 5, '2023-08-02T07:00:00.000Z'),
  (30, 2, 20, '2023-08-02T07:00:00.000Z' ),
  (27, 2, 5, '2023-08-02T07:00:00.000Z'),
  (31, 1, 70, '2023-08-02T07:00:00.000Z'),
  (32, 1, 5, '2023-08-02T07:00:00.000Z'),
  (33, 1, 20, '2023-08-02T07:00:00.000Z' ),
  (34, 1, 25, '2023-08-02T07:00:00.000Z'),
  (35, 1, 25, '2023-08-02T07:00:00.000Z' ),
  (36, 1, 5, '2023-08-02T07:00:00.000Z'),
  (37, 3, 20, '2023-08-02T07:00:00.000Z'),
  (38, 3, 45, '2023-08-02T07:00:00.000Z'),
  (39, 4, 70, '2023-08-02T07:00:00.000Z' ),
  (40, 4, 75, '2023-08-02T07:00:00.000Z'),
  (41, 5, 20, '2023-08-02T07:00:00.000Z' ),
  (42, 5, 65, '2023-08-02T07:00:00.000Z'),
  (43, 6, 20, '2023-08-02T07:00:00.000Z' ),
  (44, 6, 95, '2023-08-02T07:00:00.000Z');

-- products
INSERT INTO products (name, point, store, description, photo) VALUES
  ('Reusable Foldable Grocery Tote Bags', 120, 'Walmart', '4-Packs, Size: 55*33*8cm, folding into a attached pocket, maximum load: 44lb', 'product01.jpg'),
  ('Reusable K Cups For Keurig Coffee Pods', 340, 'Walmart', '2-Packs, stainless steel and 100% BPA, lead, and DEHP free', 'product02.jpg'),
  ('Reusable Silicone Sponge', 360, 'Walmart', '10-Packs, Size: 4.33"x4.33", BPA free, heat resistant to 500°F', 'product03.jpg'),
  ('Reusable Paper Towels Washable Roll', 700, 'Walmart', '48-Packs, Kitchen Paperless Paper Towels, 10" x 10", Cotton Cloth Paper Towels', 'product04.jpg'),
  ('Reusable Beeswax Food Storage Wrap', 280, 'Walmart', 'Set of Three, 7" 10" and 13" Natural Square Sheets', 'product05.jpg'),
  ('Reusable Stainless Steel Straws', 70, 'Walmart', '10.5" Long, 2 Straight + 2 Bent + 1 Brush', 'product06.jpg'),
  ('Greenzla Reusable Gallon Bags', 370, 'Superstore', '8-Packs, food-grade TPE material, 11"x10.6"', 'product07.jpg'),
  ('Reusable Air Fryer Silicone Pot', 410, 'Superstore', '3-Packs, Air Fryer Silicone Pot, 8.5"', 'product08.jpg'),
  ('Reusable Silicone Baking Mat', 360, 'Superstore', '3-Packs, Silicone Baking mat, 30 x 40 cm', 'product09.jpg');
  

-- usage
INSERT INTO usage (user_id, product_id, point_id, date) VALUES
  (1, NULL, 1, '2023-05-02T07:00:00.000Z'),
  (1, NULL, 19, '2023-06-02T07:00:00.000Z'),
  (1, 6, NULL, '2023-07-01T07:00:00.000Z'),
  (1, NULL, 21, '2023-07-02T07:00:00.000Z'),
  (1, NULL, 23, '2023-08-01T07:00:00.000Z'),
  (1, NULL, 25, '2023-08-02T07:00:00.000Z'),
  (1, NULL, 27, '2023-08-02T07:00:00.000Z'),
  (1, NULL, 29, '2023-08-04T07:00:00.000Z'),
  (1, NULL, 31, '2023-08-05T07:00:00.000Z'),
  (1, NULL, 33, '2023-08-07T07:00:00.000Z'),
  (1, NULL, 35, '2023-08-08T07:00:00.000Z'),
  (1, NULL, 37, '2023-08-09T07:00:00.000Z'),
  (1, NULL, 40, '2023-08-10T07:00:00.000Z'),
  (1, 1, NULL, '2023-08-12T07:00:00.000Z'),
  (2, NULL, 2, '2023-05-02T07:00:00.000Z'),
  (2, NULL, 20, '2023-06-02T07:00:00.000Z'),
  (2, NULL, 22, '2023-07-02T07:00:00.000Z'),
  (2, NULL, 24, '2023-08-02T07:00:00.000Z'),
  (2, NULL, 26, '2023-08-02T07:00:00.000Z'),
  (2, NULL, 28, '2023-08-02T07:00:00.000Z'),
  (2, NULL, 30, '2023-08-02T07:00:00.000Z'),
  (2, NULL, 32, '2023-08-02T07:00:00.000Z'),
  (2, NULL, 34, '2023-08-02T07:00:00.000Z'),
  (2, NULL, 36, '2023-08-02T07:00:00.000Z'),
  (2, NULL, 38, '2023-08-02T07:00:00.000Z'),
  (2, NULL, 42, '2023-08-02T07:00:00.000Z'),
  (2, 6, NULL, '2023-08-02T07:00:00.000Z');