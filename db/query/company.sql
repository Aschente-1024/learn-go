-- name: GetCompany :one
SELECT * FROM company
WHERE id = $1 LIMIT 1;

-- name: ListCompanies :many
SELECT * FROM company
ORDER BY id
LIMIT $1
OFFSET $2;

-- name: CreateCompany :one
INSERT INTO company (
    company_name
) VALUES (
  $1
)
RETURNING *;

-- name: UpdateCompany :exec
UPDATE company
SET company_name = $2
WHERE id = $1;

-- name: DeleteCompany :exec
DELETE FROM company
WHERE id = $1;
