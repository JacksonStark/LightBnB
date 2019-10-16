INSERT INTO users (name, email)
VALUES ('Jackson Stark', 'jackysS@sasktel.net'),
       ('Austin Stark', 'aussieS@outlook.com'),
       ('Chloe Stark', 'chloboS@hotmail.com'),
       ('Tessa Stark', 'tessayS@msn.net');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1, 'Lions Manor', 'description', 'http://www.grievehome.com/uploads/1/9/0/1/19011959/6826737_orig.jpg', 'http://www.grievehome.com/uploads/1/9/0/1/19011959/8943067_orig.jpg', 111.22, 6, 3, 4, 'Sweden', '321 Burrdown Way', 'Kilcher', 'Nether', 937482, true),
       (2, 'Tigers Manor', 'description', 'http://www.grievehome.com/uploads/1/9/0/1/19011959/2571267_orig.jpg', 'http://www.grievehome.com/uploads/1/9/0/1/19011959/5697822_orig.jpg', 555.66, 3, 8, 2, 'Hungary', '495 Victors Ct', 'Budapest', 'Shrellang', 638165, true),
       (3, 'Pandas Manor', 'description', 'http://www.grievehome.com/uploads/1/9/0/1/19011959/1711796_orig.jpg', 'http://www.grievehome.com/uploads/1/9/0/1/19011959/3774643_orig.jpg', 333.44, 4, 9, 3, 'Poland', '323 Founders Cres', 'Krakow', 'Mingalon', 739543, true),
       (4, 'Seals Manor', 'description', 'http://www.grievehome.com/uploads/1/9/0/1/19011959/7811728_orig.jpg', 'http://www.grievehome.com/uploads/1/9/0/1/19011959/56749_orig.jpg', 222.33, 1, 3, 8, 'New Zealand', '888 Ascencion Blvd', 'Devic', 'Highrain', 396748, true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES (DATE '2019-01-03', DATE '2020-04-06', 4, 1),
       (DATE '2019-07-09', DATE '2020-03-09', 3, 2),
       (DATE '2020-04-04', DATE '2021-07-01', 2, 3),
       (DATE '2020-03-02', DATE '2021-08-05', 1, 4);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 4, 1, 5, 'message'),
       (2, 3, 2, 2, 'message'),
       (3, 2, 3, 4, 'message'),
       (4, 1, 4, 3, 'message');