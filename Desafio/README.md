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

## Futuras Mejoras
- Integración con MIDI para control externo.
- Implementación de más formas de onda (sinusoidal, triangular, etc.).
- Optimización del diseño de PCB.
- Expansión de memoria para almacenar múltiples pistas.

# Informe
El informe que contiene el registro del desarrollo de SynthIce está adjunto en el repositorio donde se encuentra la descripción detallada de cada módulo tanto en eñ planteamiento como en el diseño a través de la metodología Top-down.


## Autores
- **Samuel David Sánchez Cárdenas** - [samsanchezca@unal.edu.co](mailto:samsanchezca@unal.edu.co)
- **Dayanna Segovia Arteaga** - [daarteagas@unal.edu.co](mailto:daarteagas@unal.edu.co)
- **Paula Valentina Álvarez Chaparro** - [palvarezch@unal.edu.co](mailto:palvarezch@unal.edu.co)
