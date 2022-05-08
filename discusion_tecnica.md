## Discusión técnica (**en construccion**)

El vapor de agua es una parámetro relevante en el estudio del cambio climático. El nivel de vapor de agua en la tierra es controlado por la temperatura [1], o sea, mayor temperatura implica mayor vapor de agua. Por ejemplo, sí un volumen de aire contiene su cantidad máxima de vapor de agua y la temperatura disminuye, parte de este vapor va a condensar a su forma líquida.

Datos del vapor de agua en América están disponibles a partir de patrones atmósfericos ofrecidos por los retadores en [GIBBS](https://www.ncdc.noaa.gov/gibbs/year). En nuestro desafio, estudiamos estos datos. Para hacer esto:

1. Extraimos todas las imagenes del satélite GOES-13 desde el 2003 hasta el 2013. Desarrollamos un pequeño [código](/extractor_de_imagenes.sh) para extraer las [imagenes](/drive_de_las_imagenes)
2. Los datos atmosféricos fueron transformados en histogramas [computacionalmente](https://nbviewer.org/github/Migusb/CO-Afina2022/blob/master/CO-Afina2022.ipynb).
3. La intensidad del color de la imagen representa el vapor de agua normalizado

## Calentamiento global: aumento del vapor de agua
Nuestra principal contribución en el desafio fue el estudio de la evolución temporal del vapor de agua. A partir del gráfico en seguida, queda claro el aumento de la temperatura (por el aumento del vapor de agua) entre 2003 hasta el 2013.

![time_series!](/anexos/time_series.png)


Una tendencia de aumento en el vapor de agua (o sea en la temperatura) es evidente. Por ejemplo, el vapor de agua para el dia 8 de agosto de 2003 y 5 años después:

![2003!](/anexos/2003BWimg.png)
![2013!](/anexos/2008BWimg.png)


## Vapor de agua: perfil gaussiano.

Otro punto interesante de nuestra solución, fue la realización de un estudio sobre la distribución del vapor de agua durante el tiempo observado. Este gráfico no tiene necesariamente una contribución a la explicación del cambio climático pero demuestra dos perfiles gaussianos bien definidos de la distribución del vapor de agua lo cual quiere decir que durante todo el periodo de tiempo el vapor de agua tiene dos valores picos característicos.  

![Histograma!](/anexos/histograma.png)

Un posible estudio en futuro seria hacer un mapa de colores en función del tiempo de esa distribución y documentar si la segunda gaussiana tiene mayores contribuciones con el pasar del tiempo.  
