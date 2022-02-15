FROM python:3.7-alpine

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/

ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

COPY . /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD ["python", "app.py"]
