import crafttweaker.item.IItemStack;


// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("movingelevators");

// --- Добавление рецептов

// Elevator Controller
recipes.addShaped(<movingelevators:elevator_block>, 
[[<metaitem:gearIron>, <ore:circuitLv>, <metaitem:gearIron>],
 [<metaitem:electric.piston.lv>, <gregtech:machine_casing:1>, <metaitem:electric.piston.lv>],
 [<metaitem:gearIron>, <ore:circuitLv>, <metaitem:gearIron>]]);
 
// Elevator Screen
recipes.addShaped(<movingelevators:display_block>, 
[[<metaitem:plateGlass>, <metaitem:plateGlass>, <metaitem:plateGlass>],
 [<metaitem:stickIronMagnetic>, <gregtech:machine_casing:1>, <metaitem:stickIronMagnetic>],
 [<ore:circuitLv>, <metaitem:stickIronMagnetic>, <ore:circuitLv>]]);
 
// Remote Elevator Panel
recipes.addShaped(<movingelevators:button_block>, 
[[null, <appliedenergistics2:material:41>, null],
 [<projectred-illumination:light_button>, <movingelevators:elevator_block>, <projectred-illumination:light_button>],
 [null, null, null]]);