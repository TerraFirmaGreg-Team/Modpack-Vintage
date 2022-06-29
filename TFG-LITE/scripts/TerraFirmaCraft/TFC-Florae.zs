import mods.terrafirmacraft.Barrel;

// --- Удаление рецептов

Barrel.removeRecipe(<minecraft:clay_ball>);

recipes.removeByRecipeName("tfcflorae:wood/joshua_tree2/joshua_tree_log");
recipes.removeByRecipeName("tfcflorae:wood/joshua_tree/joshua_tree_log_reverse");
recipes.removeByRecipeName("tfcflorae:wood/fruit_tree/firmalife/fence/cassia_cinnamon");
recipes.removeByRecipeName("tfcflorae:wood/fruit_tree/firmalife/fence/ceylon_cinnamon");
recipes.removeByRecipeName("tfcflorae:wood/fruit_tree/firmalife/fence_gate/cassia_cinnamon");
recipes.removeByRecipeName("tfcflorae:wood/fruit_tree/firmalife/fence_gate/ceylon_cinnamon");

recipes.removeByRecipeName("tfcflorae:yeast");

// --- Добавление рецептов

// Емкость под жидкость
recipes.addShapeless(<tfctech:ceramics/fluid_bowl>, [<tfcflorae:ceramics/stoneware/fired/pot>]);
recipes.addShapeless(<tfctech:ceramics/fluid_bowl>, [<tfcflorae:ceramics/kaolinite/fired/pot>]);
recipes.addShapeless(<tfctech:ceramics/fluid_bowl>, [<tfcflorae:ceramics/earthenware/fired/pot>]);

// Yeast
recipes.addShapeless(<tfcflorae:yeast> * 3, [<tfc:wooden_bucket>.withTag({Fluid: {FluidName: "yeast_starter", Amount: 1000}})]);
