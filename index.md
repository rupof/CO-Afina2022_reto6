# El cambio climático

El cambio climático es la variación del clima durante periodos de tiempo comparables que altera la composición de la atmósfera y como consecuencia afecta nuestros ecosistemas. Tristemente, la actividad humana ha producido de forma directa o indirecta el rápido cambio climático [1]. 

Sabías que, gran parte de estas alteraciones climáticas se debe a  las pequeñas variaciones en la órbita de la Tierra, dichas variaciones aumentan la cantidad de energía solar que recibe nuestro planeta [2]. 

Hagamos un pequeño experimento mental, imaginemos que tenemos una rana dentro de una olla con agua dándose un baño, ahora si colocamos esa olla con la rana a fuego lento, la rana no percibe que el agua se está calentando. Luego de un determinado periodo la rana muere ya que no noto que se estuvo cocinando. La rana somos nosotros!


![comparacao!](/anexos/Rana_hervida.png) 
<sub>Fuente: los propios autores.<sub>


Una manera de visualizar el cambio climático es a través del estudio de imágenes proporcionadas por satélites, variaciones en el tiempo pueden ser determinadas de esta forma. Debido a esto, nuestro objetivo es **usar datos atmosféricos para mostrar cualitativamente el calentamiento global**.

Primero, veremos una discusión amplia y pedagogica sobre el calentamiento global y después nuestra tratamiento técnico.



# ¿Cómo sabemos si el cambio climático es real? 

El cambio climático es un problema que nos afecta constantemente, debido a la alteración de los ecosistemas. En este último siglo, hemos presenciado fuertes evidencias que confirman el rápido cambio climático. Tales como:

### Aumento de la temperatura global: 

Las emisiones de dióxido de carbono en la atmósfera han producido en gran medida el aumento de la temperatura promedio de la Tierra aproximadamente 1.18 grados centígrados desde finales del siglo XIX. En la gráfica se puede observar como la temperatura promedio del planeta se ha elevado de manera brusca en los ultimos 50 años; este aumento fué de 1 grado centígrado.


![comparacao!](/anexos/GlobalTemp.png) 
 
<sub>Fuente: [4]<sub>


### Océanos que se calientan: 

Debido a que los océanos almacenan el 90% de la energía sobrante en el planeta, la absorción del calor ha aumentado.


![comparacao!](/anexos/oceanos.png)
 
<sub>Fuente: los propios autores.<sub>


### Retroceso glaciar: 

Los glaciares se están retrayendo en casi todas partes del mundo. Por ejemplo, Venezuela será el primer país del mundo en perder todos sus glaciares.

![comparacao!](/anexos/humboldt_el_ultimo_glaciar.jpg)
 
<sub>Fuente: [5]<sub>


### Cubierta de nieve reducida: 

Durante las ultimas cinco decadas la cubierta de hemiferio norte ha disminuido.

### Capas de hielo que se encogen: 

Segun la medición de la masa de hielo por los satélites GRACE de la NASA, sabemos que las capas de hielo de Groenlandia ha disminuido un promedio de 279000 millones de toneladas de hielo por año, mientras que la Antartida perdió aproximadamente 14800 millones de toneladas por año en un periodo de 1993-2019.

![comparacao!](/anexos/LandIceAntarctica.png) 

<sub>Fuente: [2]<sub>


### Aumento del nivel del mar: 

En el ultimo siglo, el nivel de los mares aumentó 20 centímetros (según observaciones satelitales del nivel del mar realizadas por el Centro de Vuelo Espacial Goddard de la NASA ).



![comparacao!](/anexos/undefined.png)
 
<sub>Fuente: [2]<sub>


### Acidificación de los océanos: 

La cantidad de dioxido de carbono que absorbe la capa superior de los oceanos está aumentando aproximadamente 2000 millones de toneladas por año.


![comparacao!](/anexos/Acidificacion-mares.jpg) 
 
<sub>Fuente: [2]<sub>


### Eventos extremos: 

Como los huracanes, inundaciones y cambios bruscos de temperatura.  Un evento catastrófico que sucedió en el 2017 fue un conjunto de huracanes, los cuales son el huracán Harvey que sucedió en agosto, el huracán Irma fue del 30 de agosto al 12 de septiembre y el huracán María que fue desde el 16 de septiembre al 2 de octubre. 
 


Huracán Harvey
![comparacao!](/anexos/huracan3.gif)

Huracán Irma
![comparacao!](/anexos/shortgif.gif)

Huracán María 
![comparacao!](/anexos/huracan2.gif)

<sub>Fuente: los propios autores a partir de los datos de [6].<sub>



# No todo esta perdido! 

Que podemos hacer:

![soluciones](/anexos/Mitigacion.png)
<sub>Fuente: los propios autores.<sub>



Ahora, sigue una discusión técnica de nuestra trabajo sobre lo hecho con los datos atmosféricos del hackathon. 

# Discusión técnica

El vapor de agua es una parámetro relevante en el estudio del cambio climático. El nivel de vapor de agua en la tierra es controlado por la temperatura [[7]](https://www.acs.org/content/acs/en/climatescience/about.html), o sea, mayor temperatura implica mayor vapor de agua. Por ejemplo, sí un volumen de aire contiene su cantidad máxima de vapor de agua y la temperatura disminuye, parte de este vapor va a condensar a su forma líquida.

Datos del vapor de agua en América están disponibles a partir de patrones atmósfericos ofrecidos por los retadores en GIBBS [[6]](https://www.ncdc.noaa.gov/gibbs/year). En nuestro desafio, estudiamos estos datos. Para hacer esto:

1. Extraimos todas las imagenes del satélite GOES-13 desde el 2003 hasta el 2013. Desarrollamos un pequeño [código](/extractor_de_imagenes.sh) para extraer las [imagenes](https://drive.google.com/drive/folders/1dtMERwYcy7sitbOjw02etwdH57ZS2JqX?usp=sharing)
2. Los datos atmosféricos fueron transformados en histogramas [computacionalmente](https://github.com/Migusb/CO-Afina2022/blob/master/CO-Afina2022.ipynb).
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




## Referencias

[1] [Convención Marco de las Naciones Unidas sobre el Cambio Climático](https://unfccc.int/resource/docs/convkp/convsp.pdf)

[2] [NASA. Global Climate Change](https://climate.nasa.gov/evidence/)

[3] [National Geographic en español](https://www.ngenespanol.com/fotografia/acidificacion-mares/)

[4] [NASA's Goddard Institute for Space Studies (GISS)](https://www.giss.nasa.gov/)

[5] [Vegetation Assembly, Adaptive Strategies and Positive Interactions During Primary Succession in the Forefield of the Last Venezuelan Glacier](https://www.frontiersin.org/articles/10.3389/fevo.2021.657755/full)

[6] [National Center for Environmental Information. GIBBS: Global ISCCP B1 Browse System](https://www.ncdc.noaa.gov/gibbs/year)

[7] [ACS Climate Science Toolkit](https://www.acs.org/content/acs/en/climatescience/about.html)
