#!/usr/bin/bash

# Tu tarea es crear un script en Bash llamado analyze_logs.sh que haga lo siguiente:

# Contar el número total de peticiones en el archivo.

# Mostrar las IPs únicas que hicieron peticiones.

# Contar cuántas veces cada IP aparece.

# Mostrar solo las peticiones que devolvieron error (códigos HTTP diferentes de 200).

# (Opcional) Mostrar cuál fue la página más solicitada.


file=$1

if [[ ! -f $file || ! -r $file || ! -s $file ]] ; then
    echo "Provide correct file"
    exit 1;
fi;

totalRequest=$(wc -l $file | cut -d ' ' -f1)
echo "Total requests made: ${totalRequest}"

mapfile -t uniqueIP < <(cat $file | awk '{print $1}' | sort | uniq)

echo "Unique IPs: ========="
for ip in "${uniqueIP[@]}"; do
    counter=$(grep "${ip}" "$file" | wc -l)
    echo "IP: $ip, total: $counter"
done
echo "===================="

echo "ERROR FOUND: ========="
grep -v "200" "$file"
echo "======================"

mapfile -t uniquePages < <(awk '{print $6}' $file | sort | uniq)

max=0
mostRequested=""
for page in "${uniquePages[@]}"; do
    counter=$(grep "$page" "$file" | wc -l)
    if [[ $counter -ge $max ]]; then
        max=$counter
        mostRequested=$page
    fi;
done

echo "The most request page: $mostRequested with $max visits"