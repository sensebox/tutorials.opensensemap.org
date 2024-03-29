---
date: 2021-09-30
title: TTN v3 über LoRa WAN
categories: integrations
description: Datenübertragung mit LoRa ins TheThingsNetwork
type: Document
image1: /images/integrations/ttn_v3/add-application.png
image2: /images/integrations/ttn_v3/register-device.png
image3: /images/integrations/ttn_v3/register-device-euis.png
image4: /images/integrations/ttn_v3/register-device-network.png
image5: /images/integrations/ttn_v3/register-device-join-settings.png
image6: /images/integrations/ttn_v3/application-cayenne.png
image7: /images/integrations/ttn_v3/blockly.png
image8: /images/integrations/ttn_v3/osem-registrierung.png
image9: /images/integrations/ttn_v3/webhook.png
---

Das öffentliche The Things Network (TTN) migriert im Laufe des Jahres von Version 2 zu Version 3. Es gibt einige Neuigkeiten, unter anderem ein Single Sign-On (SSO) System, eine neue Oberfläche aber auch eine andere Datenstruktur. In diesem Projekt wollen wir zeigen, wie man (Stand Februar 2021) eine senseBox im neuen TTN registriert, in Blockly programmiert und seine Messwerte zur openSenseMap sendet.

In diesen Beispiel zeigen wir die Anwendung anhand der senseBox.

## 1. Application erstellen
Melde dich in der neuen TTNv3 Console an ([](https://eu1.cloud.thethings.network/console/)). Dort können die gleichen Login-Daten wie bisher verwendet werden. Klicke auf Applications und erstelle eine neue Application mit einer beliebigen ID.

{% include image.html image=page.image1 %}


## 2. Device erstellen
Innerhalb der Application können nun neue Devices hinzugefügt werden. Klicke auf “+ Add end Device” und füge ein neues Devices (z.B. eine senseBox hinzu).

Wähle oben Manually aus. Die Aktivierung kann Over the air acitivation (OTAA) bleiben und als LoRaWAN-Version nehmen wird MAC V1.0.2 verwendet. Die restlichen Einstellungen bleiben wie gehabt.

{% include image.html image=page.image2 %}

## 3. EUIs
Im nächsten Schritt wird dem neuen Device eine ID gegeben und müssen die EUIs werden eingetragen. Die AppEUI kann über den Button mit Nullen gefüllt werden. Die DevEUI muss man aktuell noch selbst befüllen (wir haben hier einfach zufällige Werte einegtragen). Man kann aber auch z.B. die DevEUI von TTNv2 nehmen, wenn das Gerät vorher dort registriert war. Eine automatische Generierung einer DevEUI ist aber auch für TTNv3 geplant: [](https://www.thethingsnetwork.org/forum/t/unable-to-generate-new-deveui-in-v3-console-known-issue/44486)

{% include image.html image=page.image3 %}

## 4. Netzwerkeinstellungen
In den Netzwerkeinstellungen werden folgende Einstellungen ausgewählt:

- Frequency Plan: Europe 863-870 MHz (SF9 for RX2 - recommended)
- Regional Parameters version: PHY V1.0.2 REV A

{% include image.html image=page.image4 %}


## 5. Join Settings
In den Join Settings wird ein AppKey generiert und das Device wird der Application hinzugefügt.

{% include image.html image=page.image5 %}

## 6. Decoding
Das Device wurde nun erfolgreich erstellt. In diesem Tutorial wird das Cayenne Payload Format nutzen. Stelle daher das Payload Format der Application für den Uplink auf Cayenne LPP um.

{% include image.html image=page.image6 %}

## 7. Programmierung durch Blockly
Die Programmierung der senseBox MCU kann über die Lern- und Programmierumgebung durchgeführt werden. Die EUIs und den Key findet man in der Übersicht von seinem neuen Device in der TTNv3 Konsole.

Beim Kopieren der EUIs und des Keys muss man darauf achten, das richtige Format (lsb, msb) zu nutzen. Außerdem muss man die geschweiften Klammern { und } selbst vor bzw. hinter die Hexadezimalzahlen setzen, da diese aktuell nicht mitkopiert werden

Der Sketch kann jetzt kompiliert und wie gewohnt auf die senseBox MCU geladen werden. Nach dem Start der senseBox sollten nun in der TTNv3 Console unter “Live data” Datenpakete erscheinen, wenn die senseBox in Reichweite eines TTN Gateways ist.

{% include image.html image=page.image7 %}

## 8. Geräteregistrierung
Registriere auf der openSenseMap eine neue senseBox und wählen bei der Hardware eine senseBox:edu oder Manuelle Konfiguration mit den entprechenden angeschlossenen Sensoren aus. In den erweiterten Einstellungen aktviere The Things Network und setzt das Decoding Profile auf Cayenne LPP (beta). Unter Application-ID und Device-ID trage die IDs der Application und des Devices ein, welche vorher bei der jeweiligen Registrierung in der TTNv3 Konsole beliebig gesetzt worden ist, z.B. “my-new-application” oder “my-new-device”. Ggf. muss noch das Cayenne LPP Phänomen für jeden entsprechenden Sensor angepasst werden.

{% include image.html image=page.image8 %}

## 9. Webhook
Im letzten Schritt müssen die Daten von TTN zur openSenseMap weitergeleitet werden. Füge dazu der TTN Application eine neue Webhook Integration hinzu. Nach einem Klick auf “+ Add webhook” wähle “Custom webhook” und gib dem neuen Webhook eine ID, z.B. osem. Als Webhook Format wähle JSON aus und die Base URL für den Endpoint ist [](https://ttn.opensensemap.org/v3). Außerdem muss noch Uplink messages aktiviert wreden. Nun ganz unten auf “Add webhook” klicken und schon ist die Weiterleitung zur openSenseMap eingerichtet. Nach ein paar Minuten sollten die ersten Messwerte auf der openSenseMap zu sehen sein.

{% include image.html image=page.image9 %}