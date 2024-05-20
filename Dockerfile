# Dockerfile - this is a comment. Delete me if you want.
FROM python:3.9.19-slim
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip && pip install -r requirements.txt
EXPOSE 5000
CMD ["gunicorn"  , "-b", "0.0.0.0:5000", "wsgi:app"]
