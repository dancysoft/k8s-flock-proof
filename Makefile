# Use the same value in job.yaml
IMAGE=registry.hq.dancysoft.com/local/flock-proof:1

image:
	docker build -t $(IMAGE) .

push: image
	docker push $(IMAGE)

test:
	./test

test-k8s:
	kubectl apply -f job.yaml 
