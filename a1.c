#include<stdio.h>
#include<string.h>
main(){
	int i,j,k, m=0;
	int str[100000]={};
	FILE *fp;
	fp = fopen("between.ndx","r");
	fscanf(fp,"%*[^\n]\n",NULL);
	for(i=0;i<100000;i++)
	 fscanf(fp,"%d",&str[i]);
	fclose(fp);
	fp = fopen("out.ndx","w");
	fprintf(fp,"[ between ]\n");
	for(i=0;i<100000;i++){
	 for(j=0;j<3;j++)
         if(str[i]!=0)
          m=m+1;
          fprintf(fp,"%12d",str[i]+j);
        fprintf(fp,"\n");
        }
        printf("%d\n", m);
}

          
