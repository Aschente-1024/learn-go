-- name: GetEmployee :one
SELECT * FROM employee
WHERE id = $1 LIMIT 1;

-- name: ListEmployees :many
SELECT * FROM employee
ORDER BY id
LIMIT $1
OFFSET $2;

-- name: CreateEmployee :one
INSERT INTO employee (
  name, company_id
) VALUES (
  $1, $2
)
RETURNING *;

-- name: UpdateEmployee :exec
UPDATE employee
SET name = $2
WHERE id = $1;

-- name: DeleteEmployee :exec
DELETE FROM employee
WHERE id = $1;
