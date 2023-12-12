FROM python:3.9-slim

WORKDIR /app

COPY . /app/
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

WORKDIR /app/app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]