//settings.outformat = "pdf";
//settings.prc = true;
unitsize(1cm);
size(10cm,0);
import three;

surface s;
real b1, b2, b3;

real a=1.0;
real c=a*sqrt(8/3);
real r=0.5;
real th=pi/3.0;
real x, y, z;

// no of unit cells
int N=1;

//lower plane
z = 0;
s = shift((0,0,z))*scale3(r)*unitsphere;
draw(s, surfacepen=material(diffusepen=yellow), opacity(.5));

for(int i=0; i<6; i=i+1)
{
    x = a*cos(th*i);
    y = a*sin(th*i);
    s = shift((x,y,z))*scale3(r)*unitsphere;
    draw(s, surfacepen=material(diffusepen=yellow), opacity(.5));
}
//upper plane
z = c;
s = shift((0,0,z))*scale3(r)*unitsphere;
draw(s, surfacepen=material(diffusepen=yellow), opacity(.5));

for(int i=0; i<6; i=i+1)
{
    x = a*cos(th*i);
    y = a*sin(th*i);
    s = shift((x,y,z))*scale3(r)*unitsphere;
    draw(s, surfacepen=material(diffusepen=yellow), opacity(.5));
}

//body center atoms
th = 2*pi/3;
z = c/2;
for(int i=0; i<3; i=i+1)
{
    x = (2*a*cos(pi/6)/3)*cos(pi/6+th*i);
    y = (2*a*cos(pi/6)/3)*sin(pi/6+th*i);
    s = shift((x,y,z))*scale3(r)*unitsphere;
    draw(s, surfacepen=material(diffusepen=yellow), opacity(.5));
}
