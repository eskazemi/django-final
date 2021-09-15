FROM python:latest

LABEL maintainer="smk182018@gmail.com"


WORKDIR /code

COPY requirements.txt /code/



RUN pip install -U pip
RUN pip install -r requirements.txt

COPY . /code/

EXPOSE 8000

CMD ["gunicorn" , "A.wsgi", ":8000"]

