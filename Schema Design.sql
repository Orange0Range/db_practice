---Part One: Medical Center---
CREATE TABLE doctors
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  specialty TEXT NOT NULL,
);

CREATE TABLE patients
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  birth_date DATE NOT NULL
);

CREATE TABLE patients_doctors
{
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients ON DELETE CASCADE,
  doctor_id INTEGER REFERENCES doctors ON DELETE CASCADE
}

CREATE TABLE diseases
(
  id SERIAL PRIMARY KEY,
  disease TEXT NOT NULL
);

CREATE TABLE patients_diseases
(
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients ON DELETE CASCADE,
  disease_id INTEGER REFERENCES diseases ON DELETE CASCADE
);

---Part Two: Craigslist---
CREATE TABLE regions
{
    id SERIAL PRIMARY KEY, 
    place text NOT NULL
}

CREATE TABLE categories
{
    id SERIAL PRIMARY KEY, 
    catagory TEXT UNIQUE NOT NULL
}

CREATE TABLE users
{
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,  
    pref_region_id INTEGER REFERENCES regions ON DELETE CASCADE
}

CREATE TABLE posts
{
    id SERIAL PRIMARY KEY, 
    title TEXT NOT NULL, 
    user_id INTEGER REFERENCES users ON DELETE CASCADE,
    locations TEXT, 
    post_region_id INTEGER REFERENCES regions ON DELETE CASCADE,
    category_id INTEGER REFERENCES categories ON DELETE CASCADE
}

---Part Three: Soccer League---
CREATE TABLE teams
{
    id SERIAL PRIMARY KEY,
    team TEXT UNIQUE NOT NULL
}

CREATE TABLE players
{
    id SERIAL PRIMARY KEY,
    team_id INTEGER REFERENCES teams,
    player TEXT NOT NULL
}

CREATE TABLE referees
{
    id SERIAL PRIMARY KEY,
    referee TEXT NOT NULL
}

CREATE TABLE games
{
    id SERIAL PRIMARY KEY,
    team1 INTEGER REFERENCES teams on DELETE CASCADE,
    team2 INTEGER REFERENCES teams on DELETE CASCADE,
    ref1 INTEGER REFERENCES referees on DELETE CASCADE,
    ref2 INTEGER REFERENCES referees on DELETE CASCADE,
    ref3 INTEGER REFERENCES referees on DELETE CASCADE,
    ref4 INTEGER REFERENCES referees on DELETE CASCADE
}

CREATE TABLE goals
{
    id SERIAL PRIMARY KEY,
    game_id INTEGER REFERENCES games on DELETE CASCADE,
    player_id INTEGER REFERENCES games on DELETE CASCADE,
}

CREATE TABLE dates
{
    id SERIAL PRIMARY KEY,
    begin_date DATE NOT NULL,
    end_date DATE NOT NULL,
}

CREATE TABLE standings
{
    id SERIAL PRIMARY KEY,
    team_id INTEGER UNIQUE REFERENCES teams 
}




