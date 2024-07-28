-- Create the books table
CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_name INT NOT NULL,
    genre VARCHAR(100),
    price DECIMAL(10, 2),
    quantity INT,
    FOREIGN KEY (author_name) REFERENCES authors(author_name)
);

-- Create the authors table
CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bio TEXT
);

-- Create the customers table
CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    phone VARCHAR(15),
    address TEXT
);

-- Create the orders table
CREATE TABLE IF NOT EXISTS Orders (
    order_name INT AUTO_INCREMENT PRIMARY KEY,
    customer_name INT NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(50),
    total DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the order_details table
CREATE TABLE IF NOT EXISTS Order_Details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
