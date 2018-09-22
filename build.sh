docker build python2_gcc/. -t python2.gcc
docker build python2_gcloud/. -t python2.gcloud
docker build java_gcloud_maven/. -t java.gcloud
docker build python3_gcloud/. -t python3.gcloud

docker tag python2.gcc <DOCKER_REGISTRY>/python2.gcc:latest
docker tag python2.gcloud <DOCKER_REGISTRY>/python2.gcloud:latest
docker tag python3.gcloud <DOCKER_REGISTRY>/python3.gcloud:latest
docker tag java.gcloud <DOCKER_REGISTRY>/java.gcloud:latest

docker images -a
