import serial
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
arduino = serial.Serial('/dev/ttyUSB0', 115200, timeout=.1)

while True:
    toSend = input("> ")
    arduino.write(toSend.encode())
        
