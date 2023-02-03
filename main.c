#include<stdio.h>
#include<stdlib.h>
#include <string.h>
#include"array.h"


int main(int argc, char *argv[]) {

  int sort = 0;
   char* inputFile = NULL;
   char* outputFile = NULL;
   int reverse = 0;
   int data=0;

   for (int i = 1; i < argc; i++) {
      if (strcmp(argv[i], "-r") == 0) {
         reverse = 1;
      } else if (strcmp(argv[i], "--abr") == 0) {
         sort = 1;
      } else if (strcmp(argv[i], "--avl") == 0) {
         sort = 2;
      } else if (strcmp(argv[i], "--tab") == 0) {
         sort = 3;
      } else if (strcmp(argv[i], "-f")) {
         inputFile = argv[2];
      } else if (strcmp(argv[i], "-o")) {
         outputFile = argv[4];
      }else if (strcmp(argv[i], "-t1") == 0) {
         data= 0;
      } else if (strcmp(argv[i], "-t2") == 0) {
         data = 0;
      } else if (strcmp(argv[i], "t3") == 0) {
         data = 0;
      }else if (strcmp(argv[i], "-p1") == 0) {
         data = 0;
      } else if (strcmp(argv[i], "-p2") == 0) {
         data = 0;
      } else if (strcmp(argv[i], "-p3") == 0) {
         data = 0;
      }else if (strcmp(argv[i], "-w") == 0) {
         data = 1;//cl1
      } else if (strcmp(argv[i], "-m") == 0) {
         data = 6;//cl6
      } else if (strcmp(argv[i], "-h") == 0) {
         data = 14;//cl14
      }
   }

/*
   if (inputFile == NULL || outputFile == NULL || sort == 0) {
    
      return 1;
   }
   
*/
   if(reverse=1){	
   		if(sort=3){
   			sortArrayRev(inputFile,outputFile,data);
   	//else if(sort=2){
   	//	sortAvlRev();
  // 	else 
   //		arrayRev();
  		}
   else
   		if(sort=3){
   			sortArray(inputFile,outputFile,data);
   		}
 //  	else if(sort=2){
   //		sortAvl();
 //  	else 
   //		a();
	}
	
 return 0;
 }
