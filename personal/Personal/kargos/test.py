#!/usr/bin/python3
import sys
import subprocess
import json
from pprint import pprint

cpu_cores_num = int(subprocess.run("nproc",shell=True,capture_output=True,check=True).stdout.decode())//2
try:
    result = subprocess.run("sensors -j",shell=True,capture_output=True,check=True)
except subprocess.CalledProcessError:
    print("Unable to fetch data from: sensors")
    sys.exit(1)
sensors_data = json.loads(result.stdout.decode())

cpu_temp=sensors_data["coretemp-isa-0000"]
pprint(cpu_temp)
data=[]
for _,val in cpu_temp.items():
    if isinstance(val,dict):
        # print(val)
        data.append(dict(filter(lambda item: "temp" in item[0] and "_input" in item[0], val.items())))
pprint(data)

