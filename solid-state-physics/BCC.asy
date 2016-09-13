//settings.outformat = "pdf";
//settings.prc = true;
unitsize(1cm);
size(10cm,0);
import three;

surface s;

real a=1.0, b=1.0, c=1.0;

// no of unit cells
int N=3;


for (int i=0; i<N;i=i+1){
for (int j=0; j<N;j=j+1){
for (int k=0; k<N;k=k+1){
    draw(shift((i*a, j*b, k*c))*unitcube, surfacepen=material( diffusepen=opacity(.5)+blue));
    }
    }
    }

real r=0.1;
for (int i=0; i<N+1;i=i+1){
for (int j=0; j<N+1;j=j+1){
for (int k=0; k<N+1;k=k+1){
    s = shift((i*a,j*b,k*c))*scale3(r)*unitsphere;
    draw(s, surfacepen=material(diffusepen=yellow), opacity(.5));
    }
    }
    }

// body-centered atoms
for (int i=0; i<N;i=i+1){
for (int j=0; j<N;j=j+1){
for (int k=0; k<N;k=k+1){
    s = shift((i+a/2,j+b/2,k+c/2))*scale3(r)*unitsphere;
    draw(s, surfacepen=material(diffusepen=red), opacity(.5));
    }
    }
    }
