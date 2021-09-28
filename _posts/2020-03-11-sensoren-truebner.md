---
date: 2020-03-11
title: Bodenfeuchte- und Temperatursensor
categories: hardware
description: Bodenfeuchte- und Temperatursensor Truebner SMT50
type: Document
resources:
  - name: "Shop"
    link: https://sensebox.kaufen/product/bodenfeuchte-temperatursensor-smt50
  - name: "Truebner SMT50"
    link: http://www.truebner.de/sites/default/files/Anleitung_SMT50_V1.1.pdf
image: /images/2020-03-11-sensoren-truebner/sensoren_bodenfeuchte_temperatur.png
block: /images/2020-03-11-sensoren-truebner/block_bodenfeuchte_temperatur.svg
---

# Bodentemperatur- & Feuchtigkeitssensor {#head}

Der Truebner SMT50 ist ein kapazitiver Bodentemperatur- und Feuchtigkeitssensor und eignet sich daher gut für diverse Anwendungen im heimischen Garten. Kapazitive Bodenfeuchtesensoren erzeugen ein elektrisches Feld um ihre Messelektroden herum. Das Feld dringt in den umgebenden Boden ein. Die Messelektronik des Sensors ermittelt die resultierende elektrische Kapazität der Elektroden. Je höher der Wassergehalt im Boden ist, desto größer wird die Messkapazität des Sensors.

{% include image.html image=page.image %}

## Technische Details
- Versorgungsspannung: 3.3 - 30 VDC (Gleichspannung)
- Stromaufnahme ca. 2.7 mA (gemessen bei 12VDC)
- Messbereich volumetrischer Wassergehalt: 0 – 50 % (bei +/- 3% Genauigkeit)
- Messbereich Temperatur: -20 bis +85 °C (bei +/- 1,0°C Genauigkeit)
- Messverfahren: FDR (Frequency Domain Response)
- Messsignal: symmetrisch, bipolar differentiell

### Maße
- Abmessungen: ca. 13,5 cm x 2,15 cm
- Gewicht inkl. 10m Kabel: ca. 235 g

## Programmierung (Arduino)



## Programmierung (Blockly)

In Blockly kann der Sensor über folgenden Block ausgelesen werden:

{% include image.html image=page.block %}

Im Block kannst du zwischen den verschiedenen Parametern des Bodenfeuchte- und Temperatursensors auswählen:

- Bodentemperatur in Grad Celsius (°C)
- Bodenfeuchte
