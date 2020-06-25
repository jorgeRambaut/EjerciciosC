//Ejercicio 1: 
//Realizar un programa que permita leer de teclado y luego imprimir
//los contenidos de una variable tipo struct cuyos campos son: nombre (cadena
//de caracteres [10]), legajo (entero), dependencia de trabajo (entero), horas
//trabajadas (real).

#include <stdio.h>
#include <string.h>


struct  
    { 
      char nombre[10];
      int legajo;
      int dependenciaDeTrabajo;
      float horasTrabajadas;
      
    }empleado;
    
void Imprimir (char nombre[],int legajo,int dependenciaDeTrabajo,double horasTrabajadas)

{
    printf("El Nombre es %s\tLegajo %d\tDependencia %d\tHs Trabajadas %.2f"
    ,nombre,legajo,dependenciaDeTrabajo,horasTrabajadas);
}

void SolicitaDatos()
{
    char nombre[10];
    int legajo;
    int dependenciaDeTrabajo;
    float horasTrabajadas;
    
    printf("Ingresar Nombre\n");
    scanf("%9s",nombre);
    printf("Ingresar Legajo \n");
    scanf("%d",&legajo);
    printf("Ingresar Dependencia \n");
    scanf("%d",&dependenciaDeTrabajo);
    printf("Ingresar Horas Trabajadas \n");
    scanf("%f",&horasTrabajadas);
    
    strcpy(empleado.nombre,nombre);
    empleado.legajo = legajo;
    empleado.dependenciaDeTrabajo = dependenciaDeTrabajo;
    empleado.horasTrabajadas = horasTrabajadas;
    
}

int  main()
{   
    SolicitaDatos();
    Imprimir(empleado.nombre,empleado.legajo,empleado.dependenciaDeTrabajo,empleado.horasTrabajadas);
    
    return 0;
}
