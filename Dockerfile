# 1. Küçük ve güvenli bir Python image
FROM python:3.10-slim

# 2. Çalışma dizinini belirle
WORKDIR /app

# 3. Proje dosyalarını image içine kopyala
COPY . .

# 4. Flask’ı yükle
RUN pip install flask

# 5. Uygulama 80 portundan çalışacak
EXPOSE 80

# 6. Uygulamayı başlat
CMD ["python", "app.py"]
