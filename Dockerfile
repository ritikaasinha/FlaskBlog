FROM python:3.6

WORKDIR /Flask

COPY requirements.txt requirements.txt
# creation of venv
RUN python -m venv venv
# installation of requirements in venv
RUN venv/bin/pip install -r requirements.txt

COPY flaskblog flaskblog

COPY run.py boot.sh ./

EXPOSE 5000

RUN chmod +x boot.sh

ENTRYPOINT ["./boot.sh"]
