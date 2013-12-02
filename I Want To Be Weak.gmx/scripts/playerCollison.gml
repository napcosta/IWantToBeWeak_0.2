grounded = false;

//collision with enemy
if place_meeting(x, y, obj_e01) {
    hsp += 2* (self.x - obj_e01.x);
    health -= 25;
}
//collision with enemy shot
if place_meeting(x, y, obj_enemyShot) {
    thisShot = instance_place(x,y, obj_enemyShot);
    hsp += 1* (self.x - thisShot.x);
    health -= 20;
    
    with (thisShot)
        instance_destroy();
}

//collisions with walls
if place_meeting(x+hsp, y ,par_wall)
{
    while(!place_meeting(x+sign(hsp), y, par_wall)) x+=sign(hsp);
    hsp=0;
}

if place_meeting(x, y+vsp ,par_wall)
{
    while(!place_meeting(x, y+sign(vsp), par_wall)) y+=sign(vsp);
    if(sign(vsp) == 1){grounded = true;}
    vsp=0;
    
}
