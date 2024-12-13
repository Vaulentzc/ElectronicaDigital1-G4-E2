# ElectronicaDigital1-laboratorio1
Desarrollo de la práctica 1 de laboratorio sobre la comparación de tecnologías TTL y CMOS

## 2. Procedimeinto
### Parte 1
  2.1. Se revisaron los datasheets de los dispositivos 74LS04 y CD4069 proporcionados por el fabricante. Se identificaron y registraron los parámetros eléctricos relevantes como <sub>IH</sub>, V<sub>IL</sub>, V<sub>OH</sub>, V<sub>OL</sub>, t<PHL>OL</sub>, t<PLH>OL</sub>​, entre otros, para realizar una comparación directa. La información se organizó en una tabla para facilitar el análisis.
  
  2.2. Se analizaron los esquemas de aplicación recomendados en los datasheets para identificar los circuitos equivalentes típicos.
  
  2.3. Se diseñó un circuito de prueba para cada dispositivo en el que se aplicó una señal cuadrada de 1 kHz con una amplitud adecuada. Utilizando un osciloscopio, generador de señales y una fuente DC se midieron los niveles de V<sub>OUT</sub> en función de V<sub>IN</sub> para obtener la función de transferencia y determinar   V<sub>IH</sub>, V<sub>IL</sub>, V<sub>OH</sub>, V<sub>OL</sub>.
  
### Parte 2
  2.1. Determinar el fan-in y fan-out de cada uno de los dispositivos; el fan-in consiste en el número de entradas mientras que el fan-out se determinó con midiendo la relación entre las corrientes de entrada y salida del siguiente circuito con cada uno de los dispositivos
  2.2. Determinar la disipación de potencia.
  2.3. se implementó un circuito de entrada y de salida para que fuera funcional tanto para el TTL como para el CMOS teniendo en cuenta los parámetros encontrados en la sección anterior para analizar el comportamiento del mismo.

### Parte 3
En esta última parte se planteó estudiar el oscilador en anillo basado en la compuerta NOT. Para ello se realizó el montaje de dos osciladores en anillo con el negador CMOS, uno con tres entradas y el otro con cinco entradas como se observa a continuación.
![Simulacion oscilador en anillo con 3 entradas en CMOS](Simulaciones-Parte3/OsciladorCMOS-con3.png)
![Simulacion oscilador en anillo con 5 entradas en CMOS](Simulaciones-Parte3/OsciladorCMOS-con5.png)

 En base a esto, se realizó la lectura de de su frecuencia de oscilación y de la forma de su onda, para luego hacer una comparación entre amboos osciladores según lo observado.

## Resultados y análisis
### Parte 1
### Parte 2
### Parte 3

## Conclusiones

## Referencias
