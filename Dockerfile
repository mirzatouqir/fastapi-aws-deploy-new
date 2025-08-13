FROM python:3.11-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["gunicorn","main:app","-k","uvicorn.workers.UvicornWorker","--bind","0.0.0.0:8080"]
