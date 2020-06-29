#!/bin/bash
echo "Shell Script é demais!"

#Exercicio 1/2
NOME="Shell Script é demais!"
echo $NOME

#Exercicio 3
HOST=$(hostname)

echo "Este script está rodando no computador: $HOST"

#Exercicio 4/5
FILE="/Users/isadorakoga/Documents/Ex ShellScript"
if [ -e "$FILE" ]
   then
       echo "O caminho $FILE está habilitado!"
fi
if [ -w "$FILE" ]
   then 
       echo "Você tem permissão para editar $FILE"
   else
       echo "Você NÃO foi autorizado a editar $FILE"
fi

echo "Escreva um caminho de arquivo ou diretório"
read CAMINHO 
if [ -f "$CAMINHO" ]
 then
   echo "$CAMINHO é um arquivo comum"
elif [ -d "$CAMINHO" ]
 then
   echo "$CAMINHO é um diretório"
else
   echo "$CAMINHO é outro tipo de arquivo"
fi
ls -l $CAMINHO


#Exercicio 6
ARGUMENTO=$1
if [ -f "$ARGUMENTO" ]
 then
   echo "$ARGUMENTO é um arquivo comum"
elif [ -d "$ARGUMENTO" ]
 then
   echo "$ARGUMENTO é um diretório"
else
   echo "$ARGUMENTO é outro tipo de arquivo"
fi
ls -l $ARGUMENTO

#Exercício 7
DIRETORIO=$1
if [ -d "$DIRETORIO" ]
 then
   FILES=`ls -l $DIRETORIO | wc -l`
   echo "O $DIRETORIO tem $FILES arquivos"
else
    echo "O argumento $DIRETORIO não é um diretório"
fi

#Exercício Bonus 1
PALAVRAS="Shell Script Usando Estrutura Repetiçao For Terminal"
for PALAVRA in $PALAVRAS
    do 
      echo $PALAVRA
    done

#Exercício Bonus 2
ARGUMENTOS=$@

for ARGUMENTO in $ARGUMENTOS
    do
        if [ -f "$ARGUMENTO" ]
          then
            echo "$ARGUMENTO é um arquivo comum"
        elif [ -d "$ARGUMENTO" ]
          then
            echo "$ARGUMENTO é um diretório"
        else
            echo "$ARGUMENTO é outro tipo de arquivo"
        fi
        ls -l $ARGUMENTO
    done