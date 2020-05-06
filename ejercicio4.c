//Ejercicio 4: Dado un vector B de estructuras/registros de alumnos cuyos
//campos son: nombre (cadena de caracteres [10]) y nota (entero); realizar
//mediante un programa la impresión de los nombres de los alumnos cuyas
//notas superan el valor 7.
//Nota: Los vectores y registros deben ser cargados desde teclado e impresos en
//pantalla.

#include <stdio.h>
#include <string.h>


struct
    { 
      char nomobreAlumno[10];
      int notaAlumno;               
    }
    VectorB[5],VectorNota[];
        
   //prototipo   
   void PidoDatos();  
   void ImprimirNotaMayorA7();

   //Desarrollo de funciones
   void PidoDatos()

      {
        char nombre[10];
        int nota;
        int i ;
         //pido datos
          for (i=0;i<5;i++)
          {
            printf("Ingresar Nombre Alumno \n");
            scanf("%9s",nombre);

            printf("Ingresar Nota Alumno \n");
            scanf("%d",&nota);

            strcpy(VectorB[i].nomobreAlumno,nombre);
            VectorB[i].notaAlumno=nota; 
          }    
          
      } 
      
  void ImprimirNotaMayorA7()
  {
    int i =0;
    
       for (i=0;i<5;i++)
        {      
           if (VectorB[i].notaAlumno>7)
          {
            strcpy(VectorNota[i].nomobreAlumno,VectorB[i].nomobreAlumno);
            VectorNota[i].notaAlumno= VectorB[i].notaAlumno; 
           printf("Alumno:[%d]\tNombre:%s\tNota:%d\n"
            ,i,VectorNota[i].nomobreAlumno,VectorNota[i].notaAlumno);      
          }                  
        }  

         
  }

int  main()
{   
    PidoDatos();
    
    ImprimirNotaMayorA7();
    

    return 0;
}
    //TODO ver si puedo separar la carga del vector de la funcion pedir datos
      //void CargoVectorB(char *nombre,int nota)
     // {
     //  int i;
     //  char *punteroANombre;
      // int Nota;
     //  punteroANombre=nombre;
     //   for (i=0;i<25;i++)
      //    {
      //      strcpy(VectorB[i].nomobreAlumno,punteroANombre);
      //      VectorB[i].notaAlumno=Nota;                        
      //    }
     // }    



