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
#include <errno.h>
typedef  struct 
{
 int employeesFile;
 float employeeSalary;
 float employeePlus; 
} Employee;

Employee *pointer;//veo cuando lo uso

void CheckIfFileExist(char *nameOfFile,char *mode);
//FILE SalaryCheck(FILE *SalaryFile);
void FillData();

void CalculatePlus();

void FillData()
{
 Employee employees[300];
 FILE * fileToFill;
 int employeeFile;
 float employeeFileSalary;
 float employeeFilePlus;
 int i ;

 fileToFill=fopen("archivo sueldo.txt", "wb");

 for (i=0;i<300;i++)
 {
  employeeFile=(i+1) *100;
  employeeFileSalary= (i+1) *23.02;
  employeeFilePlus=(i+1) * 14.33;
  employees[i].employeesFile+=employeeFile;
  employees[i].employeeSalary+=employeeFileSalary;
  employees[i].employeePlus+=employeeFilePlus;

  fprintf(fileToFill,"%3d\t %.2f\t %.2f\n",employeeFile,employeeFileSalary,employeeFilePlus);
 }

}

void CheckIfFileExist(char *nameOfFile,char *mode)

{ 
 FILE* FileToCheck;

 errno=0;

 FileToCheck=fopen(nameOfFile,mode);


  if (!FileToCheck)
  {
     fprintf(stderr, "Error N: %d\n",errno);
    
    EXIT_FAILURE;
  }  
 
}


void CalculatePlus()
{
 Employee employees[300];
 FILE *Salary;
 int i ;
 int employeesFile;
 float employeesSalary;
 float employeesPlus;
 char lookfornext;
 Salary = fopen("archivo sueldo.txt", "rb");
 

  while(feof(Salary)==0)
  
 {
        
   fscanf(Salary,"%d%f%f",&employeesFile,&employeesSalary,&employeesPlus);
  
  
    if ((employeesFile>=1||employeesFile<=5454)&& employeesSalary<350)
      {
        employeesSalary+=(employeesPlus +(employeesPlus*0.5));
         
         printf("Legajo:%3d\tSueldo: %3.2f\t Adicional: %3.2f\n",employeesFile,employeesSalary,employeesPlus);
      }
      else if ((employeesFile>=6000||employeesFile<=9800)&& employeesPlus<200)
      {
        employeesSalary+=(employeesPlus +(employeesPlus*0.5));

         printf("Legajo:%3d\t Sueldo: %3.2f\t Adicional: %3.2f\n",employeesFile,employeesSalary,employeesPlus);
      }

      else if (employeesFile>15300)
      {
        employeesSalary+= (employeesPlus +(employeesPlus*0.5));

        printf("Legajo:%3d\t Sueldo: %3.2f\t Adicional: %3.2f\n",employeesFile,employeesSalary,employeesPlus); 
      }
          
        
     
  }

  
  fclose(Salary); 

}

int main(void) 
{
 FillData();
 CheckIfFileExist("archivo sueldo.txt","rb");
 CalculatePlus();
 


  
  return 0;
}

/* VER COMO HACER PARA QUE SEA UNA FUNCION CON RETURN 
FILE SalaryCheck(FILE *SalaryFile)
{
  int employeesFile;
  float employeeSalary;
  float employeePlus;  
 
  fscanf(SalaryFile,"%d%f%f",&employeesFile,&employeeSalary,&employeePlus);
  
 if ((employeesFile>=1||employeesFile<=5454)&& employeeSalary<350)
   {
     employeeSalary+=(employeePlus +(employeePlus*0.5));
   }
   else if ((employeesFile>=6000||employeesFile<=9800)&& employeePlus<200)
   {
    employeeSalary+=(employeePlus +(employeePlus*0.5));
   }

   else if (employeesFile>15300)
   {
    employeeSalary+= (employeePlus +(employeePlus*0.5));
   }

      printf("Legajo:%d Sueldo: %.2f Adicional: %.2f",employeesFile,employeeSalary,employeePlus);
    
      fclose(SalaryFile);
      return SalaryFile;

 }*/
}
--------------------------------------------------------
/*Ejercicio 2: Realizar un procedimiento al que dado un archivo de reales,
devuelva la suma de todos los elementos del mismo. El resultado de la
operación debe devolverse en una variable.*/
#include <stdio.h>

#include <stdio.h>

void CrearVector();
float SumarValoresVector();


void CrearVector()
{
 FILE *archivoVector;
 int i;
 float valor;
 archivoVector=fopen("archivo Vectores.txt","wb");
 
 for(i=0;i<5;i++)
 {
  valor+=1*33.02;
  fprintf(archivoVector,"%#.2f\t",valor);
  printf("%#.2f\t",valor);
 }

}

float SumarValoresVector()
{
 FILE *archivo;
 archivo=fopen("archivo Vectores.txt","r");
 float valorVector=0.0;
 float guardoValores;
 int i;

 for (i=0;i<5;i++)
 {
   fscanf(archivo,"%f",&valorVector);
   
   guardoValores+=valorVector;

   printf("+% #.2f ",valorVector);   
 }
 printf("\nSuma de Valores \n");

 printf("%.2f",guardoValores);

 return guardoValores;
}

int main ()
{
 float valoresAcumuladosDeVector;
 //CrearVector();
 valoresAcumuladosDeVector=SumarValoresVector();
 printf("\n el valor devuelto es \n %.2f",valoresAcumuladosDeVector);
}


Ejercicio 3: En una empresa textil se desea generar un programa que permita
realizar el control de la producción de telas impermeables para mochilas. Se
sabe que los datos se encuentran guardados en un archivo pero que los
mismos fueron ingresados por alguien que desconocía una modificación
introducida recientemente a los códigos de los distintos tipos de telas. Es así,
que el código correspondiente al nylon de primera era ‘NYA’ y ahora es ‘NY1’,
mientras que el de la tela de avión era ‘AVI’ y ahora es ‘G25’. Se desea pues,
actualizar el archivo de producción con estos nuevos códigos. El archivo es de
registros de tres campos: partida (entero), código (cadena de tres caracteres) y
cantidad de macrorrollos (entero). El nombre del archivo es PRODUCC.