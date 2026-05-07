IMAGE  = vast-tester
CONTAINER = vast-tester
PORT   = 8080

up:
	docker build -t $(IMAGE) .
	docker run -d --name $(CONTAINER) -p $(PORT):80 $(IMAGE)
	@echo "Running at http://localhost:$(PORT)"

down:
	docker stop $(CONTAINER) || true
	docker rm $(CONTAINER) || true
	docker rmi $(IMAGE) || true

.PHONY: up down
