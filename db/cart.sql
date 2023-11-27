create type cart_status as enum ('OPEN', 'ORDERED');

create table carts (
	id uuid primary key not null,
	user_id uuid not null,
	created_at date not null,
	updated_at date not null,
	status cart_status not null
);

create table cart_items (
	id uuid not null primary key,
	cart_id uuid references carts(id),
	product_id uuid,
	count integer
);


insert into carts (id, user_id, created_at, updated_at, status) values
(gen_random_uuid(), gen_random_uuid(), '2023-11-28', '2023-11-28', 'OPEN'),
(gen_random_uuid(), gen_random_uuid(), '2023-11-28', '2023-11-28',  'OPEN'),
(gen_random_uuid(), gen_random_uuid(), '2023-11-28', '2023-11-28',  'ORDERED'),
(gen_random_uuid(), gen_random_uuid(), '2023-11-28', '2023-11-28',  'ORDERED');

insert into cart_items (id, cart_id, product_id, count) values
(gen_random_uuid(), '0932ejdowjfojewojfdwe0932', gen_random_uuid(), 3),
(gen_random_uuid(), '023jdiosejfoi23jfesfsefdo', gen_random_uuid(), 4),
(gen_random_uuid(), 'oef9238u0rfjoeij0fjosdooi', gen_random_uuid(), 5),
(gen_random_uuid(), 'odsfj823jr0fisoejk09f23r3', gen_random_uuid(), 6);
