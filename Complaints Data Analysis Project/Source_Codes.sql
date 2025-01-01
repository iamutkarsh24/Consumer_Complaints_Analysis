-- Creation of table
Create table complaint(
Date_Received date,
Product_Name varchar(20),
Sub_Product varchar(20),
Issue text,
Sub_Issue text,
ConsumerComplaintNarrative text,
CompanyPublicResponse text,
Company varchar(20),
State_Name varchar(20),
ZipCode int,
Tags varchar(20),
ConsumerContentProvided text,
Submitter varchar(20),
Date_Send_to_company date,
CompanyResponsetoconsumer text,
Timely_Response varchar(20),
Consumer_Disputed varchar(20),
Compalaint_id int
);

select * from complaint
LIMIT 10;

-- Find out how many complaints were received and send on the same day
SELECT count(compalaint_id) as Total FROM complaint
WHERE Date_Received='2013-07-29' AND Date_Send_to_company='2013-07-30'; 

-- Extract all complaints received in the state of New York
SELECT * FROM complaint
WHERE State_Name = 'NY';

-- Extract all complaints received in the states of New York and California
SELECT * FROM complaint
WHERE State_Name = 'NY' OR State_Name = 'CA';

-- Extract all the rows with the word 'Credit' in the product field
SELECT Product_Name FROM complaint
WHERE Product_Name LIKE '%Credit%'; 

-- Extract all the rows with the word 'Late' in the issue field
SELECT Issue FROM complaint
WHERE Issue LIKE '%Late%';