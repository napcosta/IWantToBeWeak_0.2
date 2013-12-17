hasBigFireball = true;
hasSmallFireball = false;

hasSlingshot = false;
hasShovel = false;
dirtBlocks = 0;
stairBlocks = 0;
ammo = 0;

//selection ordered by tools, then blocks
inventoryLimit = 4;
inventoryList[0] = "Weapon";
inventoryList[1] = "Shovel";
inventoryList[2] = "Dirt";
inventoryList[3] = "Stair";

globalvar selected;
selected = 0; //slingshot selected by default
wait = -1; //stop autocycle until player cycles inventory
