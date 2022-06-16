#!/bin/bash

echo 'Starting gunicorn server'
gunicorn --bind=127.0.0.1:8000 --workers=6 app.api:app &

echo 'Starting nginx'
nginx -g "pid /tmp/nginx.pid; daemon off;"