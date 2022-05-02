---
date: 2021-09-30
title: luftdaten.info / Sensor.Community
categories: devices
title_order: 3
description: Übertragung vom luftdaten.info / Sensor.Community Messgerät
type: Document
---

Die Feinstaubsensoren des OK Lab Stuttgart Luftdaten.info sind Open Source Bausätze, die sich modifizieren lassen um die Daten auch an die openSenseMap zu senden.

## 1. Vorbereitung

Um die Daten an die openSenseMap zu senden, muss zuallererst herausgefunden werden, welche Sensoren am Feinstaubsensor verwendet werden. Dies kann man am besten in dem Webinterface des Feinstaubsensors nachsehen:

<img src="https://github.com/sensebox/resources/raw/master/images/luftdaten/02_Sensor_Konfiguration.png"/>

## 2. Sensorregistrierung

Nun muss eine neue Messstation auf der openSenseMap mit der gerade erhaltenen Konfiguration registriert werden. Sollten bei der Registrierung die falschen Sensoren ausgewählt worden sein, ist es am einfachsten die Box einfach wieder zu löschen und mit der korrekten Sensorkonfiguration neu zu registrieren.
Falls noch nicht geschehen, registriere einen neuen Nutzer und lege mit ihm eine neue Messstation an. Dabei musst du User, Standort, Aufstellungsort und Namen ausfüllen. Gruppenkennzeichnung ist frei wählbar und könnte z.B. Luftdaten sein.

### Vordefinierte Sensorkonfigurationen

Während der Registrierung eines neuen Gerätes auf der openSenseMap, habt ihr die Auswahl zwischen mehreren Geräten (`senseBox:home`, `senseBox:edu`, `luftdaten.info`, `hackAIR` und `Manuelle Konfiguration!`).

Unter `luftdaten.info / Sensor.Community` findet ihr vorkonfigurierte Geräte mit bestimmten Sensorkonfigurationen.

<img src="https://github.com/sensebox/resources/raw/master/images/luftdaten/01_openSenseMap_Konfiguration.png"/>

Wenn euer Setup dabei ist, könnt ihr dies auswählen und die Registrierung abschließen. Danach bekommt ihr eine *boxId*, die ihr über die [Konfigurationswebseite](#4-konfiguration) eures Sensor.Community Gerätes eintragen könnt. Dies *boxId* ist eine 24 Zeichen lange Zeichenkette, die ungefähr so aussieht: `58a88c6b650831d8a3625e01`

### Manuelle Sensorkonfiguration

Wenn ihr eure Sensorkonfiguration nicht unter den vordefinierten Geräten findet, könnt ihr trotzdem das Gerät registrieren und die Messwerte übertragen.

Dazu muss bei der Registrierung das Gerät *manuell* konfiguriert werden.
![](https://pad.sensebox.de/uploads/upload_81e069761c2ecb35227354e6345a25e7.png)

In der manuellen Konfiguration könnt ihr die einzelnen Sensoren spezifizieren, die an eurem Sensor.Community Gerät angeschlossen sind.

Dabei muss auf folgendes geachtet werden:

1. Titel des Sensors
1. Sensortyp des Sensors

Wenn die Eingaben korrekt sind, kann die openSenseMap API das geschickte Format der Sensor.Community Geräte verstehen und die Werte den richtigen Sensoren zuordnen.

> Hinweis: Die Payload von `luftdaten.info` Geräten sieht folgendermaßen aus:
>
> ```json
> {
>  "sensordatavalues": [
>    {
>      "value_type": "SDS_P1",
>      "value": "5.38"
>    },
>    {
>      "value_type": "SDS_P2",
>      "value": "4.98"
>    }
>  ]
>}
>```

Die nachfolgende Tabelle beschreibt, wie ihr die Sensoren manuell konfiguriert:
> :warning: Bei dem openSenseMap Sensortitel und Sensortyp muss nicht auf die Groß -oder Kleinschreibung geachtet werden.

|Sensor.Community Sensor | sensor.community value_type | openSenseMap Sensor Titel | openSenseMap Sensortyp | supported |
| ------------- | -------- | -------- | -------- | -------- |
|DHT22| temperature     | `temperatur`     | DHT     | ✅ |
|DHT22| humidity | `rel. luftfeuchte`, `luftfeuchtigkeit`, `luftfeuchte` | DHT | ✅ |
|BMP180| BMP_pressure | `luftdruck`, `druck` | BMP | ✅ |
|BMP180| BMP_temperature | `temperatur` | BMP | ✅ |
|HTU21D| HTU21D_temperature | `temperatur` | HTU21D | ✅ |
|HTU21D| HTU21D_humidity | `rel. luftfeuchte`, `luftfeuchtigkeit`, `luftfeuchte` | HTU21D | ✅ |
|SHT3x| SHT3X_temperature | `temperatur` | SHT3X | ✅ |
|SHT3x| SHT3X_humidity | `rel. luftfeuchte`, `luftfeuchtigkeit`, `luftfeuchte` | SHT3X |  ✅ |
|BME280| BME280_temperature | `temperatur` | BME280 |  ✅ |
|BME280| BME280_pressure | `luftdruck`, `druck`| BME280 |  ✅ |
|BME280| BME280_humidity | `rel. luftfeuchte`, `luftfeuchtigkeit`, `luftfeuchte` | BME280 |  ✅ |
|BMP280| BMP280_pressure | `luftdruck`, `druck` | BMP280 |  ✅ |
|BMP280| BMP280_temperature | `temperatur` | BMP280 |  ✅ |
|DS18B20| DS18B20_temperature | `temperatur` | DS18B20 |  ✅ |
|SDS011| SDS_P1 | `pm10`, `p10`, `p1` | SDS11 |  ✅ |
|SDS011| SDS_P2 | `pm2.5`, `pm25`, `p2.5`, `p25`, `p2` | SDS11 |  ✅ |
|Plantronic PM| PMS_P0 | `pm01`, `pm0`, `p1.0`, `p0` | PMS | ✅ |
|Plantronic PM| PMS_P1 | `pm10`, `p10`, `p1` | PMS | ✅ |
|Plantronic PM| PMS_P2 | `pm2.5`, `pm25`, `p2.5`, `p25`, `p2` | PMS | ✅ |
|Honeywell PM| HPM_P1 | `pm10`, `p10`, `p1` | HPM | ✅ |
|Honeywell PM| HPM_P2 | `pm2.5`, `pm25`, `p2.5`, `p25`, `p2` | HPM | ✅ |
|Tera Sensor Next PM| NPM_P0 | `pm01`, `pm0`, `p1.0`, `p0` | HPM | ✅ |
|Tera Sensor Next PM| NPM_P1 | `pm10`, `p10`, `p1` | NPM | ✅ |
|Tera Sensor Next PM| NPM_P2 | `pm2.5`, `pm25`, `p2.5`, `p25`, `p2` | NPM | ✅ |
|Tera Sensor Next PM| NPM_N1 | `nc1.0`, `nc1`, `n1.0`, `n1` | NPM | ✅ |
|Tera Sensor Next PM| NPM_N10 | `nc10`, `n10` | NPM | ✅ |
|Tera Sensor Next PM| NPM_N25 | `nc2.5`, `n2.5`| NPM | ✅ |
|Piera Systems IPS-7100| IPS_P0 | `pm01`, `pm0`, `p1.0`, `p0` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_P1 | `pm10`, `p10`, `p1` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_P2 | `pm2.5`, `pm25`, `p2.5`, `p25`, `p2` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_P01 | `pm0.1`, `p0.1` |IPS | ✅ |
|Piera Systems IPS-7100| IPS_P03 | `pm0.3`, `pm03`, `p0.3`, `p03` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_P05 | `pm0.5`, `pm05`, `p0.5`, `p05` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_P5 | `pm5`, `p5` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_N1 | `nc1.0`, `nc1`, `n1.0`, `n1` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_N10 | `nc10`, `n10` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_N25 | `nc2.5`, `n2.5` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_N01 | `nc0.1`, `n0.1`, `nc01`, `n01` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_N03 | `nc0.3`, `n0.3`, `nc03`, `n03` | IPS | ✅ |
|Piera Systems IPS-7100| IPS_N05 | `nc0.5`, `n0.5`, `nc05`, `n05`| IPS | ✅ |
|Piera Systems IPS-7100| IPS_N5| `nc5`, `n5` | IPS | ✅ |
|PPD42NS| durP1 |  |  | ❌ |
|PPD42NS| ratioP1 |  |  | ❌ |
|PPD42NS| P1 |  |  |❌ |
|PPD42NS| durP2 |  |  |❌ |
|PPD42NS| ratioP2 |  |  |❌ |
|PPD42NS| P2 |  |  |❌ |
|SPS30 PM| SPS30_P0 | `pm01`, `pm0`, `p1.0`, `p0` | SPS30 | ✅ |
|SPS30 PM| SPS30_P2 | `pm2.5`, `pm25`, `p2.5`, `p25`, `p2` | SPS30 | ✅ |
|SPS30 PM| SPS30_P4 | `pm4`, `p4` | SPS30 | ✅ |
|SPS30 PM| SPS30_P1 | `pm10`, `p10`, `p1` | SPS30 | ✅ |
|SPS30 PM| SPS30_N05 | `nc0.5`, `n0.5`, `nc05`, `n05` | SPS30 | ✅ |
|SPS30 PM| SPS30_N1 | `nc1.0`, `nc1`, `n1.0`, `n1` | SPS30 | ✅ |
|SPS30 PM| SPS30_N25 | `nc2.5`, `n2.5` | SPS30 | ✅ |
|SPS30 PM| SPS30_N4 | `nc4.0`, `n4.0`, `nc4`, `n4` | SPS30 | ✅ |
|SPS30 PM| SPS30_N10 | `nc10`, `n10` | SPS30 | ✅ |
|SPS30 PM| SPS30_TS || SPS30| ❌ |
|SCD30| SCD30_temperature | `temperatur` | SCD30 |  ✅ |
|SCD30| SCD30_humidity | `rel. luftfeuchte`, `luftfeuchtigkeit`, `luftfeuchte` | SCD30 | ✅ |
|SCD30| SCD30_co2_ppm || SCD30 | ❌ |
|DNMS| DNMS_noise_LAeq |  |  | ❌ |
|DNMS| DNMS_noise_LA_min |  |  | ❌ |
|DNMS| DNMS_noise_LA_max |  |  | ❌ |
|| samples |  |  | ❌ |
|| min_micro |  |  | ❌ |
|| max_micro |  |  | ❌ |
|| interval |  |  | ❌ |
|| signal | `stärke`, `signal` | wifi | ✅ |

**Beispiel:**

Beispielkonfiguration für die Übertragung der Temperatur vom SHT31 Sensor.
![](https://pad.sensebox.de/uploads/upload_870b22a353bee97e3939bbbcd7c32d3d.png)

## 3. Anpassung bestehender Geräte

Wenn ihr an eurem Gerät einen Sensor austauscht oder einen neuen anschließt, müsst ihr die Sensorkonfiguration auf der openSenseMap anpassen.

Dazu geht ihr in den *Editieren* Bereich des Gerätes und ändert den bestehenden Sensor oder fügt einen neuen hinzu.
![](https://pad.sensebox.de/uploads/upload_a7808229f4a5a77164f4b121e371eaaa.png)

Die Konfiguration erfolgt wie unter *Manuelle Konfiguration* beschrieben.

## 4. Konfiguration

Der Feinstaubsensor von Luftdaten.info lässt sich bequem über eine Webseite konfigurieren. Hierfür muss zuerst die IP des Gerätes im WLAN ausfindig gemacht werden. Dies gelingt am besten durch Ablesen im WLAN-Router.
Dann wird mit dem Internetbrowser die Konfigurationsseite des Feinstaubsensors aufgerufen, indem ihr in der Adressleiste die IP eingebt. Ihr landet nun auf einer Konfigseite und müsst unter dem Punkt “Weitere APIs” einen Haken bei “An openSenseMap senden” setzen. In das Feld ID die eigene ID eintragen.
Als letztes auf “Speichern” klicken und ein paar Minuten warten, um die Messungen auf der openSenseMap zu sehen.