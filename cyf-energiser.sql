-- create table
CREATE TABLE energisers (
id  SERIAL PRIMARY KEY,
category VARCHAR NOT null,
title VARCHAR NOT null,
description VARCHAR NOT NULL
);


INSERT INTO energisers (category, title, description) VALUES ('PhysicalMovement', 'relay races' ,'Go for a short walk as a team each afternoon. Encourage everyone to do some simple stretches/exercises at their desk. Go into the hallway and run relay races together. Clear a space and run around the office for 5 minutes, dropping to the floor to do certain exercises (e.g. push-ups, squats, or burpees).');

INSERT INTO energisers (category, title, description) VALUES ('Mental Exercise', 'Mindfulness meditation has a number of positive health benefits not limited to the mental realm. It improves immune system function, qualitatively improves interpersonal relationships, and reduces stress and anxiety. Of course, there are strictly mental benefits as well--the vast majority of regular meditative practitioners have greater focus, concentration, and mindfulness than their counterparts. Meditating itself is relatively simple; all you have to do is find someplace quiet and relaxing, and dedicate 15 minutes or longer to freeing your mind of thoughts, deliberately letting each thought go until you achieve a state of pure mindfulness');

INSERT INTO energisers (category, title, description) VALUES ('PhysicalMovement', 'relay races' ,'Go for a short walk as a team each afternoon. Encourage everyone to do some simple stretches/exercises at their desk. Go into the hallway and run relay races together. Clear a space and run around the office for 5 minutes, dropping to the floor to do certain exercises (e.g. push-ups, squats, or burpees).');

-- find all energisers fron a category
select * from energisers where category = 'PhysicalMovement';

-- find all energisers matching a keyword
select * from energisers where category ilike '%races%' or title ilike '%smthg%' or description ilike '%smthg%';

-- insert a new energiser
-- A - CATEGORY
-- B - TITLE
-- C - DESCRIPTION
-- INSERT INTO energisers ((category, title, description) VALUES (A, B, C)
INSERT INTO energisers (category, title, description) VALUES ('PhysicalMovement', 'relay races' ,'Go for a short walk as a team each afternoon. Encourage everyone to do some simple stretches/exercises at their desk. Go into the hallway and run relay races together. Clear a space and run around the office for 5 minutes, dropping to the floor to do certain exercises (e.g. push-ups, squats, or burpees).');

INSERT INTO energisers (category, title, description) VALUES ('MentalExercise', 'Mindfulness meditation has a number of positive health benefits not limited to the mental realm. It improves immune system function, qualitatively improves interpersonal relationships, and reduces stress and anxiety. Of course, there are strictly mental benefits as well--the vast majority of regular meditative practitioners have greater focus, concentration, and mindfulness than their counterparts. Meditating itself is relatively simple; all you have to do is find someplace quiet and relaxing, and dedicate 15 minutes or longer to freeing your mind of thoughts, deliberately letting each thought go until you achieve a state of pure mindfulness');

INSERT INTO energisers (category, title, description) VALUES ('PhysicalMovement', 'relay races' ,'Go for a short walk as a team each afternoon. Encourage everyone to do some simple stretches/exercises at their desk. Go into the hallway and run relay races together. Clear a space and run around the office for 5 minutes, dropping to the floor to do certain exercises (e.g. push-ups, squats, or burpees).');
=======


INSERT INTO energisers (category, title, description) VALUES ('PhysicalMovement', 'relay races' ,'Go for a short walk as a team each afternoon. Encourage everyone to do some simple stretches/exercises at their desk. Go into the hallway and run relay races together. Clear a space and run around the office for 5 minutes, dropping to the floor to do certain exercises (e.g. push-ups, squats, or burpees).');

INSERT INTO energisers (category, title, description) VALUES ('Mental Exercise', 'Mindfulness meditation has a number of positive health benefits not limited to the mental realm. It improves immune system function, qualitatively improves interpersonal relationships, and reduces stress and anxiety. Of course, there are strictly mental benefits as well--the vast majority of regular meditative practitioners have greater focus, concentration, and mindfulness than their counterparts. Meditating itself is relatively simple; all you have to do is find someplace quiet and relaxing, and dedicate 15 minutes or longer to freeing your mind of thoughts, deliberately letting each thought go until you achieve a state of pure mindfulness');

INSERT INTO energisers (category, title, description) VALUES ('PhysicalMovement', 'relay races' ,'Go for a short walk as a team each afternoon. Encourage everyone to do some simple stretches/exercises at their desk. Go into the hallway and run relay races together. Clear a space and run around the office for 5 minutes, dropping to the floor to do certain exercises (e.g. push-ups, squats, or burpees).');

SELECT * FROM energisers;
