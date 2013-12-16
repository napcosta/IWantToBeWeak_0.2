Key_CycleInvRight = keyboard_check_pressed(ord('E'));
Key_CycleInvLeft = keyboard_check_pressed(ord('Q'));
if keyboard_check_pressed(ord('1')) selected = 0;//quick selection
if keyboard_check_pressed(ord('2')) selected = 1;
if keyboard_check_pressed(ord('3')) selected = 2;
if keyboard_check_pressed(ord('4')) selected = 3;
validSelection = false;
autoCycle = false;

do {
if Key_CycleInvRight {
    wait = -1;
    if selected >= inventoryLimit-1 {
        selected = 0;
    } else {
        selected++;
    }
} else if Key_CycleInvLeft or autoCycle {
    wait = -1;
    if selected <= 0 {
        selected = inventoryLimit-1;
    } else {
        selected--;
    }
}

if ((hasSlingshot && ammo>0 && inventoryList[selected] == "Weapon")
        or (hasBigFireball && inventoryList[selected] == "Weapon")
        or (hasSmallFireball && inventoryList[selected] == "Weapon")
        or (hasShovel && inventoryList[selected] == "Shovel")
        or (dirtBlocks>0 && inventoryList[selected] == "Dirt")
        or (stairBlocks>0 && inventoryList[selected] == "Stair")
        or wait == selected)
    validSelection = true;
else
    autoCycle = true;
    

} until validSelection
