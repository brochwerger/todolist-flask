FROM python

WORKDIR /app
COPY . . 
RUN pip3 install -r requirements.txt
EXPOSE 5000

ENV MYSQL_USER
ENV MYSQL_PASSWORD
ENV MYSQL_DB
ENV MYSQL_HOST

CMD ["python", "main.py"]


