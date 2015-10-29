# Oristim
![oristim](http://i.imgur.com/EYeMvFe.png?1)

Proyecto de venta de videojuegos realizado por el Grupo 1 - Casas, Colussi, Moreira y Sanches

Link a la documentacion:
https://docs.google.com/document/d/1bqvJG9M8WTRZPpiMZ9cD_ipyvGLqs8-y-86ZbU9FSI4

# Que es oristim?
Oristim = Origin + Steam.
(Paginas de vistas HTML del TP2 de Diseño).


# Como usar Grails en Netbeans:

Descargar Grails version 2.5 de la pagina oficial https://grails.org/download.html.

Tener instalado Java JDK 7 http://www.oracle.com/technetwork/es/java/javase/downloads/jdk7-downloads-1880260.html 

La ultima version de Grails es la version 3.0.9, pero aparentemente no funciona en Netbeans.

Una vez descargada hay que descomprimirla y guardarla el directorio c:\

<h4>Configurar Netbeans</h4>

Descargar el plugin Groovy and Grails para Netbeans. (Pestaña: Tools > Plugins > Available Plugins).

Configurar Grails en Netbeans. (Tools > Options > Miscellaneous > Groovy)

En la parte donde dice Grails Home, colocar la ruta donde se descomprimio Grails.

Para crear un nuevo proyecto: Click derecho en el menu lateral. New Project > Groovy > Grails Application. Next, Next, Next ...

y despues sale andando ...

Mas informacion (web Netbeans): https://netbeans.org/kb/docs/web/grails-quickstart.html

Mas informacion (web oficial grails): https://grails.org/wiki/NetBeans%20Integration

Creo que ademas hay que tener instalado y configurado el Tomcat. http://tomcat.apache.org/download-80.cgi. Yo lo descomprimi en el disco C:\

<h4>Configurar JDK7</h4>

(La maquina virtual de java se configura desde el JavaPlatformsManager: Tools > JavaPlatforms).

Para configurar proyecto con java 7 una vez creado, hay que ir a la barra lateral, click derecho en nuestro proyecto: Properties > Libraries > java Plataform JDK1.7. Aceptar.

Si no aparece JDK 7 hay que configurarlo mediante Manage Platforms.

# Config DB orm con el brasilero:

Esto permite que cada vez que creamos un objeto de clase de dominio y ejecutamos la accion Generate All (Generando asi todas las vistas y los controladores), automaticamente se mapee en la base de datos establecida creando asi, todas las tablas correspondientes.

https://www.youtube.com/watch?v=vYACT_sxT-4

Repositorio brazuca:

https://github.com/leandroguarino/RestauranteToComFome/blob/master/RestauranteToComFome/grails-app/conf/DataSource.groovy.

https://github.com/leandroguarino/RestauranteToComFome/blob/master/RestauranteToComFome/grails-app/conf/BuildConfig.groovy.