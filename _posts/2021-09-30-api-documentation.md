---
date: 2021-09-30
title: API Dokumentation
categories: api
description: Einführung in die RESTful API der openSenseMap
type: Document
---

Die openSenseMap erstellt eine API zur Abfrage von Daten zu Boxen und Messungen sowie zum Upload von Messungen. Du findest sie [hier](https://api.opensensemap.org/).


Eine standardisierte REST-Schnittstelle regelt den Zugang zur Datenbank auf dem OSeM-Server. In der Datenbank ist dabei jede Messstation mit den Sensoren (bzw. Phänomenen) verknüpft, die bei der Registrierung definiert wurden. Jede Messstation hat dabei genau eine Identifikationsnummer (ID), genau wie jeder Sensor jeweils eine Sensor-ID zugewiesen bekommt. Alle IDs werden bei der Registrierung einer neuen Messstation erzeugt und euch nach der Registrierung per Mail zugeschickt. Diese IDs müsst ihr später in die Anfrage einbauen, die ihr zusammen mit einem Messwert an eine Messstation, genauer gesagt an den Sensor einer Messstation auf dem OSeM Server sendet.

Jede Messung wird über das HTTP-Protokoll mit der POST-Operation an den Server gesendet. Dazu muss eine eindeutige URI angegeben werden, die auf einen bestimmten Sensor einer bestimmten Messstation zeigt und wie folgt aufgebaut ist:

`https://api.opensensemap.org/boxes/:senseBoxId/:sensorId
`


Eine konkrete HTTP-Anfrage mit einem Messwert sieht dabei wie folgt aus:
```
POST /boxes/1234/abcd HTTP/1.1
Host: www.opensensemap.org
Content-Type: application/json
Connection: close
Content-Length: 14

{"value":22.5}
```

<br>
Ausführliche Beispiele zu den API-Routen findest du [hier in den API-Docs](https://docs.opensensemap.org).