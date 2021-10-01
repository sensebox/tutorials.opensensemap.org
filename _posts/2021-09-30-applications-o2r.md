---
date: 2020-03-11
title: o2r - Open Science Analysis
categories: analysis
description: Umweltdaten analysiert als reproduzierbares Projekt
type: Document
title_order: 3
image1: /images/analysis/o2r/giphy.gif
image2: /images/analysis/o2r/rstudio-screenshot.png
---

Der Beginn des neuen Jahres ist die Zeit der guten Vorsätze. Für den Wissenschaftler Daniel Nüst vom Forschungsprojekt “Offene Reproduzierbare Forschung” (o2r) bedeutete dies sich endlich mit seiner brandneuen senseBox:home zu beschäftigen und eine kleine reproduzierbare Datenanalyse zu erstellen. Dank der offenen Hardware von senseBox, den offenen Daten von der openSenseMap, und Freier Open Source Software (FOSS) konnte er eine transparente und nachvollziehbare Untersuchung über Feinstaubwerte zum Jahreswechsel in Münster erstellen.

Auf Basis von BinderHub kann jeder mit nur wenigen Klicks das gleiche virtuelle Labor in seinem Browser öffnen, welches für die ursprüngliche Untersuchung genutzt wurde. Und alles ohne irgendwelche Software zu installieren.

{% include image.html image=page.image1 %}

Natürlich kann der gesamte Quellcode auch auf dem eigenen Computer ausgeführt und inspiziert werden. Er ist gemeinsam mit den Daten auf GitHub veröffentlicht: [](https://github.com/nuest/sensebox-binder/)

Die Analyse umfasst das Herunterladen der Messdaten mit opensensmapR, die Berechnung von statistischen Kennwerten, und verschiedene graphische Darstellungen auf Basis der Software R. Der folgende Screenshots zeigt die das Analyseskript und das erzeugte Dokument im Editor RStudio.

{% include image.html image=page.image2 %}

Wenn Du es nicht erwarten kannst, dann schau Dir unter diesem Link die lesbare (aber nicht editierbare) fertige Version der Analyse an.

Und Daniel ist nicht alleine mit seinem Interesse an Feinstaubmessungen in der Neujahrsnacht. Johannes Friedrich, Wissenschaftler an der Universität Bayreuth, hat mit seiner Software senseBox die Daten von über 400 senseBoxen heruntergeladen, visualisiert und bei Twitter für die Jahre 2018, 2019 und 2020 veröffentlicht.

{% include image.html image=page.image2 %}