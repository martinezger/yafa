FROM python:3.8
RUN apt-get update -y
RUN apt-get install nano
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV FLASK_APP=app.py
ENV FLASK_RUN_PORT=4040
ENTRYPOINT [ "flask", "run", "--host", "0.0.0.0" ]
