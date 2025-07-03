CREATE TABLE users (
id SERIAL PRIMARY KEY,
name TEXT,
email TEXT UNIQUE,
password_hash TEXT,
role TEXT
);
CREATE TABLE bands (
id SERIAL PRIMARY KEY,
name TEXT,
owner_id INT REFERENCES users(id)
);
CREATE TABLE band_members (
user_id INT REFERENCES users(id),
band_id INT REFERENCES bands(id),
join_date TIMESTAMP,
status TEXT,
PRIMARY KEY (user_id, band_id)
);
CREATE TABLE events (
id SERIAL PRIMARY KEY,
band_id INT REFERENCES bands(id),
title TEXT,
start_datetime TIMESTAMP,
end_datetime TIMESTAMP,
location TEXT,
type TEXT,
notes TEXT
);
CREATE TABLE rsvps (
user_id INT REFERENCES users(id),
event_id INT REFERENCES events(id),
status TEXT,
PRIMARY KEY (user_id, event_id)
);
CREATE TABLE setlists (
id SERIAL PRIMARY KEY,
band_id INT REFERENCES bands(id),
event_id INT REFERENCES events(id),
name TEXT
);
CREATE TABLE setlist_songs (
setlist_id INT REFERENCES setlists(id),
song_order INT,
song_title TEXT,
notes TEXT,
PRIMARY KEY(setlist_id, song_order)
);
CREATE TABLE chats (
id SERIAL PRIMARY KEY,
band_id INT REFERENCES bands(id),
user_id INT REFERENCES users(id),
message TEXT,
timestamp TIMESTAMP
);
CREATE TABLE files (
id SERIAL PRIMARY KEY,
band_id INT REFERENCES bands(id),
event_id INT REFERENCES events(id),
file_type TEXT,
url TEXT,
uploaded_by INT REFERENCES users(id),
timestamp TIMESTAMP
);