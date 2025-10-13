# 🧠 AWS Data Analytics Pipeline using S3, Glue, Athena & QuickSight  

## 📘 Project Overview  
This project demonstrates how to build a **serverless data analytics pipeline** on AWS that ingests raw data into Amazon S3, catalogs it using AWS Glue, queries it with Amazon Athena, and visualizes insights through Amazon QuickSight.  

The goal is to transform raw data into meaningful business intelligence dashboards — **without managing any servers or infrastructure.**

---

## 🏗️ Architecture Diagram  
![AWS Data Pipeline Architecture](flowchart.png)

### **Architecture Flow**
1. **IAM User** – Provides access to AWS services with appropriate permissions.  
2. **Amazon S3** – Acts as a data lake storing raw CSV or JSON files.  
3. **AWS Glue** – Crawls and catalogs S3 data to create a metadata store (Data Catalog).  
4. **AWS Athena** – Performs SQL-based analysis directly on S3 data using the Glue Data Catalog.  
5. **Amazon QuickSight** – Connects to Athena to visualize analytical insights and build dashboards.  

---

## ⚙️ AWS Services Used  

| Service | Purpose |
|----------|----------|
| **IAM** | User authentication & permissions management |
| **Amazon S3** | Central data lake for raw data storage |
| **AWS Glue** | Data Catalog creation & ETL (Extract, Transform, Load) |
| **Amazon Athena** | Serverless querying using SQL |
| **Amazon QuickSight** | Data visualization and dashboard creation |

---

## 🚀 Step-by-Step Implementation  

### 🧩 Step 1: IAM Setup  
- Created an IAM user with full access to **S3**, **Glue**, **Athena**, and **QuickSight**.  
- Configured programmatic access using access keys to upload data to S3.

### 🪣 Step 2: Data Ingestion in S3  
- Uploaded datasets (e.g., `sales_data.csv`) into an S3 bucket.  
- Example structure:  

