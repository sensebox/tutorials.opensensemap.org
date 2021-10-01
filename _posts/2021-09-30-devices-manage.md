---
date: 2021-09-30
title: Verwalten von Boxen
categories: devices
description: Einstellungen registrierter Messgeräte anpassen
title_order: 5
type: Document
resources:
image1: /images/2020-03-11-opensensemap-manage/osem_dashboard.png
---

Jeder registrierte Nutzer kann beliebig viele Boxen auf der openSenseMap verwalten.
Wenn die Einstellungen einer Box nachträglich geändert oder der Sketch heruntergeladen werden sollen, ist dies über das **Dashboard** möglich.
Dieses ist in der Menuleiste unter dem User-Icon verfügbar, sobald ein Nutzer eingeloggt ist:

{% include image.html image=page.image1 %}

Im Dashboard können...

- [neue Boxen registriert werden](/opensensemap/opensensemap-register/),
- bestehende Boxen angepasst oder entfernt werden,
- Sketches zur Programmierung einer Box heruntergeladen werden.

## Station anpassen
Durch Klick auf den *ÄNDERN*-Button einer Box im Dashboard können beliebige Eigenschaften dieser Box nachträglich verändert werden.
Nachdem in einem der Abschnitte Änderungen vorgenommen wurden, werden diese durch Klick auf das Diskettensymbol oben rechts übernommen.

> ***Hinweis:*** *Wenn die Sensorkonfiguration geändert wurde, muss der Programmcode der Messstation in den allermeisten Fällen ebenfalls aktualisiert werden. Dieser ist unter dem Reiter Skript zu finden, um ihn in die Arduino IDE zu kopieren. Falls die WiFi-Version der Messstation verwendet wird, muss erneut die SSID und das WiFi Passwort im Sketch ersetzt werden!*

## Station löschen
Falls eine Messstation nicht mehr verwendet wird oder die Messungen dieser Box von der openSenseMap entfernt werden sollen, kann diese gelöscht werden.
Dazu muss im Bearbeitungsmodus (s.o.) im Reiter *Allgemein* unter dem Feld "Messstation löschen" der Wert `DELETE` eingetragen werden.
Anschließend erscheint unter dem Feld ein Button, durch welchen die Messstation und ihre Messungen gelöscht werden.

> ***Achtung:*** *Hierdurch werden neben der Station alle hinterlegten Sensordaten unwiderruflich entfernt! Da die Messungen auch für eine nachträgliche Datenauswertung wertvoll sein können, muss abgewägt werden, ob eine Station wirklich gelöscht werden sollte.*
