#include <iostream>
#include <cmath>

bool workspace_control(double x, double y, double z){
    double r1=0.3; //lunghezza primo braccio
    double r2=0.3; //lunghezza secondo raggio

    double rad1=2.5; //rotazione massima del primo raggio
    double rad2=2;   //rotazione massima del secondo raggio

    //punto limite del braccio 1 
    //centro della circonferenza del braccio 2
    double cx = r1 * cos(rad1);
	double cy = r1 * sin(rad1);

    //controllo che la z sia entro i limiti
    if (z<-0.45 || z>0){
        return false;
    }

    //calcolo raggio del cerchio irraggiungibile interno 
    //(elevato al quadrato)
    double raggio_min=pow(x,2)+pow(y,2)-2*r1*r2*cos(M_PI-rad2);

    //calcolo raggio del cerchio irraggiungibile esterno 
    double raggio_max=r1+r2;

    //controllo che le coordinate siano interne ai due cerchi limite
    if( ( (pow(x,2) + pow(y,2)) > pow(raggio_max,2) ) &&
         ( (pow(x,2)+pow(y,2)) < raggio_min ) ){
             return false;
    }

    //nel triangolo incerto controllo che sia accettabile o no
    else if(x < (raggio_max*cx) ){
        if( (pow(x-cx,2) + pow(y-cy, 2) > pow(r2, 2)) || 
        (pow(x-cx,2) + pow(y+cy, 2) > pow(r2, 2)) ){
            return false;
        }
        else{
            return true;
        }
    }

    else{
        return true;
    }
}

int main(){
    double x, y, z;
    bool result;
    x=-0.3;
    y=0.1;
    z=-0.3;

    result = workspace_control(x,y,z);
    std::cout << result << std::endl;
}
