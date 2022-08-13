.PHONY: network
network:
	sh ./network/deploy.sh

.PHONY: gateway
gateway:
	cd ./gateway && sh ./deploy.sh && cd ..

.PHONY: elasticsearch
elasticsearch:
	cd ./elasticsearch && sh ./deploy.sh && cd ..

.PHONY: kibana
kibana:
	cd ./kibana && sh ./deploy.sh && cd ..

.PHONY: filebeat
filebeat:
	cd ./filebeat && sh ./deploy.sh && cd ..