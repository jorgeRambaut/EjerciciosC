# include <stdio.h>
# include <string.h>
# include <stdlib.h>
# include "producto.h"
typedef struct producto Producto;

void Ejecuta_opcion(const int opcion);
void imprime_opciones();
void Ingresa_Producto();
void Actualiza_Producto();
void Elimina_Prodcuto();
void Consulta_Producto();
void Imprime_Detalles();
void Inicia_Programa();
void solicita_Datos_Para_Ingresar();

void solicita_Datos_Para_Ingresar(){
printf("ingresar\ndescripcion, Codigo,Cantidad, Precio\n");
}

void Ingresa_Producto(){

FILE *ptrArchivo_producto;
Producto producto_Nuevo;

if ((ptrArchivo_producto=fopen("Producto.txt","a+"))== NULL){
 printf("error al abrir el archivo");
}

else{
    solicita_Datos_Para_Ingresar();

    scanf("%13s%6s%f%f",
    producto_Nuevo.descripcion,
    producto_Nuevo.codigo,
    &producto_Nuevo.cantidad,
    &producto_Nuevo.precio);
     
    fprintf(ptrArchivo_producto ,"%-13s %-6s %-.2f %-.2f\n",  producto_Nuevo.descripcion,
    producto_Nuevo.codigo,
    producto_Nuevo.cantidad,
    producto_Nuevo.precio);
    }     
    
    fclose(ptrArchivo_producto);

}


void Actualiza_Producto(){

  Producto producto_a_Actualizar;
  FILE *Archivo_Actualizar ;

if ((Archivo_Actualizar=fopen("Producto.txt","r+"))== NULL){
 printf("error al abrir el archivo");
}
else 
  {
  char nombre[13];

    fscanf(Archivo_Actualizar,"%13s%6s%f%f",  
    producto_a_Actualizar.descripcion,
    producto_a_Actualizar.codigo,
    &producto_a_Actualizar.cantidad,
    &producto_a_Actualizar.precio); 

    printf("Ingresar Nombre a buscar\n");
    scanf("%s",nombre);

    while (!feof(Archivo_Actualizar)){    
                 
            if (strcmp(producto_a_Actualizar.descripcion,nombre)==0){ 

             int posicion;
             posicion=ftell(Archivo_Actualizar);
             
             fseek(Archivo_Actualizar,(posicion/sizeof(producto_a_Actualizar)),SEEK_CUR);

             printf("%-11s\t%-6s\t%-8s\t%-6s\n",
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


              fprintf(Archivo_Actualizar ,"%-13s\t%-6s\t%-.2f\t%-.2f\n",
              producto_a_Actualizar.descripcion,
              producto_a_Actualizar.codigo,
              producto_a_Actualizar.cantidad,
              producto_a_Actualizar.precio);

             printf("%-11s\t%-6s\t%-8s\t%-6s\n",
              "Descripcion","Codigo","Cantidad","Precio");        
              printf("%-13s\t%-6s\t%-.2f\t%-.2f\n\n",
              producto_a_Actualizar.descripcion,
              producto_a_Actualizar.codigo,
              producto_a_Actualizar.cantidad,
              producto_a_Actualizar.precio);
          }

          fscanf(Archivo_Actualizar,"%13s%6s%f%f",producto_a_Actualizar.descripcion,
          producto_a_Actualizar.codigo,
          &producto_a_Actualizar.cantidad,
          &producto_a_Actualizar.precio); 
    }
  }
}




void Consulta_Producto(){
Producto producto_Consultar;
FILE *Archivo_Consultar;

if ((Archivo_Consultar=fopen("Producto.txt","r"))== NULL){
 printf("error al abrir el archivo");
}
else 
  {
  char nombre[13];

    fscanf(Archivo_Consultar,"%13s%6s%f%f",producto_Consultar.descripcion,
    producto_Consultar.codigo,
    &producto_Consultar.cantidad,
    &producto_Consultar.precio); 

    printf("Ingresar Nombre a buscar\n");
    scanf("%s",nombre);

    while (!feof(Archivo_Consultar)){            
          
          if (strcmp(producto_Consultar.descripcion,nombre)==0){ 
           printf("%-11s\t%-6s\t%-8s\t%-6s\n",
           "Descripcion","Codigo","Cantidad","Precio"); 

          printf("%-13s\t%-6s\t%-.2f\t%-.2f\n\n",
          producto_Consultar.descripcion,
          producto_Consultar.codigo,
          producto_Consultar.cantidad,
          producto_Consultar.precio);
          }

          fscanf(Archivo_Consultar,"%13s%6s%f%f",producto_Consultar.descripcion,
          producto_Consultar.codigo,
          &producto_Consultar.cantidad,
          &producto_Consultar.precio); 
    }
  }
}
void Elimina_Prodcuto(){}


void Imprime_Detalles(){
  
  FILE *ptrArchivo_producto;
  Producto imprimirProductos;
  
    if ((ptrArchivo_producto=fopen("Producto.txt","r"))== NULL){
      printf("error al abrir el archivo");
      }

      else{

      printf("%-11s\t%-6s\t%-8s\t%-6s\n",
      "Descripcion","Codigo","Cantidad","Precio");

      fscanf(ptrArchivo_producto,"%s%s%f%f",
      imprimirProductos.descripcion,
      imprimirProductos.codigo,
      &imprimirProductos.cantidad,
      &imprimirProductos.precio);
      
      
    

          while(!feof(ptrArchivo_producto))
          {
              printf("%-13s\t%-6s\t%-.2f\t%-.2f\n",
              imprimirProductos.descripcion,
              imprimirProductos.codigo,
              imprimirProductos.cantidad,
              imprimirProductos.precio);

              fscanf(ptrArchivo_producto,"%s%s%f%f",
              imprimirProductos.descripcion,
              imprimirProductos.codigo,
              &imprimirProductos.cantidad,
              &imprimirProductos.precio);
              

          }

  fclose(ptrArchivo_producto);

  }
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
   printf("Producto Ingresado !!\n\n");  
   break;

   case 2 : 
   system("clear") ;  
   Actualiza_Producto();
   break;

   case 3 :
   system("clear") ;
   Elimina_Prodcuto();
   printf("Opcion 3\n");
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
   printf("Opcion salir\n");

   break;

   default :
   system("clear") ;
   printf("\nIngresar Opcion Valida\n");     
   break;
  }

}



int main(void) {
  
  
  
  Inicia_Programa();
 

  return 0;
}