FROM python:3.8.9-slim
WORKDIR /notebook
COPY . .
RUN pip install -r requirements.txt
EXPOSE 12001
CMD jupyter notebook --allow-root --port=12001 --ip=0.0.0.0 --no-browser --notebook-dir=/notebook 


# docker build -t hello-docker-notebook:latest .
# docker run -it --name jupyter -p 12001:12001 -v $(pwd)/src:/notebook/src hello-docker-notebook