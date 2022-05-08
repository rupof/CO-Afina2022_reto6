#!/bin/bash

hora=12
for ano in {2004..2012}
do
  for mes in {1..9}
  do
   for dia in {1..9}
   do
		echo "$ano $mes $dia"
		if [ ! -f $ano-0$mes-0$dia-$hora ]; then
		    echo "File not found!"
			wget https://www.ncdc.noaa.gov/gibbs/image/GOE-12/WV/$ano-0$mes-0$dia-$hora
		fi
   done
	for dia in {10..28}
	do
			echo "$ano $mes $dia"
		if [ ! -f $ano-0$mes-$dia-$hora ]; then
		    echo "File not found!"
			wget https://www.ncdc.noaa.gov/gibbs/image/GOE-12/WV/$ano-0$mes-$dia-$hora
		fi
   done
  done
done

for ano in {2004..2012}
do
  for mes in {10..12}
  do
   for dia in {10..28}
   do
		   if [ ! -f $ano-$mes-$dia-$hora ]; then
		    echo "File not found!"
			wget https://www.ncdc.noaa.gov/gibbs/image/GOE-12/WV/$ano-$mes-$dia-$hora
		fi
   for dia in {1..9}
   do
		echo "$ano $mes $dia"
		if [ ! -f $ano-$mes-0$dia-$hora ]; then
		    echo "File not found!"
			wget https://www.ncdc.noaa.gov/gibbs/image/GOE-12/WV/$ano-$mes-0$dia-$hora
		fi
   done
	done
  done
done







