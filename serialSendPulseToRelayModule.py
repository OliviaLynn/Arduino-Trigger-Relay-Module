import serial

# If this isn't working, try switching USB0 to USB1 or vice versa
arduino = serial.Serial('/dev/ttyUSB1', 115200, timeout=.1)

if __name__ == "__main__":
    print("Sending pulse...")
    arduino.write("1".encode())