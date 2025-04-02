FROM python:3.12-slim

WORKDIR /app

# Copie et installe les dépendances
#COPY requirements.txt .
RUN pip install flask==3.0.3
RUN pip install pytest==7.4.2
#RUN pip install --no-cache-dir -r requirements.txt && pip list

# Copie le code après installation des dépendances
COPY . .

EXPOSE 5050

CMD ["python", "app.py"]
