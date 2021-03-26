ip="10.1.97"
cont=0

echo "Lista de IP"
for i in `seq 2 254`;do
    correctos=`ping -c l $ip$i | grep received | awk '{print $4}'`
    if [ $correctos -gt 0 ]
	then
	echo $ip$i
	fi
done