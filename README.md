# ✈️ Airport & Flight Data Analysis (SQL)

## 📌 Project Overview

This project analyzes airport and flight data using SQL to extract meaningful insights such as busiest airports, popular routes, airline performance, and delay trends.

---

## 🎯 Objectives

* Analyze flight operations and airport traffic
* Identify top routes and busiest airports
* Evaluate airline performance and revenue
* Understand delay patterns

---

## 🗂️ Datasets Used

### 1. Airports Dataset

* airport_id
* airport_name
* city
* country
* IATA_code

### 2. Flights Dataset

* flight_id
* airline
* origin_airport
* destination_airport
* price
* duration
* distance
* status

---

## 🔗 Data Relationship

* `origin_airport` ↔ `IATA_code`
* `destination_airport` ↔ `IATA_code`

Used JOIN operations to connect both datasets.

---

## 🛠️ Tools & Technologies

* SQL (MySQL)
* Python (Matplotlib)

---

## 🔍 Key SQL Concepts Used

* SELECT, WHERE
* JOIN (INNER JOIN) 🔥
* GROUP BY, ORDER BY
* Aggregate Functions (COUNT, SUM, AVG)
* Subqueries
* Window Functions (RANK)

---

## 📊 Key Analysis

* Busiest airports based on flight count
* Most frequent flight routes
* Airline revenue and pricing trends
* Delay percentage analysis
* Flight duration and distance comparison

---

## 📈 Visualization

Used Python (Matplotlib) to create:

* Flight status distribution (Bar chart)
* Airline performance charts
* Price distribution (Histogram)
* Distance vs Price (Scatter plot)

---

## 💡 Key Insights

* Certain airports handle higher traffic than others
* Few routes dominate overall traffic
* Airline pricing impacts revenue significantly
* Delay percentage highlights operational inefficiencies

---

## ⚠️ Challenges

* Understanding JOIN logic
* Handling missing and duplicate data
* Writing optimized queries

---

## 🧠 Learning Outcomes

* Strong understanding of SQL queries and JOINs
* Improved data analysis and problem-solving skills
* Experience working with real-world datasets

---

## 🚀 Conclusion

This project demonstrates the ability to analyze large datasets using SQL and generate business insights, making it a strong addition to a data analyst resume.
