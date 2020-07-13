struct producto {
char descripcion[13];// no se si esta bien tomar el tamaño en bytes
char codigo[6];
float cantidad;
float precio;
struct producto *ptrproducto;//ver cuando lo podemos usar 
};

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