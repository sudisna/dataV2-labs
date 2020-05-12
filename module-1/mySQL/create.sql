USE lab_mysql;

-- Create cars table
create table cars (
    car_id      INT AUTO_INCREMENT PRIMARY KEY,
    VIN varchar(100),
    manufacturer varchar(100),
    model varchar(100),
    year varchar(4),
    color varchar(100)
);

-- Create customers table
create table customers (
    customer_ID int,
    name varchar(50), 
    phone varchar(20), 
    email varchar(100), 
    address varchar(1000), 
    city varchar(25), 
    state_province varchar(100), 
    country varchar(25), 
    zip_postal varchar(10)
);

-- Create salespersons table
create table salespersons (
    staff_ID int,
    name varchar(100),
    store varchar(100)
);

-- Create invoices table
create table invoices (
    invoice_number int,
    date varchar(100),
    car int,
    customer int,
    sales_Person int
);