#!/usr/bin/python3
import sys
import subprocess
import json
class Data:
    def __init__(self):
        try:
            self.result = subprocess.run(
                "sensors -j", shell=True, capture_output=True, check=True
            )
            self.result = json.loads(self.result.stdout.decode())
        except subprocess.CalledProcessError:
            try:
                subprocess.run(
                    "notify-send -u critical -i psensor -a sensors 'Sensors faced and error' 'Check if sensors command is properly installed in system.'",
                    shell=True,
                    check=True,
                )
                sys.exit(1)
            except subprocess.CalledProcessError:
                print("Unable to fetch data from: sensors")
            print("Unable to fetch data from: sensors")

            sys.exit(1)

    def get_raw_data(self):
        return self.result

    def _get_cpu_data(self):

        data = {"core": []}
        cpu_temp = self.result["coretemp-isa-0000"]
        for _, val in cpu_temp.items():
            if isinstance(val, dict):
                for k, v in val.items():
                    if "temp" in k and "_input" in k:
                        if k == "temp1_input":
                            data["cpu"] = v
                            continue
                        data["core"].append(v)
        return data

    def _get_gpu_data(self):
        return {"wifi": self.result["amdgpu-pci-0100"]["edge"]["temp1_input"]}

    def _get_wifi_data(self):
        return {"gpu": self.result["iwlwifi_1-virtual-0"]["temp1"]["temp1_input"]}

    def filter_raw_data(self):
        cpu = self._get_cpu_data()
        wifi = self._get_wifi_data()
        gpu = self._get_gpu_data()
        return {**cpu, **wifi, **gpu}


def display(temp):
    em = "🌡️️"
    col='rgba(244,189,0,.7)'
    if temp["cpu"] > 95:
        em = "🥵"
        col='rgba(219,68,55,.7)'
    elif temp["cpu"] < 75:
        em = "😌"
        col='rgba(66,133,244,.7)'
    
    wifi=f" {temp['wifi']}°C".rjust(12) 
    gpu=f"﬙ {temp['gpu']}°C".rjust(12)

    style=f"<div style='color:{col}'>"
    print(f"{style}{em} {temp['cpu']}°C </div>")
    print("---")
    print(f"{wifi} {gpu}")
    for i, val in enumerate(temp["core"]):
        endch = "\n" if i %2!=0 else "  "
        coreInfo=f"  {val}°C".ljust(12)
        print(f"{coreInfo}",end=endch)


if __name__ == "__main__":
    data = Data()
    temp = data.filter_raw_data()
    display(temp)
