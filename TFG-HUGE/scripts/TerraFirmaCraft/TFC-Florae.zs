import mods.terrafirmacraft.Barrel;

// --- Removing Recipes

Barrel.removeRecipe(<minecraft:clay_ball>);

recipes.removeByRecipeName("tfcflorae:wood/joshua_tree2/joshua_tree_log");
recipes.removeByRecipeName("tfcflorae:wood/joshua_tree/joshua_tree_log_reverse");

// --- Adding Recipes
recipes.addShapeless(<tfctech:ceramics/fluid_bowl>, [<tfcflorae:ceramics/stoneware/fired/pot>]);
recipes.addShapeless(<tfctech:ceramics/fluid_bowl>, [<tfcflorae:ceramics/kaolinite/fired/pot>]);
recipes.addShapeless(<tfctech:ceramics/fluid_bowl>, [<tfcflorae:ceramics/earthenware/fired/pot>]);