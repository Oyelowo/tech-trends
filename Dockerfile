# first stage
FROM python:3.9

WORKDIR /app

COPY ./src .
# COPY ./src/requirements.txt .
# COPY ./src/init_db.py .

RUN pip install -r requirements.txt

# RUN chmod +x init_db.py

# RUN python init_db.py



EXPOSE 3111

CMD [ "python", "./app.py" ]
