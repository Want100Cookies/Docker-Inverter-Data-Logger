FROM python:3

WORKDIR /usr/src/app

RUN pip install schedule
COPY ./daemon.py .

RUN git clone https://github.com/XtheOne/Inverter-Data-Logger.git
RUN mkdir /config
RUN touch /config/config.cfg

CMD [ "python", "./daemon.py" ]
