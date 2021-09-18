CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  register_on TIMESTAMP DEFAULT NOW(),
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

INSERT INTO users (register_on, name, email, password)

VALUES('1986-09-17','susan', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u') 
VALUES('1956-09-24','susanil', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u') 
VALUES('1986-04-17','sunakshi', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u') 
VALUES('1936-05-27','Mishi', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u') 
VALUES('1946-02-24','', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u') 
VALUES('1996-01-27','susan', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u') 
VALUES('1996-01-27','susan', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u') 
VALUES('1996-01-27','susan', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u') 
VALUES('1996-01-27','susan', 'susan@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u') 
