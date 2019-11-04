FROM python:3.8.0-buster

RUN groupadd -r -g 1000 emm7494 && useradd -rm -s /bin/bash -g emm7494 -u 1000 emm7494

WORKDIR /home/emm7494/flask

COPY requirements.txt .
RUN chown -R emm7494:emm7494 /home/emm7494
USER emm7494
# Install the dependencies
RUN pip install --user --no-cache-dir -r requirements.txt

EXPOSE 8080
ENV PATH="/home/emm7494/.local/bin:$PATH"

# run the command to start uWSGI
CMD ["./start.sh"]

