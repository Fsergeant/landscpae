//base

cylinder(7,60,47,$fn=7);

translate([70,40,0])
resize([130,250,7]
)cylinder(7, 40,20,$fn=5);

translate([30,-115,0])
cylinder(7,80,67);

translate([40,-80,0])
rotate([3,2,350])
cube([7,150,70]);

//trees

resize([7,30,30])
rotate([5,0,30])
translate([2,6,2])
cylinder(20,15,1,$fn=7);

resize([8.5,30,70])
rotate([5,0,30])
translate([22,16,2])
cylinder(20,15,1,$fn=7);

translate([3,26,8])
cylinder(7,4,4,$fn=5);

//polls

translate([30,-140,8,])
rotate([0,90,104])
cylinder(120,2,2);

translate([40,-130,8,])
rotate([0,90,104])
cylinder(120,2,2);

translate([35,-135,8,])
rotate([0,90,104])
cylinder(120,2,2);

//proped up

translate([70,52,8,])
rotate([3,92,350])
cylinder(35,3,3);

translate([50,-68,4])
rotate([3,92,350])
cylinder(35,3,3);

translate([50,-68,41])
rotate([3,145,359])
cylinder(45,2.5,2.5);

translate([70,49,45])
rotate([3,145,359])
cylinder(50,2.5,2.5);

difference(){
translate([40,30,0])
rotate([90,0,80])
resize([140,170,10])
ring();
translate([-50,-50,-200])
cube(200,200,100);}

module ring(){rotate_extrude($fn=50)translate([80,0,0])rotate([90,0,0])circle(5);}

translate([6,7,10])sphere(4.5);

translate([42,-78,47])
resize([4,15,15])sphere(6);



module total(){difference(){jug();translate([0,0,70])cylinder(41,3,4.5);}

module jug(){cylinder(65,10,25);
translate([0,0,65])sphere(24.75);
translate([0,0,13])sphere(13);
translate([0,0,20])sphere(14.5);
translate([0,0,30])sphere(17);
translate([0,0,40])sphere(19);
translate([0,0,52])sphere(22);

translate([0,0,90])cylinder(10,4,6);
translate([0,0,86])cylinder(12,6,4);

translate([0,21,83])rotate([0,90,0])ringltl();
translate([0,0,100])resize(newsize=[16,16,7.2])ringltl();}




module ringltl(){rotate_extrude($fn=9)translate([5.5,0,0])rotate([90,0,0])circle(2);}}

scale(.3)
translate([230,-100,8])
rotate([40,300,21])
total();

