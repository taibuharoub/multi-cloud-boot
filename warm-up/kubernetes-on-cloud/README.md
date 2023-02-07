# Hands-On with Kubernetes on the Cloud

> We will deploy an application inside of a kubernetes cluster that is highly scalable


what is kubernetes?

Also known as [kube] or [k8s], its the most popular container orchestration system. it was created by google to manage their internal applications. inside the kubernetes we have objects, when u make a deployment of the application inside a kubernetes cluster, the deployment file/deployment process is based on a simple text file(yaml file). kubernetes is open source and supported by public cloud providers

Kubernetes: use cases

1- Container orchestration in microservices architecture

- KBS manages containers and optimizes
the process)

2- Environments that require high availability/scalability

- KBS allows you to scale applications quickly

3 - Fits to any type of cloud

- public/private/hybrid/multiCloud

Steps

1- Unzip tcb-vote.zip

```bash
$unzip tcb-vote.zip
$cd tcb-vote/
```

2- Set project inside of Cloud Shell

```bash
$gcloud config set project <PROJECT_ID>
```

3- Build and push the image to Container Registry

```bash
# enable the Google Cloud API
$gcloud services enable cloudbuild.googleapis.com --project <PROJECT_ID>
# Will create the Docker Image, will also automatically push it to the container registry
$gcloud builds submit --tag gcr.io/<PROJECT_ID>/tcb-vote-front
```

4- Create and Connect to GKE

Search and use  the Kubernetes Engine on GCP to to create a GKE cluster

Connect to the connect, on GCP connect on the cluster, click on connect and copy the command to connect to the cluster

```bash
$kubectl get nodes
```

5- Deploy the app on top of a Kubernetes Engine/GKE

```bash
$kubectl apply -f tcb-vote-plus-redis-v2.yaml

# get the no of pods
$kubectl get pods
```

6- Simulate user access (increase the load)

```bash
# when cpu exceeds 50%
$kubectl autoscale deployment <deployment name> --cpu-percent=50 --min=1 --max=10
$kubectl autoscale deployment tcb-vote-front --cpu-percent=50 --min=1 --max=10

# to see, hpa stands for horizontal autoscaler
$kubectl get hpa

kubectl get pods
kubectl get deployment tcb-vote-front
```
7- Simulate user access (increase the load), to see how auto-scaling works

```bash
$kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://tcb-vote-front; done"
```

8- Watch autoscale

```bash
$kubectl get hpa tcb-vote-front --watch
$kubectl get deployment tcb-vote-front
```

9-  Stop load
```bash
# on cloud shell tab running the load inscrease
$CTRL +C on cloud shell tab running the load inscrease
```

10 - Watch scale down

```bash
$kubectl get hpa tcb-vote-front --watch
$kubectl get deployment tcb-vote-front
```