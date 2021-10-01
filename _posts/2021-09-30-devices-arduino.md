---
date: 2021-09-30
title: Arduino
categories: devices
title_order: 1
description: Datenupload über der Arduino Plattform
type: Document
---
Arduino ist wohl die beliebteste und am meisten genutzte Hardware Prototyping Plattform. Insbesondere der Arduino Uno Microcontroller ist grundlage vieler Elektronikprojekte und es gibt ein vielzahl von Projektbeispielen im Netz. 

## 1. Aufbau
Erweitere als erstes deinen Arduino Controller um ein Ethernet- bzw. WiFi-Modul, z.B. in Form eines Shields. Falls der Ethernet-Modul genutzt wird, verbinde es über ein Netzwerkkabel mit einem Router.
Falls ein WiFi Modul zum Einsatz kommt ist es wichtig, dass der Router bzw. Hotspot über den die Verbindung später läuft mit einfacher WEP/WPA/WPA2 Verschlüsselung läuft. Netzwerke, die Zertifikate benötigen werden von den meisten Arduino WiFi- Modulen leider nicht unterstützt. 
Weiterhin brauchst du einen oder mehrere Umweltsensoren, deren Daten auf die openSenseMap übermittelt werden sollen. 

## 2. Sensorregistrierung
Bevor deine Messdaten auf der openSenseMap veröffentlicht werden können, muss deine Messstation dort registriert werden. Falls noch nicht geschehen registriere Dich zuerst als neuen Nutzer und lege danach eine neue Messstation an. In den folgenden Dialogen wirst du aufgefordert ein paar Infos zu deiner Station, wie Name oder Standort, einzugeben und ein Sensorsetup zu wählen. 

Im Screenshot unterhalb wollen wir Temperatur- und Luftfeuchtemessungen eines SHT15 Sensors der Firma Sensirion in die Datenbank übertragen:

Wenn alle Phänomene eines jeden Sensors definiert wurden wird anschließend das Gerüst eines Arduino-Sketches erzeugt und angezeigt (bzw. per Mail geschickt). In ihm sind bereits bereits Funktionen enthalten um sich mit der OSeM zu verbinden und Messungen zu übertragen. 


## 3. Programmierung
Nach der Registrierung der Box erhaltet Ihr automatisch einen Sketch auf openSenseMap.
Je nachdem welchen Sensor oder welches Verbindungsmodul genutzt wird, müsst ihr den Sketch noch anpassen bevor ihr ihn auf euer Arduino Board ladet. 

Dazu müsst ihr ggfs. zusätzliche Softwarebibliotheken einfügen, wie im Beispiel unterhalb die SHT1x-Bibliothek für den SHT15 Sensor. Hierbei werden zusätzlich ein paar Variablen und eine Sensorinstanz benötigt:
``` 
 #include <SPI.h>
 #include <Ethernet.h>
 
 #include<sht1x.h>
 #define dataPin 6
 #define clockPin 7
 SHT1x sht1x(dataPin, clockPin);
 
 //SenseBox ID
 #define senseBoxID "1234"
 //Sensor IDs
 #define temperatureSensorID "abcd"
 #define humiditySensorID "efgh"
```
<br>
Innerhalb der if-Anweisung in der loop-Funktion müsst ihr nacheinander die Sensoren auslesen und mit der Hilfsfunktion `postFloatValue()` hochladen.
```
 void loop()
 {
   //Upload der Daten mit konstanter Frequenz
   if (millis() - oldTime >= postInterval)
   {
     oldTime = millis();
     temperature = sht1x.readTemperatureC();
     postFloatValue(temperature, 1, temperatureSensorID);
     humidity = sht1x.readHumidity();
     postFloatValue(humidity, 0, humiditySensorID);
   }
 }
 ```
<br>
Falls ihr ein Ethernet-Modul nutzt, das nicht mit der Ethernet-Bibliothek von Arduino kompatibel ist, müsst ihr den Sketch entsprechend anpassen.
