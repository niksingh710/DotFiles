#!/usr/bin/python3
import sys
import subprocess
import json

a = []
for i in range(10):
    a.append(i)

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
    if temp["cpu"] > 85:
        em = "🥵"
    elif temp["cpu"] < 50:
        em = "😌"
    print(f"{em} {temp['cpu']}°C")
    print("---")
    print(f" {temp['wifi']}°C")
    print(f"GPU: {temp['gpu']}°C")
    for i, val in enumerate(temp["core"]):
        print(f"Core {i+1}: {val}°C")


if __name__ == "__main__":
    data = Data()
    temp = data.filter_raw_data()
    display(temp)
