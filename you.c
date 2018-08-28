#include<stdio.h>
#include<unistd.h>

int main(){
    char *args[]={"./exe",NULL};
    execvp(args[0],args);
    return 0;
}