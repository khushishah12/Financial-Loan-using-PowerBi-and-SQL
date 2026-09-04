Select * from financial_loan;

Select count(id) as Total_Loan_Applications from financial_loan;

Select count(id) as MTD_Total_Loan_Applications from financial_loan 
where MONTH(issue_date)=12; 
--as this data is from 2021 and curdate will have 2026 so we assume the latest date and month for calculating month to date that is december--

SELECT
    current_month - previous_month AS MoM_Change,
    ROUND(
        (current_month - previous_month) * 100.0 / previous_month,
        2
    ) AS MoM_Percentage
FROM (
    SELECT
        COUNT(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 12
            THEN id
        END) AS current_month,

        COUNT(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 11
            THEN id
        END) AS previous_month
    FROM financial_loan
) x;

Select SUM(loan_amount) as total_funded_Amount from financial_loan;

Select SUM(loan_amount) as total_month_to_date_funded_Amount from financial_loan where month(issue_date)=12 and year(issue_date)=2021;

SELECT
    current_month - previous_month AS MoM_Change,
    ROUND(
        (current_month - previous_month) * 100.0 / previous_month,
        2
    ) AS MoM_Percentage
FROM (
    SELECT
        SUM(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 12
            THEN loan_Amount
        END) AS current_month,

        SUM(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 11
            THEN loan_amount
        END) AS previous_month
    FROM financial_loan
) x;

Select SUM(total_payment) as total_received_Amount from financial_loan;

Select SUM(total_payment) as total_month_to_date_received_Amount from financial_loan where month(issue_date)=12 and year(issue_date)=2021;

SELECT
    current_month - previous_month AS MoM_Change,
    ROUND(
        (current_month - previous_month) * 100.0 / previous_month,
        2
    ) AS MoM_Percentage
FROM (
    SELECT
        SUM(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 12
            THEN total_payment
        END) AS current_month,

        SUM(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 11
            THEN total_payment
        END) AS previous_month
    FROM financial_loan
) x;

Select ROUND(AVG(int_rate),4) * 100 as Avg_Interest_Rate from financial_loan ;

Select ROUND(AVG(int_rate),4) * 100 as total_month_to_date_funded_Amount from financial_loan where month(issue_date)=12 and year(issue_date)=2021;

SELECT
    current_month - previous_month AS MoM_Change,
    ROUND(
        (current_month - previous_month) * 100.0 / previous_month,
        2
    ) AS MoM_Percentage
FROM (
    SELECT
        ROUND(AVG(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 12
            THEN int_rate
        END), 4) AS current_month,

        ROUND(AVG(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 11
            THEN int_rate
        END), 4) AS previous_month

    FROM financial_loan
) x;

Select ROUND(AVG(dti),4) * 100 as Avg_DTI_Rate from financial_loan ;

Select ROUND(AVG(dti),4) * 100 as Avg_month_to_date_DTI_Rate from financial_loan where month(issue_date)=12 and year(issue_date)=2021;

SELECT
    current_month - previous_month AS MoM_Change,
    ROUND(
        (current_month - previous_month) * 100.0 / previous_month,
        2
    ) AS MoM_Percentage
FROM (
    SELECT
        ROUND(AVG(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 12
            THEN dti
        END), 4) AS current_month,

        ROUND(AVG(CASE
            WHEN YEAR(issue_date) = 2021
             AND MONTH(issue_date) = 11
            THEN dti
        END), 4) AS previous_month

    FROM financial_loan
) x;

--Good loan application percentage--
select 
    count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100.0
    /
    count(id)
    as good_loan_percentage
from financial_loan;

select count(id) as good_loan_applications from financial_loan where loan_status = 'Fully Paid' or loan_status = 'Current' ;

select sum(loan_amount) as good_loan_funded_amount from financial_loan 
where loan_status = 'Fully paid' or loan_status = 'Current'; 

select sum(total_payment) as good_loan_received_amount from financial_loan 
where loan_status = 'Fully paid' or loan_status = 'Current'; 

--bad loan application percentage--
select 
    count(case when loan_status = 'Charged off' then id end)*100.0 /
    count(id)
    as bad_loan_percentage
from financial_loan;

select count(id) as bad_loan_applications from financial_loan where loan_status = 'charged off';

select sum(loan_amount) as bad_loan_funded_amount from financial_loan 
where loan_status = 'Charged off'; 

select sum(total_payment) as bad_loan_received_amount from financial_loan 
where loan_status = 'Charged off';

select loan_status,
       count(id) as Total_loan_applications,
       sum(total_payment) as Total_amount_received,
       sum(loan_amount) as Total_Funded_Amount,
       AVG(int_rate*100) as Interest_Rate,
       AVG(dti*100) as DTI
from financial_loan
group by loan_status;

select loan_status,
       count(id) as MTD_Total_loan_applications,
       sum(total_payment) as MTD_Total_amount_received,
       sum(loan_amount) as MTD_Total_Funded_Amount,
       AVG(int_rate*100) as MTD_Interest_Rate,
       AVG(dti*100) as MTD_DTI
from financial_loan
where month(issue_date)=12
group by loan_status;

--Monthly Trends by issue date--
select
    month(issue_date) as month_number,
    datename(month,issue_date) as month_name,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from financial_loan
group by month(issue_date),datename(month,issue_date)
order by month(issue_date);

--regional analysis by state--
select
    address_state,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from financial_loan
group by address_state
order by address_state;

--loan term analysis--
select
    term,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from financial_loan
group by term
order by term;

--employee length analysis--
select
    emp_length,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from financial_loan
group by emp_length
order by emp_length;

--loan purpose breakdown--
select
    purpose,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from financial_loan
group by purpose
order by count(id);

--home ownership analysis--
select
    home_ownership,
    count(id) as total_loan_applications,
    sum(loan_amount) as total_funded_amount,
    sum(total_payment) as total_received_amount
from financial_loan
group by home_ownership
order by count(id);