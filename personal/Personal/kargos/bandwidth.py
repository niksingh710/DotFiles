#!/usr/bin/python3
# These are the scripts and files created by Nikhil Singh <nik.singh710@gmail.com>
#            _   ________ __ __  ________   _      
#           / | / /  _/ //_// / / /  _/ /  ( )_____
#          /  |/ // // ,<  / /_/ // // /   |// ___/
#         / /|  // // /| |/ __  // // /___  (__  ) 
#        /_/ |_/___/_/ |_/_/ /_/___/_____/ /____/  
#                                                  
#             ______            _____           
#            / ____/___  ____  / __(_)___ ______
#           / /   / __ \/ __ \/ /_/ / __ `/ ___/
#          / /___/ /_/ / / / / __/ / /_/ (__  ) 
#          \____/\____/_/ /_/_/ /_/\__, /____/  
#                                 /____/        
#                                     __
#                    ____ _____  ____/ /
#                   / __ `/ __ \/ __  / 
#                  / /_/ / / / / /_/ /  
#                  \__,_/_/ /_/\__,_/   
#                                       
#              _____           _       __      
#             / ___/__________(_)___  / /______
#             \__ \/ ___/ ___/ / __ \/ __/ ___/
#            ___/ / /__/ /  / / /_/ / /_(__  ) 
#           /____/\___/_/  /_/ .___/\__/____/  
#                           /_/                
# (niksingh710) [https://github.com/niksingh710] [https://t.me/niksingh710]
import psutil
from time import sleep


def human_bytes(n):
    """
    convert bytes to human readable format
    'borrowed' from https://github.com/giampaolo/psutil/blob/master/scripts/ifconfig.py
    """

    symbols = ("K", "M", "G", "T", "P", "E", "Z", "Y")
    prefix = {s: 1 << (i + 1) * 10 for i, s in enumerate(symbols)}
    for symbol in reversed(symbols):
        if n >= prefix[symbol]:
            value = n / prefix[symbol]
            return "{} {}".format(round(value, 2), symbol)
    return "{} B".format(round(n, 2))


def print_stats(upload, download, res=False):
    """
    pretty prints the results
    upload and download values are multiplied by 2 to compensate 0.5 second sleep
    """
    upload, download = human_bytes(upload * 2), human_bytes(download * 2)
    spu, spd = upload[-1], download[-1]
    ch = "." if res else " "
    upload = f"▲ {upload}".ljust(10, ch)
    download = f"▼ {download}".ljust(10, ch)
    # if res:
    #     if spu == "B" and spd == "B":
    #         return "."
    #     elif upload[-1] == "B":
    #         return f"{download}"
    #     elif download[-1] == "B":
    #         return f"{upload}"
    return f"{upload} {download}"


def main():
    # create dict to store results for every interface
    results = {
        "total": {
            "up": psutil.net_io_counters(pernic=False).bytes_sent,
            "down": psutil.net_io_counters(pernic=False).bytes_recv,
        }
    }

    # loops through all interfaces to store upload and download data
    for interface in psutil.net_io_counters(pernic=True):
        results[interface] = {
            "up": psutil.net_io_counters(pernic=True)[interface].bytes_sent,
            "down": psutil.net_io_counters(pernic=True)[interface].bytes_recv,
        }

    sleep(0.5)

    # after sleeping, updates the data to be the difference between the two iterations
    results["total"] = {
        "up": psutil.net_io_counters(pernic=False).bytes_sent - results["total"]["up"],
        "down": psutil.net_io_counters(pernic=False).bytes_recv
        - results["total"]["down"],
    }

    # iterates over interfaces to update data
    for interface in results:
        if interface != "total":
            results[interface] = {
                "up": psutil.net_io_counters(pernic=True)[interface].bytes_sent
                - results[interface]["up"],
                "down": psutil.net_io_counters(pernic=True)[interface].bytes_recv
                - results[interface]["down"],
            }

    # print the result to the bar
    # print(results)
    print(print_stats(results["total"]["up"], results["total"]["down"], res=True))

    print("---")
    # print in dropdown
    for interface in results:
        if interface != "total":
            inface = interface.ljust(10)
            stat = print_stats(results[interface]["up"], results[interface]["down"])
            print(f"{inface}: {stat}")


if __name__ == "__main__":
    main()
