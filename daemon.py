#!/usr/bin/python

import schedule
import time
import InverterExport

def job():
    print("I'm working...")
    inverter_exporter = InverterExport('/config/config.cfg')
    inverter_exporter.run()

schedule.every(1).minutes.do(job)

while True:
    schedule.run_pending()
    time.sleep(1)
