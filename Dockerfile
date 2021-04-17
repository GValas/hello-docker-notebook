FROM python:3.8.9-slim
WORKDIR /workspace
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 12001
CMD jupyter notebook --allow-root --port=12001 --ip=0.0.0.0 --no-browser --NotebookApp.token='' --NotebookApp.password=''

# docker build -t hello-docker-notebook:latest .
# docker run -it --name notebook -p 12001:12001 -v $(pwd):/workspace hello-docker-notebook
