// --- Removing Recipes
recipes.remove(<movingelevators:elevator_block>);
recipes.remove(<movingelevators:display_block>);
recipes.remove(<movingelevators:button_block>);

// --- Adding Recipes

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
 [<ore:ButtonStone>, <movingelevators:elevator_block>, <ore:ButtonStone>],
 [null, null, null]]);