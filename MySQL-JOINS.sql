
-- To establish a relationship between the CUSTOMER and PRODUCT tables, we should add the P_ID as a foreign key in the CUSTOMER table. 
-- However, typically, you'd have the P_ID in an order or purchase table to link customers to the products they buy.

-- If you want to keep the P_ID in the CUSTOMER table for a one-to-one relationship, here’s how you can set it up, along with a join query.

-- Step 1: Create Tables with Foreign Key
-- Here’s how you can create the CUSTOMER and PRODUCT tables:

CREATE TABLE CUSTOMER(
    C_ID INT PRIMARY KEY,
    C_NAME VARCHAR(25),
    C_CONTACT INT,
    C_ADDRESS VARCHAR(50),
    P_ID INT,
    FOREIGN KEY (P_ID) REFERENCES PRODUCT(P_ID)  -- Link to PRODUCT
);

CREATE TABLE PRODUCT(
    P_ID INT PRIMARY KEY,
    P_NAME VARCHAR(25),
    P_TITLE VARCHAR(50),
    P_DESCRIPTION VARCHAR(225)
);

-- Step 2: Example Join Query
-- To join these tables and retrieve customer and product information, you can use the following SQL query:

SELECT 
    C.C_NAME,
    C.C_CONTACT,
    C.C_ADDRESS,
    P.P_NAME,
    P.P_TITLE,
    P.P_DESCRIPTION
FROM 
    CUSTOMER C
JOIN 
    PRODUCT P ON C.P_ID = P.P_ID;
