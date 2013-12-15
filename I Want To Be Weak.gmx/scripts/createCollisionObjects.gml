blockx = ceil(obj_playerSS.x/32)*32;
blocky = ceil(obj_playerSS.y/32)*32;

show_debug_message("blockx =" + string(blockx) + " blocky =" + string(blocky));

if(dir == -1)
{

    with(instance_create(blockx-32, blocky-64, obj_collisionTest))
    {
//        move_snap(32,32);
    };//cima
    with(instance_create(blockx, blocky-64, obj_collisionTest))
    {
//        move_snap(32,32);
    };//cima direita
    with(instance_create(blockx, blocky-32, obj_collisionTest))
    {
//        move_snap(32,32);
    };//direita
    with(instance_create(blockx, blocky, obj_collisionTest))
    {
//        move_snap(32,32);
    };//baixo direita
    with(instance_create(blockx-32, blocky, obj_collisionTest))
    {
//        move_snap(32,32);
    };//baixo
    with(instance_create(blockx-64, blocky, obj_collisionTest))
    {
//        move_snap(32,32);
    };//baixo esquerda
    with(instance_create(blockx-64, blocky-32, obj_collisionTest))
    {
//        move_snap(32,32);
    };//esquerda
    with(instance_create(blockx-64, blocky-64, obj_collisionTest))
    {
//        move_snap(32,32);
    };//cima esquerda
}
else
{

    with(instance_create(blockx-32, blocky-64, obj_collisionTest))
    {
//        move_snap(32,32);
    };//cima
    with(instance_create(blockx, blocky-64, obj_collisionTest))
    {
//        move_snap(32,32);
    };//cima direita
    with(instance_create(blockx, blocky-32, obj_collisionTest))
    {
//        move_snap(32,32);
    };//direita
    with(instance_create(blockx, blocky, obj_collisionTest))
    {
//        move_snap(32,32);
    };//baixo direita
    with(instance_create(blockx-32, blocky, obj_collisionTest))
    {
//        move_snap(32,32);
    };//baixo
    with(instance_create(blockx-64, blocky, obj_collisionTest))
    {
//        move_snap(32,32);
    };//baixo esquerda
    with(instance_create(blockx-64, blocky-32, obj_collisionTest))
    {
//        move_snap(32,32);
    };//esquerda
    with(instance_create(blockx-64, blocky-64, obj_collisionTest))
    {
//        move_snap(32,32);
    };//cima esquerda
}
