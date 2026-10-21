# Stage 1: GitHub se source code lao (git final image mein nahi jaayega)
FROM alpine/git AS source
WORKDIR /src
RUN git clone --depth 1 https://github.com/Dheeraj-chelani/proshop.git .

# Stage 2: Final application image
FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

# mysqlclient compile karne ke liye system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    pkg-config \
    default-libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/*

# Pehle requirements (Docker layer caching ke liye)
COPY --from=source /src/requirements.txt ./requirements.txt

# Slow network ke liye zyada timeout + retries, aur pip cache reuse
RUN --mount=type=cache,target=/root/.cache/pip \
    pip install --default-timeout=120 --retries 10 -r requirements.txt \
    && pip install --default-timeout=120 --retries 10 gunicorn

# Application source (collectstatic se PEHLE)
COPY --from=source /src/ /app/

# Static files collect. Build time pe dummy env (DB connect nahi hota).
# settings.py ke har config() ki value yahan honi chahiye.
RUN SECRET_KEY=build-time-dummy \
    DEBUG=False \
    ALLOWED_HOSTS=localhost \
    CSRF_TRUSTED_ORIGINS=http://localhost:8080 \
    DB_NAME=x DB_USER=x DB_PASSWORD=x DB_HOST=x DB_PORT=3306 \
    python manage.py collectstatic --noinput

EXPOSE 8000

CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "3", "proshop.wsgi:application"]
