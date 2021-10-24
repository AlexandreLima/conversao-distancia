FROM python:3.8-slim-buster

WORKDIR /usr/src/app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development

COPY . .

RUN apt-get -y update
RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["flask", "run"]