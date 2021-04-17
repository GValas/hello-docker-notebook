FROM python:3.8.9-slim
COPY . /notebook
WORKDIR /notebook
RUN pip install -r requirements.txt
EXPOSE 12001
CMD jupyter notebook --allow-root --port=12001 --ip=0.0.0.0 --no-browser --notebook-dir=/notebook 