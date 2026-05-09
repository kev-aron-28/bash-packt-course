# Exercice

Log analizer

Debe aceptar 

``` bash
./log_analizer.sh <log_file> <pattern>
```

Validar entrada:
- Tiene que verificar que se pase el archivo
- Que exista
- Que sea legible
- Que se pase el patron

Buscar coincidencias usando grep
- Todas las lineas que coincidan
- Numero de linea
- Resaltar coincidencias

Flags:

```
-n
-i
-c
-v
-r
-E
```

Mostrar estadisticas
Imprimir un reporte al final:

```
Total matches: X
Total lines in file: Y
Match percentage: Z%
```