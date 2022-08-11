.PHONY: network
network:
	sh ./network/deploy.sh

.PHONY: gateway
gateway:
	cd ./gateway && sh ./deploy.sh && cd ..
