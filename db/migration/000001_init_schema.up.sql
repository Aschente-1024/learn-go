CREATE TABLE "company" (
  "id" serial PRIMARY KEY,
  "company_name" text NOT NULL
);

CREATE TABLE "employee" (
  "id" serial PRIMARY KEY,
  "name" text NOT NULL,
  "company_id" int NOT NULL
);

ALTER TABLE "employee" ADD FOREIGN KEY ("company_id") REFERENCES "company" ("id");
