#!/bin/bash

ej=$(ls $1)
extensiones=$(ls $1|cut -d '.' -f2)
iterador=0

for i in $ej
    do
        #echo $i
				output=$1/$iterador.$(echo $i|cut -d '.' -f2)
				$(mv $1/$i $output)
				let "iterador=iterador+1"

    done
