CREATE TABLE Users (
    User_id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
    Name TEXT,
    Emails TEXT,
    Blood_type TEXT,
    City TEXT,
    Phone NUMERIC,
    Role TEXT,
    last_donated_at DATE
);

CREATE TABLE Blood_request (
    Request_id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
    Raised_by TEXT,
    blood_group TEXT,
    status TEXT DEFAULT 'pending',
    urgency TEXT
);

CREATE TABLE Blood_camp (
    Camp_id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
    Location TEXT,
    Title TEXT,
    Date DATE,
    organizer_id BIGINT
);

CREATE TABLE Donors (
    Donor_id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMPTZ DEFAULT NOW() NOT NULL,
    blood_group TEXT,
    donor_name TEXT,
    City TEXT,
    Phone NUMERIC
);