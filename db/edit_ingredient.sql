UPDATE toBuy 
SET list_name = $1
WHERE list_id=$2;

SELECT * FROM toBuy;