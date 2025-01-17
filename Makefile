HIVE_TAG = 2.3.8
HIVE_VERSION = 2.3.8
HADOOP_TAG = 2.0.0-hadoop2.7.4-java8
HIVE_METASTORE_TAG = 2.3.0

build:
	docker build -t hive:${HIVE_TAG} --build-arg HIVE_VERSION=${HIVE_VERSION} --build-arg HADOOP_TAG=${HADOOP_TAG} ./

start:
	mkdir -p .pgdata-${HIVE_METASTORE_TAG}
	HIVE_METASTORE_TAG=${HIVE_METASTORE_TAG} HIVE_TAG=${HIVE_TAG} HADOOP_TAG=${HADOOP_TAG} docker compose up

stop:
	HIVE_METASTORE_TAG=${HIVE_METASTORE_TAG} HIVE_TAG=${HIVE_TAG} HADOOP_TAG=${HADOOP_TAG} docker compose down