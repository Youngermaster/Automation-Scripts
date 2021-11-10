import os

battery_percentage = ""


def get_full_battery_info() -> str:
    stream = os.popen('upower -i /org/freedesktop/UPower/devices/battery_BAT0')
    return stream.read()


def get_battery_percentage(battery_info) -> str:
    return battery_info.split('\n')[19]


def format_battery_percentage(raw_battery_percentage) -> str:
    index = len(raw_battery_percentage) - 7
    return raw_battery_percentage.strip()[index:]


if __name__ == "__main__":
    battery_info = get_full_battery_info()
    battery_percentage = get_battery_percentage(battery_info)
    print(format_battery_percentage(battery_percentage))
