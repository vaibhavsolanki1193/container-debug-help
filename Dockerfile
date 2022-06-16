FROM frolvlad/alpine-python3

RUN apk update && \
    # Install nginx web server (it helps to buffer slow client requests)
    apk add bash nginx py-jwt py3-psycopg2 && \
    mkdir /app

COPY docker/nginx.conf /etc/nginx
COPY docker/start.sh /
RUN chmod +x /start.sh

COPY requirements.txt /app
RUN python3 -m pip install -r /app/requirements.txt
COPY app/ /app

EXPOSE 80
EXPOSE 8000
EXPOSE 5678

ENTRYPOINT [ "/start.sh" ]
