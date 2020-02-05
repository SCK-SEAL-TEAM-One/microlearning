build:
	docker build -t hello-world:latest .

push:
	docker tag hello-world:latest golfapipol/hello-world:1.0.0-SNAPSHOT
	docker push golfapipol/hello-world:1.0.0-SNAPSHOT


