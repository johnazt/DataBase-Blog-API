CREATE TABLE "users" (
    "id" SERIAL PRIMARY KEY,
    "username" varchar,
    "email" varchar NOT NULL,
    "password" varchar NOT NULL
);

insert into
    "users" (id, username, email, "password")
values
    (1, 'John', 'john@gmail.com', '123123'),
    (2, 'Alexander', 'alex@gmail.com', '234234'),
    (3, 'Liz', 'liz@gmail.com', '567567');

CREATE TABLE "posts" (
    "id" SERIAL PRIMARY KEY,
    "title" varchar,
    "description" varchar,
    "content" text,
    "category" int,
    "author" int
);

insert into
    "posts" (
        id,
        title,
        description,
        content,
        category,
        author
    )
values
    (
        1,
        'What to do on Halloween',
        'Some activities to do in Halloween',
        'Watch a scary movie. Its the easiest solution to still get your spooky fix and doesnt involve you leaving your couch.',
        2,
        2
    ),
    (
        2,
        'How to Become a Software Developer',
        'Interested in a career as a software developer? Read on for tips on how to land your first job',
        'Software developers use their programming skills to create new software and update existing applications',
        1,
        1
    );

CREATE TABLE "category" ("id" SERIAL PRIMARY KEY, "name" varchar);

insert into
    category (id, name)
values
    (1, 'Technology'),
(2, 'Terror'),
    (3, 'Crimen'),
    (4, 'Sports'),
    (5, 'Animals') CREATE TABLE "author" ("id" SERIAL PRIMARY KEY, "username" int);

insert into
    "author" (id, username)
values
    (1, 3),
    (2, 1);

CREATE TABLE "comments" (
    "id" SERIAL PRIMARY KEY,
    "username" int,
    "post" int,
    "content" text
);

insert into
    "comments" (id, username, post, content)
values
    (1, 3, 2, 'This is a great article'),
    (2, 1, 2, 'Excellent article');

ALTER TABLE
    "posts"
ADD
    FOREIGN KEY ("category") REFERENCES "category" ("id");

ALTER TABLE
    "comments"
ADD
    FOREIGN KEY ("username") REFERENCES "users" ("id");

ALTER TABLE
    "posts"
ADD
    FOREIGN KEY ("author") REFERENCES "author" ("id");

ALTER TABLE
    "comments"
ADD
    FOREIGN KEY ("post") REFERENCES "posts" ("id");

ALTER TABLE
    "author"
ADD
    FOREIGN KEY ("username") REFERENCES "users" ("id");