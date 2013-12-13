Key_Left = keyboard_check_direct(ord('A'));
Key_Right = keyboard_check_direct(ord('D'));
Key_Jump = keyboard_check_direct(vk_space);
Key_Up = keyboard_check_direct(ord('W'));
Key_Down = keyboard_check_direct(ord('S'));

if (Key_Left) {
    if (onStairs)
        hsp = -2;
    else
        hsp = -4;
        
     dir =-1;   
    self.image_xscale = 1;
} else if (Key_Right) {
           if (onStairs)
                hsp = 2;
            else
                hsp = 4;
        
            self.image_xscale = -1;
            dir = 1;
} else { //hsp friction
//            if (abs(hsp) > 0.9){}
  //              //hsp *= 0.6;
    //        else
                hsp = 0;
}

//jump
if(Key_Jump and grounded) {
    vsp=-7;
}
//gravity
if (vsp <= 8.5) {
    vsp+=grav;
}
//climb while on stairs
if (onStairs) {
    if(Key_Up)
    vsp = -2.5;
    else if(Key_Down)
    vsp = 2.5;
    else
    vsp = 0;
}
//lock img sprite on "standing"
if(hsp == 0) {
    image_index = 1;
}
