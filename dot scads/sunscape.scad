//objects
translate([100,89,26])
rotate([3,3,350])
picnic();

translate([117,-34,10])
rotate([0,0,345])
scale(.45)
picnic();

translate([100,-135,10])
rotate([0,0,140])
trees();

scale(2.3)
translate([106,-143.5,-4])
rotate([0,0,104])
trees();

scale(.45)
translate([150,-290, 9])
rotate([0,0,80])
trees();

module tulip()
{
translate([0,0,-6])
cylinder(7,2,1);

for(i=[0:3]){
rotate([0,0,90*i])bottom();
}

module bottom(){
translate([0,2.75,-2.5])
rotate([60,0,0])
resize([4,9,2.3])
sphere(6);
}



module top(){
module pedal(){
module bulb(){
intersection(){
resize([4,4,6])
sphere(6);
translate([0,0,.5])
rotate([0,40,0])resize([5,5,6])sphere(6);


sphere(2.5);
}
}

difference(){
rotate([4,0,0])bulb();
translate([-.5,0,.2])
rotate([0,4,0])
bulb();

translate([0,0,1.3])rotate([0,290,0])cube([10,10,1.5],center=true);
}
}

module pedals() {
for(i=[1:3])
{rotate([0,18,118*i]) pedal();}
}

intersection(){


union(){
pedals();
rotate([0,0,30])scale(.9)pedals();
rotate([0,0,70])scale(.75)pedals();
scale(.59)pedals();
scale(.4)rotate([0,0,25])pedals();

resize([.5,.5,3])
translate([.4,0,-2])
rotate([4,0,0])
sphere(5)

resize([.3,.3,2.5])
translate([0,0,-1.8])
sphere(5);

resize([3,3,2])
translate([0,0,-5])
sphere(5);
}

translate([0,0,.4])
resize([4,4,5.2])
sphere(6);
}

}

scale(3)translate([0,0,7.5])top();
resize([2.7,2,25])
translate([2,-1,5]) linear_extrude(height = 22, center = true, convexity = 90, twist = 40)translate([-2, 0, 30])
circle(r = 1.5);


translate([.4,-1,6])
rotate([55,65,120])
resize([5,3.2,1.5])
sphere(2);
translate([-.4,1,6])
rotate([270,40,300])
resize([5,3.2,1.5])
sphere(2);
}

//USE OF TULIP
translate([-100,50,18])
scale(2.8)
tulip();

translate([-90,20,17.5])
scale(.7)
tulip();

translate([-130,-20,17.5])
scale(.7)
tulip();

translate([-140, 30,17.5])
scale(.7)
tulip();

translate([-70, 75,17.5])
scale(.7)
tulip();

//terrain

sphere(5);

module ground(){

rotate([0,0,30])
resize([70,100,100])
mound() ;

translate([70,20,0])
rotate([0,0,210])
mound();

translate([50,-50,0])
rotate([0,0,175])
resize([200,30,100])
mound();

rotate([10,10,10])
translate([-10,-30,-50])
cube([200,170,70]);

translate([70,-20,-20])
cube([180,270,20],center=true);

translate([70,-40,-10])
rotate([0,0,20])
cube([210, 100,30],center=true);

translate([70,-20,-20])
cube([180,270,20],center=true);

cylinder(30,70,70);

difference(){
translate([-60,-30,-60])
resize([210,260,70])cylinder(30,70,70);
translate([-70,-50,9])
resize([80,100,15]) 
sphere(4);
#translate([-60,-30,-60])
scale(.7)
resize([210,260,70])cylinder(30,70,70);}

module mound() {
difference(){resize([100,130,100])
sphere(60);
translate([0,0,-100])
cube(200,200,200,center=true);}
}
}

difference()
{
ground();
translate([0,0,-70]) 
cube([500,500,100],center=true);
translate([-25,80,10])
rotate([94,50,94])
resize([40,30,70])
cylinder(60,30,20);
#translate([70,110,0])rotate([10,10,10])cube([150,70,20],center=true);
}


module picnic()
{

module flat() {
difference(){
translate([0,0,6])
cube([45,30,3]);

translate([0,-.5,3.75])
rotate([40, 0,0])
cube([45, 3, 3]);

translate([0,30,3.75])
rotate([40, 0,0])
cube([45, 3, 3]);

}
}

flat();

resize([45, 10, 3])
translate([0,-30,-10])
flat();

resize([45, 10, 3])
translate([0,87,-10])
flat();


translate([10,-7,-5])cube([4,43,2]);
translate([30,-7,-5])cube([4,43,2]);

translate([12,15,-5])cube([5,5,25],center=true);
translate([32,15,-5])cube([5,5,25],center=true);

}

module trees(){module grass(){for ( i = [0 : 2] )
{translate([5*i,9*i,18])resize(newsize=[7,7,42])sphere(4);}}

rotate([0,0,222])translate([-111,30,0])grass();

module grass2(){for ( i = [0 : 2] )
{translate([5*i,9*i,18])resize(newsize=[10,10,25])sphere(4);}}

rotate([0,0,222])translate([-111,30,0])grass2();

module grass4(){for ( i = [0 : 2] )
{translate([5*i,9*i,13])resize(newsize=[14.5,14.5,16])sphere(4);}}

rotate([0,0,222])translate([-111,30,0])grass4();




module grass3(){for ( i = [0 : 2] )
{translate([5*i,9*i,0])cylinder(3,5,4);}}

rotate([0,0,222])translate([-111,30,0])grass3();}


