
-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."pizza" add column "updated_at" timestamptz
--  null default now();

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."pizza" add column "created_at" timestamptz
--  null default now();

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."pizza" add column "original_friend" integer
--  not null;

alter table "public"."friend" alter column "name" drop not null;
alter table "public"."friend" add column "name" text;

alter table "public"."friend" alter column "username" drop not null;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."friend" add column "password" text
--  null;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- alter table "public"."friend" add column "username" text
--  null unique;

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- INSERT into friend (name) VALUES ('PETER');
-- INSERT into friend (name) VALUES ('PAUL');
-- INSERT into friend (name) VALUES ('MARY');

-- Could not auto-generate a down migration.
-- Please write an appropriate down migration for the SQL below:
-- CREATE TABLE "pizza_topping"(
--     "id" SERIAL NOT NULL,
--     "title" TEXT NOT NULL,
--     "emoji" TEXT NOT NULL,
--     "available" BOOLEAN NOT NULL
-- );
-- ALTER TABLE
--     "pizza_topping" ADD PRIMARY KEY("id");
-- CREATE TABLE "pizza_order"(
--     "id" SERIAL NOT NULL,
--     "friend_id" INTEGER NOT NULL,
--     "pizza_id" INTEGER NOT NULL
-- );
-- ALTER TABLE
--     "pizza_order" ADD PRIMARY KEY("id");
-- CREATE TABLE "pizza_topping_pizza"(
--     "id" SERIAL NOT NULL,
--     "pizza_id" INTEGER NOT NULL,
--     "pizza_topping_id" INTEGER NOT NULL
-- );
-- ALTER TABLE
--     "pizza_topping_pizza" ADD PRIMARY KEY("id");
-- CREATE TABLE "friend"(
--     "id" SERIAL NOT NULL,
--     "name" TEXT NOT NULL
-- );
-- ALTER TABLE
--     "friend" ADD PRIMARY KEY("id");
-- CREATE TABLE "pizza"(
--     "id" SERIAL NOT NULL,
--     "title" INTEGER NOT NULL
-- );
-- ALTER TABLE
--     "pizza" ADD PRIMARY KEY("id");
-- ALTER TABLE
--     "pizza" ADD CONSTRAINT "pizza_title_unique" UNIQUE("title");
-- ALTER TABLE
--     "pizza_order" ADD CONSTRAINT "pizza_order_pizza_id_foreign" FOREIGN KEY("pizza_id") REFERENCES "pizza"("title");
-- ALTER TABLE
--     "pizza_order" ADD CONSTRAINT "pizza_order_friend_id_foreign" FOREIGN KEY("friend_id") REFERENCES "friend"("id");
-- ALTER TABLE
--     "pizza_topping_pizza" ADD CONSTRAINT "pizza_topping_pizza_pizza_id_foreign" FOREIGN KEY("pizza_id") REFERENCES "pizza"("id");
-- ALTER TABLE
--     "pizza_topping_pizza" ADD CONSTRAINT "pizza_topping_pizza_pizza_topping_id_foreign" FOREIGN KEY("pizza_topping_id") REFERENCES "pizza_topping"("id");
