
//show_debug_message("obj_playerSS.x%32 -> " + string(obj_playerSS.x%32));

if(position_meeting(x,y, obj_collisionTest))
{
//    if(collisionArea)
//    {
       collisionArea = false;
        destroyCollisionObjects();
        createCollisionObjects();
//    }
}
else
{
    collisionArea = true;
}

