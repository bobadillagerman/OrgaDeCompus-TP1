#include <stdlib.h>
#include "merge_sort.h"
#include "mymalloc.h"

void merge_sort (int* vector, size_t cantDePalabras) {
	size_t middle;
	if (cantDePalabras > 1) {
		middle = cantDePalabras/2;
		int* left  = (int*) malloc(middle*sizeof(int));
		int* right = (int*) malloc((cantDePalabras-middle)*sizeof(int));

		for (int i=0; i<middle; i++) {
			left[i] = vector[i];
		}

		for (int j=middle; j<cantDePalabras; j++) {
			right[j-middle]=vector[j];
		}

		merge_sort(left,middle);
		merge_sort(right,(cantDePalabras - middle));
		//merge(vector, left, right, middle, (cantDePalabras-middle));
		int i = 0; int j = 0; int k = 0;
		size_t rightLen = cantDePalabras-middle;
		size_t leftLen = middle;
		while (leftLen > i && rightLen > j) {
			if (left[i] <= right[j]) {
				vector[k] = left[i];
				i++;
			} else {
				vector[k] = right[j];
				j++;
			}
			k++;
		}

		while (i < leftLen) {
			vector[k] = left[i];
			i++;
			k++;
		}

		while (j < rightLen) {
			vector[k] = right[j];
			j++;
			k++;
		}
		free(left);
		free(right);
	}
}