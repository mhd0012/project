# استفاده از تصویر پایه Python
FROM python:3.10

# تنظیم محیط متغیرها
ENV PYTHONUNBUFFERED=1

# نصب وابستگی‌های پروژه
COPY requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

# کپی کردن کد منبع
COPY . /app/
