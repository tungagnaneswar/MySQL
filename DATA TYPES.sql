
-- 1. Numeric Data Types
-- Integer Types:
-- TINYINT: 1-byte storage, range: -128 to 127 (signed) or 0 to 255 (unsigned).
-- SMALLINT: 2-byte storage, range: -32,768 to 32,767 (signed) or 0 to 65,535 (unsigned).
-- MEDIUMINT: 3-byte storage, range: -8,388,608 to 8,388,607 (signed) or 0 to 16,777,215 (unsigned).
-- INT/INTEGER: 4-byte storage, range: -2,147,483,648 to 2,147,483,647 (signed) or 0 to 4,294,967,295 (unsigned).
-- BIGINT: 8-byte storage, range: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 (signed) or 0 to 18,446,744,073,709,551,615 (unsigned).

-- Floating-Point Types:
-- FLOAT: Approximate values, 4 bytes, range: ±3.402823466E+38.
-- DOUBLE (or REAL): Approximate values, 8 bytes, range: ±1.7976931348623157E+308.
-- Fixed-Point Type:
-- DECIMAL (or NUMERIC): Exact values with fixed precision and scale. Stored as a string for precision.
-- ----------------------------------------------------------------------------------------------------
-- 2. Date and Time Data Types
-- DATE: Stores date values, format: YYYY-MM-DD, range: 1000-01-01 to 9999-12-31.
-- DATETIME: Stores date and time, format: YYYY-MM-DD HH:MM:SS, range: 1000-01-01 00:00:00 to 9999-12-31 23:59:59.
-- TIMESTAMP: Stores date and time, format: YYYY-MM-DD HH:MM:SS. Represents seconds since 1970-01-01 00:00:01 UTC.
-- TIME: Stores time values, format: HH:MM:SS, range: -838:59:59 to 838:59:59.
-- YEAR: Stores year values in YYYY format, range: 1901 to 2155.
-- ----------------------------------------------------------------------------------------------------
-- 3. String Data Types
-- CHAR(n): Fixed-length string, max length: 255 characters.

-- VARCHAR(n): Variable-length string, max length: 65535 characters (depending on row size).

-- TEXT Types:

-- TINYTEXT: Max length: 255 bytes.
-- TEXT: Max length: 65,535 bytes.
-- MEDIUMTEXT: Max length: 16,777,215 bytes.
-- LONGTEXT: Max length: 4,294,967,295 bytes.
-- BLOB Types (Binary Large Objects):

-- TINYBLOB: Max length: 255 bytes.
-- BLOB: Max length: 65,535 bytes.
-- MEDIUMBLOB: Max length: 16,777,215 bytes.
-- LONGBLOB: Max length: 4,294,967,295 bytes.
-- ENUM: String object with predefined values, max: 65,535 distinct values.

-- SET: String object that allows multiple predefined values, max: 64 members.
-- ----------------------------------------------------------------------------------------------------


CREATE TABLE DataTypesTable (
    -- Numeric Data Types
    id INT AUTO_INCREMENT PRIMARY KEY,               -- Integer (Primary Key)
    tiny_number TINYINT,                             -- Tiny integer
    small_number SMALLINT,                           -- Small integer
    medium_number MEDIUMINT,                         -- Medium integer
    big_number BIGINT,                               -- Big integer
    float_number FLOAT(10, 2),                       -- Floating point number
    double_number DOUBLE(16, 4),                     -- Double precision number
    decimal_number DECIMAL(10, 2),                   -- Fixed-point number

    -- Date and Time Data Types
    created_date DATE,                               -- Date
    created_time TIME,                               -- Time
    created_datetime DATETIME,                      -- Date and time
    created_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Timestamp
    created_year YEAR,                               -- Year

    -- String Data Types
    fixed_string CHAR(10),                           -- Fixed-length string
    variable_string VARCHAR(255),                   -- Variable-length string
    short_text TINYTEXT,                             -- Tiny text
    long_text TEXT,                                  -- Long text
    medium_blob MEDIUMBLOB,                          -- Medium binary data
    enum_column ENUM('Option1', 'Option2', 'Option3'), -- Enum with predefined values
    set_column SET('Value1', 'Value2', 'Value3')     -- Set with multiple options
);
