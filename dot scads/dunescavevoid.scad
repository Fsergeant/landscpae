module total(){module peak1(){ for ( i = [0 : 15] )
{
    translate([i/2, 10, 5*i])
    resize(newsize=[11*i,12*i,4*i])sphere(r = i) ;
}}

module peak2(){ for ( i = [0 : 12] )
{
    translate([0, 10, 4*i])
    resize(newsize=[12*i,9*i,3*i])sphere(r = i*2) ;
}}

module peak3(){ for ( i = [0 : 12] )
{
    translate([0, 10, 3*i-3])
    resize(newsize=[12*i,11*i,2*i])sphere(r = i*2) ;
}}
module peaks(){ difference(){translate([15,0,70])rotate([0,180,-20]) peak1();translate([50,20,19])rotate([76,145,55])cylinder(40,30,5,$fn=4);}

translate([-75,0,45])rotate([0,180,-20]) peak2();
translate([-50,-65,25])rotate([0,180,-10])peak3();}



difference(){ peaks();translate([0,0,-20])cube([300,300,40],center=true);}



translate([-47,-55,-3])cylinder(4,70,70);
translate([-75,17,-3])resize(newsize=[200,150,4])cylinder(4,100,100);
translate([20,5,-3])cylinder(4,135,135);

translate([-35,5,40])resize(newsize=[45,15,50])sphere(6);

translate([91,-61,0])cylinder(190,6,3.5);
translate([91,-61,186])sphere(7);


translate([50,20,10])rotate([76,45,55])cylinder(12,5,5);


module grass(){for ( i = [0 : 5] )
{translate([5*i,9*i,18])resize(newsize=[7,7,42])sphere(4);}}

rotate([0,0,222])translate([-111,30,0])grass();

module grass2(){for ( i = [0 : 5] )
{translate([5*i,9*i,18])resize(newsize=[10,10,25])sphere(4);}}

rotate([0,0,222])translate([-111,30,0])grass2();

module grass4(){for ( i = [0 : 5] )
{translate([5*i,9*i,13])resize(newsize=[14.5,14.5,16])sphere(4);}}

rotate([0,0,222])translate([-111,30,0])grass4();

module grass3(){for ( i = [0 : 5] )
{translate([5*i,9*i,0])cylinder(3,5,4);}}

rotate([0,0,222])translate([-111,30,0])grass3();}

difference(){total(); translate([10,10,0])resize(newsize=[70,70,100])sphere(50);}










