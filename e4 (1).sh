contador=1
maximo=`cat listado.txt | wc -l`
contlinux=0
contWindows=0
proclinux=0
procwindows=0

while [ $contador -le $max ];do
    linea=`cat listado.txt | head -${contador} | tail -1`
    sistema=`echo $linea | awk '{print $2}'`
    valor=`echo $linea | awk '{print $3}'`

if [ $sistema = "Linux" ];then
    contlinux=$((contlinux+1))
    proclinux=$((proclinux+1))
elif [ $sistema = "Windows" ];then
    contwindows=$((contwindows+1))
    procwindows=$((procwindows+1))
fi
contador=$((contador+1))
done

echo "Linux -> $contlinux $proclinux"
echo "WIndows -> $contwindows $procwindows"