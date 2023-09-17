CREATE TABLE "utilities" (
  "id" integer PRIMARY KEY,
  "title" varchar,
  "description" text,
  "status" varchar,
  "created_at" TIMESTAMP NOT NULL DEFAULT NOW(), 
  "modified_at" timestamp
);
