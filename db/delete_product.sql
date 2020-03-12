DELETE FROM toBuy WHERE list_id = $1 AND user_id = $2;

SELECT * FROM toBuy WHERE user_id = $2