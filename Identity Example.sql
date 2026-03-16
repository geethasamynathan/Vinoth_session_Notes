-- IDENTITY

drop table customer
CREATE TABLE Customer
(c_id int primary key identity,
Name varchar(50),
Email varchar(100) unique
)

select * from Customer

insert into customer values ('Geetha','geetha@mail.com');
insert into customer values ('Yash','yash@mail.com');
insert into customer values ('Uma','uma@mail.com');
insert into customer values ('Preeti','preeti@mail.com');
insert into customer values ('Geetha','geetha@mail.com');


insert into customer values ('Prema','prema@gmail.com');


-- how to insert id manually for IDENTITY column
SET IDENTITY_INSERT Customer ON;


insert into customer (c_id,Name,Email) values (5,'Ramya','ramya@mail.com');

CREATE TABLE Seller
(c_id int primary key identity(1001,1),
Name varchar(50),
Email varchar(100)
)


insert into Seller values ('Geetha1','geetha1@mail.com');

select * from Seller
