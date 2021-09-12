# first stage
FROM python:3.9

COPY ./src/requirements.txt .

RUN pip install -r requirements.txt

WORKDIR /app

COPY ./src .

EXPOSE 3111

CMD [ "python", "./app.py" ]
