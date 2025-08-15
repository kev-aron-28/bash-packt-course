for each in strings, number, files, any command which outpus are separeted with space/newline
do
  something
done

# 


for (( ; ; ))
do

done

while:
do
  something
done


while [[ num -ne 5 ]]
do
  echo "HI"
  num=$((num+1))
done

while read -r line 
do
  echo ${line}
  sleep 1
done < <(cat servers.txt)


cat servers.txt | while read -r line
do
  echo "${line}"
done


while read -r line 
do
  echo ${line}
done < servers.txt



until [[ condition ]]
do
  something
done


select option in docker nginx sshd
do
  echo ${option}
done
