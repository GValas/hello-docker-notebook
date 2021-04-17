FROM ubuntu:20.10
RUN apt-get update -y 
RUN apt-get install -y nano git python3-pip
RUN pip install --upgrade pip
COPY . /notebook
WORKDIR /notebook
RUN pip install -r requirements.txt
EXPOSE 12001
CMD jupyter notebook --allow-root --port=12001 --ip=0.0.0.0 --no-browser --notebook-dir=/notebook 