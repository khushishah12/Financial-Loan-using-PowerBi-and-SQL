# 🏦 Bank Loan Analysis Dashboard

A data analytics project designed to analyze and monitor **bank lending activities, loan portfolio performance, and loan quality** through an interactive dashboard.

The project focuses on transforming raw loan data into meaningful business insights that can support **portfolio management, risk assessment, lending decisions, and performance monitoring**.

---

## 📌 Project Overview

The **Bank Loan Analysis Dashboard** provides a comprehensive view of the bank's lending portfolio.

The analysis focuses on key metrics such as:

* Total loan applications
* Total funded amount
* Total amount received
* Average interest rate
* Average Debt-to-Income Ratio (DTI)
* Good loan vs. bad loan performance
* Loan status-wise analysis
* Month-to-Date (MTD) and Month-over-Month (MoM) trends

The dashboard helps stakeholders understand the overall health and performance of the bank's loan portfolio.

---

## 🎯 Objectives

The primary objectives of this project are to:

* Analyze overall loan application activity
* Monitor the amount of funds disbursed
* Track borrower repayments
* Evaluate loan portfolio quality
* Identify good and bad loans
* Analyze borrower financial health using DTI
* Monitor interest-rate trends
* Compare current performance with previous months
* Provide actionable insights through interactive visualizations

---

# 📊 Dashboard 1 — Summary

The first dashboard provides a high-level summary of the bank's loan portfolio.

## 📈 Key Performance Indicators

The dashboard tracks the following major KPIs:

### 1. Total Loan Applications

Measures the total number of loan applications received.

The dashboard also provides:

* Total applications
* Month-to-Date (MTD) applications
* Month-over-Month (MoM) change

---

### 2. Total Funded Amount

Represents the total amount of money disbursed by the bank through approved loans.

Metrics include:

* Total funded amount
* MTD funded amount
* MoM change

---

### 3. Total Amount Received

Tracks the total amount received from borrowers through loan repayments.

This metric helps evaluate the cash flow generated from the loan portfolio.

---

### 4. Average Interest Rate

Measures the average interest rate associated with the loans.

The dashboard provides:

* Overall average interest rate
* MTD average interest rate
* MoM change

---

### 5. Average Debt-to-Income Ratio

The **Debt-to-Income (DTI) ratio** helps evaluate the financial capacity of borrowers.

A lower DTI generally indicates that a borrower has less debt relative to their income.

The dashboard tracks:

* Average DTI
* MTD average DTI
* MoM change

---

## 🟢 Good Loan vs 🔴 Bad Loan Analysis

To evaluate the quality of the loan portfolio, loans are categorized based on their loan status.

### 🟢 Good Loans

Good loans consist of loans that are:

* **Fully Paid**
* **Current**

The dashboard tracks:

* Good Loan Application Percentage
* Total Good Loan Applications
* Good Loan Funded Amount
* Good Loan Amount Received

---

### 🔴 Bad Loans

Bad loans consist of loans that have been:

* **Charged Off**

The dashboard tracks:

* Bad Loan Application Percentage
* Total Bad Loan Applications
* Bad Loan Funded Amount
* Bad Loan Amount Received

This comparison helps identify the overall quality and risk associated with the bank's loan portfolio.

---

## 📋 Loan Status Analysis

The dashboard provides a detailed status-wise view of loans.

Each loan status is analyzed using metrics such as:

| Metric                | Description                                    |
| --------------------- | ---------------------------------------------- |
| Total Applications    | Number of loan applications                    |
| Funded Amount         | Total amount disbursed                         |
| Amount Received       | Total amount received from borrowers           |
| MTD Applications      | Applications received during the current month |
| MTD Funded Amount     | Amount funded during the current month         |
| MTD Amount Received   | Amount received during the current month       |
| Average Interest Rate | Average interest rate for the loans            |
| Average DTI           | Average borrower debt-to-income ratio          |

This provides a more detailed understanding of the loan portfolio.

---

## 📊 Dashboard Preview

<img width="1376" height="777" alt="image" src="https://github.com/user-attachments/assets/5d535de2-0ab0-47a8-ad39-f0e54c2e6aa7" />

```

---

## 🗂️ Dataset

The project uses the following dataset:

```text
financial_loan.csv
```

The dataset contains loan-level information required to analyze applications, funding, repayments, borrower characteristics, loan status, interest rates, and DTI.

---

## 🧠 Domain Knowledge

Understanding the loan lifecycle is essential for interpreting the dashboard correctly.

### 1. Application & Verification

The loan lifecycle begins when a borrower submits an application.

The bank evaluates information such as:

* Borrower details
* Income
* Credit information
* Existing debt
* Debt-to-Income ratio

---

### 2. Risk Assessment & Approval

The bank evaluates the borrower's creditworthiness and overall risk before approving the loan.

Factors such as credit history, DTI, loan purpose, and financial capacity may influence the decision.

---

### 3. Loan Funding

Once approved, the loan amount is disbursed to the borrower.

The funded amount represents the capital provided by the bank.

---

### 4. Repayment & Monitoring

After disbursement, borrower repayments are monitored.

Loans may eventually become:

* Current
* Fully Paid
* Charged Off

Analyzing these statuses helps the bank evaluate portfolio performance and credit risk.

---

## 🔄 Loan Lifecycle

```text
Loan Application
       ↓
Verification
       ↓
Risk Assessment
       ↓
Approval
       ↓
Loan Funding
       ↓
Repayment
       ↓
 ┌─────┴──────────┐
 ↓                ↓
Current       Fully Paid
 ↓
Charged Off
```

---

## 🛠️ Tools & Technologies

The project can be implemented using data analytics and visualization technologies such as:

* **SQL** — Data extraction and transformation
* **Power BI / BI Tool** — Dashboard creation and visualization
* **CSV** — Source dataset
* **Data Analysis** — KPI and portfolio analysis

```

## 📌 Project Status

| Component                 | Status      |
| ------------------------- | ----------- |
| Dataset Preparation       | ✅ Completed |
| Data Analysis             | ✅ Completed |
| Dashboard 1 — Summary     | ✅ Completed |
| KPI Analysis              | ✅ Completed |
| Good vs Bad Loan Analysis | ✅ Completed |
| Loan Status Analysis      | ✅ Completed |
| Additional Dashboards     | 🔄 Planned  |

---

## 🔮 Future Enhancements

Future versions of the project can include additional dashboards and advanced analytics such as:

* 📅 Monthly loan application trends
* 🌎 Regional loan distribution
* 👤 Borrower demographic analysis
* 💳 Loan-purpose analysis
* 📉 Default-risk analysis
* 📊 Detailed loan performance dashboard
* 🔍 Interactive drill-down analysis
* 📈 Advanced trend analysis
* 🤖 Predictive loan-risk modeling

---

## 💡 Business Insights

The analysis can help banking stakeholders:

* Monitor overall lending performance
* Identify changes in loan demand
* Evaluate loan portfolio quality
* Track repayment performance
* Identify potentially risky segments
* Understand borrower financial health
* Improve lending and risk-management strategies

---

## 📄 Project Documentation

Detailed project documentation covering the **Problem Statement** and **Domain Knowledge** is available in:

```text
Project_Documentation.pdf
```

---

## ⭐ Conclusion

The **Bank Loan Analysis Dashboard** transforms raw loan data into a structured analytical solution for monitoring lending performance and portfolio health.

**Dashboard 1 — Summary** establishes the foundation by providing a consolidated view of:

> **Loan Applications → Funding → Repayments → Loan Quality → Risk Indicators**

Further dashboards can build upon this foundation to provide deeper insights into borrower behavior, loan performance, and risk.

---

## 🤝 Contributions

Suggestions and improvements are welcome.

If you find this project useful, consider giving the repository a ⭐.
