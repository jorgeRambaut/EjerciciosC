#include <stdio.h>
#include <string.h>


struct  
    { 
      char empresa[30];
      char domicilio[40];
      char codigoPostal[10];
      char localidad[20];
      char pais[15];
      
    }empresa[5];
    
void Imprimir ()

{
    int i =0;
     for (i=0;i<5;i++)
     {
     printf("Empresa[%d]:%s\nDomicilio:%s\tCod:%s\tLocalidad:%s\tPais:%s\n"
      ,i,empresa[i].empresa,
      empresa[i].domicilio,
      empresa[i].codigoPostal,
      empresa[i].localidad,
      empresa[i].pais);
       }
     
}



void CargoVector()

{
    
    int i ;
    for (i=0;i<5;i++)
    {
     strcpy(empresa[i].empresa ,"Una Empresa") ;
     //fflush(stdin);
     strcpy(empresa[i].domicilio,"Un Domicilio");
     //fflush(stdin);
     strcpy(empresa[i].codigoPostal,"123456abc");
     //fflush(stdin);
     strcpy(empresa[i].localidad,"localidad");
     fflush(stdin);
     strcpy(empresa[i].pais,"un pais");
     //fflush(stdin);
    }
    
}


int  main()
{   
    CargoVector();
    Imprimir();
    
    
    return 0;
}