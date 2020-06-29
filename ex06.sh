#!/bin/bash
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
