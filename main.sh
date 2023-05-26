if [ ! -f ./kubeconfig.yml ]; then
    echo "kubeconfig.yml not found, add it in the same directory as this script"
    exit 1
fi


export KUBECONFIG=./kubeconfig.yml
# delete the cluster if it exists
kubectl delete -f redis-deployment.yaml
kubectl delete -f service-redis.yaml
kubectl delete -f redis-node-deployment.yaml

# create the cluster
kubectl create -f service-redis.yaml
kubectl create -f redis-deployment.yaml
kubectl create -f redis-node-deployment.yaml

# get the cluster info
kubectl get deployments
kubectl get pods
kubectl get services


## go to client
cd ./client

kubectl delete -f client-deployment.yaml
kubectl delete -f client-service.yaml

kubectl create -f client-deployment.yaml
kubectl create -f client-service.yaml