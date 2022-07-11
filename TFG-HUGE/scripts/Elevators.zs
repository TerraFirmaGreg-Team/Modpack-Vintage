import crafttweaker.item.IItemStack;


// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("movingelevators");

// --- Добавление рецептов

// Elevator Controller
recipes.addShaped(<movingelevators:elevator_block>, 
[[<ore:gearIron>, <ore:circuitLv>, <ore:gearIron>],
 [<metaitem:electric.piston.lv>, <gregtech:machine_casing:1>, <metaitem:electric.piston.lv>],
 [<ore:gearIron>, <ore:circuitLv>, <ore:gearIron>]]);
 
// Elevator Screen
recipes.addShaped(<movingelevators:display_block>, 
[[<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
 [<ore:stickIronMagnetic>, <gregtech:machine_casing:1>, <ore:stickIronMagnetic>],
 [<ore:circuitLv>, <ore:stickIronMagnetic>, <ore:circuitLv>]]);
 
// Remote Elevator Panel
recipes.addShaped(<movingelevators:button_block>, 
[[null, <appliedenergistics2:material:41>, null],
 [<projectred-illumination:light_button>, <movingelevators:elevator_block>, <projectred-illumination:light_button>],
 [null, null, null]]);