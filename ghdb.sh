#!/bin/bash
if [ "$1" == "" ]
then
    echo
    echo Script feito pra automatizar o processo de dork
    echo Modo de uso : ghdb.sh www.facebook.com
    echo Criado por prok3z
    echo 
    echo
    exit
fi

SEARCH="google-chrome-stable" #caso queira mudar o navegador só alterar o nome aki
ALVO="$1"
echo "Pesquisa no Pastebin"
$SEARCH "http://google.com/search?q=site:pastebin.com+$ALVO" 2> /dev/null
echo "Pesquisa no Trello"
$SEARCH	"http://google.com/search?q=site:pastebin.com+$ALVO" 2> /dev/null
echo "Pesquisa por arquivos"
$SEARCH "http://google.com/search?q=site:$ALVO+ext:php+OR+ext:asp+OR+ext:txt" 2>/dev/null
