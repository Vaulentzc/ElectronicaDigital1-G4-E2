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

### 1.2. Diagrama de flujo

### 1.3. Tablas de verdad
![Tabla de verdad](RUTA)


La casa siempre va a estar energizada excepto en el caso de que se active el botón de emergencia. Se establece que la red eléctrica será la fuente principal de energía del sistema y el relé conmutador alimenta la casa directamente desde la red. Cuando hay un fallo en la red eléctrica, el sistema cambia automáticamente a las baterías. La energía solar no se usa directamente para alimentar la casa, sino que mantiene cargadas las baterías para garantizar un suministro continuo durante los cortes eléctricos.

## 2. Dominio físico inicial (circuito eléctrico)
## 3. Simulación en lenguaje ladder
## 4. Dominio estructural (red de compuertas lógicas)
## 5. Descripción en lenguaje HDL (Hardware Description Language)
## 6. Síntesis en FPGA (dominio físico final)
