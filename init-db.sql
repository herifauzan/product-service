CREATE TABLE IF NOT EXISTS "Products" (
    "Id" SERIAL PRIMARY KEY,
    "Name" VARCHAR(255) NOT NULL,
    "Description" TEXT,
    "Price" DECIMAL(10, 2) NOT NULL,
    "Stock" INT DEFAULT 0
);
INSERT INTO "Products" ("Name", "Description", "Price", "Stock") VALUES
('Product A', 'Description for Product A', 19.99, 100),
('Product B', 'Description for Product B', 29.99, 150),
('Product C', 'Description for Product C', 39.99, 200);