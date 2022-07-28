-- QUESTÃO 1

SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

-- QUESTÃO 2

SELECT "userId" AS id, COUNT("courseId") AS educations
FROM educations 
WHERE status = 'finished'
GROUP BY "userId" 
ORDER BY COUNT("courseId") DESC;

-- QUESTÃO 3

SELECT users.name AS writer, COUNT(testimonials.message) AS testimonailCount
FROM testimonials
JOIN users
ON testimonials."writerId" = users.id
WHERE users.id = 435
GROUP BY users.name;

-- QUESTÃO 4

SELECT MAX(salary) AS maximumSalary, roles.name AS role
FROM jobs 
JOIN roles
ON jobs."roleId" = roles.id
WHERE active = true
GROUP BY roles.name
ORDER BY MAX(salary);