SELECT NOW() - INTERVAL 10 MINUTE;

INSERT INTO connected_users (id, id_user, viewed)
VALUES
(1, NOW());

UPDATE connected_users SET viewed=NOW() WHERE id_user = 1;

DELETE FROM connected_users WHERE viewed  < (NOW() - INTERVAL 10 MINUTE);

SELECT 
    *
FROM
    connected users
WHERE
    viewed > (NOW() - INTERVAL 10 MINUTE);