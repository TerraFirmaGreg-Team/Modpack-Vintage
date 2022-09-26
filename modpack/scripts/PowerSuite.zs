import crafttweaker.item.IItemStack;

// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("powersuits");

// --- Добавление рецептов
// Шлем
star_forge.recipeBuilder()
	.inputs(<metaitem:qts.helmet>, <extraplanets:tier4_space_suit_helmet:100>, <galacticraftplanets:orion_drive> * 2, <ore:circuitZpm> * 4)
	.fluidInputs([<liquid:molten.hastelloy_c_276> * 18000])
	.outputs(<powersuits:powerarmor_head>)
	.duration(20000).EUt(122880).buildAndRegister();
// Кираса
star_forge.recipeBuilder()
    .inputs(<metaitem:qts.advanced_chestplate>, <extraplanets:tier4_space_suit_chest:100>, <galacticraftplanets:orion_drive> * 4, <ore:circuitZpm> * 6)
    .fluidInputs([<liquid:molten.hastelloy_c_276> * 42000])
    .outputs(<powersuits:powerarmor_torso>)
    .duration(28000).EUt(122880).buildAndRegister();

// Поножи
star_forge.recipeBuilder()
    .inputs(<metaitem:qts.leggings>, <extraplanets:tier4_space_suit_legings:100>, <galacticraftplanets:orion_drive> * 8, <ore:circuitZpm> * 6)
    .fluidInputs([<liquid:molten.hastelloy_c_276> * 20000])
    .outputs(<powersuits:powerarmor_legs>)
    .duration(19000).EUt(122880).buildAndRegister();

// Ботинки
star_forge.recipeBuilder()
    .inputs(<metaitem:qts.boots>, <extraplanets:tier4_space_suit_boots:100>, <galacticraftplanets:orion_drive> * 4, <ore:circuitZpm> * 4)
    .fluidInputs([<liquid:molten.hastelloy_c_276> * 16000])
    .outputs(<powersuits:powerarmor_feet>)
    .duration(28000).EUt(122880).buildAndRegister();

// Рука
star_forge.recipeBuilder()
    .inputs(<metaitem:tool.drill.iv>, <galacticraftplanets:orion_drive> * 4, <metaitem:nano_saber>, <metaitem:tool.chainsaw.hv>, <metaitem:tool.wrench.hv>)
    .fluidInputs([<liquid:molten.hastelloy_c_276> * 8000])
    .outputs(<powersuits:power_fist>)
    .duration(28000).EUt(122880).buildAndRegister();

