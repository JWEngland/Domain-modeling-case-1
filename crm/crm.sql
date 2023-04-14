-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activity;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS industry_memberships;
-- CREATE TABLES
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fname TEXT,
    lname TEXT,
    title TEXT,
    email TEXT,
    company TEXT,
    phone_number TEXT
);

CREATE TABLE activity(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contact_id INTEGER,
    activity TEXT, 
    date TEXT, 
    notes TEXT
);

CREATE TABLE companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT,
    contact_id INTEGER, 
    industy TEXT
);

CREATE TABLE salespeople(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fname TEXT,
    lname TEXT, 
    email TEXT
)

CREATE TABLE industry_memberships(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    industry_id INTEGER
)