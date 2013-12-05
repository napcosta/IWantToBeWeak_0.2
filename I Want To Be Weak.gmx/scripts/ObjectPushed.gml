Key_ObjPushed = mouse_check_button(mb_left);

if(Key_ObjPushed && false) //temp
{
    if(obj_playerSS.Key_Left and place_meeting(x+2, y, obj_playerSS))
    {
         hsp -=obj_playerSS.throwForce;
    }
    else if (obj_playerSS.Key_Right and place_meeting(x-2, y, obj_playerSS))
    {
        hsp +=obj_playerSS.throwForce;
    }
    else if((obj_playerSS.Key_Right and obj_playerSS.Key_Left))
    {
        if place_meeting(x-2, y, obj_playerSS)
        {
            hsp += obj_playerSS.throwForce;
        }
        else if place_meeting(x+2, y, obj_playerSS)
        { 
            hsp -= obj_playerSS.throwForce;
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
