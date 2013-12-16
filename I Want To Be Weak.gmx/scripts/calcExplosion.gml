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
    
destroy_list = circular_collision(x,y, explosionRadius, all, false, true);
if destroy_list !=noone
{

for (i=0; i<ds_list_size(destroy_list); i++) {
    if(destroys<=0)
    {
    instance_destroy();
    break;
    }
    something = ds_list_find_value(destroy_list,i);
    show_debug_message("something =" + object_get_name(something.object_index));
    with(something) {
        if(object_get_name(something.object_index)=="obj_playerSS" or object_get_name(something.object_index)=="obj_collisionTest")
        {
            continue;
        }
        else if(object_get_name(something.object_index)=="obj_wall")
        {
            destroys -= wallResistance;
            instance_destroy();
        }
        else if(object_get_name(something.object_index)=="obj_dirt" or object_get_name(something.object_index)=="obj_enemy")
        {
            destroys -= enemyDirtResistance;
            instance_destroy();
        }
        else
        {
            destroys -= basicResistance;
            instance_destroy();
        }
    }
}
}
