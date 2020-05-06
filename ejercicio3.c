//Ejercicio 3: Realizar un programa que permita, dado un vector A de
//estructuras/registros, cuyos campos son: producto (cadena de caracteres [10]),
//código (entero) y precio (real); obtener un nuevo vector B de
//estructuras/registros que contengan sólo el código y el precio del vector A.

#include <stdio.h>
#include <string.h>


struct  
    { 
      char descripcionProducto[10];
      int codigoProducto;
      float precioProducto;  
           
    }VectorA[25],VectorB[25];

   //prototipo   
   void CargoVectorA(); 
   void PasoDatosdeVectorAaVectorB();
   void ImprimirVectorB();

   //Desarrollo de funciones
   void CargoVectorA()

      {
        int i ;
          for (i=0;i<25;i++)
          {
            strcpy(VectorA[i].descripcionProducto ,"JaleaVenus") ;
            VectorA[i].codigoProducto= 25*(2+i);
            VectorA[i].precioProducto=15.02*(2+i);
          }
      
      }
  void PasoDatosdeVectorAaVectorB()
  {
  int i =0;
        for (i=0;i<25;i++)
        {
         VectorB[i].codigoProducto=VectorA[i].codigoProducto;
         VectorB[i].precioProducto=VectorA[i].precioProducto;         
        }
  }

   void ImprimirVectorB()

    {
        int i =0;
        
     printf("***vector b***\n");

        for (i=0;i<25;i++)
        {
         //imprimo precio y codigo 
         //TODO alinear impresion
         
          printf("Producto[%d]:Codigo: %d Precio $: %.2f\n"
          ,i,VectorB[i].codigoProducto,VectorB[i].precioProducto);
        }
     
     printf("***vector b***\n");  
    }

int  main()
{   
    CargoVectorA();
    PasoDatosdeVectorAaVectorB();
    ImprimirVectorB();
    
    
    return 0;
}