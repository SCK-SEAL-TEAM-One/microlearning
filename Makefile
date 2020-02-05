build:
	docker build -t hello-world:latest .

push:
	docker tag hello-world:latest golfapipol/hello-world:1.0.0-SNAPSHOT
	docker push golfapipol/hello-world:1.0.0-SNAPSHOT

create-namespace:
	kubectl apply -f namespace.yml
deploy-dev:
	kubectl apply -f deployment.yml --namespace=dev
	kubectl apply -f service.yml --namespace=dev

