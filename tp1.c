#include <stdio.h>
#include <string.h>
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>

#define ERROR -1
#define SALIDA_EXITOSA 0

int main(int argc, char *argv[]) {
	int option = 0;
	const char *short_opt = "i:o:hV";
	struct option long_opt[] = {
		{"version", no_argument,       NULL, 'V'},
		{"help",    no_argument,       NULL, 'h'},
		{"input",   required_argument, NULL, 'i'},
		{"output",  required_argument, NULL, 'o'},
		{NULL, 0,                      NULL, 0}
	};
	FILE *inputFileOriginal = NULL;
	FILE *inputFile = tmpfile();
	FILE *outputFile = NULL;

	while ((option = getopt_long(argc, argv, short_opt, long_opt, NULL)) != -1) {
		switch (option) {
			case 'V':
				printf("TP #1 de la materia Organizacion de Computadoras \n");
				printf("Alumnos: \n");
				printf("	Bobadilla Catalan, German\n	Leloutre, Daniela \n	Lozano, Ramiro \n");
				return SALIDA_EXITOSA;
			case 'h':
				printf("Usage: \n");
				printf("	%s -h \n", argv[0]);
				printf("	%s -V \n", argv[0]);
				printf("	%s -i in_file -o out_file \n", argv[0]);
				printf("Options: \n");
				printf("	-V, --version  Print version and quit. \n");
				printf("	-h, --help     Print this information and quit. \n");
				printf("	-i, --input    Specify input stream/file, '-' for stdin. \n");
				printf("	-o, --output   Specify output stream/file, '-' for stdout. \n");
				printf("Examples: \n");
				printf("	tp1 < in.txt > out.txt \n");
				printf("	cat in.txt | tp1 -i - > out.txt \n");
				return SALIDA_EXITOSA;
			case 'i':
				if(strcmp(optarg, "-") != 0){
					inputFileOriginal = fopen(optarg, "r");
					if(inputFileOriginal == NULL) {
						fprintf(stderr, "Error archivo entrada: %s\n", strerror(errno));
						return ERROR;
					}
				}
				break;
			case 'o':
				if(strcmp(optarg, "-") != 0){
					outputFile = fopen(optarg, "w+");
					if(outputFile == NULL) {
						fprintf(stderr, "Error archivo salida: %s\n", strerror(errno));
						return ERROR;
					}
				}
				break;
			default:
				fprintf(stderr, "Error: Argumento invalido \n");
				abort();
		}
	}

	if (argc == 2) {
		fprintf(stderr, "Error: Argumento invalido \n");
		return ERROR;
	}

	if(inputFileOriginal == NULL) {
		inputFileOriginal = stdin;
	}

	if(outputFile == NULL) {
		outputFile = stdout;
	}

	//Corregido bug de entrada estandar por tuberia
	int data;
	while ((data=fgetc(inputFileOriginal)) != EOF ) {
		fputc(data,inputFile );
	}
	rewind(inputFile);

	

        int caracterAnterior, caracter, numero, lineaConError, caracterAntAnt;
	long inicio;
	size_t cantDePalabras;

        //Leo linea por linea
        while (fgetc(inputFile)!=EOF){
		//El primer fgetc solo es para ver si no llegue al final del archivo
		//fseek retrocede el puntero un lugar para volver a dejarlo en el primer lugar
		fseek(inputFile,-1,SEEK_CUR);

		//Con ftell guardo el puntero al inicio de la linea porque voy a recorrer la linea dos veces
		//La 1ra vez la recorro para contar la cantidad de palabras y chequear que los caracteres son validos
		//La 2da vez va a ser para guardar los datos en el vector de enteros
		inicio=ftell(inputFile);

		lineaConError=0;
 		cantDePalabras = 0;
		caracterAnterior = ' ';
		caracterAntAnt = ' ';

 		while((caracter=fgetc(inputFile))!='\n' && caracter!=EOF){
			//Los caracteres validos son los numeros del 0 al 9 (en ascci van del 48 al 57), los espacios y los signos + y - en cierto orden
			if (!(caracter>47 && caracter<58) && caracter!=' ' && !((caracter=='+' || caracter=='-') && caracterAnterior==' ') || (caracter==' ' && (caracterAnterior=='+' || caracterAnterior=='-') && caracterAntAnt==' '))
				lineaConError=1;

			if ((caracterAnterior==' ') && (caracter!=' '))
				cantDePalabras++;

			caracterAntAnt = caracterAnterior;
			caracterAnterior = caracter;
		}

		//Un caso extra que no pude considerar en el while (cuando el ultimo caracter de la linea es un signo)
		if (caracterAnterior=='+' || caracterAnterior=='-')
			lineaConError=1;

		if ((lineaConError==0) && (cantDePalabras>0)){
			fseek(inputFile,inicio,SEEK_SET);
			int* vector = (int*) malloc(cantDePalabras*sizeof(int));
			for (int i=0;i<cantDePalabras;i++){
				fscanf(inputFile,"%d",&numero);
				vector[i] = numero;
 			}

			//merge_sort(vector, cantDePalabras);

			//Imprimir vector
			for (int i=0;i<cantDePalabras;i++)
				fprintf(outputFile, "%d ", vector[i]);
			fprintf(outputFile, "\n");
			free(vector);
		}

		if (lineaConError==1){
			//El error lo emito por salida estandar. Preguntar si esta bien que tambien figure en el archivo de salida
			fprintf(outputFile, "Error fgetc: Linea con caracter invalido \n");
			fprintf(stderr, "Error fgetc: Linea con caracter invalido \n");
			//return ERROR;
			//Por ahora, ante un error el programa continua con las lineas siguiente. Preguntar si esta bien.
		}
		//Por ahora las lineas vacias (o solo con espacios en blanco) no las considero error,
		//el programa continua normalmente, preguntar si esta bien
        }





	if(fclose(inputFile)==EOF){
		fprintf(stderr, "Error fclose: %s\n", strerror( errno ));
		return ERROR;
	}

	if(fclose(outputFile)==EOF){
		fprintf(stderr, "Error fclose: %s\n", strerror( errno ));
		return ERROR;
	}
	
	return SALIDA_EXITOSA;
}
