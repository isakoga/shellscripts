#!/bin/bash
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