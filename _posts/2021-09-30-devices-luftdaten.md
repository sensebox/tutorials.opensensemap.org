---
date: 2021-09-30
title: luftdaten.info
categories: devices
title_order: 3
description: Übertragung vom luftdaten.info Messgerät
type: Document
---

Die Feinstaubsensoren des OK Lab Stuttgart Luftdaten.info sind Open Source Bausätze, die sich modifizieren lassen um die Daten auch an die openSenseMap zu senden.

## 1. Vorbereitung
Um die Daten an die openSenseMap zu senden, muss zuallererst herausgefunden werden, welche Sensoren am Feinstaubsensor verwendet werden. Dies kann man am besten in dem Webinterface des Feinstaubsensors nachsehen: 

<img src="https://github.com/sensebox/resources/raw/master/images/luftdaten/02_Sensor_Konfiguration.png"/>

## 2. Sensorregistrierung
Nun muss eine neue Messstation auf der openSenseMap mit der gerade erhaltenen Konfiguration registriert werden. Sollten bei der Registrierung die falschen Sensoren ausgewählt worden sein, ist es am einfachsten die Box einfach wieder zu löschen und mit der korrekten Sensorkonfiguration neu zu registrieren.
Falls noch nicht geschehen, registriere einen neuen Nutzer und lege mit ihm eine neue Messstation an. Dabei musst du User, Standort, Aufstellungsort und Namen ausfüllen. Gruppenkennzeichnung ist frei wählbar und könnte z.B. Luftdaten sein.
Unter dem Punkt “Hardware” das Feld “luftdaten.info” ausklappen und die passende Sensorkonfiguration auswählen. Im nachfolgenden Beispiel legen wir eine neue Station mit dem DHT22 Sensor für Temperatur- und Luftfeuchtemessungen an:

<img src="https://github.com/sensebox/resources/raw/master/images/luftdaten/01_openSenseMap_Konfiguration.png"/>

Nun kannst du die Registrierung abschließen. Wichtig hierbei ist es die ID deiner Station zu kopieren. Dies ist eine 24 Zeichen lange Zeichenkette, die ungefähr so aussieht:

`58a88c6b650831d8a3625e01`

## 3. Konfiguration
Der Feinstaubsensor von Luftdaten.info lässt sich bequem über eine Webseite konfigurieren. Hierfür muss zuerst die IP des Gerätes im WLAN ausfindig gemacht werden. Dies gelingt am besten durch Ablesen im WLAN-Router.
Dann wird mit dem Internetbrowser die Konfigurationsseite des Feinstaubsensors aufgerufen, indem ihr in der Adressleiste die IP eingebt. Ihr landet nun auf einer Konfigseite und müsst unter dem Punkt “Weitere APIs” einen Haken bei “An openSenseMap senden” setzen. In das Feld ID die eigene ID eintragen. 
Als letztes auf “Speichern” klicken und ein paar Minuten warten, um die Messungen auf der openSenseMap zu sehen.