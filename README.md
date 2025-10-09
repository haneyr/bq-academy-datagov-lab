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

Each notebook demonstrates a key aspect of the solution.  Explore them below:


| Title                                                  | Technology                                                    | Link                                                       | Duration <BR> (est.)|
|-------------------------------------------------------|---------------------------------------------------------------|-------|------------|
| Dataplex Universal Catalog Introduction                             |Catalog, Search, Entries, Aspects| [Link](./00%20-%20Dataplex%20Universal%20Catalog%20Introduction.ipynb)| 10 Minutes|
| Loading Data and Data Quality Introduction                          | Entries, Data Quality| [Link](./01%20-%20Load%20data%20and%20DQ.ipynb)| 20 Minutes|
| Exporting Metadata                          | Metadata, Export| [Link](./02%20-%20Export%20Metadata.ipynb)| 5 Minutes|
| Importing Metadata                          | Metadata, Import| [Link](./03%20-%20Import%20Metadata.ipynb)| 10 Minutes|
| External Lineage with OpenLineage                          | Entries, Lineage| [Link](./04%20-%20Dataplex_OpenLineage_Example.ipynb)| 10 Minutes|


