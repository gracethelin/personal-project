INSERT INTO toBuy (list_name, user_id)
VALUES ($1, $2);

SELECT * FROM toBuy tb JOIN users u ON u.user_id = tb.user_id WHERE tb.user_id = $2;