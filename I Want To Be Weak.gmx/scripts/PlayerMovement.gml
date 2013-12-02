Key_Left = keyboard_check_direct(ord('A'));
Key_Right = keyboard_check_direct(ord('D'));
Key_Jump = keyboard_check_direct(vk_space);
Key_Up = keyboard_check_direct(ord('W'));
Key_Down = keyboard_check_direct(ord('S'));

if (Key_Left) {
    hsp = -4;
    facingRight = false;
    image_xscale = 1;
}

if (Key_Right) {
    hsp = 4;
    facingRight = true;
    image_xscale = -1;
}

if((Key_Right and Key_Left) or (!Key_Right and !Key_Left))
{
    hsp = 0;
}

if(Key_Jump and grounded) {
    vsp=-7;
}

if (vsp <= 6) {
    vsp+=grav;
}

if (onStairs) {
    if(Key_Up)
    vsp = -3;
    else if(Key_Down)
    vsp = 3;
    else
    vsp = 0;
}

if(hsp == 0)
{
    image_index = 1;
}
