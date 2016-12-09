# Oristim
![oristim](http://i.imgur.com/EYeMvFe.png?1)

El sistema para venta y compra de videojuegos por Internet, en adelante denominado ORISTIM, tiene como objetivo principal la venta y compra de videojuegos dentro del entorno del sistema.

El sistema busca poder llevar a cabo esta compra de la forma más sencilla y atractiva posible para el usuario, el cual podrá seleccionar distintos elementos que desea comprar y agregarlos en un “carrito de compras”.

Una vez que haya finalizado de agregar elementos al carrito de compras, lo podrá cerrar para posteriormente efectivizar la compra o crear uno nuevo.


# Versión Grails y JDK:

Descargar Grails version 2.4.4 de la pagina oficial https://grails.org/download.html.

Nuestro prouecto tiene las siguientes caracteristicas:

	Grails Metadata file
	Wed Oct 28 01:39:17 ART 2015
	app.grails.version=2.4.4
	app.name=Oristim
	app.version=0.1

Dicha version de grails funciona con la JDK 7

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
