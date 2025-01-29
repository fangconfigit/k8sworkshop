# k8sworkshop prepare

minikube start
minikube addons enable ingress

# Basic Docker operation

docker build -t kubernetesworkshop/app1:latest .\KubernetesWorkshop.App1\

minikube image build -t kubernetesworkshop/app1:latest .\KubernetesWorkshop.App1\

# Basic Kubenate operation

kubectl apply -f k8s

# Helm install

helm upgrade kubernetesworkshop helmchart/ -f helmchart/values-other-namespace.yaml

helm upgrade kubernetesworkshop helmchart -f helmchart/values-myworkshop.yaml -n myworkshop --create-namespace --install

# Local DNS Mapping for Ingress

Get the minikube ip using minikube ip (let us assume it is 192.168.49.2)

Copy the hosts file located at C Drive -> Windows -> Systems32-> drivers -> etc and paste it on Desktop

In the hosts file of Desktop, add the line: 192.168.49.2 workshop.local and then save it.

Now copy this modified hosts file from Desktop, and paste it back in C Drive -> Windows -> Systems32-> drivers -> etc folder.

Finally, in the browser, search for workshop.local




