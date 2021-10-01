---
date: 2021-09-30
title: senseBox
categories: devices
title_order: 4
description: Daten mit dem senseBox:home Bausatz übertragen
type: Document
---

Die senseBox ist ein Open Source Baukasten für Umweltsensoren, der an der Uni Münster entwickelt wurde. Das Herzstück des Projekts ist ein Microcontroller, genannt senseBox MCU, der zusammen mit Umweltsensoren und Lernmaterial für die Bereiche digitale Bildung und Citizen Science optimiert wurde.

## 1. Aufbau
Neben der MCU braucht ihr noch ein Verbindungsmodul um die Daten ins Web zu übertragen. Dafür könnt ihr zwischen WiFi-, Ethernet und LoRa auswählen. Wählt außerdem einen Sensor aus, dessen Messwerte ihr an die openSenseMap schicken wollt. 

## 2. Sensorregistrierung
Unter “Neue senseBox” kann nun eine neue senseBox registriert werden. Dabei müsst ihr Namen, Aufstellungsort und die Sensorkonfiguration angeben. Dafür gibt es eine Vorauswahl für verschiedene Modelle. Falls eine nicht vorhandene Sensorkonfiguration vorliegt, können einzelne Sensoren unter Manuelle Konfiguration von Hand hinzugefügt werden:

<img src="https://docs.sensebox.de/images/sensebox-home/osem-4.png"/>

Nachdem die Registrierung abgeschlossen wurde, wird ein Arduino-Sketch angezeigt, welcher die angegebenen Sensoren ausliest und deren Daten regelmäßig zur openSenseMap überträgt. Um diesen auf die senseBox zu übertragen, wird die Arduino IDE benötigt, eine exemplarische Installations-Anleitung für die senseBox:home ist hier zu finden.

## 3. Programmierung
Nach der Registrierung muss der Programmcode auf die senseBox kopiert werden. Wenn du eine senseBox mit WiFi-Bee oder Lan-Bee hast, kannst du den Programmcode einfach und schnell online kompilieren und per Drag-and-Drop übertragen. Dazu brauchst du keine Software auf dem Computer installieren.

## Erweiterte Konfiguration
Es besteht die Möglichkeit neben der HTTP REST API auch andere Schnittstellen zur Datenübertragung zu nutzen. Einstellungen hierfür müssen unter dem entsprechenden Reiter im Abschnitt Erweitert vorgenommen werden.
Detaillierte Anleitungen dazu sind hier zu finden:

- [MQTT](mqtt_client.md)
- [TheThingsNetwork](ttn_integration.md)