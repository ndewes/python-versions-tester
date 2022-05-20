ARG python_version

FROM python:$python_version-alpine

RUN mkdir /workspace

COPY requirements.txt /workspace

WORKDIR /workspace

RUN pip3 install -r requirements.txt

CMD ["python3", "-m", "pytest", "-v"]