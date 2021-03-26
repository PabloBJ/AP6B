r_ant=`pwd`
r_buena=$r_ant/$1
cd $1
r_act=`pwd`

cont=0
if [  $r_buena = $r_act ];then
    for i in `ls -l | grep .txt`;do
	rm $i
	cont=`expr $cont + 1`
	done
    echo "Se han borrado $cont ficheros"
else
    echo "No esite"
fi