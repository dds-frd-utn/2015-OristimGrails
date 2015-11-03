@echo off
echo.
echo.
echo.
echo.
echo CREAR NUEVO PROYECTO GRAILS.
echo.
REM o :: Seteamos el nombre del proyecto
set /p PROYECTO=Nombre del nuevo proyecto :

REM o :: call grails create-app %PROYECTO%

mkdir %PROYECTO%
cd %PROYECTO%


REM o :: Recompilar proyecto
set FILE=RunApp.bat
REM o :: Archivo
echo @echo off > %FILE%
echo echo RunApp >> %FILE%
echo call grails RunApp >> %FILE%

echo exit >> %FILE%


mkdir .procesos_bat
cd .procesos_bat


REM o :: creamos el el .bat para controladores
set FILE=NewController.bat
REM o :: Archivo
echo @echo off > %FILE%
echo cd .. >> %FILE%
echo echo Crear un nuevo Controlador >> %FILE%
echo set /p CONTROLADOR=Nombre de Controlador: >> %FILE%
echo set /p PAQUETE=Nombre de Paquete : >> %FILE%
echo grails create-controller %%PAQUETE%%.%%CONTROLADOR%% >> %FILE%
echo exit >> %FILE%




REM o :: creamos el el .bat para clases de Dominio
set FILE=NewDomainClass.bat
REM o :: Archivo
echo @echo off > %FILE%
echo cd .. >> %FILE%
echo echo Crear una nueva Domain Class >> %FILE%
echo set /p NOMBRECLASE=Nombre de Clase de Dominio : >> %FILE%
echo set /p PAQUETE=Nombre de Paquete : >> %FILE%
echo grails create-domain-class %%PAQUETE%%.%%NOMBRECLASE%% >> %FILE%
echo exit >> %FILE%



REM o :: Archivo Generate ALL
set FILE=GenerateAll.bat
echo @echo off > %FILE%
echo cd .. >> %FILE%
echo echo. >> %FILE%
echo echo. >> %FILE%
echo echo. >> %FILE%
echo echo GENERATE ALL VIEWS AND CONTROLERS. >> %FILE%
echo echo. >> %FILE%
echo set /p DES=Crear todas las vistas y controladores? ( y/n ): >> %FILE%
echo goto %%DES%% >> %FILE%
echo :y >> %FILE%
echo call grails clean >> %FILE%
echo call grails compile >> %FILE%
echo call grails generate-all * >> %FILE%
echo echo. >> %FILE%
echo echo Creacion de clases y controladores finalizada >> %FILE%
echo pause >> %FILE%
echo exit >> %FILE%
echo :n >> %FILE%
echo echo. >> %FILE%
echo exit >> %FILE%


REM o :: Recompilar proyecto
set FILE=CleanAndCompile.bat
REM o :: Archivo
echo @echo off > %FILE%
echo cd .. >> %FILE%
echo echo RECOMPILAR ARCHIVO >> %FILE%
echo call grails clean >> %FILE%
echo call grails compile >> %FILE%
echo echo. >> %FILE%
echo exit >> %FILE%


REM o :: CreateView
(
	echo @echo off
	echo cd ..
	echo echo GENERAR UNA VISTA
	echo set /p VISTA=Nombre de la vista :
	echo set /p PAQUETE=Nombre de Paquete :
	echo grails generate-views %%PAQUETE%%.%%VISTA%%
	echo exit
) > NewView.bat


echo.
echo PROYECTO CREADO.
echo.
echo (mirar la carpeta "procesos_bat". Contiene ejecutables de comandos de grails).
echo.
exit