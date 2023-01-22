# python core + workspace
FROM python:3.11
WORKDIR /workspace
ADD . .

# installing python depencencies
RUN pip install -r requirements.txt

# bootstrapping the container
RUN chmod +x run-notebook.sh
CMD ["./run-notebook.sh"]