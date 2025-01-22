# Laboratorio 2
El sistema es una solución para garantizar el suministro de energía eléctrica en una finca, combinando el uso de baterias alimentadas con energía solar y la red eléctrica del comercializador local. Este sistema alterna entre las fuentes de energía según las condiciones de operación o detener el sistema de energización,y se planteó proporcionar indicadores para el estado del sistema.

## 1. Dominio comportamental (especificación y algoritmo)
### 1.1. Diagrama de caja negra

![Diagrama de caja negra](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Diagrama%20caja%20negra.png?raw=true)


#### Inputs:
  I1. red eléctrica.  
  I2. Baterias cargadas.  
  I3. Botón de paro de emergencia.  
  I4. Baterias cargadas.

#### Outputs:
  Q1. Indicador del tipo de red que está energizando la casa (Hay un indicador para la red electrica y otro para la bateria).  
  Q2. Indicador de que la red eléctrica está disponible (1 para está disponible, 0 para no está disponible).  
  Q3. Indicador de que las baterias están cargadas (1 para están cargadas, 0 para no están cargadas).  
  Q4. Indicador de que hay suficiente energía solar (1 para hay suficiente, 0 para no hay sufciente).  
  Q5. Indicador del paro de emergencia (1 para cuando está activado, 0 cuando no está activado).  
  Q8. Energía casa (1 para cuando la casa está energizada, 0 cuando no está energizada)

### 1.2. Diagrama de bloques

![Diagrama de bloques](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Diagrama%20de%20flujo.jpg?raw=true)

### 1.3. Tabla de verdad

![Tablas de verdad](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Tabla%20de%20verdad.png?raw=true)

En esta sección para simplificar el proceso se reprsentó Q1 como fuente donde 0 es cuando está seleccionada la red eléctrica y 1 cuando las baterías están seleccionadas, y en el caso de energía casa, 1 es cuando la casa está energizada y 0 para cuando no lo está.

## 2. Dominio físico inicial (circuito eléctrico)

Se establecen las siguientes suposiciones:

La casa siempre va a estar energizada a excepción del caso en el que se active el botón de emergencia, el cual el usuario debe activarlo de forma autónoma.

Se establece que la red eléctrica será la fuente principal de energía del sistema a través del relé conmutador que se conecta a la casa directamente. Cuando se presente un fallo en la red eléctrica, el relé conmutador cambia automáticamente a las baterías. 

La energía solar no se usa directamente para alimentar la casa, sino que mantiene cargadas las baterías para garantizar un suministro continuo durante los cortes eléctricos, por lo que las baterias estarán directamente relacionadas con el estado de la disponibilidad de energía solar.

## 3. Simulación en lenguaje ladder

#### Caso 1. Casa energizada con red eléctrica.

En el escenario donde la red eléctrica esté activada (I1=1) y el boton de emergencia este apagado (I3=0) la casa estará energizada por esta fuente y los indicadores asociados a la red eléctrica estarán activos.  

![Caso 1](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Casos%20simulacion%20ladder/Caso%201-red%20electrica.png?raw=true)

##### Entradas
I1=1 Red eléctrica activada  
I2=0 Baterías desactivadas  
I3=0 Paro de emergencia desactivado  
I4=0 Luz solar desactivada  
##### Salidas
Q1=1 (ind. tipo de red)  
Q2=0 (ind. red eléctrica)   
Q3=0 (ind. baterias)   
Q4=0 (ind. energía solar)     
Q5=0 (ind. botón de emergencia)  
Q8=1 (ind. casa energizada)  

#### Caso 2. Casa energizada con baterias, paro de emergencia desactivado.
En el escenario donde la energía solar sea suficiente (I4=1), por lo que las baterias se mantendran cargadas (I2=1) y el boton de emergencia se mantenga desactivado (I3=0) la casa estará energizada por esta fuente y los indicadores asociados a la energía solar y las baterias estarán activos.

![Caso 2](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Casos%20simulacion%20ladder/Caso%202%20-%20Baterias.png?raw=true)

##### Entradas
I1=0 Red eléctrica activada  
I2=1 Baterías activadas  
I3=0 Paro de emergencia desactivado  
I4=1 Luz solar activada  
##### Salidas
Q1=1 (ind. tipo de red)  
Q2=0 (ind. red eléctrica)   
Q3=1 (ind. baterias)   
Q4=1 (ind. energía solar)     
Q5=0 (ind. botón de emergencia)  
Q8=1 (ind. casa energizada)  


#### Caso 3. Paro de emergencia activado.
En caso de que se active el botón de emergencia (I3=1) se suspenderá la energía en la casa sin importar la fuente estuviera activa, es decir, se podrán visualizar tanto los indicadores de la red eléctrica como los de la energía solar y las baterias señalando que están funcionando pero por el segundo relé la casa no recibirá energía.

![Caso 3](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Casos%20simulacion%20ladder/Caso%203%20-%20paro%20de%20emergencia.png?raw=true)

##### Entradas
I1=1 Red eléctrica activada  
I2=1 Baterías activadas  
I3=1 Paro de emergencia desactivado  
I4=1 Luz solar activada  
##### Salidas
Q1=1 (ind. tipo de red)  
Q2=1 (ind. red eléctrica)   
Q3=1 (ind. baterias)   
Q4=1 (ind. energía solar)     
Q5=1 (ind. botón de emergencia)  
Q8=0 (ind. casa energizada)  

## 4. Dominio estructural (red de compuertas lógicas)
Para el diseño del sistema con compuertas lógicas se usaron de base los diagramas anteriores. Dicho sistema se representó en la herramienta Digital: logic designer and simulator en el que se llegó a la siguiente solución: 

![Diseño en Digital](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Dise%C3%B1o%20en%20%20digital.png?raw=true)

A partir de este sistema se obtiene la siguiente tabla de verdad:

![tabla de verdad - Digital](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Tabla%20de%20verdad-%20Digital.png?raw=true)

Con ello se obtuvieron los siguientes mapas de Karnaugh:

Mapa de Karnaugh para Q1a

![Mapa de Karnaugh para Q1a](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Mapas%20de%20Karnaugh/Mapa%20Q1a%20-%20Tipo%20de%20red%20RE.png?raw=true)

Mapa de Karnaugh para Q1b

![Mapa de Karnaugh para Q1b](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Mapas%20de%20Karnaugh/Mapa%20Q1b%20-%20Tipo%20de%20red%20baterias.png?raw=true)

Mapa de Karnaugh para Q2

![Mapa de Karnaugh para Q2](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Mapas%20de%20Karnaugh/Mapa%20Q2-I%20red%20electrica.png?raw=true)

Mapa de Karnaugh para Q3n+1

![Mapa de Karnaugh para Q3n+1](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Mapas%20de%20Karnaugh/Mapa%20para%20Q3%20bateria%20n+1.png?raw=true)

Mapa de Karnaugh para Q3

![Mapa de Karnaugh para Q3](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Mapas%20de%20Karnaugh/Mapa%20Q3-Ibateria.png?raw=true)

Mapa de Karnaugh para Q4

![Mapa de Karnaugh para Q4](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Mapas%20de%20Karnaugh/MapaQ4%20-%20Energia%20solar.png?raw=true)

Mapa de Karnaugh para Q5

![Mapa de Karnaugh para Q5](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Mapas%20de%20Karnaugh/Mapa%20Q5%20-%20Paro%20emergencia.png?raw=true)

Mapa de Karnaugh para Q8

![Mapa de Karnaugh para Q8](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Mapas%20de%20Karnaugh/Mapa%20Q8%20-%20energia%20casa.png?raw=true)


## 5. Descripción en lenguaje HDL (Hardware Description Language)
En primer lugar se puede observar que las entradas y salidas en el archivo corresponden con las del diagrama de caja negra.

![input-output HDL](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Descripci%C3%B3n%20en%20lenguaje%20HDL/Inputs-outputs.png?raw=true)

De la misma manera se observa el comportamiento y relaciones de las salidas y entradas mencionadas:

![sistema en HDL](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/Descripci%C3%B3n%20en%20lenguaje%20HDL/Sistema%20en%20HDL.png?raw=true)

Se puede ver que Q3 IBateria utiliza un flip-flop que se actualiza con el pulso de la entrada de energía solar I4_Energía_Solar indicando que la batería estará activa cuando la energía solar se active. Es decir I4 activa el flip-flop que almacena el estado de la batería

Tambien Q1b se puede ver que se activa si no hay red eléctrica I1 y la batería está disponible Q3 IBateria. Mientras que Q1a es su complemento indicando que si no se está usando una fuente secundaria, entonces se utiliza la red eléctrica.

Se señala que la casa Q8 tiene suministro eléctrico si:
     - Hay red eléctrica disponible y no se usa una fuente secundaria.
     - O si se usa la batería como fuente secundaria.
    
Se observa tambien que la lógica considera la señal de emergencia I3, que desactiva el suministro si está activa, y que cada entrada se relaciona directamente con su indicador

## 6. Síntesis en FPGA (dominio físico final)
Para el desarrollo de esta sección de síntesis, se siguió el tutorial suministrado por el docente Johnny Cubides. Haciendo uso del programa Fritzing se realizó el circuito propuesto con el objetivo de facilitar visualmente la implementación análoga de la solución a la situación problema.

![montaje fritzing](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/S%C3%ADntesis%20FPGA/Montaje%20fritzing.png?raw=true)

![montaje](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/S%C3%ADntesis%20FPGA/Montaje%20FPGA.png?raw=true)

![montaje FPGA](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/S%C3%ADntesis%20FPGA/Montaje%20FPGA.jpeg?raw=true)

Se configuran los pines digitales de la siguiente manera:  
leds: P8-P14; Desde el Q1.1 hasta el Q8 en orden a excepción de los relés.
Switches (inputs): P28,29 y 30 para I1 RE, I4 ES Y I3 PE respectivamente.
Se señala gnd y el 3.3v.

En base a ello se obtuvo el montaje en la protoboard mostrado a continuación.

![montaje FPGA](https://github.com/Vaulentzc/ElectronicaDigital1-G4-E2/blob/main/Lab2/Anexos/S%C3%ADntesis%20FPGA/Montaje%20fisico.jpeg?raw=true)

Por último se muestra un vídeo de explicación del desarrollo del sistema:

## Conclusión.
En conclusión, el diseño e implementación del sistema se desarrollaron de forma estructurada y lógica, asegurando la funcionalidad y adaptabilidad del mismo en cada etapa. Desde el análisis inicial con tablas de verdad hasta la creación de diagramas de flujo y su traducción a lenguaje Ladder, se logró una comprensión integral del problema y su solución. 

Se fijaron prioridades como el hecho de que el sistema priorizó de manera eficiente el uso de la red eléctrica como fuente primaria de energía, conmutando a las baterías solo cuando era necesario, y garantizando así un suministro constante de energía para la casa en diferentes escenarios operativos.

Cabe mencionar que el lenguaje Ladder permitió validar la lógica del sistema antes de su implementación física, simulando el comportamiento de los sensores, relés y demás componentes. Esto ayuda a identificar y corregir errores en etapas tempranas del proceso. Además, la representación de las condiciones mediante tablas de verdad y la construcción de circuitos digitales proporcionaron una base sólida para la implementación física del sistema.

El análisis para representar el relé conmutador y el energizador a partir de compuertas lógicas, junto con la relación de indicadores visuales para el estado de la red eléctrica, las baterías y la energía solar, proporciona un control claro y directo sobre el sistema.

En resumen, el laboratorio permitió el desarrollo de un sistema funcional y adaptable, capaz de responder adecuadamente a diversas condiciones operativas. La metodología de pasar de un análisis lógico a simulado y diseño físico resultó en una solución eficiente que garantiza el cumplimiento de las restricciones propuestas como la continuidad del suministro de energía.


