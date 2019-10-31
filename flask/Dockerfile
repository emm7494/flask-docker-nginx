FROM python:3.8.0-buster

WORKDIR /flask

COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt \
    && mkdir -p /var/log/uwsgi
# && touch /var/log/uwsgi/uwsgi_access.log \
# && touch /var/log/uwsgi/uwsgi_error.log
#  \
# && chmod 766 -R /var/log/uwsgi

EXPOSE 8080
# run the command to start uWSGI
CMD ["uwsgi", "app.ini"]
