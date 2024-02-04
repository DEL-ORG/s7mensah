From python:3

WORKDIR /app

COPY ./python-web-app/ /app/

RUN pip install --no-cache-dir -r requirements.txt

CMD["manage.py", "runserver", "0.0.0.0:8000"]

