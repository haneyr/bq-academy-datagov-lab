VPC_NAME=default
GCP_PROJECT_ID=$(gcloud config get project)
gcloud compute networks create $VPC_NAME \
--project=$GCP_PROJECT_ID \
--subnet-mode=custom \
--mtu=1460 \
--bgp-routing-mode=regional

SUBNET_CIDR=10.0.0.0/16
SUBNET_NAME=default
LOCATION=us-central1
gcloud compute networks subnets create $SUBNET_NAME \
 --network $VPC_NAME \
 --range $SUBNET_CIDR  \
 --region $LOCATION \
 --enable-private-ip-google-access \
 --project $GCP_PROJECT_ID

gcloud compute firewall-rules create allow-pypi-outbound \
    --network=$VPC_NAME \
    --action=ALLOW \
    --direction=EGRESS \
    --rules=tcp:443 \
    --destination-ranges=0.0.0.0/0

VPC_NAME=default
gcloud compute routers create router-for-nat \
    --network=$VPC_NAME \
    --region=$LOCATION

gcloud compute routers nats create notebook-nat-gateway \
    --router=router-for-nat \
    --region=$LOCATION \
    --nat-all-subnet-ip-ranges \
    --auto-allocate-nat-external-ips

gcloud services enable datalineage.googleapis.com \
    compute.googleapis.com \
    dataform.googleapis.com \
    aiplatform.googleapis.com