# Ejercicio

1. Recibir parámetros desde la terminal:
- Ruta donde buscar
- Nombre del archivo (puede ser parcial, tipo *.txt)
- Tamaño mínimo (opcional)
- Tipo de archivo (f, d, etc.)
- Fecha de modificación (opcional)

2. Validar argumentos
- Si no se pasa la ruta → error
- Si la ruta no existe → error

3. Construir dinámicamente el comando find
- Usa condiciones solo si el usuario las pasa
-name
-type
-size
-mtime

4. Mostrar resultados con formato
- Ruta completa
- Tamaño
- Fecha de modificacion

5. Contar resultados