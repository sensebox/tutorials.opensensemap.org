---
date: 2020-03-11
title: Luftdruck- und Temperatursensor
categories: hardware
description: Luftdruck- und Temperatursensor (BMP280)
type: Document
resources:
  - name: "Shop"
    link: https://sensebox.kaufen/product/luftdruck-temperatur
  - name: "Bosch BMP280 Data sheet"
    link: https://www.bosch-sensortec.com/media/boschsensortec/downloads/datasheets/bst-bmp280-ds001.pdf
image: /images/2020-03-11-sensoren-luftdruck-temperatur/bmp_top.png
block: /images/2020-03-11-sensoren-luftdruck-temperatur/block_luftdruck_temperatur.svg
---
Dieser Sensor misst den Luftdruck und die Temperatur und basiert auf dem BMP280 Sensor von Bosch.

{% include image.html image=page.image %}


## Technische Informationen

* "Plug-in-and-Go" senseBox kompatibel
* Betriebsdruck 300 bis 1100 hPa
* Relative Präzision ±0.12 hPa
* Absolute Präzision ±1 hPa
* Betriebsversorgungsstrom 2.7μA bei 1 Hz Sampling Frequenz
* Maße: 25mm x 25mm x 9mm
* Gewicht: 2,4 g

## Programmierung

```arduino
#include "SenseBoxMCU.h"
#include <SPI.h>

BMP280 bmp_sensor;

void setup() {
  Serial.begin(9600);
  bmp_sensor.begin();
}

void loop() {
    Serial.print("Pressure: ");
    Serial.println(bmp_sensor.getPressure());
    Serial.print("Temperature: ");
    Serial.println(bmp_sensor.getTemperature());
    Serial.print("Altitude: ");
    Serial.println(bmp_sensor.getAltitude(1000));
}
```

## Programmierung (Blockly)

In Blockly kann der Sensor über folgenden Block ausgelesen werden:

{% include image.html image=page.block %}

Im Block kannst du zwischen den verschiedenen Parametern des Luftdruck-/Temperatursensor auswählen:

- Luftdruck in Pascal (Pa)
- Temperatur in Celsius (°C)
- Höhe über NN in m (dazu wird ein Referenzluftdruck benötigt)