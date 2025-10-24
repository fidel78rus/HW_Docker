FROM continuumio/miniconda3:latest
WORKDIR /app
# 4. Копируем нужный файл внутрь контейнера и выдаем ему права на исполнение
COPY 1.sh .
RUN chmod +x 1.sh
RUN pip install mlflow boto3 pymysql
CMD ["./1.sh"]