# Laboratorio 2
El sistema es una solución para garantizar el suministro de energía eléctrica en una finca, combinando energía solar y la red eléctrica del comercializador local. Este sistema alterna entre las fuentes de energía según las condiciones de operación o detener el sistema de energización,y se planteó proporcionar indicadores para el estado del sistema.

## 1. Dominio comportamental (especificación y algoritmo)
### 1.1. Diagrama de caja negra
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
  Q6. Rele conmutador de las fuentes.  
  Q7. Rele energizador de la casa.  
  Q8. Energía casa (1 para cuando la casa está energizada, 0 cuando no está energizada)

### 1.2. Diagrama de flujo

### 1.3. Tablas de verdad

En esta sección para simplificar el proceso se reprsentó Q1 como fuente donde 0 es cuando está seleccionada la red eléctrica y 1 cuando las baterías están seleccionadas, y en el caso de energía casa, 1 es cuando la casa está energizada y 0 para cuando no lo está.

## 2. Dominio físico inicial (circuito eléctrico)

Se establecen las siguientes suposiciones:

La casa siempre va a estar energizada a excepción del caso en el que se active el botón de emergencia. 

Se establece que la red eléctrica será la fuente principal de energía del sistema a través del relé conmutador que se conecta a la casa directamente. Cuando se presente un fallo en la red eléctrica, el relé conmutador cambia automáticamente a las baterías. 

La energía solar no se usa directamente para alimentar la casa, sino que mantiene cargadas las baterías para garantizar un suministro continuo durante los cortes eléctricos, por lo que las baterias estarán directamente relacionadas con el estado de la disponibilidad de energía solar.

## 3. Simulación en lenguaje ladder

#### Caso 1. Casa energizada con red eléctrica.
En el escenario donde la red eléctrica esté activada (I1=1) y el boton de emergencia este apagado (I3=0) la casa estará energizada por esta fuente y los indicadores asociados a la red eléctrica estarán activos.  
##### Entradas
I1=1 Red eléctrica activada
I2=0 Baterías desactivadas
I3=0 Paro de emergencia desactivado
I4=0 Luz solar desactivada
##### Salidas
Q3=1 (ind. red eléctrica)
Q4=0 (ind. baterias)
Q5=0 (ind. energía solar)
Q6=0 (ind. botón de emergencia)
Q7=0 (ind. tipo de red)
Q8=1 (ind. casa energizada)

#### Caso 2. Casa energizada con baterias, paro de emergencia desactivado.
En el escenario donde la energía solar sea suficiente (I4=1), por lo que las baterias se mantendran cargadas (I2=1) y el boton de emergencia se mantenga desactivado (I3=0) la casa estará energizada por esta fuente y los indicadores asociados a la energía solar y las baterias estarán activos.
##### Entradas
I1=0 Red eléctrica activada
I2=1 Baterías activadas
I3=0 Paro de emergencia desactivado
I4=1 Luz solar activada
##### Salidas
Q3=0
Q4=1
Q5=1
Q6=0
Q7=1
Q8=1

#### Caso 3. Paro de emergencia activado.
En caso de que se active el botón de emergencia (I3=1) se suspenderá la energía en la casa sin importar la fuente estuviera activa, es decir, se podrán visualizar tanto los indicadores de la red eléctrica como los de la energía solar y las baterias señalando que están funcionando pero por el segundo relé la casa no recibirá energía.
##### Entradas
I1=1 Red eléctrica activada
I2=1 Baterías activadas
I3=1 Paro de emergencia desactivado
I4=1 Luz solar activada
##### Salidas
Q3=1
Q4=1
Q5=1
Q6=1
Q7=1
Q8=0

## 4. Dominio estructural (red de compuertas lógicas)
## 5. Descripción en lenguaje HDL (Hardware Description Language)
## 6. Síntesis en FPGA (dominio físico final)
