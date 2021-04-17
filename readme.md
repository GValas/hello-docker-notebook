# build image
docker build -t hello-docker-notebook:latest

# run image
docker run -it --name notebook -p 12001:12001 hello-docker-notebook