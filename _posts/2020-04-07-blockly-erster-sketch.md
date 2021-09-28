---
date: 2020-04-07
title: Dein erster Sketch
title_order: 1 # Indicates the order of apperance on the overview pages
categories: Blockly
description: Schreibe dein erstes Programm für die senseBox
type: Document
set: blockly-erste-schritte
set_order: 3

resources:
  - name: "Blockly.senseBox.de"
    link: https://blockly.sensebox.de
image1: /images/2020-04-08-blockly-erste-schritte/Auswahl.png
image2: /images/2020-04-08-blockly-erste-schritte/Oberflaeche.png
image3: /images/2020-04-08-blockly-erste-schritte/blockly-es-1.svg
image4: /images/2020-04-08-blockly-erste-schritte/blockly-es-2.svg
image5: /images/2020-04-08-blockly-erste-schritte/blockly-es-3.svg
image6: /images/2020-04-08-blockly-erste-schritte/modi.png

---


Blockly ist die vom senseBox-Team entwickelte grafische Programmierumgebung für die senseBox. Sie ist online kostenlos und ohne Softwareinstallation verfügbar und basiert auf dem [Blockly Framework](https://developers.google.com/blockly) von Google.

## Erste Schritte

Öffne Blockly für senseBox in deinem Browser unter [https://blockly.sensebox.de](https://blockly.sensebox.de/). Dort musst du zuerst deine senseBox-Version auswählen.

{% include image.html image=page.image1 %}

## Oberfläche

Nachdem du deine senseBox-Version ausgewählt hast, befindest du dich auf der Programmieroberfläche. Diese lässt sich in fünf wichtige Bereiche einteilen.

{% include image.html image=page.image2 %}

1. **Die Menüleiste:**
    In der Menüleiste findest du von links nach rechts das Menü, den Namen deines Projektes, die Schaltflächen zum Öffnen und Speichern von Blöcken, dem Speichern eines kompilierten Sketches und dem Löschen des gesamten Projektes.
    >ACHTUNG: Wenn du dein Projekt speichern möchtest, um es später erneut in Blockform zu öffnen, muss es als Blöcke gespeichert werden. Beim Speichern als Sketch wird dein Programm in kompilierter Form gespeichert und kann nicht mehr in Blockform geöffnet werden.
2. **Die Toolbar:**
    Hier findest du alle Blöcke zum Programmieren der senseBox. Die Farbe der Blöcke zeigt die jeweilige Kategorie an, zu welcher der Block gehört.
3. **Der Arbeitsbereich:**
    In diesem Bereich fügst du deine Programme zusammen. Unten rechts befinden sich Schaltfläche zum Zentrieren, Vergrößern, Verkleinern und Löschen der Blöcke.
4. **Kopieren und Kompilieren:**
    Die orange Schaltfläche mit dem Notizblock ist die Schaltfläche zum Kompilieren und Herunterladen deines Programms. Die blaue Schaltfläche speichert den Arduino Quellcode deines Programms in der Zwischenablage.
5. **Arduino Quellcode und XML Blöcke:**
    Hier wird dir parellel zur grafischen Programmierung der Arduino Quellcode angezeigt. Durch einen Klick auf die Schaltfläche XML Blöcke lässt sich die Ansicht auf den XML Code umschalten.

## Programmieren

Um dein Programm zu schreiben, müssen die Blöcke aus der Toolbar per Drag & Drop im Arbeitsbereich platziert werden.

### Schritt 1: Setup und Endlosschleife

Dieser Block wird direkt beim Starten der Oberfläche geladen und sollte immer verwendet werden. Die zwei Basisfunktionen `Setup()` und `Endlosschleife()` werden immer benötigt, um ein funtkionsfähiges Programm zu schreiben.
Alle Blöcke, die innerhalb der `Setup()`-Funktion stehen, werden nur zu Beginn des Programmes einmal ausgeführt. In dieser Funktion wird zum Beispiel das Display initialsiert oder die WLAN Verbindung hergestellt. Alle Blöcke, die innerhalb der `Endlosschleife()` stehen, werden fortlaufend ausgeführt. Der Mikrocontroller führt hierbei alle Blöcke immer wieder von oben nach unten hin aus. In der `Endlosschleife()` werden zum Beispiel die Sensoren ausgelesen oder auch die Messwerte auf SD-Karte gespeichert oder ins Internet übertragen.

{% include image.html image=page.image3 %}

### Schritt 2: Die eingebaute LED einschalten

Um die eingebaute LED anzuschalten, musst du den `LED an digital`-Block in die Endlosschleife ziehen. Anschließend wählst du unter PIN "BUILTIN_1" und unter Status "Ein" aus.

{% include image.html image=page.image4 %}

>Die eingebaute LED findest du über dem roten Reset-Knopf auf der senseBox MCU.


### Schritt 3: Die eingebaute LED blinken lassen

Um die eingebaute LED blinken zu lassen, ist es nötig, sie mit einem weiteren `LED an digital` Block wieder auszuschalten. Zusätzlich muss nach dem An- sowie Ausschalten eine Pause eingefügt werden, damit das Blinken überhaupt sichtbar ist. Den `Warte` Block findest du in der Kategorie `Zeit`.

{% include image.html image=page.image5 %}

<div class="panel panel-info">
  <div class="panel-heading">
1000 Millisekunden sind 1 Sekunde
  </div>
  <div class="panel-body">
  </div>
</div>
<br>

## Herunterladen und Übertragen

Nachdem dein Programm fertig ist, klickst du den orangenen "Sketch kompilieren" Button und es wird dir eine .BIN-Datei zum Download angeboten. Diese musst du an einem beliebigen Ort speichern.

### Modus der senseBox MCU wechseln
Die senseBox MCU verfügt über zwei Modi. Den Programm- und den Lern-Modus. 

Im **Programm-Modus** wird ein übertragenes Programm ausgeführt. Du erkennst ihn daran, dass die grünen Status-LEDs der senseBox MCU leuchten.

Im **Lern-Modus** wird die senseBox als Wechseldatenträger erkannt und es können neue Programme übertragen werden. Du erkennst ihn daran, dass die rote LED neben dem Reset-Knopf dauerhaft leuchtet/pulsiert.

{% include image.html image=page.image6 %}
<br>
Um dein Programm übertragen zu können, musst du deine MCU nun in den Lern-Modus versetzen. 
<iframe width="853" height="480" src="https://www.youtube.com/embed/jzlOJ7Zuqqw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>

### Übertragen 
Schließt du deine senseBox MCU an deinen Computer an und führst einen Doppelklick auf dem roten Button aus, wird diese als Wechseldatendräger erkannt. Mit einem Klick auf “Code Kompilieren” in der Weboberfläche wird dein Programmcode auf dem Server kompiliert und eine .BIN-Datei wird dir zum Download angeboten. Je nachdem welches Betriebssystem du verwendest, unterscheidet sich nun der Kopiervorgang.

**Kopieren unter Windows**
Unter Windows kannst du die erstellte .BIN-Datei einfach per Drag & Drop auf den Wechseldatenträger SENSEBOX kopieren. Die rote LED am Button wird kurz flackern und anschließend startet das Board selbstständig neu und führt deinen Programmcode aus.

**Kopieren unter MacOS**
Unter MacOS funktioniert das Kopieren der .BIN-Datei per Drag & Drop leider zurzeit noch nicht. Eine Möglichkeit ist die Datei im Terminal per dd-Befehl zu kopieren (nur erfahrenen Nutzern zu empfehlen!) oder einen alternativen Dateimanager wie zum Beispiel [muCommander](https://www.mucommander.com/) zu verwenden.

**Kopieren unter Linux**
Unter Linux kannst du die erstellte .BIN-Datei einfach per Drag & Drop auf den Wechseldatenträger SENSEBOX kopieren. Die rote LED am Button wird kurz flackern und anschließend startet das Board selbstständig neu und führt deinen Programmcode aus.

