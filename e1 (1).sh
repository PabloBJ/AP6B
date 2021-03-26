if [ $# -ne 1 ]
then
    echo "Un valor minimo"
    exit
fi

if [ $1 -lt 1 ]
then
    echo "El valor tiene que ser 1 o mayor"
    exit
fi

for i in $(cat nombres.txt);do
    mkdir $i
    for i in `seq 1 $1`;do
	mkdir personal${i}
done
cd..

done

