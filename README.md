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

Each notebook demonstrates a key aspect of data governance using Google Cloud Dataplex. These hands-on labs showcase real-world applications of metadata management, data quality, and lineage tracking.

### 00 - Dataplex Universal Catalog Introduction
**Duration:** ~10 minutes
**Technologies:** Catalog, Search, Entries, Aspects
**[View Notebook](./00%20-%20Dataplex%20Universal%20Catalog%20Introduction.ipynb)**

**What You'll Learn:**
- Understand the Dataplex Universal Catalog concept model (Entries, Aspects, Entry Types)
- Create and manage catalog entries programmatically
- Attach metadata aspects to data assets
- Search and discover data across your organization

**Business Value:**
This notebook demonstrates how organizations can build a centralized metadata catalog to improve data discovery and governance. By understanding how to organize metadata using entries and aspects, data teams can create a searchable, well-documented data estate that reduces time spent searching for data and improves data literacy across the organization.

---

### 01 - Load Data and Data Quality
**Duration:** ~20 minutes
**Technologies:** Data Lineage, Data Quality, BigQuery, BigLake, Iceberg
**[View Notebook](./01%20-%20Load%20data%20and%20DQ.ipynb)**

**What You'll Learn:**
- Build a complete Bronze → Silver → Gold data pipeline
- Inject intentional data quality issues for detection
- Create Dataplex Data Profiling scans for statistical analysis
- Define custom data quality rules (completeness, uniqueness, validity, referential integrity)
- Use column-level lineage to trace data quality issues back to source
- Implement different table formats (Native BigQuery, BigLake CSV, BigLake Iceberg)

**Business Value:**
This notebook demonstrates a production-grade approach to data quality management. By intentionally introducing and then detecting quality issues (duplicates, nulls, inconsistent values, invalid dates, referential integrity violations), teams learn how to:
- Prevent bad data from reaching business reports
- Trace data quality problems to their source using lineage
- Implement automated quality checks at multiple pipeline stages
- Build trust in data through systematic validation

Real-world impact includes reduced incidents from bad data, faster root cause analysis when issues occur, and improved data reliability for critical business decisions.

---

### 02 - Export Metadata
**Duration:** ~5 minutes
**Technologies:** Metadata Export, BigQuery External Tables, Hive Partitioning
**[View Notebook](./02%20-%20Export%20Metadata.ipynb)**

**What You'll Learn:**
- Export Dataplex Universal Catalog metadata to Google Cloud Storage
- Create BigQuery external tables with Hive partitioning over exported metadata
- Build JavaScript UDFs to parse complex nested JSON structures
- Create unnested views for simplified metadata querying
- Analyze metadata using SQL for governance insights

**Business Value:**
Organizations often need to analyze their metadata at scale to answer questions like "Which datasets haven't been updated in 6 months?" or "How many tables are missing data owners?" This notebook shows how to:
- Export metadata for offline analysis and reporting
- Integrate metadata with BI tools like Looker Studio or Data Canvas
- Track metadata coverage and documentation gaps
- Monitor data estate growth and evolution over time
- Build custom governance dashboards

This enables data governance teams to measure and improve their metadata quality systematically.

---

### 03 - Import Metadata
**Duration:** ~10 minutes
**Technologies:** Metadata Import, Custom Aspects
**[View Notebook](./03%20-%20Import%20Metadata.ipynb)**

**What You'll Learn:**
- Create custom aspect types for organization-specific metadata
- Import external metadata into Dataplex Universal Catalog
- Attach custom business metadata to existing data assets
- Programmatically enrich catalog entries

**Business Value:**
Many organizations have metadata in external systems (data catalogs, business glossaries, lineage tools) that needs to be consolidated. This notebook demonstrates how to:
- Migrate metadata from legacy catalogs into Dataplex
- Add business-specific metadata (data owners, stewards, classifications)
- Enrich technical metadata with business context
- Create a single source of truth for all data metadata

This is critical for organizations consolidating multiple catalogs or migrating to Google Cloud.

---

### 04 - External Lineage with OpenLineage
**Duration:** ~10 minutes
**Technologies:** OpenLineage, Data Lineage, External Systems
**[View Notebook](./04%20-%20Dataplex_OpenLineage_Example.ipynb)**

**What You'll Learn:**
- Understand the OpenLineage standard for lineage metadata
- Send lineage events from external systems to Dataplex
- Track data flows across cloud and on-premises systems
- Visualize end-to-end data pipelines

**Business Value:**
Modern data architectures often span multiple clouds and on-premises systems. This notebook shows how to:
- Track data lineage across heterogeneous environments
- Document data transformations happening outside Google Cloud
- Enable impact analysis for data changes
- Comply with data governance regulations requiring lineage tracking
- Debug data quality issues by understanding full data provenance

This enables comprehensive lineage visibility regardless of where data processing occurs.

---

## Summary

| Notebook | Duration | Key Technologies | Primary Use Case |
|----------|----------|------------------|------------------|
| [00 - Universal Catalog Intro](./00%20-%20Dataplex%20Universal%20Catalog%20Introduction.ipynb) | 10 min | Catalog, Entries, Aspects | Data Discovery & Documentation |
| [01 - Load Data & DQ](./01%20-%20Load%20data%20and%20DQ.ipynb) | 20 min | Data Quality, Lineage, Multi-format Tables | Data Quality Management |
| [02 - Export Metadata](./02%20-%20Export%20Metadata.ipynb) | 5 min | Metadata Export, BigQuery Analysis | Governance Reporting |
| [03 - Import Metadata](./03%20-%20Import%20Metadata.ipynb) | 10 min | Custom Aspects, Metadata Import | Catalog Migration & Enrichment |
| [04 - OpenLineage](./04%20-%20Dataplex_OpenLineage_Example.ipynb) | 10 min | OpenLineage, Cross-platform Lineage | Multi-cloud Lineage Tracking |


