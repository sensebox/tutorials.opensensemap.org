---
date: 2020-03-11
title: senseBoxIO Library
categories: arduino
description: Verwendung der senseboxIO Library
type: Document
resources:
  - name: "senseBoxIO Library"
    link: https://github.com/sensebox/senseBoxMCU-core/tree/master/arduino/samd/libraries/senseBoxIO
---

Die senseBoxIO Library ist Bestandteil des Board-Support-Package und wird automatisch installiert. 

Die senseBoxIO Library lässt sich einzeln über folgenden Befehl einbinden:

```arduino
include <senseBoxIO.h>
```

> Beachte: Verwendest du bereits die senseBoxMCU Library ist die senseBoxIO Library bereits integriert und muss nicht zusätzlich inkludiert werden.

## Ein-/Ausschalten der Ports

Über die senseBoxIO Library können nicht verwendete Ports ein-/ausgeschaltet werden:

#### Deaktivieren aller Ports
```arduino
 void powerNone(void)
```  
#### Aktivieren aller Ports

```arduino
  void powerAll(void)
```  
#### Selektives Ein-/Ausschalten von Ports und Anschlüssen

```arduino

  void powerI2C(bool on) //power the I2C Ports
  
  void powerUART(bool on) //power the UART Ports

  void powerXB1(bool on) //power XBEE Port 1
 
  void powerXB2(bool on) //power XBEE Port 2
 
  void SPIselectNone(void) //
 
  void SPIselectXB1(void) //
 
  void SPIselectXB2(void) //

```

## Ein-/Ausschalten der Status LED

Erlaubt das Ein-/Ausschalten der Status LED's


```arduino
  void statusNone(void) // deaktiviere alle Status LED's

  void statusRed(void) //aktiviere die rote Status LED

  void statusGreen(void) //aktivere die grüne Status LED
```

