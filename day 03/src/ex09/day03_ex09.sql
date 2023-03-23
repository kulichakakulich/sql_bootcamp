INSERT INTO person_visits
VALUES (
    (SELECT MAX(id) FROM person_visits)+1,
    (SELECT id FROM person WHERE name = 'Denis'),
    (SELECT id FROM pizzeria WHERE name = 'Dominos'),
    '2022-01-24');
INSERT INTO person_visits
VALUES (
    (SELECT MAX(id) FROM person_visits)+1,
    (SELECT id FROM person WHERE name = 'Irina'),
    (SELECT id FROM pizzeria WHERE name = 'Dominos'),
    '2022-01-24');

SELECT *
FROM person_visits