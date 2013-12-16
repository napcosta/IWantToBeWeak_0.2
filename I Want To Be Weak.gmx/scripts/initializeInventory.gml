stoneBlocks = 0; // not used

hasBigFireball = false;
hasSmallFireball = false;

hasSlingshot = true;
hasShovel = true;
dirtBlocks = 10;
stairBlocks = 15;
ammo = 10;

//selection ordered by tools, then blocks
inventoryLimit = 4;
inventoryList[0] = "Weapon";
inventoryList[1] = "Shovel";
inventoryList[2] = "Dirt";
inventoryList[3] = "Stair";

globalvar selected;
selected = 0; //slingshot selected by default
wait = -1; //stop autocycle until player cycles inventory
