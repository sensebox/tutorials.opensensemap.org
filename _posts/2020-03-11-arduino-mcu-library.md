---
date: 2020-03-11
title: senseBoxMCU Library
categories: arduino
description: Verwendung der senseBoxMCU Library
type: Document
resources:
  - name: "Shop"
    link: https://sensebox.kaufen/product/sensebox-mini
  - name: senseBoxMCU Library
    link: https://github.com/sensebox/SenseBoxMCU-Lib
---
# senseBox MCU Library
Die senseBox MCU Library bietet dir Zugriff auf die folgenden Funktionen/Sensoren:

- Temperatur- und Luftfeuchtigkeitsensor [Sensor HDC1080](https://sensebox.kaufen/product/temperatur-luftfeuchte)
- Luftdruck- und Temperatursensor [BMP280](https://sensebox.kaufen/product/luftdruck-temperatur)
- Helligkeit- und UV-Sensor [TSL45315 and VEML6070](https://sensebox.kaufen/product/licht-sensor)
- Ultraschall Distanzsensor [HC SR04]
- Feinstaubsensor [SDS011](https://sensebox.kaufen/product/feinstaub-sds011)
- senseBox GPS [CAM-M8Q](https://sensebox.kaufen/product/gps) --> benötigt [TinyGPSPlus](https://github.com/mikalhart/TinyGPSPlus)
- Wifi-Verbindung über das WifiBee [WINC1500](https://sensebox.kaufen/product/wifi-bee) 
- Senden von Daten an die [openSenseMap](https://opensensemap.org)

## Verwendung
Die senseBoxMCU Library ist Bestandteil des Board-Support-Packages und wird automatisch installiert. 

Die senseBoxMCU Library lässt sich einzeln über folgenden Befehl einbinden:

```arduino
include <senseBoxMCU.h>
```

## Klassen und Funktionen
Die Library enthält die folgenden Klassen und Funktionen. Erstelle eine neue Instanz einer Klasse, um auf ihre Funktionen zugreifen zu können, z.B. bietet dir die Klasse 

```Arduino
#include "senseBoxMCU.h"

HDC1080 hdc;
```
 
Zugriff auf die folgenden Funktionen:

```Arduino
hdc.getTemperature();
hdc.getHumidity();
```

### Bee
```Arduino 
public:
	Bee();
		uint8_t connectToWifi(char* ssid, char* password);
		void startAP(char* ssid);
		char* getSsid();
		char* getPassword();
		char* getIpAddress();
```		

### OpenSenseMap
```Arduino 
Classname: OpenSenseMap

functions public:
			OpenSenseMap(const char* boxId, Bee* bee, const char* host);
			void uploadMeasurement(float value, char* sensorID);
			void uploadMobileMeasurement(float value, char* sensorID, float lat, float lng);
			void setUploadInterval(unsigned int);
```

### SDS011
```Arduino 
Classname: SDS011

functions public:
			SDS011(Stream& serial);
			float getPm10(void);
			float getPm25(void);
```

### HDC1080
```Arduino 
Classname: HDC1080

functions public:
			uint8_t begin(void);
			double getTemperature(void);
			double getHumidity(void); 
```

### VEML6070
```Arduino 
Classname: TSL45315

functions public:
			uint8_t begin(void);
			double getUvIntensity(void);
```

### TSL45315
```Arduino 
Classname: TSL45315

functions public:
			uint8_t begin(void);
			unsigned long getIlluminance(void); 
```

### Ultrasonic
```Arduino 
Classname: Ultrasonic

functions public:
			Ultrasonic(int rx, int tx);
        	long getDistance(void);
```

### BMP280
```Arduino 
Classname: BMP280

functions public:
			bool  begin();
			float getTemperature(void);
			float getPressure(void);
			float getAltitude(float seaLevelhPa = 1013.25);
```

### GPS
```Arduino 
Classname: GPS

functions public:
			void begin();
			float getLatitude();
			float getLongitude();
			float getAltitude();
			float getSpeed();
			float getHdop();
			float getDate();
			float getTime();
```

### Mic

```Arduino

Classname: Microphone

functions public: 
		Microphone (int pin);
		float getValue();
```

### BMX

```Arduino

Classname BMX055

functions	public:
		uint8_t beginAcc(char range);
		uint8_t beginGyro(void);
		uint8_t beginMagn(void);
		void getAcceleration(float *x, float *y, float *z, float *accTotal);
		void getMagnet(int *x, int *y, int *z);
		void getRotation(int *x, int *y, int *z);
```

### Button

```Arduino

Classname Button

functions public: 
		Button(int pin);
		void begin();
		bool getSwitch();
		bool isPressed();
		bool wasPressed();
```


