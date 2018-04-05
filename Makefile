.PHONY: create
create:
	kubectl apply -f namespace.yaml
	kubectl create --namespace simple-k8s-example  -f service.yaml -f pod.yaml


.PHONY: deploy
deploy:
	kubectl apply -f namespace.yaml
	helm upgrade --install --namespace simple-k8s-example simple-k8s-example .


.PHONY: destroy
destroy:
	helm delete simple-k8s-example --purge
	kubectl delete all --all --namespace simple-k8s-example
	kubectl get all --namespace simple-k8s-example
