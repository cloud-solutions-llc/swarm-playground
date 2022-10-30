.PHONY: network
network:
	sh ./network/deploy.sh

.PHONY: gateway
gateway:
	cd ./gateway && sh ./deploy.sh && cd ..

.PHONY: logs
logs:
	cd ./logs/elasticsearch && sh ./deploy.sh && cd ../..
	cd ./logs/kibana && sh ./deploy.sh && cd ../..
	cd ./logs/filebeat && sh ./init.sh && cd ../..
	cd ./logs/filebeat && sh ./deploy.sh && cd ../..

.PHONY: storages
storages:
	cd ./storages/influxdb && sh ./deploy.sh && cd ../..
	cd ./storages/mysql && sh ./deploy.sh && cd ../..
	cd ./storages/redis-cache && sh ./deploy.sh && cd ../..
	cd ./storages/redis-queue && sh ./deploy.sh && cd ../..

.PHONY: monitoring
monitoring:
	cd ./monitoring/grafana && sh ./deploy.sh && cd ../..
	cd ./monitoring/telegraf && sh ./deploy.sh && cd ../..
