//Ejercicio 1: Dado un archivo de registros de tres campos (legajo: entero;
//sueldo: real; adicional: real), realizar un programa que permita actualizar el
//archivo, de modo que el sueldo sea incrementado en 0.5 veces el adicional.
//Los sueldos que se deben modificar son aquellos que cumplan con alguna de
//las siguientes condiciones:
//-Legajo entre 1 y 5454, y el sueldo menor a $350.
//-Legajo entre 6000 y 9800, y el adicional sea menor a $200.
//-Legajo mayor a 15300.
#include <stdio.h>
#include <stdlib.h>

FILE *fd;


int main(void) 
{
 int legajo;
 float sueldo;
 float adicional;
 int numeroelementos;
 //abro archivo en modo binary 
 fd=fopen("archivo sueldo.txt", "rb");
 //chequeo que exista 
 if (fd==NULL)
 { 
  perror("error al abrir archivo");
  return 1;
 }
 else 
 {
  //leo archivo 
  fseek(fd,0,SEEK_END);
  //cuento elementos 
  numeroelementos=ftell(fd);
  //vuelvo al principio, ¿recursivo?
  rewind(fd);
  //char dinamico leer mas en cnotesforprofessional
  char *cadena = calloc(sizeof(char), numeroelementos);

  if (cadena==NULL)
  {
    perror("Error en la lectura de elementos");
   return 2;
  }
  

  int numeroelementosleidos=fread(cadena,sizeof(char),numeroelementos,fd);

  if (numeroelementosleidos!=numeroelementos)
  {
    perror("error al leer el archivo");

    return 3;
  }
  free(cadena);
  fclose(fd);
  printf("se ha leido correctamente el archivo");

 }



  return 0;
}