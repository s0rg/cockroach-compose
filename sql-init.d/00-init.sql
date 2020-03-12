CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;

CREATE TABLE IF NOT EXISTS demo(
    id BIGSERIAL PRIMARY KEY,
    status INT,
    string TEXT,
    doc JSONB
);
