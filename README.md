# Oristim
![oristim](http://i.imgur.com/EYeMvFe.png?1)

Proyecto de venta de videojuegos realizado por el Grupo 1 - Casas, Colussi, Moreira y Sanches.

Repositorio del proyecto con Grails Framework.

<h5>Documentacion</h5>

https://docs.google.com/document/d/1bqvJG9M8WTRZPpiMZ9cD_ipyvGLqs8-y-86ZbU9FSI4

<h5>Casos de uso</h5>

https://drive.google.com/folderview?id=0B3zJYORyoL95VE5OVmNmejE3UG8&usp=sharing_eid&ts=563254ec


# Como usar Grails en Netbeans:

Descargar Grails version 2.5.1 de la pagina oficial https://grails.org/download.html.

Nuestro prouecto tiene las siguientes caracteristicas:


	Grails Metadata file
	Wed Oct 28 01:39:17 ART 2015
	app.grails.version=2.5.1
	app.name=Oristim
	app.version=0.1


Una vez descargada hay que descomprimirla y guardarla el directorio c:\

Grails no funciona bien con JDK8 por lo que hay que instalar JDK7.

La ultima version de Grails es la version 3.0.9, pero aparentemente no funciona bien en Netbeans.

<h4>Configurar Netbeans:</h4>

Descargar el plugin Groovy and Grails para Netbeans. (Pestaña: Tools > Plugins > Available Plugins).

Configurar Grails en Netbeans. (Tools > Options > Miscellaneous > Groovy)

En la parte donde dice Grails Home, colocar la ruta donde se descomprimio Grails.

Para crear un nuevo proyecto: Click derecho en el menu lateral. New Project > Groovy > Grails Application. Next, Next, Next ...

y despues sale andando ... (Todo esto puede hacerse con java 8 instalado).

Mas informacion (web Netbeans): https://netbeans.org/kb/docs/web/grails-quickstart.html

Mas informacion (web oficial grails): https://grails.org/wiki/NetBeans%20Integration

Hay que tener instalado y configurado el Tomcat. http://tomcat.apache.org/download-80.cgi. Yo lo descomprimi en el disco C:\

<h4>Configurar JDK7:</h4>

(La maquina virtual de java se configura desde el JavaPlatformsManager: Tools > JavaPlatforms).

Para correr bien la aplicacion ahora si, se debe instalar y configurar Java JDK 7.  http://www.oracle.com/technetwork/es/java/javase/downloads/jdk7-downloads-1880260.html 

Para configurar proyecto con java 7 una vez creado, hay que ir a la barra lateral, click derecho en nuestro proyecto: Properties > Libraries > java Plataform JDK1.7. Aceptar.

Si no aparece JDK 7 hay que configurarlo mediante Manage Platforms.

# Usar grails mediante consola y con sublime text:

Si no te gusta usar un IDE, por complejidad, o porque a tu pc no le da el cuero, se hace esto:

<h4>Configurar grails para consola:</h4>

https://grails.org/wiki/installation

Descargar y descomprimir grails en el disco c:\

Crear la variable de entrono GRAILS_HOME y setearle la ruta  donde instalaste (C:\grails)

Setear la variable JAVA_HOME con la ruta donde instalaste java (JDK7) C:\Program Files\Java\jdk1.7.0_80

Modificar la variable PATH y agregarle al final lo siguiente %GRAILS_HOME%\bin

Abrir la consola CMD y escribir "grails". Si no muestra ningun mensaje raro, es porque funciona.

<h4>Configurar Sublime:</h4>

Ejecutar packcage control: install packcage. (Ctrl shift p)

Buscar el paquete "Grails". Instalarlo. Una vez terminada la istalacion, sublime va a reconocer la sintaxis de grails.

<h4>Comandos de consola:</h4>

Mediante la consola hay que posicionarse en la carpeta donde tenemos nuestro proyecto, o donde lo queremos crear.

Seguimos los comandos de este ejemplo https://grails.org/wiki/Quick%20Start.

Mediante la consola hay que ejecutar los comandos para crear controladores, clases de dominio, o el generate-all para las vistas.

Para correr la aplicacion se ejecuta el comando

C:\CarpetaRaizDeTuproyecto> grails RunApp

Luego la consola muestra: "Server running. Browse to http://localhost:8080/Proyecto"

ejecutas esa URL en el navegador.

<h4>Crear rapidamente un proyecto (windows):</h4>

Configura correctamente las variables de entono PATH, GRAILS_HOME y JAVA_HOME mencionadas anteriormente.

Descargate este archivo .BAT https://drive.google.com/open?id=0B3N4QK1nj086bWRxR3RRVmFvNW8

ejecutalo.

Luego que el proyecto haya sido creado, anda a la carpeta ".procesos_bat".

Si todo funciona bien, vas a ahorrarte el hecho de tirar comandos por consola.

Para correr el proyecto ejecutar el archivo "RunApp.bat" en la carpeta raiz de tu directorio.

(Aclaracion: Solo va a funcionar si tenes correctamente seteadas las variables de entorno).

# Config DB orm:

Esto permite que cada vez que creamos un objeto de clase de dominio y ejecutamos la accion Generate All (Generando asi todas las vistas y los controladores), automaticamente se mapee en la base de datos establecida creando asi, todas las tablas correspondientes.

https://www.youtube.com/watch?v=vYACT_sxT-4

Repositorio brazuca:

https://github.com/leandroguarino/RestauranteToComFome/blob/master/RestauranteToComFome/grails-app/conf/DataSource.groovy.

https://github.com/leandroguarino/RestauranteToComFome/blob/master/RestauranteToComFome/grails-app/conf/BuildConfig.groovy.

Agradecimientos: Se agradece al usuario Leandro Guarino - leandroguarino. Por haber ayudado con el tutorial ORM.
