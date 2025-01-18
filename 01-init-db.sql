-- 01-init-db.sql
-- Create tables
CREATE TABLE IF NOT EXISTS motion_events (
id SERIAL PRIMARY KEY,
start_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
end_timestamp TIMESTAMP DEFAULT NULL,
file_path VARCHAR(255) DEFAULT NULL,
size_kb INT DEFAULT NULL
);
-- Insert notional security events data
INSERT INTO motion_events (id, start_timestamp, end_timestamp, file_path, size_kb) VALUES
(1, '2021-01-01 00:00:00', '2021-01-01 00:01:00', '/path/to/file1.jpg', 100),
(2, '2021-01-01 00:01:00', '2021-01-01 00:02:00', '/path/to/file2.jpg', 200),
(3, '2021-01-01 00:02:00', '2021-01-01 00:03:00', '/path/to/file3.jpg', 300),
(4, '2021-01-01 00:03:00', '2021-01-01 00:04:00', '/path/to/file4.jpg', 400),
(5, '2021-01-01 00:04:00', '2021-01-01 00:05:00', '/path/to/file5.jpg', 500);
