import Serial
from time import sleep
ser=Serial.Serial('',9600,timeout=1)
while True:
  if  ser.in_waiting>0:
        line=ser.readline().decode
        ('utf-8').rstrip()
        print(line)
