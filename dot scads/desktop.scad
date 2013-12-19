//peaks

difference(){
resize([14,53,70])
cylinder(60,40,1);

translate([3.5,0,0])
cube([5,100,100],center=true);
}

translate([1.5,-40,0])
resize([7,40,45])
cylinder(40,35,1);

translate([6,40,0])
resize([15,55,60])
cylinder(40,35,1);

translate([-5.5,-27,0])
resize([18,100,45])
cylinder(40,35,.5);

translate([5.5,-12,0])
resize([7,37,27])
cylinder(40,35,1);

difference(){
translate([-15,-25,0])
resize([24,156, 120])
cylinder(40,35,.5);
translate([-11,-40,63])
resize([5,24,24])
sphere(5);
}

translate([0,-80,8])
rotate([1,353,345])
resize([2,2,8])
rotate([30,194,200])
sphere(2);

translate([3,-76,12])
rotate([356,5,345])
resize([2,4,14])
rotate([36,125,345])
sphere(2);

translate([-2,-78,12])
resize([2.2,2.2,17])
sphere(4);

//grounds
difference(){
translate([-37,24,0])
rotate([0,0,340])
resize([87,187,14])
cylinder(40,40,30);
translate([-26,64,12])
rotate([90,0,345])
cylinder(68,6,6);
}
rotate([0,0,7])
translate([-92,-27,0])
resize([195,245,7])
cylinder(20, 20, 20);

translate([-22,-37,74])
cube([13,50,3],center=true);

translate([-25.5,-53,65.5])
difference(){
cube([8,3,8]);
translate([-10,-1.5,-1])
rotate([0,45,0])
cube(13);
}

translate([-27.5,-23,65.5])
difference(){
cube([8,3,8]);
translate([-10,-1.5,-1])
rotate([0,45,0])
cube(13);
}


translate([-20,-39,91])
rotate([353,7,6])
resize([8,34,34])
sphere(14);

translate([-41,-45,20])
rotate([0,0,14])
resize([50,60,60])
sphere(30);


translate([-24,-311,-6])
rotate([0,0,290])
scale(1.7)
difference()
{
translate([-140,-30,0])
cube([7,38,80]);
translate([-141,-55,16])
rotate([340,0,0])
cube([10,38,85]);

translate([-148,-20,6])
rotate([340,4,4])
cube([10,38,105]);

translate([-136,-20,6])
rotate([340,1,356])
cube([10,38,105]);

translate([-142,-30,-3.2])
cube([10,50,10]);
}


translate([-92,22,7])
rotate([0,0,160])
scale(.8)
desk();

module desk() 
{
translate([0,0,30])difference(){
union(){
translate([-3,0,0])cube([36,85,4]);
translate([10,0,0])cube([50,32,4]);}
translate([44.8,44.8,0])cylinder(4,20,20);
translate([45,25,0])cube([22,10,5]);
translate([24.75,45,0])cube([10,60,5]);}
module leg(x,y) {
translate([x,y,0])
union(){
cylinder(30,1.75,1.75);
cylinder(1.7,3,3);}
}

leg(2,5);
leg(55,5);
leg(55,21);
leg(2,80);
leg(20,80);

}

 

translate([-20,70,-12]) bigleg();
translate([-60,-120,-12]) bigleg();
translate([-142,-70,-12]) bigleg();
translate([-107,40,-12]) bigleg();


module bigleg(){
cylinder(14,10,10);
cylinder(5,13,13);
}
