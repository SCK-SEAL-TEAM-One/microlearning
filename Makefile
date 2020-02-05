build:
	docker build -t hello-world:latest .

push:
	docker tag hello-world:latest golfapipol/hello-world:1.0.0-SNAPSHOT
	docker push golfapipol/hello-world:1.0.0-SNAPSHOT

create-namespace:
	kubectl apply -f k8s/namespace.yml

deploy-dev:
	kubectl apply -f k8s/dev/deployment.yml --namespace=dev
	kubectl apply -f k8s/dev/service.yml --namespace=dev

deploy-sit:
	kubectl apply -f k8s/sit/deployment.yml --namespace=sit
	kubectl apply -f k8s/sit/service.yml --namespace=sit

deploy-uat:
	kubectl apply -f k8s/uat/deployment.yml --namespace=uat
	kubectl apply -f k8s/uat/service.yml --namespace=uat

tag-candidate:
	docker tag golfapipol/hello-world:1.0.0-SNAPSHOT golfapipol/hello-world:1.0.0-CANDIDATE-ALPHA
	docker push golfapipol/hello-world:1.0.0-CANDIDATE-ALPHA

tag-prelease:
	docker tag golfapipol/hello-world:1.0.0-CANDIDATE-ALPHA golfapipol/hello-world:1.0.0-CANDIDATE-BETA
	docker push  golfapipol/hello-world:1.0.0-CANDIDATE-BETA
