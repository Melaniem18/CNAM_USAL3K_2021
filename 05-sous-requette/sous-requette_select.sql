USE usal3k_sousrequete;

SELECT id, username, email, users.role_id , role_name
FROM users JOIN roles ON users.role_id = roles.role_id;

SELECT id, username, email, users.role_id , role_name
FROM users NATURAL JOIN roles;

SELECT id, username, email, role_id
FROM users NATURAL JOIN roles 
WHERE role_name = 'admin';

SELECT role_name FROM roles WHERE role_id=2;

SELECT id, username, email, role_id,
(SELECT role_name FROM roles WHERE role_id=users.role_id) AS user_role
FROM users;

SELECT 
    role_name,
    (SELECT 
            COUNT(*)
        FROM
            users
        WHERE
            users.role_id = roles.role_id) AS nombre
FROM
    roles;

SELECT COUNT(*) AS nombre FROM users WHERE role_id=2;


