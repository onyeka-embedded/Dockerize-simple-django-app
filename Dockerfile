FROM python:3.12.3-slim

WORKDIR /app

COPY requirements.txt /app
COPY my_card /app

RUN apt-get update && \
    pip install -r requirements.txt && \
    cd my_card

EXPOSE 8000

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]



