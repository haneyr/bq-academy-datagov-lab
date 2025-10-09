# bq-academy-datagov-lab


# BigQuery Data Governance Labs/Workshop

In this set of labs, you'll see how easy it is to find your data, track its journey, and learn important details about it using Dataplex's features.

## Prerequisites:
1. A GCP Project (a fresh empty project is recommended)
2. A VPC Network and Subnetwork
3. Firewall rules and a network gateway to enable download of python packages
4. Enable Required Services:

[prerequisites.sh](./prerequisites.sh) will create this prerequisites for you. <BR>
<BR>
* To Run the prequisites script:
```
Open Cloud Shell (or use a terminal from your desktop)
Make sure you are in the project where you want to run the demo
Clone the repository: git clone https://github.com/haneyr/bq-academy-datagov-lab
cd ~ bq-academy-datagov-lab
chmod +x prerequisites.sh
./prerequisites.sh 
```

**Usage Notes:**

* You can run the notebooks in this repository by uploading them to BigQuery and running them directly there.

## Notebook Deep Dive

Each notebook covers a different aspect of data governance using Dataplex. You'll get hands-on experience with metadata management, data quality, and lineage tracking.

### 00 - Dataplex Universal Catalog Introduction
**Duration:** ~10 minutes
**Technologies:** Catalog, Search, Entries, Aspects
**[View Notebook](./00%20-%20Dataplex%20Universal%20Catalog%20Introduction.ipynb)**

**What You'll Learn:**
- How the Dataplex Universal Catalog works (Entries, Aspects, Entry Types)
- Creating and managing catalog entries with code
- Attaching metadata to your data assets
- Searching for data across your organization

**Why This Matters:**
If your team wastes time hunting for data or doesn't know what datasets exist, a metadata catalog helps. You'll learn how to build a searchable catalog that makes it easier for people to find and understand your data assets.

---

### 01 - Load Data and Data Quality
**Duration:** ~20 minutes
**Technologies:** Data Quality, Data Profiling, Data Lineage
**[View Notebook](./01%20-%20Load%20data%20and%20DQ.ipynb)**

**What You'll Learn:**
- Using Dataplex to detect data quality problems (duplicates, nulls, bad values, etc.)
- Setting up automated data quality checks
- Tracing quality issues back to their source with column-level lineage

**Why This Matters:**
Bad data breaks reports and leads to wrong decisions. This notebook shows you how to catch quality problems early. You'll intentionally inject issues (like duplicate records and future dates) into a pipeline, then use Dataplex to find them. You'll also learn how to trace problems from your reporting layer all the way back to the source data. This approach helps prevent data issues from reaching production and makes debugging faster when problems do occur.

---

### 02 - Export Metadata
**Duration:** ~5 minutes
**Technologies:** Metadata Export, BigQuery External Tables, Hive Partitioning
**[View Notebook](./02%20-%20Export%20Metadata.ipynb)**

**What You'll Learn:**
- Exporting Dataplex metadata to Cloud Storage
- Creating BigQuery external tables over the exported metadata
- Building views for easier metadata queries
- Analyzing metadata with SQL

**Why This Matters:**
Sometimes you need to answer questions about your data estate at scale, like "Which datasets haven't been updated in months?" or "What percentage of our tables have owners assigned?" This notebook shows you how to export your metadata and analyze it in BigQuery, which makes it easy to build governance dashboards or integrate with BI tools.

---

### 03 - Import Metadata
**Duration:** ~10 minutes
**Technologies:** Metadata Import, Custom Aspects
**[View Notebook](./03%20-%20Import%20Metadata.ipynb)**

**What You'll Learn:**
- Importing metadata from external systems into Dataplex
- Programmatically updating catalog entries

**Why This Matters:**
If you have metadata from other systems, like Databricks, you can consolidate it into Dataplex. This notebook shows you how to bring in external metadata.

---

### 04 - External Lineage with OpenLineage
**Duration:** ~10 minutes
**Technologies:** OpenLineage, Data Lineage, External Systems
**[View Notebook](./04%20-%20Dataplex_OpenLineage_Example.ipynb)**

**What You'll Learn:**
- Using the OpenLineage standard for lineage metadata
- Sending lineage events from systems outside GCP to Dataplex
- Tracking data flows across different platforms
- Viewing end-to-end pipelines

**Why This Matters:**
If your data pipelines span multiple clouds or on-premises systems, you need lineage that works everywhere. This notebook shows you how to use OpenLineage to track data transformations happening outside Google Cloud, giving you complete visibility into where your data comes from and where it goes.

---

## Summary

| Notebook | Duration | Key Technologies | Primary Use Case |
|----------|----------|------------------|------------------|
| [00 - Universal Catalog Intro](./00%20-%20Dataplex%20Universal%20Catalog%20Introduction.ipynb) | 10 min | Catalog, Entries, Aspects | Data Discovery & Documentation |
| [01 - Load Data & DQ](./01%20-%20Load%20data%20and%20DQ.ipynb) | 20 min | Data Quality, Data Profiling, Lineage | Data Quality Management |
| [02 - Export Metadata](./02%20-%20Export%20Metadata.ipynb) | 5 min | Metadata Export, BigQuery Analysis | Governance Reporting |
| [03 - Import Metadata](./03%20-%20Import%20Metadata.ipynb) | 10 min | Custom Aspects, Metadata Import | Catalog Migration & Enrichment |
| [04 - OpenLineage](./04%20-%20Dataplex_OpenLineage_Example.ipynb) | 10 min | OpenLineage, Cross-platform Lineage | Multi-cloud Lineage Tracking |


