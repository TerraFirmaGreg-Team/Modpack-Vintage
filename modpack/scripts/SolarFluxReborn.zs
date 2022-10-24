# Solar Flux Reborn

import crafttweaker.item.IItemStack;

print("Initializing 'Solar Flux Reborn'...");


//Удаление рецептов
global ItemsToRemoveSFR as IItemStack[] = [
	<solarflux:mirror>,
	<solarflux:photovoltaic_cell_1>,
	<solarflux:photovoltaic_cell_2>,
	<solarflux:photovoltaic_cell_3>,
	<solarflux:photovoltaic_cell_4>,
	<solarflux:photovoltaic_cell_5>,
	<solarflux:photovoltaic_cell_6>,
	<solarflux:solar_panel_1>,
	<solarflux:solar_panel_2>,
	<solarflux:solar_panel_3>,
	<solarflux:solar_panel_4>,
	<solarflux:solar_panel_5>,
	<solarflux:solar_panel_6>,
	<solarflux:solar_panel_7>,
	<solarflux:solar_panel_8>,
	<solarflux:blank_upgrade>,
	<solarflux:transfer_rate_upgrade>,
	<solarflux:traversal_upgrade>,
	<solarflux:efficiency_upgrade>,
	<solarflux:furnace_upgrade>,
	<solarflux:capacity_upgrade>,
	<solarflux:block_charging_upgrade>,
	<solarflux:dispersive_upgrade>
] as IItemStack[];
for item in ItemsToRemoveSFR{
    recipes.remove(item);
}

//Рецепты в верстаке
//Зеркало
recipes.addShaped(<solarflux:mirror>, 
	[[null, <minecraft:glass_pane>, null], 
	[null, <ore:foilSilver>, null], 
	[null, <ore:plateSteel>, null]]);

//Фотоэлектрическая ячейка I
recipes.addShaped(<solarflux:photovoltaic_cell_1>, 
	[[<ore:plateWroughtIron>, <ore:cableGtSingleLead>, <ore:plateWroughtIron>], 
	[<ore:cableGtSingleLead>, <gregtech:meta_item_1:332>, <ore:cableGtSingleLead>], 
	[<ore:plateWroughtIron>, <ore:cableGtSingleLead>, <ore:plateWroughtIron>]]);

//Фотоэлектрическая ячейка II
recipes.addShaped(<solarflux:photovoltaic_cell_2>, 
	[[<ore:plateSteel>, <ore:cableGtSingleTin>, <ore:plateSteel>], 
	[<ore:cableGtSingleTin>, <gregtech:meta_item_1:333>, <ore:cableGtSingleTin>], 
	[<ore:plateSteel>, <ore:cableGtSingleTin>, <ore:plateSteel>]]);

//Фотоэлектрическая ячейка III
recipes.addShaped(<solarflux:photovoltaic_cell_3>, 
	[[<ore:plateAluminium>, <ore:cableGtSingleCopper>, <ore:plateAluminium>], 
	[<ore:cableGtSingleCopper>, <gregtech:meta_item_1:334>, <ore:cableGtSingleCopper>], 
	[<ore:plateAluminium>, <ore:cableGtSingleCopper>, <ore:plateAluminium>]]);

//Фотоэлектрическая ячейка IV
recipes.addShaped(<solarflux:photovoltaic_cell_4>, 
	[[<ore:plateStainlessSteel>, <ore:cableGtSingleGold>, <ore:plateStainlessSteel>], 
	[<ore:cableGtSingleGold>, <gregtech:meta_item_1:335>, <ore:cableGtSingleGold>], 
	[<ore:plateStainlessSteel>, <ore:cableGtSingleGold>, <ore:plateStainlessSteel>]]);

//Фотоэлектрическая ячейка V
recipes.addShaped(<solarflux:photovoltaic_cell_5>, 
	[[<ore:plateTitanium>, <ore:cableGtSingleAluminium>, <ore:plateTitanium>], 
	[<ore:cableGtSingleAluminium>, <gregtech:meta_item_1:336>, <ore:cableGtSingleAluminium>], 
	[<ore:plateTitanium>, <ore:cableGtSingleAluminium>, <ore:plateTitanium>]]);

//Фотоэлектрическая ячейка VI
recipes.addShaped(<solarflux:photovoltaic_cell_6>, 
	[[<ore:plateTungstenSteel>, <ore:cableGtSinglePlatinum>, <ore:plateTungstenSteel>], 
	[<ore:cableGtSinglePlatinum>, <gregtech:meta_item_1:337>, <ore:cableGtSinglePlatinum>], 
	[<ore:plateTungstenSteel>, <ore:cableGtSinglePlatinum>, <ore:plateTungstenSteel>]]);

//Солнечная панель I
recipes.addShaped(<solarflux:solar_panel_1>, 
	[[null, null, null], 
	[<ore:plateBrass>, <solarflux:mirror>, <ore:plateBrass>], 
	[<ore:plateBrass>, <ore:slabStonePolished>, <ore:plateBrass>]]);

//Солнечная панель II
recipes.addShaped(<solarflux:solar_panel_2>, 
	[[null, null, null], 
	[<ore:plateIron>, <gregtech:meta_item_1:331>, <ore:plateIron>], 
	[<ore:plateIron>, <solarflux:solar_panel_1>, <ore:plateIron>]]);

//Солнечная панель III
recipes.addShaped(<solarflux:solar_panel_3>, 
	[[null, null, null], 
	[<ore:plateWroughtIron>, <solarflux:photovoltaic_cell_1>, <ore:plateWroughtIron>], 
	[<ore:plateWroughtIron>, <solarflux:solar_panel_2>, <ore:plateWroughtIron>]]);

//Солнечная панель IV
recipes.addShaped(<solarflux:solar_panel_4>, 
	[[null, null, null], 
	[<ore:plateSteel>, <solarflux:photovoltaic_cell_2>, <ore:plateSteel>], 
	[<ore:plateSteel>, <solarflux:solar_panel_3>, <ore:plateSteel>]]);

//Солнечная панель V
recipes.addShaped(<solarflux:solar_panel_5>, 
	[[null, null, null], 
	[<ore:plateAluminium>, <solarflux:photovoltaic_cell_3>, <ore:plateAluminium>], 
	[<ore:plateAluminium>, <solarflux:solar_panel_4>, <ore:plateAluminium>]]);

//Солнечная панель VI
recipes.addShaped(<solarflux:solar_panel_6>, 
	[[null, null, null], 
	[<ore:plateStainlessSteel>, <solarflux:photovoltaic_cell_4>, <ore:plateStainlessSteel>], 
	[<ore:plateStainlessSteel>, <solarflux:solar_panel_5>, <ore:plateStainlessSteel>]]);

//Солнечная панель VII
recipes.addShaped(<solarflux:solar_panel_7>, 
	[[null, null, null], 
	[<ore:plateTitanium>, <solarflux:photovoltaic_cell_5>, <ore:plateTitanium>], 
	[<ore:plateTitanium>, <solarflux:solar_panel_6>, <ore:plateTitanium>]]);

//Солнечная панель VIII
recipes.addShaped(<solarflux:solar_panel_8>, 
	[[null, null, null], 
	[<ore:plateTungstenSteel>, <solarflux:photovoltaic_cell_6>, <ore:plateTungstenSteel>], 
	[<ore:plateTungstenSteel>, <solarflux:solar_panel_7>, <ore:plateTungstenSteel>]]);

//Шаблон улучшения
recipes.addShaped(<solarflux:blank_upgrade>, 
	[[null, <ore:plateSteel>, null], 
	[<gregtech:meta_item_1:502>, <gregtech:meta_item_1:438>, <gregtech:meta_item_1:502>], 
	[null, <gregtech:meta_item_1:501>, null]]);

//Улучшение: Скорость передачи
recipes.addShaped(<solarflux:transfer_rate_upgrade>, 
	[[<forestry:crafting_material:1>, <forestry:crafting_material:1>, <forestry:crafting_material:1>], 
	[<ore:plateGold>, <solarflux:blank_upgrade>, <ore:plateGold>], 
	[<forestry:crafting_material:1>, <forestry:crafting_material:1>, <forestry:crafting_material:1>]]);

//Улучшение: Распределение по машинам
recipes.addShaped(<solarflux:traversal_upgrade>, 
	[[<forestry:crafting_material:1>, <ore:plateEmerald>, <forestry:crafting_material:1>], 
	[<ore:plateEmerald>, <solarflux:blank_upgrade>, <ore:plateEmerald>], 
	[<forestry:crafting_material:1>, <ore:plateEmerald>, <forestry:crafting_material:1>]]);

//Улучшение: Рассеивание
recipes.addShaped(<solarflux:dispersive_upgrade>, 
	[[<ore:plateGlowstone>, <forestry:crafting_material:1>, <ore:plateGlowstone>], 
	[<forestry:crafting_material:1>, <solarflux:blank_upgrade>, <forestry:crafting_material:1>], 
	[<ore:plateGlowstone>, <forestry:crafting_material:1>, <ore:plateGlowstone>]]);

//Улучшение: Зарядка блока
recipes.addShaped(<solarflux:block_charging_upgrade>, 
	[[<ore:plateEnderPearl>, <ore:plateRedAlloy>, <ore:plateEnderPearl>], 
	[<ore:plateRedAlloy>, <solarflux:dispersive_upgrade>, <ore:plateRedAlloy>], 
	[<ore:plateEnderPearl>, <ore:plateRedAlloy>, <ore:plateEnderPearl>]]);

//Улучшение: Ёмкость
recipes.addShaped(<solarflux:capacity_upgrade>, 
	[[<ore:plateSteel>, <gregtech:meta_item_1:719>, <ore:plateSteel>], 
	[<forestry:crafting_material:1>, <solarflux:blank_upgrade>, <forestry:crafting_material:1>], 
	[<ore:plateSteel>, <gregtech:meta_item_1:719>, <ore:plateSteel>]]);

//Улучшение: Печь
recipes.addShaped(<solarflux:furnace_upgrade>, 
	[[<ore:wireFineCopper>, <ore:circuitLv>, <ore:wireFineCopper>], 
	[<ore:wireFineCopper>, <solarflux:blank_upgrade>, <ore:wireFineCopper>], 
	[<ore:wireFineCopper>, <ore:plateSilver>, <ore:wireFineCopper>]]);

//Улучшение: Эффективность
recipes.addShaped(<solarflux:efficiency_upgrade>, 
	[[<ore:wireFineRedAlloy>, <ore:wireFineRedAlloy>, <ore:wireFineRedAlloy>], 
	[<ore:plateIridium>, <solarflux:blank_upgrade>, <ore:plateIridium>], 
	[<ore:wireFineRedAlloy>, <ore:wireFineRedAlloy>, <ore:wireFineRedAlloy>]]);


print("Initialized 'Solar Flux Reborn'");