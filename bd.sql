CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar UNIQUE NOT NULL,
  "description" varchar,
  "level" int NOT NULL,
  "teacher" varchar NOT NULL
);

CREATE TABLE "curse_video" (
  "id" serial PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "curso_id" int NOT NULL
);

CREATE TABLE "categories" (
  "id" serial PRIMARY KEY,
  "name" varchar UNIQUE NOT NULL
);

CREATE TABLE "videos_categorias" (
  "id" serial PRIMARY KEY,
  "categories_id" int NOT NULL,
  "curse_video_id" int NOT NULL
);

CREATE TABLE "levels" (
  "id" Serial PRIMARY KEY,
  "level" varchar UNIQUE NOT NULL
);

ALTER TABLE "videos_categorias" ADD FOREIGN KEY ("curse_video_id") REFERENCES "curse_video" ("id");

ALTER TABLE "videos_categorias" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("level") REFERENCES "levels" ("id");

ALTER TABLE "curse_video" ADD FOREIGN KEY ("curso_id") REFERENCES "courses" ("id");
