#!/usr/bin/python

import schedule
import time
from InverterExport import InverterExport

def job():
    inverter_exporter = InverterExport('/config/config.cfg')
    inverter_exporter.run()

schedule.every(10).seconds.do(job)

while True:
    schedule.run_pending()
    time.sleep(1)
