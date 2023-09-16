-- create table
CREATE TABLE energisers(
    id serial PRIMARY KEY,
    category varchar NOT NULL,
    title varchar NOT NULL,
    description varchar NOT NULL
);

--
INSERT INTO energisers(category, title, description)
    VALUES ('PhysicalMovement', 'Relay Races', 'Go for a short walk as a team each afternoon. Encourage everyone to do some simple stretches/exercises at their desk. Go into the hallway and run relay races together. Clear a space and run around the office for 5 minutes, dropping to the floor to do certain exercises (e.g. push-ups, squats, or burpees).');

INSERT INTO energisers(category, title, description)
    VALUES ('MentalExercise', 'Meditation', 'Mindfulness meditation has a number of positive health benefits not limited to the mental realm. It improves immune system function, qualitatively improves interpersonal relationships, and reduces stress and anxiety. Of course, there are strictly mental benefits as well--the vast majority of regular meditative practitioners have greater focus, concentration, and mindfulness than their counterparts. Meditating itself is relatively simple; all you have to do is find someplace quiet and relaxing, and dedicate 15 minutes or longer to freeing your mind of thoughts, deliberately letting each thought go until you achieve a state of pure mindfulness');

INSERT INTO energisers(category, title, description)
    VALUES ('OnlineGames', 'Hangman', 'These are the games designed for times when we have online lessons.');

INSERT INTO energisers(category, title, description)
    VALUES ('PhysicalMovement', 'Stretching Exercises', 'Do some light and fun yoga stretches to energise our body, mind and soul.');

INSERT INTO energisers(category, title, description)
    VALUES ('MentalExercise', 'Ice-breakers with Deeper Questions', 'We connect with and learn about each other by asking from a random questions and answering them and then change partner every 10 minutes.');

INSERT INTO energisers(category, title, description)
    VALUES ('OnlineGames', 'Check in question', 'This is any facilitator’s go-to when it comes to starting (or ending) a session. With a check-in question, the group shares something that describes their current status from a new perspective. The aim is to get the group on the same page before getting on with the task at hand.Ask questions that are easy to answer. Personal questions often work, as people get to talk about something they know well: themselves. This is my favorite site for practical tips for check-in questions.');

SELECT
    *
FROM
    energisers;

TRUNCATE TABLE energisers;

