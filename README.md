# SQL Data Warehouse Project 🚀
### Based on the DataWithBaraa curriculum

Welcome to my SQL Data Warehouse project repository!

This project is a hands-on data engineering portfolio built following the **DataWithBaraa** course. It covers the full journey from raw CSV ingestion all the way to business-ready analytics using the **Medallion Architecture** on SQL Server.

---

## 🏗️ Data Architecture

This project follows the **Medallion Architecture** with three layers:

```
CSV Files (Source)
      ↓
🥉 Bronze Layer  →  Raw data as-is, no transformations
      ↓
🥈 Silver Layer  →  Cleaned, standardized, and normalized data
      ↓
🥇 Gold Layer    →  Business-ready Star Schema for reporting
```

| Layer | Purpose |
|---|---|
| **Bronze** | Ingests raw CSV files using `BULK INSERT`. Data is stored as-is with no changes. Tables are truncated and reloaded on each run. |
| **Silver** | Cleans and standardizes the bronze data. Handles NULLs, trims whitespace, normalizes values using `CASE`, applies business rules, and adds metadata columns. |
| **Gold** | Models data into Fact and Dimension tables using a Star Schema. Optimized for analytical queries and reporting. |

---

## 📋 Project Overview

This project covers:

- **Data Architecture** — Designing a modern data warehouse using Medallion Architecture
- **ETL Pipelines** — Extracting raw CSVs, transforming them through Silver, loading into Gold
- **Data Modeling** — Building Fact and Dimension tables for analytical queries
- **Data Quality** — Validating completeness, consistency, and accuracy at each layer
- **Analytics & Reporting** — Writing SQL-based reports for business insights

---

## 🛠️ Tools & Resources

> Everything used in this project is free!

| Tool | Purpose |
|---|---|
| **SQL Server Express** | Lightweight database server to host the warehouse |
| **SSMS (SQL Server Management Studio)** | GUI for writing and managing SQL scripts |
| **Git & GitHub** | Version control and project management |
| **DrawIO** | Designing data architecture and flow diagrams |
| **Notion** | Project planning and documentation |
| **DataWithBaraa** | Course and dataset source |

---

## 📁 Repository Structure

```
sql-datawarehouse-project/
│
├── datasets/                        # Raw source CSV files
│
├── docs/                            # Project documentation
│   ├── data_architecture.drawio     # Medallion architecture diagram
│   ├── data_catalog.md              # Field descriptions and metadata
│   ├── data_flow.drawio             # End-to-end data flow diagram
│   ├── data_models.drawio           # Star schema model diagram
│   ├── naming_conventions.md        # Table, column, and file naming rules
│
├── scripts/                         # All SQL scripts
│   ├── bronze/                      # Raw ingestion scripts (BULK INSERT)
│   ├── silver/                      # Cleaning and transformation scripts
│   ├── gold/                        # Star schema and reporting model scripts
│
├── tests/                           # Data quality checks and test scripts
│
├── README.md                        # You are here
├── LICENSE                          # License info
├── .gitignore                       # Files ignored by Git
└── requirements.txt                 # Project dependencies
```

---

## 🎯 Project Requirements

### Data Engineering — Building the Warehouse

**Objective:**
Build a modern data warehouse using SQL Server to consolidate raw CRM and ERP source data, making it ready for analytical reporting.

**Specifications:**
- **Data Source:** CRM and ERP system CSV files provided by DataWithBaraa
- **Data Quality:** Cleanse and resolve quality issues before loading into Silver
- **Integration:** Consolidate all source tables into a single, clean data model
- **Scope:** Latest dataset only — no historization required
- **Documentation:** Maintain a data catalog and clear naming conventions

---

### Analytics & Reporting — Business Intelligence

**Objective:**
Deliver SQL-based analytics to provide insights into:

- 👥 **Customer Behavior** — Segmentation, demographics, purchase patterns
- 📦 **Product Performance** — Top products, categories, returns
- 📈 **Sales Trends** — Revenue over time, monthly comparisons, growth rates

---

## 🔗 References

- 📺 [DataWithBaraa — SQL Data Warehouse Course](https://www.youtube.com/watch?v=SSKVgrwhzus)
- 📖 [SQL Server Documentation](https://learn.microsoft.com/en-us/sql/sql-server/)
- 🛠️ [SQL Server Express — Free Download](https://www.microsoft.com/en-us/sql-server/sql-server-downloads)
- 💻 [SSMS — Free Download](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)

---
