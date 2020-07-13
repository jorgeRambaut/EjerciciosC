# include <stdio.h>
# include <string.h>
# include <stdlib.h>
#include "funciones.h"

typedef struct producto Producto;


void solicita_Datos_Para_Ingresar(){
printf("ingresar\ndescripcion, Codigo,Cantidad, Precio\n");
}

void Ingresa_Producto(){

FILE *ptrArchivo_producto;
Producto producto_Nuevo;

if ((ptrArchivo_producto=fopen("Producto.txt","ab+"))== NULL){
 printf("error al abrir el archivo");
}

      else{
          solicita_Datos_Para_Ingresar();

          scanf("%13s%6s%f%f",
          producto_Nuevo.descripcion,
          producto_Nuevo.codigo,
          &producto_Nuevo.cantidad,
          &producto_Nuevo.precio);
          fwrite(&producto_Nuevo,sizeof(Producto),1,ptrArchivo_producto) ;
          
         printf("Producto Ingresado !!\n\n"); 
          }
            
fclose(ptrArchivo_producto);
}

void Actualiza_Producto(){

  Producto producto_a_Actualizar;
  FILE *Archivo_Actualizar ;

      if ((Archivo_Actualizar=fopen("Producto.txt","r+b"))== NULL){
      printf("error al abrir el archivo");
      }
      else 
        {
          char nombre[13];

          printf("Ingresar nombre \n");
          scanf("%s",nombre);
          fflush(stdin);

          while (!feof(Archivo_Actualizar)){    
                      
                  if (strcmp(producto_a_Actualizar.descripcion,nombre)==0){ 

                  
                    printf("Datos a Modificar\n%-11s\t%-6s\t%-8s\t%-6s\n",
                    "Descripcion","Codigo","Cantidad","Precio");        
                    printf("%-13s\t%-6s\t%-.2f\t%-.2f\n\n",
                    producto_a_Actualizar.descripcion,
                    producto_a_Actualizar.codigo,
                    producto_a_Actualizar.cantidad,
                    producto_a_Actualizar.precio);

                    solicita_Datos_Para_Ingresar();

                    scanf("%13s%6s%f%f",producto_a_Actualizar.descripcion,
                    producto_a_Actualizar.codigo,
                    &producto_a_Actualizar.cantidad,
                    &producto_a_Actualizar.precio);


                    fseek(Archivo_Actualizar,-sizeof(Producto),SEEK_CUR);  
                    fwrite(&producto_a_Actualizar,sizeof(Producto),1,Archivo_Actualizar);

                    printf("Datos Modificados \n%-11s\t%-6s\t%-8s\t%-6s\n",
                    "Descripcion","Codigo","Cantidad","Precio");        
                    printf("%-13s\t%-6s\t%-.2f\t%-.2f\n\n",
                    producto_a_Actualizar.descripcion,
                    producto_a_Actualizar.codigo,
                    producto_a_Actualizar.cantidad,
                    producto_a_Actualizar.precio);

                       printf("Producto actualizado !!\n\n");

                }               

          fread(&producto_a_Actualizar,sizeof(Producto),1,Archivo_Actualizar);
      
          
          }
          printf("prod no encontrado");
        }

  fclose(Archivo_Actualizar);
}




void Consulta_Producto(){

Producto producto_Consultar;
FILE *Archivo_Consultar;

if ((Archivo_Consultar=fopen("Producto.txt","rb"))== NULL){
 printf("error al abrir el archivo");
}
else 
  {
    char nombre[13];

    printf("Ingresar nombre \n");
    scanf("%s",nombre);
    fflush(stdin);

             while (!feof(Archivo_Consultar)){    
                 
                    if (strcmp(producto_Consultar.descripcion,nombre)==0){ 
                    printf("Detalle Prodcuto\n%-11s\t%-6s\t%-8s\t%-6s\n",
                    "Descripcion","Codigo","Cantidad","Precio");        
                    printf("%-13s\t%-6s\t%-.2f\t%-.2f\n\n",
                    producto_Consultar.descripcion,
                    producto_Consultar.codigo,
                    producto_Consultar.cantidad,
                    producto_Consultar.precio);
          }

    fread(&producto_Consultar,sizeof(Producto),1,Archivo_Consultar);
 
    }
              printf("prod no encontrado");


  }
  fclose(Archivo_Consultar);
}
void Elimina_Prodcuto(){

  Producto producto_a_Eliminar={"","",0.0,0.0},prod;
  FILE *Archivo_Eliminar ;

      if ((Archivo_Eliminar=fopen("Producto.txt","r+b"))== NULL){
      printf("error al Archivo_Eliminarabrir el archivo");
      }
      else 
        {
          char nombre[13];

          printf("Ingresar nombre \n");
          scanf("%s",nombre);
          fflush(stdin);

          while (!feof(Archivo_Eliminar)){    
                      
                  if (strcmp(prod.descripcion,nombre)==0){ 

                  
                    printf("Datos a eliminar\n%-11s\t%-6s\t%-8s\t%-6s\n",
                    "Descripcion","Codigo","Cantidad","Precio");        
                    printf("%-13s\t%-6s\t%-.2f\t%-.2f\n\n",
                    prod.descripcion,
                    prod.codigo,
                    prod.cantidad,
                    prod.precio);                   


                    fseek(Archivo_Eliminar,-sizeof(Producto),SEEK_CUR);  
                    fwrite(&producto_a_Eliminar,sizeof(Producto),1,Archivo_Eliminar);

                    printf("Datos Eliminados\n%-11s\t%-6s\t%-8s\t%-6s\n",
                    "Descripcion","Codigo","Cantidad","Precio");        
                    printf("%-13s\t%-6s\t%-.2f\t%-.2f\n\n",
                    prod.descripcion,
                    prod.codigo,
                    prod.cantidad,
                    prod.precio);

                       printf("Producto Eliminado !!\n\n");

                }

          fread(&prod,sizeof(Producto),1,Archivo_Eliminar);
          
          }                  

        }
          printf("prod no encontrado");

  fclose(Archivo_Eliminar);
}

void Imprime_Detalles(){
  
  FILE *ptrArchivo_producto;
  Producto imprimirProductos;
  
    if ((ptrArchivo_producto=fopen("Producto.txt","r"))== NULL){
      printf("error al abrir el archivo");
      }

      else{
           int bytesporreg;
           bytesporreg=sizeof(Producto);
           fseek(ptrArchivo_producto,0,SEEK_SET);
           fread(&imprimirProductos,bytesporreg,1,ptrArchivo_producto);
               printf("%-11s\t%-6s\t%-8s\t%-6s\n",
               "Descripcion","Codigo","Cantidad","Precio");
                    while(!feof(ptrArchivo_producto)) {

                        if (imprimirProductos.cantidad!=0){
                        printf("%-13s\t%-6s\t%-.2f\t%-.2f\n\n",
                        imprimirProductos.descripcion,
                        imprimirProductos.codigo,
                        imprimirProductos.cantidad,
                        imprimirProductos.precio);
                          }
            fread(&imprimirProductos,bytesporreg,1,ptrArchivo_producto);          }
       
  }

fclose(ptrArchivo_producto);
}


void Inicia_Programa(){
 int opcion; 
  do {
   imprime_opciones(); 
   scanf("%d",&opcion);
   Ejecuta_opcion(opcion);
  } while (opcion!=6) ;
}


void imprime_opciones()
{ 
   
  printf("\nElegir opcion, 6 para salir:\n");
  printf("1 %s\n2 %s\n3 %s\n4 %s\n5 %s\n6 %s\n",
  "Ingresar Producto",
  "Actualiza Producto",
  "Elimina Producto",
  "Consulta Producto",
  "Imprime Detalles",
  "Salir"); 
 
}

void  Ejecuta_opcion(const int opcion)

{

 switch (opcion)
  {
   case 1 :
   system("clear") ;
   Ingresa_Producto();
    
   break;

   case 2 : 
   system("clear") ;  
   Actualiza_Producto();
   break;

   case 3 :
   system("clear") ;
   Elimina_Prodcuto();
   break;

   case 4 :
   system("clear") ;
   Consulta_Producto();
   break;

   case 5 :
   system("clear") ;
   Imprime_Detalles();
   break;

   case 6 :
   system("clear") ;
   break;

   default :
   system("clear") ;
   printf("\nIngresar Opcion Valida\n");     
   break;
  }

}