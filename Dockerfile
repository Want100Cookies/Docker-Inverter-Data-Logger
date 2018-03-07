FROM python:2

WORKDIR /usr/src/app

RUN git clone https://github.com/XtheOne/Inverter-Data-Logger.git .
RUN mkdir /config
RUN touch /config/config.cfg

RUN pip install schedule
COPY ./daemon.py .

CMD [ "python", "./daemon.py" ]
