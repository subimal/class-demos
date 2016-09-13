//settings.outformat = "pdf";
//settings.prc = true;
unitsize(1cm);
size(10cm,0);
import three;

surface s;
real b1, b2, b3;

real a=1.0, b=1.0, c=1.0;
real r=0.1;


// no of unit cells
int N=2;


for (int i=0; i<N;i=i+1){
for (int j=0; j<N;j=j+1){
for (int k=0; k<N;k=k+1){
    draw(shift((i*a, j*b, k*c))*unitcube, surfacepen=material( diffusepen=opacity(.5)+blue));
    }
    }
    }

for (int i=0; i<N+1;i=i+1){
for (int j=0; j<N+1;j=j+1){
for (int k=0; k<N+1;k=k+1){
    s = shift((i*a,j*b,k*c))*scale3(r)*unitsphere;
    draw(s, surfacepen=material(diffusepen=yellow), opacity(.5));
        }
    }
    }

// base-centered atoms
for (int i=0; i<N;i=i+1){
for (int j=0; j<N;j=j+1){
for (int k=0; k<N+1;k=k+1){
    s = shift((a/2+i*a, b/2+j*b, k*c))*scale3(r)*unitsphere;
    draw(s, surfacepen=material(diffusepen=red), opacity(.5));
    }
    }
    }
for (int i=0; i<N+1;i=i+1){
for (int j=0; j<N;j=j+1){
for (int k=0; k<N;k=k+1){
    s = shift((i*a, b/2+j*b, c/2+k*c))*scale3(r)*unitsphere;
    draw(s, surfacepen=material(diffusepen=red), opacity(.5));
    }
    }
    }
for (int i=0; i<N;i=i+1){
for (int j=0; j<N+1;j=j+1){
for (int k=0; k<N;k=k+1){
    s = shift((a/2+i*a, j*b, c/2+k*c))*scale3(r)*unitsphere;
    draw(s, surfacepen=material(diffusepen=red), opacity(.5));
    }
    }
    }
