# Proyecto Escape de Laberinto

**Autores**: Álvarez, J.; Solari Sab, S.; Larrieu Lacoste, I.P.; Mozo, D.N.  
**Fecha**: Noviembre 2024

------

### **Resumen**

Este proyecto consiste en la implementación de un sistema de control digital en una **FPGA** para un robot autónomo que navegue y salga de un laberinto desconocido empleando estrategias de navegación eficientes. El objetivo principal es diseñar un sistema que permita al robot detectar obstáculos, ajustar su trayectoria y salir del laberinto en el menor tiempo posible. **Nuestro equipo logró ganar la competencia** desarrollada con los otros equipos participantes en la asignatura, gracias a la implementación de un eficiente **algoritmo de llenado**, que permitió encontrar el camino más corto hacia la salida.

**Especificaciones Técnicas**

- **Board**: FPGA **Cyclone IV**.

- **Device**: EP4CE22F17C6.

  

### **Objetivos del Proyecto**

- Implementar un sistema autónomo capaz de resolver un laberinto mediante un algoritmo adecuado.
- Diseñar subsistemas modulares para control de motores, detección de obstáculos y lógica de decisión.
- Optimizar la distancia recorrida por el robot.
- Aplicar herramientas modernas de diseño digital y sistemas embebidos.
- Fomentar el trabajo en equipo y el uso de **Git** para la gestión de versiones.

### **Subsistemas**

1. **Control de motores**:
   - Responsable de la **navegación en línea recta** y la ejecución de **giros precisos** de 90° y 180°.
   - Integra sensores analógicos laterales para ajustar la trayectoria y evitar colisiones.
2. **Detección y escritura de muros**:
   - Encargado de registrar casillas con obstrucciones para evitar que el robot pase nuevamente por ellas.
   - Utiliza datos del sensor frontal para actualizar un mapa interno del laberinto.
3. **Detección de cuadrículas**:
   - Cuenta el número de celdas recorridas utilizando un sensor de línea.
   - Actualiza la posición actual del robot mediante operaciones aritméticas, teniendo en cuenta su sentido con cada cambio de celda.
   - Muestra el progreso en los LEDs de la FPGA, facilitando el monitoreo durante la ejecución.
4. **Lógica de decisión** (algoritmo de llenado):
   - Actualiza constantemente el "peso" de cada celda de la cuadricula en base a los muros detectados.
   - Haciendo uso de la posición actual, del sentido actual y de la información de sus celdas vecinas, toma la decisión del sentido futuro que debe tomar el robot. 
   - Envia la señal correspondiente al sistema de control de motores para ejecutar la acción correspondiente.
5. **Control general**:
   - Coordina todos los subsistemas, tomando decisiones en tiempo real.

### **Conclusión**

Este proyecto no solo representó un gran desafío, sino también una buena experiencia de trabajo en equipo. Logramos trasladar con éxito nuestros planteos electrónicos a código VHDL, empleando diagramas en bloques como base para nuestra implementación en Quartus II. A lo largo del desarrollo, aprendimos muchísimo sobre VHDL, Quartus, y la importancia de dividir sistemas complejos en modulos más pequeños. Logramos identificar y solucionar errores recurrentes durante las simulaciones y pruebas. Finalmente, alcanzamos el prototipo final, superando los obstáculos y ganando la competencia. 

En conclusión, el trabajo puede considerarse **exitoso y confiable**, y queda abierto a futuras integraciones y mejoras que podrían mejorar aún más su funcionamiento.

###### Asignatura Técnicas y Dispositivos Digitales II - Depto. de Electrónica y Computación - Facultad de Ingeniería - UNMdP





