if (alarm[0] <0 and obj_inventory.inventoryList[selected] == "Shovel" ) {
    
    alarm[0] = 20;
    
            //dig down
    if place_meeting(x, y-5, obj_playerSS) //and (mouse_y - obj_playerSS.y < -20)
    {
        instance_destroy();
        obj_inventory.dirtBlocks++;
    } else //dig up
    if place_meeting(x, y+8, obj_playerSS) //and (mouse_y - obj_playerSS.y > 20)
    {
        instance_destroy();
        obj_inventory.dirtBlocks++;
    } else //dig left
    if place_meeting(x-8, y, obj_playerSS) //and (mouse_x - obj_playerSS.x < -1)
    {
        instance_destroy();
        obj_inventory.dirtBlocks++;
    }else //dig right
    if place_meeting(x+8, y, obj_playerSS) //and (mouse_x - obj_playerSS.x > 1)
    {
        instance_destroy();
        obj_inventory.dirtBlocks++;
    }
}
