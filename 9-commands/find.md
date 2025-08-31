# Sintaxis básica


find [directorio] [condiciones] [acciones]

[directorio] → dónde buscar (ej. . para el actual, /home para toda la home).

[condiciones] → qué buscar (nombre, extensión, tamaño, fecha, permisos, etc).

[acciones] → qué hacer con los resultados (mostrar, borrar, ejecutar un comando, etc).

1. Buscar por nombre
``` bash
find . -name "*.txt"
```

2. Ignorar mayúsculas/minúsculas

``` bash
find . -iname "*.txt"
```
3. Buscar solo directorios

``` bash
find /var -type d -name "log*"
```

4. Buscar solo archivos
``` bash
find /var -type f -name "*.log"
```

5. Buscar por tamaño
``` bash
find . -type f -size +10M
```

Opciones de tamaño:

+10M → mayor a 10 MB

-10M → menor a 10 MB

10M → exactamente 10 MB
(Unidades: c=bytes, k=KB, M=MB, G=GB)

6. Buscar por tiempo de modificación
``` bash
find . -type f -mtime +7
```

-mtime +N → más de N días

-mtime -N → menos de N días

-mtime N → exactamente N días

7. Buscar por permisos
``` bash
find . -type f -perm 644
```

## Acciones útiles

Ejecutar un comando sobre cada archivo
``` bash
find . -name "*.log" -exec rm {} \;
```

Mover archivos

``` bash
find . -name "*.txt" -exec mv {} /backup/ \;
```

find /home/dimedical/learning -name "*.js" | xargs wc -l | tail 1

mapfile -t archivos < <(find . -name "*.txt")
echo "Se encontraron ${#archivos[@]} archivos"
