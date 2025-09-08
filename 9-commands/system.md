# Informacion general del sistema

uname -a
Muestra información básica del kernel y sistema operativo.

hostnamectl
Muestra información del hostname, sistema operativo, arquitectura.

lsb_release -a
Distribución y versión de Linux (en sistemas con lsb-release).

uptime
Tiempo que lleva encendido el sistema y carga promedio

whoami / id
Usuario actual y detalles de UID/GID.

# Procesador

lscpu
Muestra información detallada del procesador (núcleos, arquitectura, MHz).

cat /proc/cpuinfo
Detalles técnicos de cada núcleo del CPU.

top
Monitorea procesos en tiempo real y uso de CPU/memoria.


# Memoria
free -h
Muestra memoria RAM total, usada y libre.

cat /proc/meminfo
Información detallada de la memoria.

# Disco

df -h
Espacio usado/libre en discos montados.

du -sh <directorio>
Tamaño de un directorio específico.

lsblk
Lista dispositivos de almacenamiento y sus particiones.

mount
Muestra qué sistemas de archivos están montados.

# Red

ip a
Muestra interfaces de red, IPs, estado.

ss -tulnp
Puertos abiertos y procesos que los usan.

ping <host>
Comprobar conectividad.

traceroute <host>
Ruta que siguen los paquetes (requiere instalación).

