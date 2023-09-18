CREATE TABLE "utilities" (
  "id" integer PRIMARY KEY,
  "title" varchar,
  "description" text,
  "status" varchar NOT NULL DEFAULT "active",
  "created_at" TIMESTAMP NOT NULL DEFAULT NOW(), 
  "modified_at" timestamp
);

CREATE TABLE "accounts" (
  "id" integer PRIMARY KEY,
  "uuid" varchar,
  "token" varchar,
  "status" varchar NOT NULL DEFAULT "active",
  "created_at" TIMESTAMP NOT NULL DEFAULT NOW(),
  "modified_at" timestamp
);