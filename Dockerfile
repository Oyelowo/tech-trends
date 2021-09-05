# first stage
FROM python:3.9

COPY ./src/requirements.txt .

RUN pip install -r requirements.txt

WORKDIR /app

COPY ./src .

CMD [ "python", "./app.py" ]
