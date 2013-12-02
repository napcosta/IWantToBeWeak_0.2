if (alarm[0] <0 and obj_inventory.inventoryList[selected] == "Shovel" ) {
    
    alarm[0] = 20;
    
            //dig down
    if place_meeting(x, y-5, obj_player) //and (mouse_y - obj_player.y < -20)
    {
        instance_destroy();
        obj_inventory.dirtBlocks++;
    } else //dig up
    if place_meeting(x, y+8, obj_player) //and (mouse_y - obj_player.y > 20)
    {
        instance_destroy();
        obj_inventory.dirtBlocks++;
    } else //dig left
    if place_meeting(x-8, y, obj_player) //and (mouse_x - obj_player.x < -1)
    {
        instance_destroy();
        obj_inventory.dirtBlocks++;
    }else //dig right
    if place_meeting(x+8, y, obj_player) //and (mouse_x - obj_player.x > 1)
    {
        instance_destroy();
        obj_inventory.dirtBlocks++;
    }
}
