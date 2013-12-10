x+=hsp;
y+=vsp;

onStairs = false;

//fall damage
if (grounded) {
    if (fallCounter > 130 and fallCounter < 240) {
        health -= fallCounter/5;
        } else if ( fallCounter >=240) {
            health = 0;
            }
        
    fallCounter = 0;
}

if (!grounded)
    fallCounter+= vsp;
