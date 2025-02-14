# SynthIce: Sintetizador basado en FPGA

## Descripción
SynthIce es un sintetizador digital desarrollado sobre la FPGA BlackIce40, utilizando Verilog. Permite la síntesis y modulación de sonido en tiempo real, ofreciendo una herramienta educativa y accesible para la exploración de conceptos de síntesis digital de audio.

## Características principales
- Generación de notas musicales mediante pulsadores (C4 a B4, incluyendo semitonos).
- Modulador de frecuencia controlado por encoder rotativo.
- Reproducción de pistas almacenadas en memoria con ajuste dinámico de BPM.
- Conversión digital-análoga y amplificación para salida de audio.
- Diseño modular en Verilog, optimizado para implementación en FPGA.

## Requerimientos de Hardware
- FPGA BlackIce40.
- 7 pulsadores para la entrada de notas.
- Encoder rotativo para modulación.
- Encoder rotativo para ajuste de BPM.
- Amplificador PAM8403.
- Parlantes de 8W.
- Alimentación de 5V vía USB Micro.

## Instalación y Uso
### 1. Clonar el repositorio
```bash
 git clone https://github.com/tuusuario/SynthIce.git
 cd SynthIce
```
### 2. Compilar y cargar en la FPGA
Utiliza un entorno compatible con BlackIce40 y Verilog.
```bash
 make all
```
### 3. Conectar los componentes
Sigue el esquema de conexión detallado en la documentación.

### 4. Ejecutar
Enciende la FPGA y utiliza los pulsadores y encoders para generar y modular sonido.

## Estructura del Proyecto
```
SynthIce/
├── src/                 # Código en Verilog
│   ├── sintetizador.v   # Módulo de síntesis de sonido
│   ├── reproductor.v    # Módulo de reproducción de pistas
│   ├── top.v           # Archivo principal de integración
├── docs/                # Documentación del proyecto
│   ├── informe.pdf      # Informe detallado
│   ├── esquemas/       # Diagramas de hardware
├── pcb/                 # Diseño de PCB
├── README.md            # Este archivo
├── LICENSE              # Licencia del proyecto
```

## Autores
- **Samuel David Sánchez Cárdenas** - [samsanchezca@unal.edu.co](mailto:samsanchezca@unal.edu.co)
- **Paula Valentina Álvarez Chaparro** - [palvarezch@unal.edu.co](mailto:palvarezch@unal.edu.co)
- **Dayanna Segovia Arteaga** - [daarteagas@unal.edu.co](mailto:daarteagas@unal.edu.co)

## Futuras Mejoras
- Integración con MIDI para control externo.
- Implementación de más formas de onda (sinusoidal, triangular, etc.).
- Optimización del diseño de PCB.
- Expansión de memoria para almacenar múltiples pistas.

# Informe
El informe que contiene el registro del desarrollo de SynthIce está adjunto en el repositorio donde se encuentra la descripción detallada de cada módulo tanto en eñ planteamiento como en el diseño a través de la metodología top down.
