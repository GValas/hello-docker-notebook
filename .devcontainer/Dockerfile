FROM python:3.9
ADD . /workspace
WORKDIR /workspace
RUN pip install pylint pytest black mypy
RUN pip install numpy scipy sklearn jupyter pandas matplotlib seaborn pytest