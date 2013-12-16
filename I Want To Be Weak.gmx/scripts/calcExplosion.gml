if (argument0<1 or argument0>100)
    explosionRadius = 20;
else
    explosionRadius = argument0;

//fireball's destruction factor
if (argument1<1 or argument1>50)
    destroys = 20;
else
    destroys = argument1;

//resistance of objects is subtracted from destroys
if (argument2<1 or argument2>10)
    wallResistance = 3;
else
    wallResistance = argument2;

if (argument3<1 or argument3>10)
    enemyDirtResistance = 2; //enemy and dirt blocks
else
    enemyDirtResistance = argument3;

if (argument4<1 or argument4>10)
    basicResistance = 1; //enemy shots, stairs
else
    basicResistance = argument4;

//explosion calculation
if place_meeting(x,y,other)
if place_meeting(x,y,obj_enemyShot) or place_meeting(x,y,obj_stair)
    h=0;
