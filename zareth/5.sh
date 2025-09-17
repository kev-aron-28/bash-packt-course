
num1=$1
op=$2
num2=$3

result=0


case ${op} in
    +)
        result=$(( num1+num2 ))
        echo "Resultado: $result"
    ;;
    -)
        result=$(( num1-num2 ))
        echo "Resultado: $result"
    ;;
    x)
        result=$(( num1*num2 ))
        echo "Resultado: $result"
    ;;
    /)
        result=$(( num1/num2 ))
        echo "Resultado: $result"
    ;;
    *)
        echo "Op invalida"
    ;;
esac