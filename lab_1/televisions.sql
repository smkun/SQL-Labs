-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.
CREATE
-- In case there is already a televisions table, drop it
DROP TABLE IF EXISTS televisions;

-- Create a televisions table
--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url
CREATE TABLE televisions (
    id SERIAL PRIMARY KEY,
    model_name VARCHAR(100),
    screen_size DECIMAL(4, 1), -- assuming size in inches
    resolution VARCHAR(20), -- assuming resolution format like '1080p', '4K'
    price DECIMAL(10, 2), -- assuming price with two decimal places
    release_date DATE,
    photo_url TEXT
);

-- Insert 4 televisions into the tv_models table
INSERT INTO televisions (
    model_name, screen_size, resolution, price, release_date, photo_url
) VALUES
('Samsung QLED', 55.0, '4K', 999.99, '2023-01-15', 'URL GOES HERE'),
('LG OLED', 65.0, '4K', 1799.99, '2022-10-18', 'URL GOES HERE'),
('Sony Bravia', 50.0, '1080p', 599.99, '2023-02-10', 'URL GOES HERE'),
('Vizio Smart TV', 43.0, '4K', 349.99, '2023-03-05', 'URL GOES HERE');

-- Select all entries from the tv_models table
SELECT * FROM televisions;

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below
-- Alter the tv_models, removing the resolution column
ALTER TABLE televisions
DROP COLUMN resolution;

--  and add vertical_resolution and horizontal_resolution columns
ALTER TABLE televisions
DROP COLUMN resolution;

ALTER TABLE televisions
ADD COLUMN vertical_resolution INTEGER,
ADD COLUMN horizontal_resolution INTEGER;
