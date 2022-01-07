#!/bin/sh

make deploy
gunicorn --access-logfile - --workers 3 --bind unix:/mango/run/gunicorn.sock mango.wsgi:application
#CMD ["gunicorn", "--bind", ":8000", "--workers", "3", "mango.wsgi:application"]
#gunicorn --access-logfile - --workers 3 --bind :8000 mango.wsgi:application


exec "$@"