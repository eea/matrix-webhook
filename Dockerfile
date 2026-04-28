FROM python:3.11

EXPOSE 4785

RUN pip install --no-cache-dir "markdown==3.10.2" "matrix-nio==0.25.2"

ADD matrix_webhook matrix_webhook

ENTRYPOINT ["python", "-m", "matrix_webhook"]
