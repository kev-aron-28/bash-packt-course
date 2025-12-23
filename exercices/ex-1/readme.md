Tienes un directorio llamado logs/ con la siguiente estructura (puede haber subdirectorios):\
Archivos .log
Cada línea tiene el formato:

2025-12-21 18:32:10 ERROR User not found
2025-12-21 18:32:12 INFO  Login success

# Objetivo
Escribe un solo script Bash que haga lo siguiente:
- Busque recursivamente en logs/ solo archivos .log.
- Ignore archivos que estén vacíos.
- Extraiga solo las líneas con nivel ERROR.
- De esas líneas:
 -  Obtenga la fecha (YYYY-MM-DD)
 - Obtenga el mensaje (todo después de ERROR)
- Agrupe los errores por fecha y muestre el resultado así:
2025-12-21 | 14 errores
2025-12-22 | 3 errores

- El resultado debe:
 - Estar ordenado por fecha ascendente
 - No usar archivos temporales
- Si el usuario presiona Ctrl+C, el script debe:
 - Imprimir Proceso cancelado limpiamente
 - Salir con código 130

