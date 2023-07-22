#!/usr/bin/env python3

from datetime import datetime
import time


def get_formatted_current_time():
    current_time = datetime.now().time()
    return current_time.strftime("%H:%M:%S")


def main():
    while True:
        print(get_formatted_current_time())
        time.sleep(1)


if __name__ == '__main__':
    main()
