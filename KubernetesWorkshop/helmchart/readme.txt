#run helm command
helm upgrade kubernetesworkshop helmchart -f helmchart/values-other-namespace.yaml -n myworkshop --create-namespace --install

docker build -t kubernetesworkshop/app1:latest .\KubernetesWorkshop.App1\

minikube image build -t kubernetesworkshop/app1:latest .\KubernetesWorkshop.App1\

docker build -t kubernetesworkshop/app1:v1 .\KubernetesWorkshop.App1\

helm upgrade kubernetesworkshop helmchart/ -f helmchart/values-other-namespace.yaml

helm upgrade kubernetesworkshop helmchart -f helmchart/values-myworkshop.yaml -n myworkshop --create-namespace --install

