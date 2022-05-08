## Discusión técnica (**en construccion**)

El vapor de agua es una parámetro relevante en el estudio del cambio climático. El nivel de vapor de agua en la tierra es controlado por la temperatura [1], o sea, mayor temperatura implica mayor vapor de agua. Por ejemplo, sí un volumen de aire contiene su cantidad máxima de vapor de agua y la temperatura disminuye, parte de este vapor va a condensar a su forma líquida.

Datos del vapor de agua en América están disponibles a partir de datos atmósfericos ofrecidos por los retadores en [GIBBS](https://www.ncdc.noaa.gov/gibbs/year). En nuestro desafio, estudiamos estos datos. Para hacer esto:

1. Extraimos todas las imagenes del satélite GOES-13 desde el 2003 hasta el 2013. Desarrollamos un pequeño [código](/extractor_de_imagenes.sh) para extraer las [imagenes](/drive_de_las_imagenes)
2. Los datos atmosféricos fueron transformados en histogramas [computacionalmente](https://github.com/Migusb/CO-Afina2022/blob/master/CO-Afina2022.ipynb/).
3. La intensidad del color de la imagen representa el vapor de agua normalizado


Estudiamos la evolución temporal del vapor de agua para el periodo estudiado

![time_series!](/anexos/time_series.png)


Es notable una tendencia de aumento en el vapor de agua (o sea en la temperatura). Por ejemplo, el vapor de agua para el dia XXXX y 10 años después:

![2003!](/anexos/2003.png)
![2013!](/anexos/2013.png)



Tambien fue realizado un estudio sobre la distribución del vapor de agua durante el tiempo observado. 


