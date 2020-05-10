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
	FILE *inputFile = NULL;
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
					inputFile = fopen(optarg, "r");
					if(inputFile == NULL) {
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

	if(inputFile == NULL) {
		inputFile = stdin;
	}

	if(outputFile == NULL) {
		outputFile = stdout;
	}



	/*size_t dimension;
	int dato;
	while(fscanf(inputFile,"%d",&dato)!=EOF){
		while(fscanf(inputFile,"%d",&dato)!=EOF)
	}*/





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
