FROM python:3.11

WORKDIR /workdir
COPY requirements.txt /workdir/requirements.txt
RUN pip install -r requirements.txt

COPY hello.py /workdir/hello.py
CMD [ "flask", "--app", "hello", "run" ]