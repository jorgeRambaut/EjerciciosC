[33mcommit 4e582b33a7f1740edb63afe5a26b156582685344[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m)[m
Author: Jorge <jgrambaut@gmail.com>
Date:   Thu May 7 20:31:50 2020 -0300

    borre

[1mdiff --git a/cls b/cls[m
[1mdeleted file mode 100644[m
[1mindex 00f19d9..0000000[m
[1m--- a/cls[m
[1m+++ /dev/null[m
[36m@@ -1,831 +0,0 @@[m
[31m-[33mcommit a732e424ae49ccb7fd4a24dfa74c7e122845c0fa[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m)[m[m
[31m-Author: Jorge <jgrambaut@gmail.com>[m
[31m-Date:   Wed May 6 19:07:53 2020 -0300[m
[31m-[m
[31m-    Ejercicios lenguaje c[m
[31m-[m
[31m-[1mdiff --git a/Ejercicios unidad 3.txt b/Ejercicios unidad 3.txt[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..8c520ad[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/Ejercicios unidad 3.txt[m	[m
[31m-[36m@@ -0,0 +1,325 @@[m[m
[31m-[32m+[m[32m//Ejercicio 1:[m[41m [m[m
[31m-[32m+[m[32m//Realizar un programa que permita leer de teclado y luego imprimir[m[m
[31m-[32m+[m[32m//los contenidos de una variable tipo struct cuyos campos son: nombre (cadena[m[m
[31m-[32m+[m[32m//de caracteres [10]), legajo (entero), dependencia de trabajo (entero), horas[m[m
[31m-[32m+[m[32m//trabajadas (real).[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nombre[10];[m[m
[31m-[32m+[m[32m      int legajo;[m[m
[31m-[32m+[m[32m      int dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m      float horasTrabajadas;[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    }empleado;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32mvoid Imprimir (char nombre[],int legajo,int dependenciaDeTrabajo,double horasTrabajadas)[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    printf("El Nombre es %s\tLegajo %d\tDependencia %d\tHs Trabajadas %.2f"[m[m
[31m-[32m+[m[32m    ,nombre,legajo,dependenciaDeTrabajo,horasTrabajadas);[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mvoid SolicitaDatos()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    char nombre[10];[m[m
[31m-[32m+[m[32m    int legajo;[m[m
[31m-[32m+[m[32m    int dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m    float horasTrabajadas;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    printf("Ingresar Nombre\n");[m[m
[31m-[32m+[m[32m    scanf("%9s",nombre);[m[m
[31m-[32m+[m[32m    printf("Ingresar Legajo \n");[m[m
[31m-[32m+[m[32m    scanf("%d",&legajo);[m[m
[31m-[32m+[m[32m    printf("Ingresar Dependencia \n");[m[m
[31m-[32m+[m[32m    scanf("%d",&dependenciaDeTrabajo);[m[m
[31m-[32m+[m[32m    printf("Ingresar Horas Trabajadas \n");[m[m
[31m-[32m+[m[32m    scanf("%f",&horasTrabajadas);[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    strcpy(empleado.nombre,nombre);[m[m
[31m-[32m+[m[32m    empleado.legajo = legajo;[m[m
[31m-[32m+[m[32m    empleado.dependenciaDeTrabajo = dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m    empleado.horasTrabajadas = horasTrabajadas;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    SolicitaDatos();[m[m
[31m-[32m+[m[32m    Imprimir(empleado.nombre,empleado.legajo,empleado.dependenciaDeTrabajo,empleado.horasTrabajadas);[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m----------------------------------------------------------------------------------------------------------[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m//Ejercicio 2:[m[41m [m[m
[31m-[32m+[m[32m//Realizar un programa que permita, dado un vector de[m[m
[31m-[32m+[m[32m//estructuras/registros cuyos campos son: empresa (cadena de caracteres [30]),[m[m
[31m-[32m+[m[32m//domicilio (cadena de caracteres [40]), código postal (cadena de caracteres[m[m
[31m-[32m+[m[32m//[10]), localidad (cadena de caracteres [20]), país (cadena de caracteres [15]),[m[m
[31m-[32m+[m[32m//imprimir un listado para generar el destinatario de unas cartas. El formato debe[m[m
[31m-[32m+[m[32m//ser el correcto[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nombreEmpresa[30];[m[m
[31m-[32m+[m[32m      char domicilioEmpresa[40];[m[m
[31m-[32m+[m[32m      char codigoPostalEmpresa[10];[m[m
[31m-[32m+[m[32m      char localidadEmpresa[20];[m[m
[31m-[32m+[m[32m      char paisEmpresa[15];[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    }empresas[5];[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //prototipo[m[m
[31m-[32m+[m[32m   void Imprimir();[m[m
[31m-[32m+[m[32m   void CargoVector();[m[41m [m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   void Imprimir ()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m        int i =0;[m[m
[31m-[32m+[m[32m        for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m          printf("Empresa[%d]:%s\nDomicilio:%s\tCod:%s\tLocalidad:%s\tPais:%s\n"[m[m
[31m-[32m+[m[32m          ,i,empresas[i].nombreEmpresa,empresas[i].domicilioEmpresa,[m[m
[31m-[32m+[m[32m          empresas[i].codigoPostalEmpresa,empresas[i].localidadEmpresa,[m[m
[31m-[32m+[m[32m          empresas[i].paisEmpresa);[m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m  void CargoVector()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m      int i ;[m[m
[31m-[32m+[m[32m      for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].nombreEmpresa ,"El Barto") ;[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].domicilioEmpresa,"calle falsa 123");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].codigoPostalEmpresa,"	80085");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].localidadEmpresa,"Springfield");[m[m
[31m-[32m+[m[32m      // fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].paisEmpresa,"Usa");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      }[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    strcpy(empresas[2].nombreEmpresa ,"Larguirucho") ;[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[3].domicilioEmpresa,"742 Evergreen Terrace");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[1].codigoPostalEmpresa,"1528mnx");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[4].localidadEmpresa,"moron");[m[m
[31m-[32m+[m[32m      fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[0].paisEmpresa,"ho chi min");[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    CargoVector();[m[m
[31m-[32m+[m[32m    Imprimir();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m------------------------------------------------------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 3: Realizar un programa que permita, dado un vector A de[m[m
[31m-[32m+[m[32m//estructuras/registros, cuyos campos son: producto (cadena de caracteres [10]),[m[m
[31m-[32m+[m[32m//código (entero) y precio (real); obtener un nuevo vector B de[m[m
[31m-[32m+[m[32m//estructuras/registros que contengan sólo el código y el precio del vector A.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char descripcionProducto[10];[m[m
[31m-[32m+[m[32m      int codigoProducto;[m[m
[31m-[32m+[m[32m      float precioProducto;[m[41m  [m[m
[31m-[32m+[m[41m           [m[m
[31m-[32m+[m[32m    }VectorA[25],VectorB[25];[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //prototipo[m[41m   [m[m
[31m-[32m+[m[32m   void CargoVectorA();[m[41m [m[m
[31m-[32m+[m[32m   void PasoDatosdeVectorAaVectorB();[m[m
[31m-[32m+[m[32m   void ImprimirVectorB();[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //Desarrollo de funciones[m[m
[31m-[32m+[m[32m   void CargoVectorA()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m        int i ;[m[m
[31m-[32m+[m[32m          for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            strcpy(VectorA[i].descripcionProducto ,"JaleaVenus") ;[m[m
[31m-[32m+[m[32m            VectorA[i].codigoProducto= 25*(2+i);[m[m
[31m-[32m+[m[32m            VectorA[i].precioProducto=15.02*(2+i);[m[m
[31m-[32m+[m[32m          }[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m      }[m[m
[31m-[32m+[m[32m  void PasoDatosdeVectorAaVectorB()[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[32m  int i =0;[m[m
[31m-[32m+[m[32m        for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m         VectorB[i].codigoProducto=VectorA[i].codigoProducto;[m[m
[31m-[32m+[m[32m         VectorB[i].precioProducto=VectorA[i].precioProducto;[m[41m         [m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   void ImprimirVectorB()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m        int i =0;[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m     printf("***vector b***\n");[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m        for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m         //imprimo precio y codigo[m[41m [m[m
[31m-[32m+[m[32m         //TODO alinear impresion[m[m
[31m-[32m+[m[41m         [m[m
[31m-[32m+[m[32m          printf("Producto[%d]:Codigo: %d Precio $: %.2f\n"[m[m
[31m-[32m+[m[32m          ,i,VectorB[i].codigoProducto,VectorB[i].precioProducto);[m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[41m     [m[m
[31m-[32m+[m[32m     printf("***vector b***\n");[m[41m  [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    CargoVectorA();[m[m
[31m-[32m+[m[32m    PasoDatosdeVectorAaVectorB();[m[m
[31m-[32m+[m[32m    ImprimirVectorB();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m------------------------------------------------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 4: Dado un vector B de estructuras/registros de alumnos cuyos[m[m
[31m-[32m+[m[32m//campos son: nombre (cadena de caracteres [10]) y nota (entero); realizar[m[m
[31m-[32m+[m[32m//mediante un programa la impresión de los nombres de los alumnos cuyas[m[m
[31m-[32m+[m[32m//notas superan el valor 7.[m[m
[31m-[32m+[m[32m//Nota: Los vectores y registros deben ser cargados desde teclado e impresos en[m[m
[31m-[32m+[m[32m//pantalla.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nomobreAlumno[10];[m[m
[31m-[32m+[m[32m      int notaAlumno;[m[41m               [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m    VectorB[5],VectorNota[];[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m   //prototipo[m[41m   [m[m
[31m-[32m+[m[32m   void PidoDatos();[m[41m  [m[m
[31m-[32m+[m[32m   void ImprimirNotaMayorA7();[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //Desarrollo de funciones[m[m
[31m-[32m+[m[32m   void PidoDatos()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m        char nombre[10];[m[m
[31m-[32m+[m[32m        int nota;[m[m
[31m-[32m+[m[32m        int i ;[m[m
[31m-[32m+[m[32m         //pido datos[m[m
[31m-[32m+[m[32m          for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            printf("Ingresar Nombre Alumno \n");[m[m
[31m-[32m+[m[32m            scanf("%9s",nombre);[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m            printf("Ingresar Nota Alumno \n");[m[m
[31m-[32m+[m[32m            scanf("%d",&nota);[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m            strcpy(VectorB[i].nomobreAlumno,nombre);[m[m
[31m-[32m+[m[32m            VectorB[i].notaAlumno=nota;[m[41m [m[m
[31m-[32m+[m[32m          }[m[41m    [m[m
[31m-[32m+[m[41m          [m[m
[31m-[32m+[m[32m      }[m[41m [m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m  void ImprimirNotaMayorA7()[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[32m    int i =0;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m       for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m        {[m[41m      [m[m
[31m-[32m+[m[32m           if (VectorB[i].notaAlumno>7)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            strcpy(VectorNota[i].nomobreAlumno,VectorB[i].nomobreAlumno);[m[m
[31m-[32m+[m[32m            VectorNota[i].notaAlumno= VectorB[i].notaAlumno;[m[41m [m[m
[31m-[32m+[m[32m           printf("Alumno:[%d]\tNombre:%s\tNota:%d\n"[m[m
[31m-[32m+[m[32m            ,i,VectorNota[i].nomobreAlumno,VectorNota[i].notaAlumno);[m[41m      [m[m
[31m-[32m+[m[32m          }[m[41m                  [m[m
[31m-[32m+[m[32m        }[m[41m  [m[m
[31m-[32m+[m[m
[31m-[32m+[m[41m         [m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    PidoDatos();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    ImprimirNotaMayorA7();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m    //TODO ver si puedo separar la carga del vector de la funcion pedir datos[m[m
[31m-[32m+[m[32m      //void CargoVectorB(char *nombre,int nota)[m[m
[31m-[32m+[m[32m     // {[m[m
[31m-[32m+[m[32m     //  int i;[m[m
[31m-[32m+[m[32m     //  char *punteroANombre;[m[m
[31m-[32m+[m[32m      // int Nota;[m[m
[31m-[32m+[m[32m     //  punteroANombre=nombre;[m[m
[31m-[32m+[m[32m     //   for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m      //    {[m[m
[31m-[32m+[m[32m      //      strcpy(VectorB[i].nomobreAlumno,punteroANombre);[m[m
[31m-[32m+[m[32m      //      VectorB[i].notaAlumno=Nota;[m[41m                        [m[m
[31m-[32m+[m[32m      //    }[m[m
[31m-[32m+[m[32m     // }[m[41m    [m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[1mdiff --git a/ejercicio1.c b/ejercicio1.c[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..51fe3ee[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicio1.c[m[m
[31m-[36m@@ -0,0 +1,56 @@[m[m
[31m-[32m+[m[32m//Ejercicio 1:[m[41m [m[m
[31m-[32m+[m[32m//Realizar un programa que permita leer de teclado y luego imprimir[m[m
[31m-[32m+[m[32m//los contenidos de una variable tipo struct cuyos campos son: nombre (cadena[m[m
[31m-[32m+[m[32m//de caracteres [10]), legajo (entero), dependencia de trabajo (entero), horas[m[m
[31m-[32m+[m[32m//trabajadas (real).[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nombre[10];[m[m
[31m-[32m+[m[32m      int legajo;[m[m
[31m-[32m+[m[32m      int dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m      float horasTrabajadas;[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    }empleado;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32mvoid Imprimir (char nombre[],int legajo,int dependenciaDeTrabajo,double horasTrabajadas)[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    printf("El Nombre es %s\tLegajo %d\tDependencia %d\tHs Trabajadas %.2f"[m[m
[31m-[32m+[m[32m    ,nombre,legajo,dependenciaDeTrabajo,horasTrabajadas);[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mvoid SolicitaDatos()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    char nombre[10];[m[m
[31m-[32m+[m[32m    int legajo;[m[m
[31m-[32m+[m[32m    int dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m    float horasTrabajadas;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    printf("Ingresar Nombre\n");[m[m
[31m-[32m+[m[32m    scanf("%9s",nombre);[m[m
[31m-[32m+[m[32m    printf("Ingresar Legajo \n");[m[m
[31m-[32m+[m[32m    scanf("%d",&legajo);[m[m
[31m-[32m+[m[32m    printf("Ingresar Dependencia \n");[m[m
[31m-[32m+[m[32m    scanf("%d",&dependenciaDeTrabajo);[m[m
[31m-[32m+[m[32m    printf("Ingresar Horas Trabajadas \n");[m[m
[31m-[32m+[m[32m    scanf("%f",&horasTrabajadas);[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    strcpy(empleado.nombre,nombre);[m[m
[31m-[32m+[m[32m    empleado.legajo = legajo;[m[m
[31m-[32m+[m[32m    empleado.dependenciaDeTrabajo = dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m    empleado.horasTrabajadas = horasTrabajadas;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    SolicitaDatos();[m[m
[31m-[32m+[m[32m    Imprimir(empleado.nombre,empleado.legajo,empleado.dependenciaDeTrabajo,empleado.horasTrabajadas);[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[1mdiff --git a/ejercicio2.c b/ejercicio2.c[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..2e1e9da[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicio2.c[m[m
[31m-[36m@@ -0,0 +1,62 @@[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char empresa[30];[m[m
[31m-[32m+[m[32m      char domicilio[40];[m[m
[31m-[32m+[m[32m      char codigoPostal[10];[m[m
[31m-[32m+[m[32m      char localidad[20];[m[m
[31m-[32m+[m[32m      char pais[15];[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    }empresa[5];[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32mvoid Imprimir ()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    int i =0;[m[m
[31m-[32m+[m[32m     for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m     {[m[m
[31m-[32m+[m[32m     printf("Empresa[%d]:%s\nDomicilio:%s\tCod:%s\tLocalidad:%s\tPais:%s\n"[m[m
[31m-[32m+[m[32m      ,i,empresa[i].empresa,[m[m
[31m-[32m+[m[32m      empresa[i].domicilio,[m[m
[31m-[32m+[m[32m      empresa[i].codigoPostal,[m[m
[31m-[32m+[m[32m      empresa[i].localidad,[m[m
[31m-[32m+[m[32m      empresa[i].pais);[m[m
[31m-[32m+[m[32m       }[m[m
[31m-[32m+[m[41m     [m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mvoid CargoVector()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    int i ;[m[m
[31m-[32m+[m[32m    for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].empresa ,"Una Empresa") ;[m[m
[31m-[32m+[m[32m     //fflush(stdin);[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].domicilio,"Un Domicilio");[m[m
[31m-[32m+[m[32m     //fflush(stdin);[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].codigoPostal,"123456abc");[m[m
[31m-[32m+[m[32m     //fflush(stdin);[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].localidad,"localidad");[m[m
[31m-[32m+[m[32m     fflush(stdin);[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].pais,"un pais");[m[m
[31m-[32m+[m[32m     //fflush(stdin);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    CargoVector();[m[m
[31m-[32m+[m[32m    Imprimir();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-\ No newline at end of file[m[m
[31m-[1mdiff --git a/ejercicio3.c b/ejercicio3.c[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..e7cb678[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicio3.c[m[m
[31m-[36m@@ -0,0 +1,73 @@[m[m
[31m-[32m+[m[32m//Ejercicio 3: Realizar un programa que permita, dado un vector A de[m[m
[31m-[32m+[m[32m//estructuras/registros, cuyos campos son: producto (cadena de caracteres [10]),[m[m
[31m-[32m+[m[32m//código (entero) y precio (real); obtener un nuevo vector B de[m[m
[31m-[32m+[m[32m//estructuras/registros que contengan sólo el código y el precio del vector A.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char descripcionProducto[10];[m[m
[31m-[32m+[m[32m      int codigoProducto;[m[m
[31m-[32m+[m[32m      float precioProducto;[m[41m  [m[m
[31m-[32m+[m[41m           [m[m
[31m-[32m+[m[32m    }VectorA[25],VectorB[25];[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //prototipo[m[41m   [m[m
[31m-[32m+[m[32m   void CargoVectorA();[m[41m [m[m
[31m-[32m+[m[32m   void PasoDatosdeVectorAaVectorB();[m[m
[31m-[32m+[m[32m   void ImprimirVectorB();[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //Desarrollo de funciones[m[m
[31m-[32m+[m[32m   void CargoVectorA()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m        int i ;[m[m
[31m-[32m+[m[32m          for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            strcpy(VectorA[i].descripcionProducto ,"JaleaVenus") ;[m[m
[31m-[32m+[m[32m            VectorA[i].codigoProducto= 25*(2+i);[m[m
[31m-[32m+[m[32m            VectorA[i].precioProducto=15.02*(2+i);[m[m
[31m-[32m+[m[32m          }[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m      }[m[m
[31m-[32m+[m[32m  void PasoDatosdeVectorAaVectorB()[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[32m  int i =0;[m[m
[31m-[32m+[m[32m        for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m         VectorB[i].codigoProducto=VectorA[i].codigoProducto;[m[m
[31m-[32m+[m[32m         VectorB[i].precioProducto=VectorA[i].precioProducto;[m[41m         [m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   void ImprimirVectorB()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m        int i =0;[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m     printf("***vector b***\n");[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m        for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m         //imprimo precio y codigo[m[41m [m[m
[31m-[32m+[m[32m         //TODO alinear impresion[m[m
[31m-[32m+[m[41m         [m[m
[31m-[32m+[m[32m          printf("Producto[%d]:Codigo: %d Precio $: %.2f\n"[m[m
[31m-[32m+[m[32m          ,i,VectorB[i].codigoProducto,VectorB[i].precioProducto);[m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[41m     [m[m
[31m-[32m+[m[32m     printf("***vector b***\n");[m[41m  [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    CargoVectorA();[m[m
[31m-[32m+[m[32m    PasoDatosdeVectorAaVectorB();[m[m
[31m-[32m+[m[32m    ImprimirVectorB();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-\ No newline at end of file[m[m
[31m-[1mdiff --git a/ejercicio4.c b/ejercicio4.c[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..95cb3d5[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicio4.c[m[m
[31m-[36m@@ -0,0 +1,87 @@[m[m
[31m-[32m+[m[32m//Ejercicio 4: Dado un vector B de estructuras/registros de alumnos cuyos[m[m
[31m-[32m+[m[32m//campos son: nombre (cadena de caracteres [10]) y nota (entero); realizar[m[m
[31m-[32m+[m[32m//mediante un programa la impresión de los nombres de los alumnos cuyas[m[m
[31m-[32m+[m[32m//notas superan el valor 7.[m[m
[31m-[32m+[m[32m//Nota: Los vectores y registros deben ser cargados desde teclado e impresos en[m[m
[31m-[32m+[m[32m//pantalla.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nomobreAlumno[10];[m[m
[31m-[32m+[m[32m      int notaAlumno;[m[41m               [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m    VectorB[5],VectorNota[];[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m   //prototipo[m[41m   [m[m
[31m-[32m+[m[32m   void PidoDatos();[m[41m  [m[m
[31m-[32m+[m[32m   void ImprimirNotaMayorA7();[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //Desarrollo de funciones[m[m
[31m-[32m+[m[32m   void PidoDatos()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m        char nombre[10];[m[m
[31m-[32m+[m[32m        int nota;[m[m
[31m-[32m+[m[32m        int i ;[m[m
[31m-[32m+[m[32m         //pido datos[m[m
[31m-[32m+[m[32m          for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            printf("Ingresar Nombre Alumno \n");[m[m
[31m-[32m+[m[32m            scanf("%9s",nombre);[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m            printf("Ingresar Nota Alumno \n");[m[m
[31m-[32m+[m[32m            scanf("%d",&nota);[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m            strcpy(VectorB[i].nomobreAlumno,nombre);[m[m
[31m-[32m+[m[32m            VectorB[i].notaAlumno=nota;[m[41m [m[m
[31m-[32m+[m[32m          }[m[41m    [m[m
[31m-[32m+[m[41m          [m[m
[31m-[32m+[m[32m      }[m[41m [m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m  void ImprimirNotaMayorA7()[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[32m    int i =0;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m       for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m        {[m[41m      [m[m
[31m-[32m+[m[32m           if (VectorB[i].notaAlumno>7)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            strcpy(VectorNota[i].nomobreAlumno,VectorB[i].nomobreAlumno);[m[m
[31m-[32m+[m[32m            VectorNota[i].notaAlumno= VectorB[i].notaAlumno;[m[41m [m[m
[31m-[32m+[m[32m           printf("Alumno:[%d]\tNombre:%s\tNota:%d\n"[m[m
[31m-[32m+[m[32m            ,i,VectorNota[i].nomobreAlumno,VectorNota[i].notaAlumno);[m[41m      [m[m
[31m-[32m+[m[32m          }[m[41m                  [m[m
[31m-[32m+[m[32m        }[m[41m  [m[m
[31m-[32m+[m[m
[31m-[32m+[m[41m         [m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    PidoDatos();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    ImprimirNotaMayorA7();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m    //TODO ver si puedo separar la carga del vector de la funcion pedir datos[m[m
[31m-[32m+[m[32m      //void CargoVectorB(char *nombre,int nota)[m[m
[31m-[32m+[m[32m     // {[m[m
[31m-[32m+[m[32m     //  int i;[m[m
[31m-[32m+[m[32m     //  char *punteroANombre;[m[m
[31m-[32m+[m[32m      // int Nota;[m[m
[31m-[32m+[m[32m     //  punteroANombre=nombre;[m[m
[31m-[32m+[m[32m     //   for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m      //    {[m[m
[31m-[32m+[m[32m      //      strcpy(VectorB[i].nomobreAlumno,punteroANombre);[m[m
[31m-[32m+[m[32m      //      VectorB[i].notaAlumno=Nota;[m[41m                        [m[m
[31m-[32m+[m[32m      //    }[m[m
[31m-[32m+[m[32m     // }[m[41m    [m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[1mdiff --git a/ejercicios unidad 1.txt b/ejercicios unidad 1.txt[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..623f126[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicios unidad 1.txt[m	[m
[31m-[36m@@ -0,0 +1,183 @@[m[m
[31m-[32m+[m[32m//Ejercicio 1: Realizar un programa que permita hacer nulos (cargarles valor 0)[m[m
[31m-[32m+[m[32m//los elementos de un vector Q de enteros, con n componentes (donde n es una[m[m
[31m-[32m+[m[32m//constante que vale 10).[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    int n = 10;[m[m
[31m-[32m+[m[32m    int Q [n];[m[m
[31m-[32m+[m[32m    int i ;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    for (i= 0;i<n ; i ++)[m[m
[31m-[32m+[m[32m    { Q[i] = 0;[m[m
[31m-[32m+[m[32m    printf("%d\t",Q[i]);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m----------[m[m
[31m-[32m+[m[32m//Ejercicio 2: Realizar un programa que permita obtener e imprimir el resultado[m[m
[31m-[32m+[m[32m//de la suma de los elementos de un vector Z de longitud k, donde los elementos[m[m
[31m-[32m+[m[32m//del vector son reales (considerar k=5).[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    int k = 5;[m[m
[31m-[32m+[m[32m    float z [k];[m[m
[31m-[32m+[m[32m    float suma[k];[m[m
[31m-[32m+[m[32m    int i ;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    for (i= 0;i<k ; i++)[m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m      suma[i] +=z [i];[m[m
[31m-[32m+[m[32m      printf("%f\t",suma[i]);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m-------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 3: Realizar un programa que permita imprimir las componentes de un[m[m
[31m-[32m+[m[32m//vector A de longitud g, cuyos elementos son caracteres. La impresión deberá[m[m
[31m-[32m+[m[32m//indicar el índice del vector y el valor de la componente. Los índices son enteros[m[m
[31m-[32m+[m[32m//y g=8.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    char texto[]="Longitud";[m[m
[31m-[32m+[m[32m    int longitud=strlen(texto);[m[m
[31m-[32m+[m[32m    int indice;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    for (indice=0;indice<longitud;indice++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m        printf("Indice %d \t Valor %c\n",indice,texto[indice]);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m//Ejercicio 4: Realizar un programa que permita obtener el producto de dos[m[m
[31m-[32m+[m[32m//vectores A y B componente a componente, guardando el resultado en un nuevo[m[41m [m[m
[31m-[32m+[m[32m//vector C. Los vectores tienen longitud 6, y los índices son enteros. Los[m[m
[31m-[32m+[m[32m//elementos del vector también son enteros. Imprimir el resultado.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m int A []={1,2,3,4,5,6};[m[m
[31m-[32m+[m[32m int B []={7,8,9,10,11,12};[m[m
[31m-[32m+[m[32m int C [6];[m[m
[31m-[32m+[m[32m int i;[m[m
[31m-[32m+[m[32m printf("Vector Resultado \n");[m[m
[31m-[32m+[m[32m for (i=0;i<6;i++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m     C[i]=(A[i]*B[i]);[m[m
[31m-[32m+[m[32m     printf(" %d\t",C[i]);[m[m
[31m-[32m+[m[41m     [m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m-------------------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 5: Realizar un programa que permita asignar la identidad a una[m[m
[31m-[32m+[m[32m//matriz R de dimensión mxm (considerar m=4). Los índices y las componentes[m[m
[31m-[32m+[m[32m//son enteros. La matriz identidad es la que tiene valor 1 en la diagonal principal[m[m
[31m-[32m+[m[32m//y 0 en el resto.[m[m
[31m-[32m+[m[32m//1 0 0 0[m[m
[31m-[32m+[m[32m//0 1 0 0[m[m
[31m-[32m+[m[32m//0 0 1 0[m[m
[31m-[32m+[m[32m//0 0 0 1[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m int q =4;[m[m
[31m-[32m+[m[32m int r=4;[m[m
[31m-[32m+[m[32m int R [q][r];[m[m
[31m-[32m+[m[32m int fila;[m[m
[31m-[32m+[m[32m int columna;[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m printf("Matriz Identidad \n");[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m for (fila=0;fila<q;fila++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m     for (columna=0;columna<r;columna++)[m[m
[31m-[32m+[m[32m     {[m[m
[31m-[32m+[m[32m      R [fila][columna]= (fila==columna);//trate de ahorrar lineas de codigo pero tengo que comentar asi que no se si es tan eficiente, si son == da como resultado 1[m[41m [m[m
[31m-[32m+[m[32m      printf("%d \t",R [fila][columna]); // de lo contrario da resultado 0[m[41m [m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m     }[m[41m [m[m
[31m-[32m+[m[32m printf("\n"); //lo que tarde en dar con que el printf iba acá para que la matriz quedara como una matriz y no todo uno abajo del otro o todos seguidos !!!![m[41m [m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m---------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 6: Realizar un programa que permita obtener la suma de dos[m[m
[31m-[32m+[m[32m//matrices X y J de dimensión axb (a=3 y b=4). Los elementos de la matriz son[m[m
[31m-[32m+[m[32m//reales. El resultado debe ser impreso. Realizar la suma componente a[m[m
[31m-[32m+[m[32m//componente.[m[m
[31m-[32m+[m[32m//Nota: Los valores de las matrices y los vectores deben ser cargados desde[m[m
[31m-[32m+[m[32m//teclado y siempre impresos sobre la pantalla.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m int a =3;[m[m
[31m-[32m+[m[32m int b =4;[m[m
[31m-[32m+[m[32m int i,j;[m[m
[31m-[32m+[m[32m float valoringresado;[m[m
[31m-[32m+[m[32m float X [a][b];[m[m
[31m-[32m+[m[32m float J [a][b];[m[m
[31m-[32m+[m[32m float resultado [a][b];[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m for (i=0;i<a;i++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m    for (j=0;j<b;j++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m     printf("Ingrese Valor Matriz X \n");[m[m
[31m-[32m+[m[32m     scanf("%f",&X[i][j]);[m[m
[31m-[32m+[m[32m     valoringresado= X[i][j];[m[m
[31m-[32m+[m[32m     printf("%.2f\n",valoringresado);[m[41m       [m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mfor (i=0;i<a;i++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m    for (j=0;j<b;j++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m     printf("Ingrese Valor Matriz J \n");[m[m
[31m-[32m+[m[32m     scanf("%f",&J[i][j]);[m[m
[31m-[32m+[m[32m     valoringresado= J[i][j];[m[m
[31m-[32m+[m[32m     printf("%.2f\n",valoringresado);[m[41m [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32mprintf("Suma de las dos matrices\n");[m[m
[31m-[32m+[m[32mfor (i=0;i<a;i++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m    for (j=0;j<b;j++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m     resultado[i][j]=X[i][j]+J[i][j];[m[m
[31m-[32m+[m[32m     printf("%.2f\t",resultado[i][j]);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m  printf("\n");[m[41m  [m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-\ No newline at end of file[m[m
[1mdiff --git a/q b/q[m
[1mdeleted file mode 100644[m
[1mindex 00f19d9..0000000[m
[1m--- a/q[m
[1m+++ /dev/null[m
[36m@@ -1,831 +0,0 @@[m
[31m-[33mcommit a732e424ae49ccb7fd4a24dfa74c7e122845c0fa[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m)[m[m
[31m-Author: Jorge <jgrambaut@gmail.com>[m
[31m-Date:   Wed May 6 19:07:53 2020 -0300[m
[31m-[m
[31m-    Ejercicios lenguaje c[m
[31m-[m
[31m-[1mdiff --git a/Ejercicios unidad 3.txt b/Ejercicios unidad 3.txt[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..8c520ad[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/Ejercicios unidad 3.txt[m	[m
[31m-[36m@@ -0,0 +1,325 @@[m[m
[31m-[32m+[m[32m//Ejercicio 1:[m[41m [m[m
[31m-[32m+[m[32m//Realizar un programa que permita leer de teclado y luego imprimir[m[m
[31m-[32m+[m[32m//los contenidos de una variable tipo struct cuyos campos son: nombre (cadena[m[m
[31m-[32m+[m[32m//de caracteres [10]), legajo (entero), dependencia de trabajo (entero), horas[m[m
[31m-[32m+[m[32m//trabajadas (real).[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nombre[10];[m[m
[31m-[32m+[m[32m      int legajo;[m[m
[31m-[32m+[m[32m      int dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m      float horasTrabajadas;[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    }empleado;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32mvoid Imprimir (char nombre[],int legajo,int dependenciaDeTrabajo,double horasTrabajadas)[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    printf("El Nombre es %s\tLegajo %d\tDependencia %d\tHs Trabajadas %.2f"[m[m
[31m-[32m+[m[32m    ,nombre,legajo,dependenciaDeTrabajo,horasTrabajadas);[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mvoid SolicitaDatos()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    char nombre[10];[m[m
[31m-[32m+[m[32m    int legajo;[m[m
[31m-[32m+[m[32m    int dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m    float horasTrabajadas;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    printf("Ingresar Nombre\n");[m[m
[31m-[32m+[m[32m    scanf("%9s",nombre);[m[m
[31m-[32m+[m[32m    printf("Ingresar Legajo \n");[m[m
[31m-[32m+[m[32m    scanf("%d",&legajo);[m[m
[31m-[32m+[m[32m    printf("Ingresar Dependencia \n");[m[m
[31m-[32m+[m[32m    scanf("%d",&dependenciaDeTrabajo);[m[m
[31m-[32m+[m[32m    printf("Ingresar Horas Trabajadas \n");[m[m
[31m-[32m+[m[32m    scanf("%f",&horasTrabajadas);[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    strcpy(empleado.nombre,nombre);[m[m
[31m-[32m+[m[32m    empleado.legajo = legajo;[m[m
[31m-[32m+[m[32m    empleado.dependenciaDeTrabajo = dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m    empleado.horasTrabajadas = horasTrabajadas;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    SolicitaDatos();[m[m
[31m-[32m+[m[32m    Imprimir(empleado.nombre,empleado.legajo,empleado.dependenciaDeTrabajo,empleado.horasTrabajadas);[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m----------------------------------------------------------------------------------------------------------[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m//Ejercicio 2:[m[41m [m[m
[31m-[32m+[m[32m//Realizar un programa que permita, dado un vector de[m[m
[31m-[32m+[m[32m//estructuras/registros cuyos campos son: empresa (cadena de caracteres [30]),[m[m
[31m-[32m+[m[32m//domicilio (cadena de caracteres [40]), código postal (cadena de caracteres[m[m
[31m-[32m+[m[32m//[10]), localidad (cadena de caracteres [20]), país (cadena de caracteres [15]),[m[m
[31m-[32m+[m[32m//imprimir un listado para generar el destinatario de unas cartas. El formato debe[m[m
[31m-[32m+[m[32m//ser el correcto[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nombreEmpresa[30];[m[m
[31m-[32m+[m[32m      char domicilioEmpresa[40];[m[m
[31m-[32m+[m[32m      char codigoPostalEmpresa[10];[m[m
[31m-[32m+[m[32m      char localidadEmpresa[20];[m[m
[31m-[32m+[m[32m      char paisEmpresa[15];[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    }empresas[5];[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //prototipo[m[m
[31m-[32m+[m[32m   void Imprimir();[m[m
[31m-[32m+[m[32m   void CargoVector();[m[41m [m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   void Imprimir ()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m        int i =0;[m[m
[31m-[32m+[m[32m        for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m          printf("Empresa[%d]:%s\nDomicilio:%s\tCod:%s\tLocalidad:%s\tPais:%s\n"[m[m
[31m-[32m+[m[32m          ,i,empresas[i].nombreEmpresa,empresas[i].domicilioEmpresa,[m[m
[31m-[32m+[m[32m          empresas[i].codigoPostalEmpresa,empresas[i].localidadEmpresa,[m[m
[31m-[32m+[m[32m          empresas[i].paisEmpresa);[m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m  void CargoVector()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m      int i ;[m[m
[31m-[32m+[m[32m      for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].nombreEmpresa ,"El Barto") ;[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].domicilioEmpresa,"calle falsa 123");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].codigoPostalEmpresa,"	80085");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].localidadEmpresa,"Springfield");[m[m
[31m-[32m+[m[32m      // fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[i].paisEmpresa,"Usa");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      }[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    strcpy(empresas[2].nombreEmpresa ,"Larguirucho") ;[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[3].domicilioEmpresa,"742 Evergreen Terrace");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[1].codigoPostalEmpresa,"1528mnx");[m[m
[31m-[32m+[m[32m      //fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[4].localidadEmpresa,"moron");[m[m
[31m-[32m+[m[32m      fflush(stdin);[m[m
[31m-[32m+[m[32m      strcpy(empresas[0].paisEmpresa,"ho chi min");[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    CargoVector();[m[m
[31m-[32m+[m[32m    Imprimir();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m------------------------------------------------------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 3: Realizar un programa que permita, dado un vector A de[m[m
[31m-[32m+[m[32m//estructuras/registros, cuyos campos son: producto (cadena de caracteres [10]),[m[m
[31m-[32m+[m[32m//código (entero) y precio (real); obtener un nuevo vector B de[m[m
[31m-[32m+[m[32m//estructuras/registros que contengan sólo el código y el precio del vector A.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char descripcionProducto[10];[m[m
[31m-[32m+[m[32m      int codigoProducto;[m[m
[31m-[32m+[m[32m      float precioProducto;[m[41m  [m[m
[31m-[32m+[m[41m           [m[m
[31m-[32m+[m[32m    }VectorA[25],VectorB[25];[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //prototipo[m[41m   [m[m
[31m-[32m+[m[32m   void CargoVectorA();[m[41m [m[m
[31m-[32m+[m[32m   void PasoDatosdeVectorAaVectorB();[m[m
[31m-[32m+[m[32m   void ImprimirVectorB();[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //Desarrollo de funciones[m[m
[31m-[32m+[m[32m   void CargoVectorA()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m        int i ;[m[m
[31m-[32m+[m[32m          for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            strcpy(VectorA[i].descripcionProducto ,"JaleaVenus") ;[m[m
[31m-[32m+[m[32m            VectorA[i].codigoProducto= 25*(2+i);[m[m
[31m-[32m+[m[32m            VectorA[i].precioProducto=15.02*(2+i);[m[m
[31m-[32m+[m[32m          }[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m      }[m[m
[31m-[32m+[m[32m  void PasoDatosdeVectorAaVectorB()[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[32m  int i =0;[m[m
[31m-[32m+[m[32m        for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m         VectorB[i].codigoProducto=VectorA[i].codigoProducto;[m[m
[31m-[32m+[m[32m         VectorB[i].precioProducto=VectorA[i].precioProducto;[m[41m         [m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   void ImprimirVectorB()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m        int i =0;[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m     printf("***vector b***\n");[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m        for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m         //imprimo precio y codigo[m[41m [m[m
[31m-[32m+[m[32m         //TODO alinear impresion[m[m
[31m-[32m+[m[41m         [m[m
[31m-[32m+[m[32m          printf("Producto[%d]:Codigo: %d Precio $: %.2f\n"[m[m
[31m-[32m+[m[32m          ,i,VectorB[i].codigoProducto,VectorB[i].precioProducto);[m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[41m     [m[m
[31m-[32m+[m[32m     printf("***vector b***\n");[m[41m  [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    CargoVectorA();[m[m
[31m-[32m+[m[32m    PasoDatosdeVectorAaVectorB();[m[m
[31m-[32m+[m[32m    ImprimirVectorB();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m------------------------------------------------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 4: Dado un vector B de estructuras/registros de alumnos cuyos[m[m
[31m-[32m+[m[32m//campos son: nombre (cadena de caracteres [10]) y nota (entero); realizar[m[m
[31m-[32m+[m[32m//mediante un programa la impresión de los nombres de los alumnos cuyas[m[m
[31m-[32m+[m[32m//notas superan el valor 7.[m[m
[31m-[32m+[m[32m//Nota: Los vectores y registros deben ser cargados desde teclado e impresos en[m[m
[31m-[32m+[m[32m//pantalla.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nomobreAlumno[10];[m[m
[31m-[32m+[m[32m      int notaAlumno;[m[41m               [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m    VectorB[5],VectorNota[];[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m   //prototipo[m[41m   [m[m
[31m-[32m+[m[32m   void PidoDatos();[m[41m  [m[m
[31m-[32m+[m[32m   void ImprimirNotaMayorA7();[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //Desarrollo de funciones[m[m
[31m-[32m+[m[32m   void PidoDatos()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m        char nombre[10];[m[m
[31m-[32m+[m[32m        int nota;[m[m
[31m-[32m+[m[32m        int i ;[m[m
[31m-[32m+[m[32m         //pido datos[m[m
[31m-[32m+[m[32m          for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            printf("Ingresar Nombre Alumno \n");[m[m
[31m-[32m+[m[32m            scanf("%9s",nombre);[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m            printf("Ingresar Nota Alumno \n");[m[m
[31m-[32m+[m[32m            scanf("%d",&nota);[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m            strcpy(VectorB[i].nomobreAlumno,nombre);[m[m
[31m-[32m+[m[32m            VectorB[i].notaAlumno=nota;[m[41m [m[m
[31m-[32m+[m[32m          }[m[41m    [m[m
[31m-[32m+[m[41m          [m[m
[31m-[32m+[m[32m      }[m[41m [m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m  void ImprimirNotaMayorA7()[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[32m    int i =0;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m       for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m        {[m[41m      [m[m
[31m-[32m+[m[32m           if (VectorB[i].notaAlumno>7)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            strcpy(VectorNota[i].nomobreAlumno,VectorB[i].nomobreAlumno);[m[m
[31m-[32m+[m[32m            VectorNota[i].notaAlumno= VectorB[i].notaAlumno;[m[41m [m[m
[31m-[32m+[m[32m           printf("Alumno:[%d]\tNombre:%s\tNota:%d\n"[m[m
[31m-[32m+[m[32m            ,i,VectorNota[i].nomobreAlumno,VectorNota[i].notaAlumno);[m[41m      [m[m
[31m-[32m+[m[32m          }[m[41m                  [m[m
[31m-[32m+[m[32m        }[m[41m  [m[m
[31m-[32m+[m[m
[31m-[32m+[m[41m         [m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    PidoDatos();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    ImprimirNotaMayorA7();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m    //TODO ver si puedo separar la carga del vector de la funcion pedir datos[m[m
[31m-[32m+[m[32m      //void CargoVectorB(char *nombre,int nota)[m[m
[31m-[32m+[m[32m     // {[m[m
[31m-[32m+[m[32m     //  int i;[m[m
[31m-[32m+[m[32m     //  char *punteroANombre;[m[m
[31m-[32m+[m[32m      // int Nota;[m[m
[31m-[32m+[m[32m     //  punteroANombre=nombre;[m[m
[31m-[32m+[m[32m     //   for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m      //    {[m[m
[31m-[32m+[m[32m      //      strcpy(VectorB[i].nomobreAlumno,punteroANombre);[m[m
[31m-[32m+[m[32m      //      VectorB[i].notaAlumno=Nota;[m[41m                        [m[m
[31m-[32m+[m[32m      //    }[m[m
[31m-[32m+[m[32m     // }[m[41m    [m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[1mdiff --git a/ejercicio1.c b/ejercicio1.c[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..51fe3ee[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicio1.c[m[m
[31m-[36m@@ -0,0 +1,56 @@[m[m
[31m-[32m+[m[32m//Ejercicio 1:[m[41m [m[m
[31m-[32m+[m[32m//Realizar un programa que permita leer de teclado y luego imprimir[m[m
[31m-[32m+[m[32m//los contenidos de una variable tipo struct cuyos campos son: nombre (cadena[m[m
[31m-[32m+[m[32m//de caracteres [10]), legajo (entero), dependencia de trabajo (entero), horas[m[m
[31m-[32m+[m[32m//trabajadas (real).[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nombre[10];[m[m
[31m-[32m+[m[32m      int legajo;[m[m
[31m-[32m+[m[32m      int dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m      float horasTrabajadas;[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    }empleado;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32mvoid Imprimir (char nombre[],int legajo,int dependenciaDeTrabajo,double horasTrabajadas)[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    printf("El Nombre es %s\tLegajo %d\tDependencia %d\tHs Trabajadas %.2f"[m[m
[31m-[32m+[m[32m    ,nombre,legajo,dependenciaDeTrabajo,horasTrabajadas);[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mvoid SolicitaDatos()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    char nombre[10];[m[m
[31m-[32m+[m[32m    int legajo;[m[m
[31m-[32m+[m[32m    int dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m    float horasTrabajadas;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    printf("Ingresar Nombre\n");[m[m
[31m-[32m+[m[32m    scanf("%9s",nombre);[m[m
[31m-[32m+[m[32m    printf("Ingresar Legajo \n");[m[m
[31m-[32m+[m[32m    scanf("%d",&legajo);[m[m
[31m-[32m+[m[32m    printf("Ingresar Dependencia \n");[m[m
[31m-[32m+[m[32m    scanf("%d",&dependenciaDeTrabajo);[m[m
[31m-[32m+[m[32m    printf("Ingresar Horas Trabajadas \n");[m[m
[31m-[32m+[m[32m    scanf("%f",&horasTrabajadas);[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    strcpy(empleado.nombre,nombre);[m[m
[31m-[32m+[m[32m    empleado.legajo = legajo;[m[m
[31m-[32m+[m[32m    empleado.dependenciaDeTrabajo = dependenciaDeTrabajo;[m[m
[31m-[32m+[m[32m    empleado.horasTrabajadas = horasTrabajadas;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    SolicitaDatos();[m[m
[31m-[32m+[m[32m    Imprimir(empleado.nombre,empleado.legajo,empleado.dependenciaDeTrabajo,empleado.horasTrabajadas);[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[1mdiff --git a/ejercicio2.c b/ejercicio2.c[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..2e1e9da[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicio2.c[m[m
[31m-[36m@@ -0,0 +1,62 @@[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char empresa[30];[m[m
[31m-[32m+[m[32m      char domicilio[40];[m[m
[31m-[32m+[m[32m      char codigoPostal[10];[m[m
[31m-[32m+[m[32m      char localidad[20];[m[m
[31m-[32m+[m[32m      char pais[15];[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m    }empresa[5];[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32mvoid Imprimir ()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    int i =0;[m[m
[31m-[32m+[m[32m     for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m     {[m[m
[31m-[32m+[m[32m     printf("Empresa[%d]:%s\nDomicilio:%s\tCod:%s\tLocalidad:%s\tPais:%s\n"[m[m
[31m-[32m+[m[32m      ,i,empresa[i].empresa,[m[m
[31m-[32m+[m[32m      empresa[i].domicilio,[m[m
[31m-[32m+[m[32m      empresa[i].codigoPostal,[m[m
[31m-[32m+[m[32m      empresa[i].localidad,[m[m
[31m-[32m+[m[32m      empresa[i].pais);[m[m
[31m-[32m+[m[32m       }[m[m
[31m-[32m+[m[41m     [m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mvoid CargoVector()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    int i ;[m[m
[31m-[32m+[m[32m    for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].empresa ,"Una Empresa") ;[m[m
[31m-[32m+[m[32m     //fflush(stdin);[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].domicilio,"Un Domicilio");[m[m
[31m-[32m+[m[32m     //fflush(stdin);[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].codigoPostal,"123456abc");[m[m
[31m-[32m+[m[32m     //fflush(stdin);[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].localidad,"localidad");[m[m
[31m-[32m+[m[32m     fflush(stdin);[m[m
[31m-[32m+[m[32m     strcpy(empresa[i].pais,"un pais");[m[m
[31m-[32m+[m[32m     //fflush(stdin);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    CargoVector();[m[m
[31m-[32m+[m[32m    Imprimir();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-\ No newline at end of file[m[m
[31m-[1mdiff --git a/ejercicio3.c b/ejercicio3.c[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..e7cb678[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicio3.c[m[m
[31m-[36m@@ -0,0 +1,73 @@[m[m
[31m-[32m+[m[32m//Ejercicio 3: Realizar un programa que permita, dado un vector A de[m[m
[31m-[32m+[m[32m//estructuras/registros, cuyos campos son: producto (cadena de caracteres [10]),[m[m
[31m-[32m+[m[32m//código (entero) y precio (real); obtener un nuevo vector B de[m[m
[31m-[32m+[m[32m//estructuras/registros que contengan sólo el código y el precio del vector A.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[41m  [m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char descripcionProducto[10];[m[m
[31m-[32m+[m[32m      int codigoProducto;[m[m
[31m-[32m+[m[32m      float precioProducto;[m[41m  [m[m
[31m-[32m+[m[41m           [m[m
[31m-[32m+[m[32m    }VectorA[25],VectorB[25];[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //prototipo[m[41m   [m[m
[31m-[32m+[m[32m   void CargoVectorA();[m[41m [m[m
[31m-[32m+[m[32m   void PasoDatosdeVectorAaVectorB();[m[m
[31m-[32m+[m[32m   void ImprimirVectorB();[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //Desarrollo de funciones[m[m
[31m-[32m+[m[32m   void CargoVectorA()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m        int i ;[m[m
[31m-[32m+[m[32m          for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            strcpy(VectorA[i].descripcionProducto ,"JaleaVenus") ;[m[m
[31m-[32m+[m[32m            VectorA[i].codigoProducto= 25*(2+i);[m[m
[31m-[32m+[m[32m            VectorA[i].precioProducto=15.02*(2+i);[m[m
[31m-[32m+[m[32m          }[m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m      }[m[m
[31m-[32m+[m[32m  void PasoDatosdeVectorAaVectorB()[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[32m  int i =0;[m[m
[31m-[32m+[m[32m        for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m         VectorB[i].codigoProducto=VectorA[i].codigoProducto;[m[m
[31m-[32m+[m[32m         VectorB[i].precioProducto=VectorA[i].precioProducto;[m[41m         [m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   void ImprimirVectorB()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m        int i =0;[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m     printf("***vector b***\n");[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m        for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m        {[m[m
[31m-[32m+[m[32m         //imprimo precio y codigo[m[41m [m[m
[31m-[32m+[m[32m         //TODO alinear impresion[m[m
[31m-[32m+[m[41m         [m[m
[31m-[32m+[m[32m          printf("Producto[%d]:Codigo: %d Precio $: %.2f\n"[m[m
[31m-[32m+[m[32m          ,i,VectorB[i].codigoProducto,VectorB[i].precioProducto);[m[m
[31m-[32m+[m[32m        }[m[m
[31m-[32m+[m[41m     [m[m
[31m-[32m+[m[32m     printf("***vector b***\n");[m[41m  [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    CargoVectorA();[m[m
[31m-[32m+[m[32m    PasoDatosdeVectorAaVectorB();[m[m
[31m-[32m+[m[32m    ImprimirVectorB();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-\ No newline at end of file[m[m
[31m-[1mdiff --git a/ejercicio4.c b/ejercicio4.c[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..95cb3d5[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicio4.c[m[m
[31m-[36m@@ -0,0 +1,87 @@[m[m
[31m-[32m+[m[32m//Ejercicio 4: Dado un vector B de estructuras/registros de alumnos cuyos[m[m
[31m-[32m+[m[32m//campos son: nombre (cadena de caracteres [10]) y nota (entero); realizar[m[m
[31m-[32m+[m[32m//mediante un programa la impresión de los nombres de los alumnos cuyas[m[m
[31m-[32m+[m[32m//notas superan el valor 7.[m[m
[31m-[32m+[m[32m//Nota: Los vectores y registros deben ser cargados desde teclado e impresos en[m[m
[31m-[32m+[m[32m//pantalla.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mstruct[m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[32m      char nomobreAlumno[10];[m[m
[31m-[32m+[m[32m      int notaAlumno;[m[41m               [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m    VectorB[5],VectorNota[];[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m   //prototipo[m[41m   [m[m
[31m-[32m+[m[32m   void PidoDatos();[m[41m  [m[m
[31m-[32m+[m[32m   void ImprimirNotaMayorA7();[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m   //Desarrollo de funciones[m[m
[31m-[32m+[m[32m   void PidoDatos()[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m      {[m[m
[31m-[32m+[m[32m        char nombre[10];[m[m
[31m-[32m+[m[32m        int nota;[m[m
[31m-[32m+[m[32m        int i ;[m[m
[31m-[32m+[m[32m         //pido datos[m[m
[31m-[32m+[m[32m          for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            printf("Ingresar Nombre Alumno \n");[m[m
[31m-[32m+[m[32m            scanf("%9s",nombre);[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m            printf("Ingresar Nota Alumno \n");[m[m
[31m-[32m+[m[32m            scanf("%d",&nota);[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m            strcpy(VectorB[i].nomobreAlumno,nombre);[m[m
[31m-[32m+[m[32m            VectorB[i].notaAlumno=nota;[m[41m [m[m
[31m-[32m+[m[32m          }[m[41m    [m[m
[31m-[32m+[m[41m          [m[m
[31m-[32m+[m[32m      }[m[41m [m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m  void ImprimirNotaMayorA7()[m[m
[31m-[32m+[m[32m  {[m[m
[31m-[32m+[m[32m    int i =0;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m       for (i=0;i<5;i++)[m[m
[31m-[32m+[m[32m        {[m[41m      [m[m
[31m-[32m+[m[32m           if (VectorB[i].notaAlumno>7)[m[m
[31m-[32m+[m[32m          {[m[m
[31m-[32m+[m[32m            strcpy(VectorNota[i].nomobreAlumno,VectorB[i].nomobreAlumno);[m[m
[31m-[32m+[m[32m            VectorNota[i].notaAlumno= VectorB[i].notaAlumno;[m[41m [m[m
[31m-[32m+[m[32m           printf("Alumno:[%d]\tNombre:%s\tNota:%d\n"[m[m
[31m-[32m+[m[32m            ,i,VectorNota[i].nomobreAlumno,VectorNota[i].notaAlumno);[m[41m      [m[m
[31m-[32m+[m[32m          }[m[41m                  [m[m
[31m-[32m+[m[32m        }[m[41m  [m[m
[31m-[32m+[m[m
[31m-[32m+[m[41m         [m[m
[31m-[32m+[m[32m  }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint  main()[m[m
[31m-[32m+[m[32m{[m[41m   [m[m
[31m-[32m+[m[32m    PidoDatos();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    ImprimirNotaMayorA7();[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m    //TODO ver si puedo separar la carga del vector de la funcion pedir datos[m[m
[31m-[32m+[m[32m      //void CargoVectorB(char *nombre,int nota)[m[m
[31m-[32m+[m[32m     // {[m[m
[31m-[32m+[m[32m     //  int i;[m[m
[31m-[32m+[m[32m     //  char *punteroANombre;[m[m
[31m-[32m+[m[32m      // int Nota;[m[m
[31m-[32m+[m[32m     //  punteroANombre=nombre;[m[m
[31m-[32m+[m[32m     //   for (i=0;i<25;i++)[m[m
[31m-[32m+[m[32m      //    {[m[m
[31m-[32m+[m[32m      //      strcpy(VectorB[i].nomobreAlumno,punteroANombre);[m[m
[31m-[32m+[m[32m      //      VectorB[i].notaAlumno=Nota;[m[41m                        [m[m
[31m-[32m+[m[32m      //    }[m[m
[31m-[32m+[m[32m     // }[m[41m    [m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[1mdiff --git a/ejercicios unidad 1.txt b/ejercicios unidad 1.txt[m[m
[31m-[1mnew file mode 100644[m[m
[31m-[1mindex 0000000..623f126[m[m
[31m-[1m--- /dev/null[m[m
[31m-[1m+++ b/ejercicios unidad 1.txt[m	[m
[31m-[36m@@ -0,0 +1,183 @@[m[m
[31m-[32m+[m[32m//Ejercicio 1: Realizar un programa que permita hacer nulos (cargarles valor 0)[m[m
[31m-[32m+[m[32m//los elementos de un vector Q de enteros, con n componentes (donde n es una[m[m
[31m-[32m+[m[32m//constante que vale 10).[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    int n = 10;[m[m
[31m-[32m+[m[32m    int Q [n];[m[m
[31m-[32m+[m[32m    int i ;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    for (i= 0;i<n ; i ++)[m[m
[31m-[32m+[m[32m    { Q[i] = 0;[m[m
[31m-[32m+[m[32m    printf("%d\t",Q[i]);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m----------[m[m
[31m-[32m+[m[32m//Ejercicio 2: Realizar un programa que permita obtener e imprimir el resultado[m[m
[31m-[32m+[m[32m//de la suma de los elementos de un vector Z de longitud k, donde los elementos[m[m
[31m-[32m+[m[32m//del vector son reales (considerar k=5).[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    int k = 5;[m[m
[31m-[32m+[m[32m    float z [k];[m[m
[31m-[32m+[m[32m    float suma[k];[m[m
[31m-[32m+[m[32m    int i ;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    for (i= 0;i<k ; i++)[m[m
[31m-[32m+[m[32m    {[m[41m [m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m      suma[i] +=z [i];[m[m
[31m-[32m+[m[32m      printf("%f\t",suma[i]);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m-------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 3: Realizar un programa que permita imprimir las componentes de un[m[m
[31m-[32m+[m[32m//vector A de longitud g, cuyos elementos son caracteres. La impresión deberá[m[m
[31m-[32m+[m[32m//indicar el índice del vector y el valor de la componente. Los índices son enteros[m[m
[31m-[32m+[m[32m//y g=8.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m    char texto[]="Longitud";[m[m
[31m-[32m+[m[32m    int longitud=strlen(texto);[m[m
[31m-[32m+[m[32m    int indice;[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    for (indice=0;indice<longitud;indice++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m        printf("Indice %d \t Valor %c\n",indice,texto[indice]);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m//Ejercicio 4: Realizar un programa que permita obtener el producto de dos[m[m
[31m-[32m+[m[32m//vectores A y B componente a componente, guardando el resultado en un nuevo[m[41m [m[m
[31m-[32m+[m[32m//vector C. Los vectores tienen longitud 6, y los índices son enteros. Los[m[m
[31m-[32m+[m[32m//elementos del vector también son enteros. Imprimir el resultado.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m int A []={1,2,3,4,5,6};[m[m
[31m-[32m+[m[32m int B []={7,8,9,10,11,12};[m[m
[31m-[32m+[m[32m int C [6];[m[m
[31m-[32m+[m[32m int i;[m[m
[31m-[32m+[m[32m printf("Vector Resultado \n");[m[m
[31m-[32m+[m[32m for (i=0;i<6;i++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m     C[i]=(A[i]*B[i]);[m[m
[31m-[32m+[m[32m     printf(" %d\t",C[i]);[m[m
[31m-[32m+[m[41m     [m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[41m    [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m-------------------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 5: Realizar un programa que permita asignar la identidad a una[m[m
[31m-[32m+[m[32m//matriz R de dimensión mxm (considerar m=4). Los índices y las componentes[m[m
[31m-[32m+[m[32m//son enteros. La matriz identidad es la que tiene valor 1 en la diagonal principal[m[m
[31m-[32m+[m[32m//y 0 en el resto.[m[m
[31m-[32m+[m[32m//1 0 0 0[m[m
[31m-[32m+[m[32m//0 1 0 0[m[m
[31m-[32m+[m[32m//0 0 1 0[m[m
[31m-[32m+[m[32m//0 0 0 1[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[32m#include <string.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[32m int q =4;[m[m
[31m-[32m+[m[32m int r=4;[m[m
[31m-[32m+[m[32m int R [q][r];[m[m
[31m-[32m+[m[32m int fila;[m[m
[31m-[32m+[m[32m int columna;[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m printf("Matriz Identidad \n");[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m for (fila=0;fila<q;fila++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m     for (columna=0;columna<r;columna++)[m[m
[31m-[32m+[m[32m     {[m[m
[31m-[32m+[m[32m      R [fila][columna]= (fila==columna);//trate de ahorrar lineas de codigo pero tengo que comentar asi que no se si es tan eficiente, si son == da como resultado 1[m[41m [m[m
[31m-[32m+[m[32m      printf("%d \t",R [fila][columna]); // de lo contrario da resultado 0[m[41m [m[m
[31m-[32m+[m[41m      [m[m
[31m-[32m+[m[32m     }[m[41m [m[m
[31m-[32m+[m[32m printf("\n"); //lo que tarde en dar con que el printf iba acá para que la matriz quedara como una matriz y no todo uno abajo del otro o todos seguidos !!!![m[41m [m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-[32m+[m[32m---------------------------------------[m[m
[31m-[32m+[m[32m//Ejercicio 6: Realizar un programa que permita obtener la suma de dos[m[m
[31m-[32m+[m[32m//matrices X y J de dimensión axb (a=3 y b=4). Los elementos de la matriz son[m[m
[31m-[32m+[m[32m//reales. El resultado debe ser impreso. Realizar la suma componente a[m[m
[31m-[32m+[m[32m//componente.[m[m
[31m-[32m+[m[32m//Nota: Los valores de las matrices y los vectores deben ser cargados desde[m[m
[31m-[32m+[m[32m//teclado y siempre impresos sobre la pantalla.[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32m#include <stdio.h>[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mint main()[m[m
[31m-[32m+[m[32m{[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m int a =3;[m[m
[31m-[32m+[m[32m int b =4;[m[m
[31m-[32m+[m[32m int i,j;[m[m
[31m-[32m+[m[32m float valoringresado;[m[m
[31m-[32m+[m[32m float X [a][b];[m[m
[31m-[32m+[m[32m float J [a][b];[m[m
[31m-[32m+[m[32m float resultado [a][b];[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m for (i=0;i<a;i++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m    for (j=0;j<b;j++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m     printf("Ingrese Valor Matriz X \n");[m[m
[31m-[32m+[m[32m     scanf("%f",&X[i][j]);[m[m
[31m-[32m+[m[32m     valoringresado= X[i][j];[m[m
[31m-[32m+[m[32m     printf("%.2f\n",valoringresado);[m[41m       [m[m
[31m-[32m+[m[41m        [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[m
[31m-[32m+[m[32mfor (i=0;i<a;i++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m    for (j=0;j<b;j++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m     printf("Ingrese Valor Matriz J \n");[m[m
[31m-[32m+[m[32m     scanf("%f",&J[i][j]);[m[m
[31m-[32m+[m[32m     valoringresado= J[i][j];[m[m
[31m-[32m+[m[32m     printf("%.2f\n",valoringresado);[m[41m [m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32mprintf("Suma de las dos matrices\n");[m[m
[31m-[32m+[m[32mfor (i=0;i<a;i++)[m[m
[31m-[32m+[m[32m {[m[m
[31m-[32m+[m[32m    for (j=0;j<b;j++)[m[m
[31m-[32m+[m[32m    {[m[m
[31m-[32m+[m[32m     resultado[i][j]=X[i][j]+J[i][j];[m[m
[31m-[32m+[m[32m     printf("%.2f\t",resultado[i][j]);[m[m
[31m-[32m+[m[32m    }[m[m
[31m-[32m+[m[32m  printf("\n");[m[41m  [m[m
[31m-[32m+[m[32m }[m[m
[31m-[32m+[m[41m [m[m
[31m-[32m+[m[32m    return 0;[m[m
[31m-[32m+[m[32m}[m[m
[31m-\ No newline at end of file[m[m
