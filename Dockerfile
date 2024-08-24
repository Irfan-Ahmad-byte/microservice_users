FROM python:3.12.5-bullseye


WORKDIR /app

COPY requirements.txt .

RUN apt update && apt install -y postgresql

RUN pip install psycopg2-binary

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
