FROM postgres:12-alpine

ENV FLASK_APP /var/www/autoapp.py
ENV FLASK_DEBUG 1

RUN apk add --update npm yarn nginx python3-dev libffi-dev python3 py-pip libffi gcc musl-dev && \
    mkdir -p /var/www/ && mkdir -p /data/www/ && mkdir -p /run/nginx/

COPY . /var/www/

RUN pip install -r /var/www/requirements.txt && \
    cd /var/www/fe && \
    yarn install && \ 
    yarn build && \
    cp -r dist/* /data/www/ && \
    mv /var/www/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
EXPOSE 5000

entrypoint ["/var/www/entry.sh"]