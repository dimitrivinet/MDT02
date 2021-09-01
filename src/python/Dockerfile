FROM python:3.8

RUN useradd -m appuser && chmod -R 777 /home/appuser

USER appuser

WORKDIR /home/appuser

ENV PATH="/home/appuser/.local/bin:${PATH}"

RUN /usr/local/bin/python3 -m pip install --upgrade pip

COPY requirements.txt app/requirements.txt

RUN pip3 install --user -r app/requirements.txt

COPY app /app

WORKDIR /app

CMD ["uvicorn", "main:app", "--reload", "--host=0.0.0.0"]
# CMD ["tail", "-f", "/dev/null"]
