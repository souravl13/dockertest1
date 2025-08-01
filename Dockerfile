FROM python:3.10-slim
ENV APP_ENV=production \
DEBUG=False \
APP_PORT=8080
ARG PORT=8080
WORKDIR /app
COPY . .
RUN pip install --no cache-dir -r requirements.txt
EXPOSE ${PORT}
CMD ["sh", "-c","python app.py --port=$APP_PORT"]
