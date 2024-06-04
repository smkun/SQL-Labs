-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.
psql postgres
CREATE DATABASE sql_lab2;
\c sql_lab2
-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it
DROP DATABASE IF EXISTS sql_lab2;
-- Create a computers table
-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports
CREATE TABLE devices (
    id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    cpu_speed DECIMAL(3, 2), -- assuming speed in GHz
    memory_size INTEGER, -- assuming size in MB
    price DECIMAL(10, 2), -- assuming price with two decimal places
    release_date DATE,
    photo_url TEXT,
    storage_amount INTEGER, -- assuming size in GB
    number_usb_ports INTEGER,
    number_firewire_ports INTEGER,
    number_thunderbolt_ports INTEGER
);

-- Insert 4 computers into the computers table
INSERT INTO devices (
    make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports
) VALUES
('Dell', 'XPS 13', 3.1, 8192, 999.99, '2023-01-15', 'URL GOES HERE', 256, 2, 1, 1),
('Apple', 'MacBook Pro', 2.6, 16384, 2399.00, '2022-10-18', 'URL GOES HERE', 512, 4, 2, 4),
('HP', 'Spectre x360', 2.8, 8192, 1199.99, '2023-02-10', 'URL GOES HERE', 512, 3, 0, 2),
('Lenovo', 'ThinkPad X1 Carbon', 3.0, 16384, 1499.99, '2023-03-05', 'URL GOES HERE', 1024, 2, 1, 1);

-- Select all entries from the computers table
SELECT * FROM devices;

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below
-- Alter the computers_models, removing the storage_amount column
ALTER TABLE devices
DROP COLUMN storage_amount;

-- and add storage_type and storage_size columns
ALTER TABLE devices
DROP COLUMN storage_amount;

ALTER TABLE devices
ADD COLUMN storage_type VARCHAR(50),
ADD COLUMN storage_size INTEGER;
