CREATE TABLE IF NOT EXISTS invoices(
 InvoiceId SERIAL PRIMARY KEY,
 CustomerId INT,
 InvoiceDate DATE,
 BillingAddress VARCHAR(100),
 BillingCity VARCHAR(20),
 BillingState VARCHAR(10),
 BillingCountry VARCHAR(20),
 BillingPostalCode VARCHAR(20),
 Total real
);

DROP TABLE invoices

SELECT *
From invoices;