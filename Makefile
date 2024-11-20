CURRENT_DIR := $(shell pwd)

up-service:
	cd ../prototype-spring-msa-app && ./gradlew docker && cd $(CURRENT_DIR) && docker-compose up -d

down-service:
	docker-compose down

up-infra:
	cd ../prototype-gateway && ./gradlew docker && cd $(CURRENT_DIR) && docker-compose -f docker-compose-infra.yml up -d

down-infra:
	docker-compose -f docker-compose-infra.yml down

up-db:
	docker-compose -f docker-compose-db.yml up -d

down-db:
	docker-compose -f docker-compose-db.yml down