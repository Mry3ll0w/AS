#!/bin/bash
#Script de copia de ficheros de /importante a /media/backup

array=($(ls -d /home/$USER/importante/))

#Nos movemos al directorio donde vamos a trabajar
cd /home/$USER/importante

#Obtenemos los 6 ficheros, de los cuales elimaremos el de más antiguedad
archivo_mas_viejo(){
		
		older=$1[0] #metemos el elemento inicial y vamos iterando
		pos=0
		older_pos=0 #iterador para obtener la posicion del mas viejo

		for i in $1
		do
				
				if [ $older -nt $i ]
						$older=$i
						$older_pos=$pos #guardamos la posicion del elemento de mayor antiguedad
				fi

				let "pos++" #older_pos++
		
		done

		#eliminamos el elemento de mayor antiguedad
		unset -v $1[$older_pos]
}

archivo_mas_viejo $array #llamamos a la funcion para eliminar el elemento más viejo

#simplemente copiamos los ficheros

#copia de ficheros
for name in $array
do

		if [ -d $name ]
    then
        secuencia=$(date +'%Y%m%d')
				tar -cvJf /media/backup/$name_$secuencia.tar.xz -C /home/$USER/importante

    fi
done
