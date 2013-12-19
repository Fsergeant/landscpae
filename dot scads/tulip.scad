rotate([0,70,0])difference(){
tulip();
translate([0,0,-11])
cube(10,center=true);}
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