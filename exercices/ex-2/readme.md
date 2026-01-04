# Exercice 2
Tienes:

Un directorio data/ con miles de archivos .txt
Cada archivo contiene números enteros, uno por línea

1. Procese todos los archivos .txt en paralelo (máximo 4 procesos al mismo tiempo)
- Para cada archivo, calcule:
  - Suma total
  - Promedio
  - Número máximo

2.  Mostrar un resumen final con: 
Archivo       Suma    Promedio    Max
file1.txt     1234    12.34       99
file2.txt     4567    45.67       100
TOTAL         5801    34.01       100

3. Requisitos adicionales:
- Manejar señales SIGINT y SIGTERM:
  - Detener todos los procesos hijos
  - Imprimir "Proceso cancelado limpiamente"
  - Salir con código 130
- Usar set -euo pipefail
- No usar Python, Perl, awk avanzado ni herramientas fuera de UNIX estándar
- FIFO se debe limpiar automáticamente al final
- Usar al menos un subshell y al menos una redirección rara (>&2, > >(command), etc.)

