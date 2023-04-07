DROP TABLE IF EXISTS `USERS` CASCADE;
create table USERS
(
    users_id bigint generated by default as identity,
    created_at timestamp,
    modified_at timestamp,
    email varchar(255) not null,
    gender varchar(255) not null,
    name varchar(255) not null,
    nickname varchar(255) not null,
    password varchar(255) not null,
    phone_number varchar(255) not null,
    user_state varchar(255) not null,
    username varchar(255) not null,
    primary key (users_id)
);

create table instructor (
    instructor_id bigint generated by default as identity,
    address_details varchar(255),
    address_road_name varchar(255) not null,
    address_sido varchar(255) not null,
    address_sigungu varchar(255) not null,
    instructor_state varchar(255) not null,
    users_id bigint,
    primary key (instructor_id)
);

create table lesson (
    lesson_id bigint generated by default as identity,
    center_address varchar(255) not null,
    center_name varchar(255) not null,
    end_date_time timestamp not null,
    lesson_description varchar(255) not null,
    lesson_name varchar(255) not null,
    lesson_state varchar(255) not null,
    max_enrollment integer not null,
    start_date_time timestamp not null,
    instructor_id bigint,
    primary key (lesson_id)
);

create table lesson_booking (
    lesson_booking_id bigint generated by default as identity,
    created_at timestamp not null,
    lesson_id bigint,
    users_id bigint,
    primary key (lesson_booking_id)
);