.PHONY: create
create:
	kubectl apply -f namespace.yaml
	kubectl create --namespace simple-k8s-example  -f service.yaml -f pod.yaml


.PHONY: destroy
destroy:
	kubectl delete --namespace simple-k8s-example --all all
