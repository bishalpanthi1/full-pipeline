FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
# Create a folder for report outputs if needed
RUN mkdir reports

EXPOSE 8080

CMD ["python", "app.py"]