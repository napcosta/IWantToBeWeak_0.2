Key_ObjPushed = mouse_check_button(mb_left);

if(Key_ObjPushed && false) //temp
{
    if(obj_player.Key_Left and place_meeting(x+2, y, obj_player))
    {
         hsp -=obj_player.throwForce;
    }
    else if (obj_player.Key_Right and place_meeting(x-2, y, obj_player))
    {
        hsp +=obj_player.throwForce;
    }
    else if((obj_player.Key_Right and obj_player.Key_Left))
    {
        if place_meeting(x-2, y, obj_player)
        {
            hsp += obj_player.throwForce;
        }
        else if place_meeting(x+2, y, obj_player)
        { 
            hsp -= obj_player.throwForce;
        }
    }
}
else if(abs(hsp) > 0.1)
{
    hsp -= fric*(sign(hsp));
}
else
{
    hsp = 0;
}
