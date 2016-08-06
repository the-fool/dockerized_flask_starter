FROM python:3.5

# Make sure Python talks when it has something to say
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN groupadd --system webbie && useradd --system --gid webbie webbie
COPY . /app
RUN chown -R webbie /app

COPY ./compose/web/gunicorn.sh /gunicorn.sh
COPY ./compose/web/entrypoint.sh /entrypoint.sh

RUN chmod +x /gunicorn.sh && chown webbie /gunicorn.sh
RUN chmod +x /entrypoint.sh && chown webbie /entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]
