#include"array.h"

int sortArray(char *inputFile, char *outputFile, int column) {
  FILE *fpIn, *fpOut;
  int i, j, n = 0;
  float temp;
  float *data;

  // Ouvrir le fichier d'entrée
  fpIn = fopen(inputFile, "r");
  if (fpIn == NULL) {
    printf("Impossible d'ouvrir le fichier d'entrée\n");
    return 2;
  }

  // Compter le nombre de lignes dans le fichier
  char c = getc(fpIn);
  while (c != EOF) {
    if (c == '\n') {
      n++;
    }
    c = getc(fpIn);
  }
  rewind(fpIn);

  // Allouer de la mémoire pour le tableau de données
  data = (float *)malloc(n * sizeof(float));

  // Lire les données du fichier d'entrée et les stocker dans le tableau
  for (i = 0; i < n; i++) {
    for (j = 0; j < column; j++) {
      fscanf(fpIn, "%*f,");
    }
    fscanf(fpIn, "%f", &data[i]);
    while ((c = getc(fpIn)) != '\n' && c != EOF)
      ;
  }

  // Tri à bulle des données
  for (i = 0; i < n - 1; i++) {
    for (j = 0; j < n - i - 1; j++) {
      if (data[j] > data[j + 1]) {
        temp = data[j];
        data[j] = data[j + 1];
        data[j + 1] = temp;
      }
    }
  }

  // Ouvrir le fichier de sortie
  fpOut = fopen(outputFile, "w");
  if (fpOut == NULL) {
	printf("Impossible d'ouvrir le fichier de sortie\n");
   	 return 3;
  }

  // Écrire les données triées dans le fichier de sortie
  for (i = 0; i < n; i++) {
    fprintf(fpOut, "%f\n", data[i]);
  }

  // Fermer les fichiers
  fclose(fpIn);
  fclose(fpOut);

  // Libérer la mémoire allouée pour le tableau de données
  free(data);
}


int sortArrayRev(char *inputFile, char *outputFile, int column) {
	FILE *fpIn, *fpOut;
	int i, j, n = 0;
	float temp;
	float *data;

// Ouvrir le fichier d'entrée
	fpIn = fopen(inputFile, "r");
		if (fpIn == NULL) {
			printf("Impossible d'ouvrir le fichier d'entrée\n");
		return 2;
	}

// Compter le nombre de lignes dans le fichier
	char c = getc(fpIn);
	while (c != EOF) {
		if (c == '\n') {
			n++;
		}
		c = getc(fpIn);
	}
	rewind(fpIn);

// Allouer de la mémoire pour le tableau de données
	data = (float *)malloc(n * sizeof(float));

// Lire les données du fichier d'entrée et les stocker dans le tableau
	for (i = 0; i < n; i++) {
		for (j = 0; j < column; j++) {
			fscanf(fpIn, "%*f,");
		}
		fscanf(fpIn, "%f", &data[i]);
	while ((c = getc(fpIn)) != '\n' && c != EOF);
	}

// Tri à bulle des données
	for (i = 0; i < n - 1; i++) {
		for (j = 0; j < n - i - 1; j++) {
			if (data[j] < data[j + 1]) {
				temp = data[j];
				data[j] = data[j + 1];
				data[j + 1] = temp;
			}
		}
	}

// Ouvrir le fichier de sortie
	fpOut = fopen(outputFile, "w");
	if (fpOut == NULL) {
		printf("Impossible d'ouvrir le fichier de sortie\n");
		return 3;
	}

// Écrire les données triées dans le fichier de sortie
	for (i = 0; i < n; i++) {
		fprintf(fpOut, "%f\n", data[i]);
	}

// Fermer les fichiers
	fclose(fpIn);
	fclose(fpOut);

// Libérer la mémoire allouée pour le tableau de données
	free(data);
}


