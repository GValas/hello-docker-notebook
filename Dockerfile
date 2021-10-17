# working with python 3.9, in a local share
FROM python:3.9
ADD . /workspace
WORKDIR /workspace

# install jupyter dependencies, and run it
RUN python -m pip install -r requirements.txt
EXPOSE 12001

# run manually
# python -m jupyter notebook --allow-root --port=12001 --ip=localhost --no-browser 
# --NotebookApp.token='' --NotebookApp.password=''"