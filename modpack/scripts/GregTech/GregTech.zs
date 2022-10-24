#priority 1
# GregTech

import crafttweaker.item.IItemStack;

print("Initializing 'GregTech'...");


// Удаление рецептов + удаление из NEI
var GTitems = [<gregtech:meta_tool:4>, <gregtech:meta_tool:17>.withTag({"GT.ToolStats": {Material: "flint"}}), <gregtech:meta_tool:3>.withTag({"GT.ToolStats": {Material: "flint"}}), <gregtech:meta_tool:2>.withTag({"GT.ToolStats": {Material: "flint"}}), <gregtech:meta_tool:1>.withTag({"GT.ToolStats": {Material: "flint"}}), <gregtech:meta_tool>.withTag({"GT.ToolStats": {Material: "flint"}}), <gregtech:meta_tool:15>.withTag({ench: [{lvl: 2 as short, id: 20 as short}], "GT.ToolStats": {MaxDurability: 80, DigSpeed: 6.0 as float, AttackDamage: 2.0 as float, Material: "flint", HarvestLevel: 1}}), <gregtech:meta_dust:1615>] as IItemStack[];
for item in GTitems {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("");
}

// Удаление рецептов крафтов некоторых предметов из верстака по названию
recipes.removeByRecipeName("gregtech:shape_empty");
recipes.removeByRecipeName("gregtech:shape_mold_plate");
recipes.removeByRecipeName("gregtech:shape_mold_gear");
recipes.removeByRecipeName("gregtech:shape_mold_credit");
recipes.removeByRecipeName("gregtech:shape_mold_bottle");
recipes.removeByRecipeName("gregtech:shape_mold_ingot");
recipes.removeByRecipeName("gregtech:shape_mold_ball");
recipes.removeByRecipeName("gregtech:shape_mold_block");
recipes.removeByRecipeName("gregtech:shape_mold_nugget");
recipes.removeByRecipeName("gregtech:shape_mold_cylinder");
recipes.removeByRecipeName("gregtech:shape_mold_anvil");
recipes.removeByRecipeName("gregtech:shape_mold_name");
recipes.removeByRecipeName("gregtech:shape_mold_gear_small");
recipes.removeByRecipeName("gregtech:shape_mold_rotor");
recipes.removeByRecipeName("gregtech:sticky_piston_resin");
recipes.removeByRecipeName("gregtech:wooden_barrel");
recipes.removeByRecipeName("gregtech:mortar_flint");
recipes.removeByRecipeName("gregtech:flint_and_steel");

// Удаление крафта купроникелевых кредитов
<recipemap:forming_press>.findRecipe(16, [<metaitem:plateCupronickel>, <metaitem:shape.mold.credit>], null).remove();

// Новый крафт получения рыбьего жира из рыбы
<recipemap:extractor>.findRecipe(4, [<minecraft:fish:3>], null).remove();
<recipemap:extractor>.findRecipe(4, [<minecraft:fish:1>], null).remove();
<recipemap:extractor>.findRecipe(4, [<minecraft:fish:2>], null).remove();
<recipemap:extractor>.findRecipe(4, [<minecraft:fish:0>], null).remove();
chemical_reactor.recipeBuilder()
    .circuit(2)
    .inputs(<minecraft:fish> | <minecraft:fish:1> | <minecraft:fish:2> | <tfc:food/fish>)
    .fluidOutputs([<liquid:fish_oil> * 100])
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();

// Дополнительный крафт прута из магнитного железа
recipes.addShapeless(<gregtech:meta_stick:395>, 
	[<ore:stickWroughtIron>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]);

// Удаление крафта муки
<recipemap:macerator>.findRecipe(2, [<minecraft:hay_block:0>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:wheat:0>], null).remove();

// Удаление дробления эндерняка
<recipemap:macerator>.findRecipe(2, [<minecraft:end_stone:0>], null).remove();

// Раскрафт пепла
<recipemap:centrifuge>.findRecipe(30, [<metaitem:dustAsh>], null).remove();
centrifuge.recipeBuilder()
    .circuit(1)
    .inputs(<ore:dustAsh>)
    .chancedOutput(<gregtech:meta_dust_tiny:359>, 500, 50)
    .chancedOutput(<gregtech:meta_dust_tiny:255>, 2500, 250)
    .chancedOutput(<gregtech:meta_dust_tiny:353>, 5000, 500)
    .chancedOutput(<gregtech:meta_dust_small:363>, 6000, 600)
    .chancedOutput(<gregtech:meta_dust_small:352>, 6000, 600)
    .chancedOutput(<gregtech:meta_dust_small:360> * 2, 9000, 900)
    .duration(15 * 20)
    .EUt(30)
    .buildAndRegister();

// Получение пепла в печке
furnace.addRecipe(<gregtech:meta_dust:254>, <ore:dustWood>);

// Крафт опилок
<recipemap:macerator>.findRecipe(2, [<metaitem:plateWood>], null).remove();
macerator.recipeBuilder()
    .inputs(<ore:plankWood>)
    .outputs(<gregtech:meta_dust:1617>)
    .duration(5 * 20)
    .EUt(2)
    .buildAndRegister();

// Примитивный воядной насос
recipes.remove(<gregtech:machine:1648>);
recipes.addShaped(<gregtech:machine:1648>, 
	[[<ore:ringSteel>, <ore:pipeNormalFluidWood>, <ore:screwSteel>], 
	[<ore:rotorSteel>, <ore:plankTreatedWood>, <ore:craftingToolScrewdriverEmptyTag>], 
	[<ore:slabCobblestone>, <ore:pipeLargeFluidWood>, <ore:slabCobblestone>]]);
// Жидкостный выходной люк насоса
recipes.remove(<gregtech:machine:1649>);
recipes.addShaped(<gregtech:machine:1649>, 
	[[<ore:screwSteel>, <ore:ringSteel>, <ore:craftingToolScrewdriverEmptyTag>], 
	[<ore:plankTreatedWood>, <ore:pipeLargeFluidWood>, <ore:plankTreatedWood>], 
	[<ore:slabCobblestone>, <ore:ringSteel>, <ore:slabCobblestone>]]);
// Насосная палуба
recipes.remove(<gregtech:steam_casing:4>);
recipes.addShaped(<gregtech:steam_casing:4>, 
	[[<ore:screwSteel>, <ore:plankTreatedWood>, <ore:screwSteel>], 
	[<ore:craftingToolScrewdriverEmptyTag>, <ore:slabCobblestone>, <ore:craftingToolHardHammerEmptyTag>]]);

// Паровой люк (вход)
recipes.remove(<gregtech:machine:1652>);
recipes.addShaped(<gregtech:machine:1652>, 
	[[<ore:chestWood>], 
	[<gregtech:steam_casing>]]);
recipes.addShaped(<gregtech:machine:1652>, 
	[[<ore:craftingToolScrewdriverEmptyTag>], 
	[<gregtech:machine:1651>]]);
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:steam_import_bus>], [<liquid:oxygen> * 88]).remove();
<recipemap:macerator>.findRecipe(2, [<metaitem:steam_import_bus>], null).remove();
macerator.recipeBuilder()
    .inputs(<gregtech:machine:1652>)
    .outputs(<gregtech:meta_dust:1617> * 8, <gregtech:meta_dust:260> * 4, <gregtech:meta_dust:2510> * 4)
    .duration(9 * 20)
    .EUt(2)
    .buildAndRegister();
// Паровой люк (выход)
recipes.remove(<gregtech:machine:1651>);
recipes.addShaped(<gregtech:machine:1651>, 
	[[<gregtech:steam_casing>], 
	[<ore:chestWood>]]);
recipes.addShaped(<gregtech:machine:1651>, 
	[[<ore:craftingToolScrewdriverEmptyTag>], 
	[<gregtech:machine:1652>]]);
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:steam_export_bus>], [<liquid:oxygen> * 88]).remove();
<recipemap:macerator>.findRecipe(2, [<metaitem:steam_export_bus>], null).remove();
macerator.recipeBuilder()
    .inputs(<gregtech:machine:1651>)
    .outputs(<gregtech:meta_dust:1617> * 8, <gregtech:meta_dust:260> * 4, <gregtech:meta_dust:2510> * 4)
    .duration(9 * 20)
    .EUt(2)
    .buildAndRegister();

// Большой паровой измельчитель
recipes.remove(<gregtech:machine:1025>);
recipes.addShaped(<gregtech:machine:1025>, 
	[[<gregtech:metal_casing>, <ore:gearPotin>, <gregtech:metal_casing>], 
	[<gregtech:metal_casing>, <gregtech:machine:10>, <gregtech:metal_casing>], 
	[<gregtech:metal_casing>, <ore:gearPotin>, <gregtech:metal_casing>]]);
// Паровая мультиплавильня
recipes.remove(<gregtech:machine:1024>);
recipes.addShaped(<gregtech:machine:1024>, 
	[[<gregtech:metal_casing>, <ore:gearInvar>, <gregtech:metal_casing>], 
	[<gregtech:boiler_firebox_casing>, <gregtech:machine:16>, <gregtech:boiler_firebox_casing>], 
	[<gregtech:metal_casing>, <ore:gearInvar>, <gregtech:metal_casing>]]);

// Кирпич коксовой печи
<recipemap:alloy_smelter>.findRecipe(7, [<minecraft:sand:0>, <minecraft:clay_ball:0>], null).remove();
furnace.addRecipe(<gregtech:meta_item_1:353>, <gregtech:meta_item_1:350>);

// Коксовая печ
recipes.remove(<gregtech:machine:1017>);
recipes.addShaped(<gregtech:machine:1017>, 
	[[<gregtech:metal_casing:8>, <ore:plateSteel>, <gregtech:metal_casing:8>], 
	[<ore:plateSteel>, <ore:craftingToolWrenchEmptyTag>, <ore:plateSteel>], 
	[<gregtech:metal_casing:8>, <ore:plateSteel>, <gregtech:metal_casing:8>]]);

// Примитивная доменная печь
recipes.remove(<gregtech:machine:1000>);
recipes.addShaped(<gregtech:machine:1000>, 
	[[<ore:craftingToolHardHammerEmptyTag>, <ore:stickBlackSteel>, <ore:screwBlackSteel>], 
	[<ore:plateBlackSteel>, <tfc:blast_furnace>, <ore:stickBlackSteel>], 
	[<ore:craftingToolScrewdriverEmptyTag>, <ore:stickBlackSteel>, <ore:screwBlackSteel>]]);

// Кирпичи коксовой печи
<recipemap:compressor>.findRecipe(2, [<metaitem:brick.coke> * 4], null).remove();
recipes.remove(<gregtech:metal_casing:8>);
recipes.addShaped(<gregtech:metal_casing:8>, 
	[[<tfc:mortar>, <gregtech:meta_item_1:353>, <tfc:mortar>], 
	[<gregtech:meta_item_1:353>, <immersiveengineering:stone_decoration>, <gregtech:meta_item_1:353>], 
	[<tfc:mortar>, <gregtech:meta_item_1:353>, <tfc:mortar>]]);

// Кирпичи доменной печи (огнеупорные кирпичи)
recipes.remove(<gregtech:metal_casing:1>);
recipes.addShaped(<gregtech:metal_casing:1>, 
	[[<tfc:mortar>, <gregtech:meta_item_1:352>, <tfc:mortar>], 
	[<gregtech:meta_item_1:352>, <immersiveengineering:stone_decoration:1>, <gregtech:meta_item_1:352>], 
	[<tfc:mortar>, <gregtech:meta_item_1:352>, <tfc:mortar>]]);

// Пустая форма
recipes.remove(<gregtech:meta_item_1:347>);
recipes.addShaped(<gregtech:meta_item_1:347>, 
	[[<ore:craftingToolSawEmptyTag>, <ore:slabWood>]]);

// Инженерный верстак
recipes.remove(<gregtech:machine:1647>);

// Бронзовый кирпичный корпус
recipes.remove(<gregtech:steam_casing:1>);
recipes.addShaped(<gregtech:steam_casing:1>, 
	[[<ore:plateRedSteel>, <ore:plateBronze>, <ore:plateRedSteel>], 
	[<ore:plateBronze>, <ore:craftingToolHardHammerEmptyTag>, <ore:plateBronze>], 
	[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);
// Удаление раскрафта
<recipemap:arc_furnace>.findRecipe(30, [<gregtech:steam_casing:1>], [<liquid:oxygen> * 76]).remove();
<recipemap:macerator>.findRecipe(2, [<gregtech:steam_casing:1>], null).remove();
// Новый раскрафт
macerator.recipeBuilder()
    .inputs(<gregtech:steam_casing:1>)
    .outputs(<gregtech:meta_dust:2524> * 12, <gregtech:meta_dust:260> * 3, <gregtech:meta_dust:2510> * 2)
    .duration(5 * 20)
    .EUt(2)
    .buildAndRegister();

// Бронзовый корпус
recipes.remove(<gregtech:steam_casing>);
recipes.addShaped(<gregtech:steam_casing>, 
	[[<ore:plateRedSteel>, <ore:plateBronze>, <ore:plateRedSteel>], 
	[<ore:plateBronze>, <ore:craftingToolHardHammerEmptyTag>, <ore:plateBronze>], 
	[<ore:plateRedSteel>, <ore:plateBronze>, <ore:plateRedSteel>]]);
// Удаление раскрафта
<recipemap:arc_furnace>.findRecipe(30, [<gregtech:steam_casing:0>], [<liquid:oxygen> * 76]).remove();
<recipemap:macerator>.findRecipe(2, [<gregtech:steam_casing:0>], null).remove();
// Новый раскрафт
macerator.recipeBuilder()
    .inputs(<gregtech:steam_casing>)
    .outputs(<gregtech:meta_dust:260> * 4, <gregtech:meta_dust:2510> * 4)
    .duration(5 * 20)
    .EUt(2)
    .buildAndRegister();

// Маленький угольный паровой котел
recipes.remove(<gregtech:machine:1>);
recipes.addShaped(<gregtech:machine:1>, 
	[[<ore:plateRedSteel>, <ore:plateBronze>, <ore:plateRedSteel>], 
	[<ore:plateBronze>, <ore:craftingToolWrenchEmptyTag>, <ore:plateBronze>], 
	[<minecraft:brick_block>, <minecraft:furnace>, <minecraft:brick_block>]]);

// Паровой кузнечный молот
recipes.remove(<gregtech:machine:13>);
recipes.addShaped(<gregtech:machine:13>, 
	[[<gregtech:fluid_pipe_small:260>, <ore:craftingPiston>, <gregtech:fluid_pipe_small:260>], 
	[<gregtech:fluid_pipe_small:260>, <gregtech:steam_casing>, <gregtech:fluid_pipe_small:260>], 
	[<gregtech:fluid_pipe_small:260>, <tfc:metal/anvil/red_steel> | <tfc:metal/anvil/blue_steel>, <gregtech:fluid_pipe_small:260>]]);

// Угольный паровой котел высокого давления
recipes.remove(<gregtech:machine:2>);
recipes.addShaped(<gregtech:machine:2>, 
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[<ore:plateSteel>, <ore:craftingToolWrenchEmptyTag>, <ore:plateSteel>], 
	[<ore:plateSteel>, <gregtech:machine:1>, <ore:plateSteel>]]);

// Солнечный паровой котел высокого давления
recipes.remove(<gregtech:machine:4>);
recipes.addShaped(<gregtech:machine:4>, 
	[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>], 
	[<ore:plateSilver>, <ore:plateSilver>, <ore:plateSilver>], 
	[<ore:plateSteel>, <gregtech:machine:3>, <ore:plateSteel>]]);

// Жидкостный паровой котел высокого давления
recipes.remove(<gregtech:machine:6>);
recipes.addShaped(<gregtech:machine:6>, 
	[[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[<ore:plateSteel>, <minecraft:glass>, <ore:plateSteel>], 
	[<ore:plateSteel>, <gregtech:machine:5>, <ore:plateSteel>]]);

// Мультиплавильный завод
recipes.remove(<gregtech:machine:1006>);
recipes.addShaped(<gregtech:machine:1006>, 
	[[<minecraft:furnace>, <minecraft:furnace>, <minecraft:furnace>], 
	[<ore:circuitMv>, <gregtech:metal_casing:2>, <ore:circuitMv>], 
	[<ore:cableGtSingleCopper>, <ore:circuitMv>, <ore:cableGtSingleCopper>]]);

// Электрическая доменная печь
recipes.remove(<gregtech:machine:1001>);
recipes.addShaped(<gregtech:machine:1001>, 
	[[<tfc:blast_furnace>, <tfc:blast_furnace>, <tfc:blast_furnace>], 
	[<ore:circuitMv>, <gregtech:metal_casing:2>, <ore:circuitMv>], 
	[<ore:cableGtSingleAnnealedCopper>, <ore:circuitMv>, <ore:cableGtSingleAnnealedCopper>]]);

// Новый рецепт деревянной бочки
recipes.addShaped(<gregtech:machine:1610>, 
	[[<ore:craftingToolSoftHammerEmptyTag>, <ore:dustRawRubber>, <ore:craftingToolSawEmptyTag>], 
	[<ore:plankWood>, <ore:stickLongWroughtIron>, <ore:plankWood>], 
	[<ore:plankWood>, <ore:stickLongWroughtIron>, <ore:plankWood>]]);

// Получение пыли дамасской стали
alloy_smelter.recipeBuilder()
    .inputs(<ore:dustBlueSteel>, <ore:dustRedSteel>)
    .outputs(<metaitem:dustDamascusSteel> * 2)
    .duration(45 * 20)
    .EUt(32)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs(<ore:dustBlueSteel>, <ore:dustRedSteel>)
    .outputs(<metaitem:dustDamascusSteel> * 2)
    .duration(7 * 20)
    .EUt(512)
    .buildAndRegister();

// Получение дамасской стали в примитивной доменной печке
primitive_blast_furnace.recipeBuilder()
    .inputs(<ore:dustDamascusSteel>, <ore:blockCharcoal>)
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(<metaitem:ingotDamascusSteel>, <metaitem:dustAsh>)
    .duration(180 * 20)
    .EUt(120)
    .buildAndRegister();
primitive_blast_furnace.recipeBuilder()
    .inputs(<ore:dustDamascusSteel>, <ore:blockCoal>)
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(<metaitem:ingotDamascusSteel>, <metaitem:dustAsh>)
    .duration(180 * 20)
    .EUt(120)
    .buildAndRegister();
primitive_blast_furnace.recipeBuilder()
    .inputs(<ore:dustDamascusSteel>, <ore:blockCoke>)
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(<metaitem:ingotDamascusSteel>, <metaitem:dustAsh>)
    .duration(120 * 20)
    .EUt(120)
    .buildAndRegister();

// Получение резиновой массы
alloy_smelter.recipeBuilder()
    .inputs(<ore:dustRawRubber>, <tfctech:latex/vulcanizing_agents>)
    .outputs(<metaitem:dustRubber>)
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();

// Отключение крафта кирпичного корпуса из кованного железа
recipes.remove(<gregtech:steam_casing:3>);

// Переработка гевеи в машинах грега
<recipemap:extractor>.findRecipe(2, [<gregtech:rubber_log:0>], null).remove();
<recipemap:centrifuge>.findRecipe(20, [<gregtech:rubber_log:0>], null).remove();
extractor.recipeBuilder()
    .inputs(<tfc:wood/log/hevea>)
    .outputs(<gregtech:meta_dust:1002>)
    .duration(15 * 20)
    .EUt(2)
    .buildAndRegister();
centrifuge.recipeBuilder()
    .inputs(<tfc:wood/log/hevea>)
    .chancedOutput(<gregtech:meta_dust:18>, 2500, 600)
    .chancedOutput(<gregtech:meta_dust:1617>, 2500, 600)
    .chancedOutput(<gregtech:meta_item_1:439>, 3750, 900)
    .chancedOutput(<gregtech:meta_item_1:438>, 5000, 1200)
    .fluidOutputs([<liquid:methane> * 60])
    .duration(10 * 20)
    .EUt(20)
    .buildAndRegister();

// Удаление раскрафта пылек красной и синей стали
<recipemap:centrifuge>.findRecipe(30, [<metaitem:dustRedSteel> * 8], null).remove();
<recipemap:centrifuge>.findRecipe(30, [<metaitem:dustBlueSteel> * 8], null).remove();

// Нормальный крафт в сборщике для корпусов машин
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:0>, <metaitem:cableGtSingleRedAlloy> * 2], [<liquid:plastic> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:1>, <metaitem:cableGtSingleTin> * 2], [<liquid:plastic> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:2>, <metaitem:cableGtSingleCopper> * 2], [<liquid:plastic> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:2>, <metaitem:cableGtSingleAnnealedCopper> * 2], [<liquid:plastic> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:3>, <metaitem:cableGtSingleGold> * 2], [<liquid:plastic> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:4>, <metaitem:cableGtSingleAluminium> * 2], [<liquid:plastic> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:5>, <metaitem:cableGtSinglePlatinum> * 2], [<liquid:polytetrafluoroethylene> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:6>, <metaitem:cableGtSingleNiobiumTitanium> * 2], [<liquid:polytetrafluoroethylene> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:7>, <metaitem:cableGtSingleVanadiumGallium> * 2], [<liquid:polybenzimidazole> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:8>, <metaitem:cableGtSingleYttriumBariumCuprate> * 2], [<liquid:polybenzimidazole> * 288]).remove();
<recipemap:assembler>.findRecipe(16, [<gregtech:machine_casing:9>, <metaitem:cableGtSingleEuropium> * 2], [<liquid:polybenzimidazole> * 288]).remove();
// Корпус машины (ULV)
recipes.remove(<gregtech:machine:985>);
assembler.recipeBuilder()
    .inputs(<ore:cableGtSingleLead> * 2, <ore:plateWood> * 2, <ore:plateWroughtIron>, <gregtech:machine_casing>)
    .outputs(<gregtech:machine:985>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
recipes.addShaped(<gregtech:machine:985>, 
	[[null, null, null], 
	[<ore:plateWood>, <ore:plateWroughtIron>, <ore:plateWood>], 
	[<ore:cableGtSingleLead>, <gregtech:machine_casing>, <ore:cableGtSingleLead>]]);
// Корпус машины (LV)
assembler.recipeBuilder()
    .inputs(<ore:cableGtSingleTin> * 2, <ore:plateWroughtIron> * 2, <ore:plateSteel>, <gregtech:machine_casing:1>)
    .outputs(<gregtech:machine:986>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Корпус машины (MV)
assembler.recipeBuilder()
    .inputs(<ore:cableGtSingleCopper> * 2, <ore:plateWroughtIron> * 2, <ore:plateAluminium>, <gregtech:machine_casing:2>)
    .outputs(<gregtech:machine:987>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Корпус машины (HV)
assembler.recipeBuilder()
    .inputs(<ore:cableGtSingleGold> * 2, <ore:platePlastic> * 2, <ore:plateStainlessSteel>, <gregtech:machine_casing:3>)
    .outputs(<gregtech:machine:988>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Корпус машины (EV)
assembler.recipeBuilder()
    .inputs(<ore:cableGtSingleAluminium> * 2, <ore:platePlastic> * 2, <ore:plateTitanium>, <gregtech:machine_casing:4>)
    .outputs(<gregtech:machine:989>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Корпус машины (IV)
assembler.recipeBuilder()
    .inputs(<ore:cableGtSinglePlatinum> * 2, <ore:platePolytetrafluoroethylene> * 2, <ore:plateTungstenSteel>, <gregtech:machine_casing:5>)
    .outputs(<gregtech:machine:990>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Корпус машины (LuV)
assembler.recipeBuilder()
    .inputs(<ore:cableGtSingleNiobiumTitanium> * 2, <ore:platePolytetrafluoroethylene> * 2, <ore:plateRhodiumPlatedPalladium>, <gregtech:machine_casing:6>)
    .outputs(<gregtech:machine:991>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Корпус машины (ZPM)
assembler.recipeBuilder()
    .inputs(<ore:cableGtSingleVanadiumGallium> * 2, <ore:platePolybenzimidazole> * 2, <ore:plateNaquadahAlloy>, <gregtech:machine_casing:7>)
    .outputs(<gregtech:machine:992>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Корпус машины (UV)
assembler.recipeBuilder()
    .inputs(<ore:cableGtSingleYttriumBariumCuprate> * 2, <ore:platePolybenzimidazole> * 2, <ore:plateDarmstadtium>, <gregtech:machine_casing:8>)
    .outputs(<gregtech:machine:993>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
// Корпус машины (UHV)
assembler.recipeBuilder()
    .inputs(<ore:cableGtSingleEuropium> * 2, <ore:platePolybenzimidazole> * 2, <ore:plateNeutronium>, <gregtech:machine_casing:9>)
    .outputs(<gregtech:machine:994>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Новый крафт резисторов
recipes.remove(<gregtech:meta_item_1:519>);
recipes.addShaped(<gregtech:meta_item_1:519> * 2, 
	[[<ore:dustRubber>, <minecraft:paper>, <ore:dustRubber>], 
	[<ore:wireGtSingleCopper>, <ore:dustCoal>, <ore:wireGtSingleCopper>], 
	[null, <minecraft:paper>, null]]);
recipes.addShaped(<gregtech:meta_item_1:519> * 2, 
	[[<ore:dustRubber>, <minecraft:paper>, <ore:dustRubber>], 
	[<ore:wireGtSingleCopper>, <ore:dustCharcoal>, <ore:wireGtSingleCopper>], 
	[null, <minecraft:paper>, null]]);
recipes.addShaped(<gregtech:meta_item_1:519> * 2, 
	[[<ore:dustRubber>, <minecraft:paper>, <ore:dustRubber>], 
	[<ore:wireGtSingleCopper>, <ore:dustCarbon>, <ore:wireGtSingleCopper>], 
	[null, <minecraft:paper>, null]]);

// Новый крафт прорезиненной подложки
recipes.remove(<gregtech:meta_item_1:381>);
recipes.addShapeless(<gregtech:meta_item_1:381>, 
	[<ore:plateTreatedWood>, <ore:dustRubber>, <ore:dustRubber>]);
assembler.recipeBuilder()
    .inputs(<ore:dustTreatedWood>)
    .fluidInputs([<liquid:rubber> * 50])
    .notConsumable(<gregtech:meta_item_1:12>)
    .outputs(<gregtech:meta_item_1:381>)
    .duration(4 * 20)
    .EUt(7)
    .buildAndRegister();

// Новый крафт профеноленой подложки
<recipemap:assembler>.findRecipe(7, [<metaitem:dustWood>, <metaitem:shape.mold.plate>], [<liquid:glue> * 50]).remove();
assembler.recipeBuilder()
    .inputs(<ore:dustTreatedWood>)
    .fluidInputs([<liquid:glue> * 50])
    .notConsumable(<gregtech:meta_item_1:12>)
    .outputs(<gregtech:meta_item_1:382>)
    .duration(4 * 20)
    .EUt(7)
    .buildAndRegister();

// Крафт кучки обработанной древесной массы
macerator.recipeBuilder()
    .inputs(<ore:plankTreatedWood>)
    .outputs(<metaitem:dustTreatedWood>)
    .duration(5 * 20)
    .EUt(2)
    .buildAndRegister();

// Нормальные крафты солнечных панелей
// Солнечная панель
recipes.remove(<gregtech:meta_item_1:331>);
recipes.addShaped(<gregtech:meta_item_1:331>, 
	[[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>], 
	[<ore:cableGtSingleCopper>, <ore:plateSilicon>, <ore:cableGtSingleCopper>], 
	[<minecraft:glass_pane>, <ore:plateAluminium>, <minecraft:glass_pane>]]);
// Солнечная панель (ULV)
recipes.remove(<gregtech:meta_item_1:332>);
recipes.addShaped(<gregtech:meta_item_1:332>, 
	[[<gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>], 
	[<gregtech:meta_item_1:331>, <ore:circuitUlv>, <gregtech:meta_item_1:331>], 
	[<gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>]]);
// Солнечная панель (LV)
recipes.remove(<gregtech:meta_item_1:333>);
recipes.addShaped(<gregtech:meta_item_1:333>, 
	[[<ore:plateSteel>, <gregtech:meta_item_1:332>, <ore:plateSteel>], 
	[<gregtech:meta_item_1:332>, <ore:circuitLv>, <gregtech:meta_item_1:332>], 
	[<ore:plateSteel>, <gregtech:meta_item_1:332>, <ore:plateSteel>]]);
// Солнечная панель (MV)
recipes.addShaped(<gregtech:meta_item_1:334>, 
	[[<ore:plateAluminium>, <gregtech:meta_item_1:333>, <ore:plateAluminium>], 
	[<gregtech:meta_item_1:333>, <ore:circuitMv>, <gregtech:meta_item_1:333>], 
	[<ore:plateAluminium>, <gregtech:meta_item_1:333>, <ore:plateAluminium>]]);
// Солнечная панель (HV)
recipes.addShaped(<gregtech:meta_item_1:335>, 
	[[<ore:plateStainlessSteel>, <gregtech:meta_item_1:334>, <ore:plateStainlessSteel>], 
	[<gregtech:meta_item_1:334>, <ore:circuitHv>, <gregtech:meta_item_1:334>], 
	[<ore:plateStainlessSteel>, <gregtech:meta_item_1:334>, <ore:plateStainlessSteel>]]);
// Солнечная панель (EV)
recipes.addShaped(<gregtech:meta_item_1:336>, 
	[[<ore:plateTitanium>, <gregtech:meta_item_1:335>, <ore:plateTitanium>], 
	[<gregtech:meta_item_1:335>, <ore:circuitEv>, <gregtech:meta_item_1:335>], 
	[<ore:plateTitanium>, <gregtech:meta_item_1:335>, <ore:plateTitanium>]]);
// Солнечная панель (IV)
recipes.addShaped(<gregtech:meta_item_1:337>, 
	[[<ore:plateTungstenSteel>, <gregtech:meta_item_1:336>, <ore:plateTungstenSteel>], 
	[<gregtech:meta_item_1:336>, <ore:circuitIv>, <gregtech:meta_item_1:336>], 
	[<ore:plateTungstenSteel>, <gregtech:meta_item_1:336>, <ore:plateTungstenSteel>]]);
// Солнечная панель (LuV)
recipes.addShaped(<gregtech:meta_item_1:338>, 
	[[<ore:plateRhodiumPlatedPalladium>, <gregtech:meta_item_1:337>, <ore:plateRhodiumPlatedPalladium>], 
	[<gregtech:meta_item_1:337>, <ore:circuitLuv>, <gregtech:meta_item_1:337>], 
	[<ore:plateRhodiumPlatedPalladium>, <gregtech:meta_item_1:337>, <ore:plateRhodiumPlatedPalladium>]]);
// Солнечная панель (ZMP)
recipes.addShaped(<gregtech:meta_item_1:339>, 
	[[<ore:plateNaquadahAlloy>, <gregtech:meta_item_1:338>, <ore:plateNaquadahAlloy>], 
	[<gregtech:meta_item_1:338>, <ore:circuitZpm>, <gregtech:meta_item_1:338>], 
	[<ore:plateNaquadahAlloy>, <gregtech:meta_item_1:338>, <ore:plateNaquadahAlloy>]]);
// Солнечная панель (UV)
recipes.addShaped(<gregtech:meta_item_1:340>, 
	[[<ore:plateDarmstadtium>, <gregtech:meta_item_1:339>, <ore:plateDarmstadtium>], 
	[<gregtech:meta_item_1:339>, <ore:circuitUv>, <gregtech:meta_item_1:339>], 
	[<ore:plateDarmstadtium>, <gregtech:meta_item_1:339>, <ore:plateDarmstadtium>]]);

// Новые крафты начальных схем на верстаке
// LV Схема
recipes.remove(<gregtech:meta_item_1:621>);
recipes.addShaped(<gregtech:meta_item_1:621>, 
	[[<gregtech:meta_item_1:519>, <ore:plateDamascusSteel>, <gregtech:meta_item_1:519>], 
	[<gregtech:meta_item_1:516>, <gregtech:meta_item_1:401>, <gregtech:meta_item_1:516>], 
	[<ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>, <ore:cableGtSingleRedAlloy>]]);
// MV Схема
recipes.remove(<gregtech:meta_item_1:622>);
recipes.addShaped(<gregtech:meta_item_1:622>, 
	[[<gregtech:meta_item_1:521>, <ore:plateDamascusSteel>, <gregtech:meta_item_1:521>], 
	[<gregtech:meta_item_1:621>, <gregtech:meta_item_1:402>, <gregtech:meta_item_1:621>], 
	[<ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>, <ore:wireGtSingleCopper>]]);

// Удаление крафтов дисков в верстаке
recipes.remove(<gregtech:meta_round:128>);
recipes.remove(<gregtech:meta_round:335>);
recipes.remove(<gregtech:meta_round:344>);
recipes.remove(<gregtech:meta_round:2520>);

// Редактирование крафтов с электротином
// Редстоун * 1
<recipemap:centrifuge>.findRecipe(30, [<metaitem:dustElectrotine> * 8], null).remove();
// Electrotine (Пыль) * 1
<recipemap:mixer>.findRecipe(7, [<minecraft:redstone:0>, <metaitem:dustElectrum>, <metaitem:circuit.integrated>.withTag({Configuration: 1})], null).remove();
// Крафт электротина
mixer.recipeBuilder()
    .inputs(<minecraft:redstone>, <ore:dustElectrum>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_dust:2507> * 2)
    .duration(10 * 20)
    .EUt(7)
    .buildAndRegister();
// Раскрафт электротина
centrifuge.recipeBuilder()
    .inputs(<ore:dustElectrotine> * 2)
    .outputs(<minecraft:redstone>, <gregtech:meta_dust:277>)
    .duration(40 * 20)
    .EUt(30)
    .buildAndRegister();

// Удаление раскрафта удобрения из грега
<recipemap:electrolyzer>.findRecipe(30, [<metaitem:fertilizer>], null).remove();

// Удаление неверного рецепта в разрушителе камня
<recipemap:rock_breaker>.findRecipe(240, [<minecraft:redstone:0>], null).remove();
// Удаление рецептов из разрушителя камня
<recipemap:rock_breaker>.findRecipe(960, [<gregtech:stone_smooth:1>], null).remove();
<recipemap:rock_breaker>.findRecipe(960, [<gregtech:stone_smooth:0>], null).remove();
<recipemap:rock_breaker>.findRecipe(240, [<gregtech:stone_smooth:3>], null).remove();
<recipemap:rock_breaker>.findRecipe(240, [<gregtech:stone_smooth:2>], null).remove();
<recipemap:rock_breaker>.findRecipe(60, [<minecraft:stone:5>], null).remove();
<recipemap:rock_breaker>.findRecipe(60, [<minecraft:stone:3>], null).remove();
<recipemap:rock_breaker>.findRecipe(60, [<minecraft:stone:1>], null).remove();

// Удаление кривых рецептов при смешивании пылек в верстаке
// Латунь
recipes.remove(<gregtech:meta_dust:259>);
// Кобальтовая латунь
recipes.remove(<gregtech:meta_dust:2014>);
// Бронза
recipes.remove(<gregtech:meta_dust:260>);

// Новые рецепты смешивания пылек в версткаке
// Латунь
recipes.addShaped(<gregtech:meta_dust:259> * 4, [[<ore:dustCopper>, <ore:dustCopper>], [<ore:dustCopper>, <ore:dustZinc>]]);
recipes.addShaped(<gregtech:meta_dust:259>, [[<ore:dustTinyBrass>, <ore:dustTinyBrass>, <ore:dustTinyBrass>], [<ore:dustTinyBrass>, <ore:dustTinyBrass>, <ore:dustTinyBrass>], [<ore:dustTinyBrass>, <ore:dustTinyBrass>, <ore:dustTinyBrass>]]);
recipes.addShaped(<gregtech:meta_dust:259>, [[<ore:dustSmallBrass>, <ore:dustSmallBrass>], [<ore:dustSmallBrass>, <ore:dustSmallBrass>]]);
recipes.addShaped(<gregtech:meta_dust:259>, [[<ore:ingotBrass>], [<ore:craftingToolMortar>]]);
// Кобальтовая латунь
recipes.addShaped(<gregtech:meta_dust:2014> * 9, [[<ore:dustBrass>, <ore:dustBrass>, <ore:dustBrass>], [<ore:dustBrass>, <ore:dustBrass>, <ore:dustBrass>], [<ore:dustBrass>, <ore:dustAluminium>, <ore:dustCobalt>]]);
recipes.addShaped(<gregtech:meta_dust:2014>, [[<ore:dustTinyCobaltBrass>, <ore:dustTinyCobaltBrass>, <ore:dustTinyCobaltBrass>], [<ore:dustTinyCobaltBrass>, <ore:dustTinyCobaltBrass>, <ore:dustTinyCobaltBrass>], [<ore:dustTinyCobaltBrass>, <ore:dustTinyCobaltBrass>, <ore:dustTinyCobaltBrass>]]);
recipes.addShaped(<gregtech:meta_dust:2014>, [[<ore:dustSmallCobaltBrass>, <ore:dustSmallCobaltBrass>], [<ore:dustSmallCobaltBrass>, <ore:dustSmallCobaltBrass>]]);
recipes.addShaped(<gregtech:meta_dust:2014>, [[<ore:ingotCobaltBrass>], [<ore:craftingToolMortar>]]);
// Бронза
recipes.addShaped(<gregtech:meta_dust:260> * 4, [[<ore:dustCopper>, <ore:dustCopper>], [<ore:dustCopper>, <ore:dustTin>]]);
recipes.addShaped(<gregtech:meta_dust:260>, [[<ore:dustTinyBronze>, <ore:dustTinyBronze>, <ore:dustTinyBronze>], [<ore:dustTinyBronze>, <ore:dustTinyBronze>, <ore:dustTinyBronze>], [<ore:dustTinyBronze>, <ore:dustTinyBronze>, <ore:dustTinyBronze>]]);
recipes.addShaped(<gregtech:meta_dust:260>, [[<ore:dustSmallBronze>, <ore:dustSmallBronze>], [<ore:dustSmallBronze>, <ore:dustSmallBronze>]]);
recipes.addShaped(<gregtech:meta_dust:260>, [[<ore:ingotBronze>], [<ore:craftingToolMortar>]]);

// Новые рецепт раскрафта светопыли
// Удаление старого рецепта
<recipemap:centrifuge>.findRecipe(80, [<minecraft:glowstone_dust:0>], null).remove();
// Новый рецепт
centrifuge.recipeBuilder()
    .inputs(<minecraft:glowstone_dust> * 4)
    .outputs(<gregtech:meta_dust:78> * 2, <gregtech:meta_dust:41>, <minecraft:redstone>)
    .duration(25 * 20)
    .EUt(80)
    .buildAndRegister();

// Новые рецепты с кварцевым песком и стеклом (Пыль)
// Удаление рецептов крафтов из верстака по названию
recipes.removeByRecipeName("gregtech:quartz_sand");
<recipemap:macerator>.findRecipe(2, [<minecraft:sand:0>], null).remove();
recipes.removeShapeless(<gregtech:meta_dust:2000>, [<gregtech:meta_dust:2023>, <gregtech:meta_dust_tiny:2049>]);
<recipemap:centrifuge>.findRecipe(30, [<metaitem:dustQuartzSand> * 2], null).remove();
<recipemap:mixer>.findRecipe(7, [<metaitem:dustSmallFlint>, <metaitem:dustQuartzSand> * 4], null).remove();
<recipemap:mixer>.findRecipe(7, [<metaitem:dustSmallFlint>, <metaitem:dustQuartzite> * 4], null).remove();

// Кварцит из кварцевого песка
centrifuge.recipeBuilder()
    .inputs(<gregtech:meta_dust:2023> * 2)
    .outputs(<gregtech:meta_dust:340>, <gregtech:meta_dust:2000>)
    .duration(5 * 20)
    .EUt(30)
    .buildAndRegister();

// Получение стекла (Пыль) в миксере
mixer.recipeBuilder()
    .inputs(<ore:dustQuartzite> * 4, <gregtech:meta_dust:2049>)
    .outputs(<gregtech:meta_dust:2000> * 5)
    .duration(5 * 20)
    .EUt(32)
    .buildAndRegister();

// Получение кварцевого песка в дробителе
macerator.recipeBuilder()
    .inputs(<ore:sand>)
    .outputs(<gregtech:meta_dust:2023>)
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();

// Получение кварцевого песка в верстаке из песка со ступкой
recipes.addShaped(<gregtech:meta_dust:2023>, 
	[[<ore:sand>], 
	[<ore:craftingToolMortarEmptyTag>]]);

// Получение стекла (Пыль) в печке из кварцевого песка
furnace.addRecipe(<gregtech:meta_dust:2000>, <gregtech:meta_dust:2023>);

// Получение стекла (Пыль) в верстаке
recipes.addShapeless(<gregtech:meta_dust:2000> * 5, 
	[<ore:dustQuartzite>, <ore:dustQuartzite>, <ore:dustQuartzite>, <ore:dustQuartzite>, <gregtech:meta_dust:2049>]);

// Редактирование крафта стекла в дуговой печи
<recipemap:arc_furnace>.findRecipe(30, [<minecraft:sand:0>], [<liquid:oxygen> * 20]).remove();
// Новый крафт
arc_furnace.recipeBuilder()
    .inputs(<ore:sand>)
    .fluidInputs([<liquid:oxygen> * 20])
    .outputs(<minecraft:glass>)
    .duration(1 * 20)
    .EUt(30)
    .buildAndRegister();

// Удаление получения обычного булыжника и гравия в кузнечном молоте
<recipemap:forge_hammer>.findRecipe(16, [<minecraft:stone:0>], null).remove();
<recipemap:forge_hammer>.findRecipe(16, [<minecraft:cobblestone:0>], null).remove();

// Удаление получения железа из красного песка.
<recipemap:centrifuge>.findRecipe(30, [<minecraft:sand:1>], null).remove();

// Удаление получения порошка глины в измельчителе из терракоты и керамики
<recipemap:macerator>.findRecipe(2, [<minecraft:hardened_clay:0>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:stained_hardened_clay:0>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:flower_pot:0>], null).remove();
<recipemap:centrifuge>.findRecipe(30, [<metaitem:dustBrick>], null).remove();

// Крафт пыли кирпича из терракоты и керамики
macerator.recipeBuilder()
    .inputs(<minecraft:hardened_clay>)
    .outputs(<gregtech:meta_dust:2524> * 4)
    .duration(4 * 20)
    .EUt(16)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<minecraft:stained_hardened_clay:*>)
    .outputs(<gregtech:meta_dust:2524> * 4)
    .duration(4 * 20)
    .EUt(16)
    .buildAndRegister();

// Переработка кусочков руд из ТФК
// Малахит
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/malachite>)
    .outputs(<gregtech:meta_dust_tiny:385>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/malachite:1>)
    .outputs(<gregtech:meta_dust_tiny:385>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/malachite>)
    .outputs(<gregtech:meta_dust_small:385>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/malachite:2>)
    .outputs(<gregtech:meta_dust_small:385>, <gregtech:meta_dust_tiny:385>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Медь
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/native_copper>)
    .outputs(<gregtech:meta_dust_tiny:25>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_copper:1>)
    .outputs(<gregtech:meta_dust_tiny:25>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_copper>)
    .outputs(<gregtech:meta_dust_small:25>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_copper:2>)
    .outputs(<gregtech:meta_dust_small:25>, <gregtech:meta_dust_tiny:25>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Тетраэдрит
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/tetrahedrite>)
    .outputs(<gregtech:meta_dust_tiny:327>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/tetrahedrite:1>)
    .outputs(<gregtech:meta_dust_tiny:327>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/tetrahedrite>)
    .outputs(<gregtech:meta_dust_small:327>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/tetrahedrite:2>)
    .outputs(<gregtech:meta_dust_small:327>, <gregtech:meta_dust_tiny:327>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Золото
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/native_gold>)
    .outputs(<gregtech:meta_dust_tiny:41>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_gold:1>)
    .outputs(<gregtech:meta_dust_tiny:41>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_gold>)
    .outputs(<gregtech:meta_dust_small:41>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_gold:2>)
    .outputs(<gregtech:meta_dust_small:41>, <gregtech:meta_dust_tiny:41>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Платина
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/native_platinum>)
    .outputs(<gregtech:meta_dust_tiny:80>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_platinum:1>)
    .outputs(<gregtech:meta_dust_tiny:80>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_platinum>)
    .outputs(<gregtech:meta_dust_small:80>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_platinum:2>)
    .outputs(<gregtech:meta_dust_small:80>, <gregtech:meta_dust_tiny:80>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Гематит
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/hematite>)
    .outputs(<gregtech:meta_dust_tiny:51>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/hematite:1>)
    .outputs(<gregtech:meta_dust_tiny:51>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/hematite>)
    .outputs(<gregtech:meta_dust_small:51>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/hematite:2>)
    .outputs(<gregtech:meta_dust_small:51>, <gregtech:meta_dust_tiny:51>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Серебро
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/native_silver>)
    .outputs(<gregtech:meta_dust_tiny:100>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_silver:1>)
    .outputs(<gregtech:meta_dust_tiny:100>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_silver>)
    .outputs(<gregtech:meta_dust_small:100>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/native_silver:2>)
    .outputs(<gregtech:meta_dust_small:100>, <gregtech:meta_dust_tiny:100>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Касситерит
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/cassiterite>)
    .outputs(<gregtech:meta_dust_tiny:263>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/cassiterite:1>)
    .outputs(<gregtech:meta_dust_tiny:263>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/cassiterite>)
    .outputs(<gregtech:meta_dust_small:263>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/cassiterite:2>)
    .outputs(<gregtech:meta_dust_small:263>, <gregtech:meta_dust_tiny:263>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Галена
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/galena>)
    .outputs(<gregtech:meta_dust_tiny:279>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/galena:1>)
    .outputs(<gregtech:meta_dust_tiny:279>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/galena>)
    .outputs(<gregtech:meta_dust_small:279>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/galena:2>)
    .outputs(<gregtech:meta_dust_small:279>, <gregtech:meta_dust_tiny:279>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Висмут
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/bismuthinite>)
    .outputs(<gregtech:meta_dust_tiny:11>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/bismuthinite:1>)
    .outputs(<gregtech:meta_dust_tiny:11>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/bismuthinite>)
    .outputs(<gregtech:meta_dust_small:11>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/bismuthinite:2>)
    .outputs(<gregtech:meta_dust_small:11>, <gregtech:meta_dust_tiny:11>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Гарниерит
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/garnierite>)
    .outputs(<gregtech:meta_dust_tiny:280>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/garnierite:1>)
    .outputs(<gregtech:meta_dust_tiny:280>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/garnierite>)
    .outputs(<gregtech:meta_dust_small:280>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/garnierite:2>)
    .outputs(<gregtech:meta_dust_small:280>, <gregtech:meta_dust_tiny:280>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Магнетит
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/magnetite>)
    .outputs(<gregtech:meta_dust_tiny:292>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/magnetite:1>)
    .outputs(<gregtech:meta_dust_tiny:292>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/magnetite>)
    .outputs(<gregtech:meta_dust_small:292>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/magnetite:2>)
    .outputs(<gregtech:meta_dust_small:292>, <gregtech:meta_dust_tiny:292>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Лимонит
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/limonite>)
    .outputs(<gregtech:meta_dust_tiny:337>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/limonite:1>)
    .outputs(<gregtech:meta_dust_tiny:337>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/limonite>)
    .outputs(<gregtech:meta_dust_small:337>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/limonite:2>)
    .outputs(<gregtech:meta_dust_small:337>, <gregtech:meta_dust_tiny:337>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Сфалерит
macerator.recipeBuilder()
    .inputs(<tfc:ore/small/sphalerite>)
    .outputs(<gregtech:meta_dust_tiny:322>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/sphalerite:1>)
    .outputs(<gregtech:meta_dust_tiny:322>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/sphalerite>)
    .outputs(<gregtech:meta_dust_small:322>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
macerator.recipeBuilder()
    .inputs(<tfc:ore/sphalerite:2>)
    .outputs(<gregtech:meta_dust_small:322>, <gregtech:meta_dust_tiny:322>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Киноварь
macerator.recipeBuilder()
    .inputs(<tfc:ore/cinnabar>)
    .outputs(<gregtech:meta_dust:268>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();
// Лазурит
macerator.recipeBuilder()
    .inputs(<tfc:ore/lapis_lazuli>)
    .outputs(<gregtech:meta_dust:2007>)
    .duration(3 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка кварцитовой руды
macerator.recipeBuilder()
    .inputs(<gregtech:ore_quartzite_0>)
    .outputs(<gregtech:meta_crushed:340> * 4)
    .chancedOutput(<gregtech:meta_gem:214>, 1400, 850)
    .duration(20 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка лигнита
macerator.recipeBuilder()
    .inputs(<tfc:ore/lignite>)
    .outputs(<gregtech:meta_dust:271>)
    .duration(0.6 * 20)
    .EUt(2)
    .buildAndRegister();

// Переработка битумного угля
macerator.recipeBuilder()
    .inputs(<tfc:ore/bituminous_coal>)
    .outputs(<gregtech:meta_dust:271>)
    .duration(0.6 * 20)
    .EUt(2)
    .buildAndRegister();

// Удаление переработки некоторых камней из грега
<recipemap:macerator>.findRecipe(2, [<minecraft:stone:1>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:stone:3>], null).remove();
<recipemap:macerator>.findRecipe(2, [<gregtech:stone_smooth:3>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:stone:5>], null).remove();
<recipemap:macerator>.findRecipe(2, [<gregtech:stone_smooth:2>], null).remove();

// Удаление крафта ферментированной биомассы в пиролизной печке
<recipemap:pyrolyse_oven>.findRecipe(10, [<metaitem:bio_chaff>, <metaitem:circuit.integrated>.withTag({Configuration: 2})], [<liquid:water> * 1500]).remove();

// Удаление некоторых крафтов получения комка биомассы
<recipemap:centrifuge>.findRecipe(30, [<minecraft:grass:0>], null).remove();
<recipemap:centrifuge>.findRecipe(30, [<minecraft:dirt:0>], null).remove();
<recipemap:compressor>.findRecipe(2, [<minecraft:cactus:0> * 8], null).remove();
<recipemap:compressor>.findRecipe(2, [<minecraft:wheat:0> * 8], null).remove();
<recipemap:compressor>.findRecipe(2, [<minecraft:beetroot:0> * 8], null).remove();
<recipemap:compressor>.findRecipe(2, [<minecraft:potato:0> * 8], null).remove();
<recipemap:compressor>.findRecipe(2, [<minecraft:carrot:0> * 8], null).remove();

// Новые крафты биомассы
compressor.recipeBuilder()
    .inputs(<tfc:straw> * 8)
    .outputs(<gregtech:meta_item_1:439>)
    .duration(15 * 20)
    .EUt(2)
    .buildAndRegister();

// Деревянная доска
<recipemap:compressor>.findRecipe(2, [<metaitem:dustWood>], null).remove();
assembler.recipeBuilder()
    .inputs(<ore:dustWood>)
    .fluidInputs([<liquid:water> * 50])
    .notConsumable(<gregtech:meta_item_1:12>)
    .outputs(<gregtech:meta_plate:1617>)
    .duration(3 * 20)
    .EUt(8)
    .buildAndRegister();

// Удаления крафта с древесными опилками в экстракторе
<recipemap:extractor>.findRecipe(4, [<metaitem:dustWood>], null).remove();

// Удаление крафта удобрения в смесителе
<recipemap:mixer>.findRecipe(30, [<minecraft:dirt:0>, <metaitem:dustWood> * 2, <minecraft:sand:0> * 4], [<liquid:water> * 1000]).remove();

// Редактирование крафтов получения фарша из мяса и рыбы + новые рецепты
// Удаление старых рецептов
<recipemap:macerator>.findRecipe(2, [<minecraft:beef:0>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:porkchop:0>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:rabbit:0>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:fish:0>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:mutton:0>], null).remove();
<recipemap:macerator>.findRecipe(2, [<minecraft:chicken:0>], null).remove();

// Рыба
centrifuge.recipeBuilder()
    .inputs(<minecraft:fish:*>)
    .fluidInputs([<liquid:water> * 100])
    .outputs(<gregtech:meta_dust_small:1616> * 2, <gregtech:meta_dust:1616>, <gregtech:meta_dust_tiny:258>)
    .duration(10 * 20)
    .EUt(8)
    .buildAndRegister();
// Мясо из ТФК
centrifuge.recipeBuilder()
    .inputs(<ore:categoryMeat>)
    .fluidInputs([<liquid:water> * 100])
    .outputs(<gregtech:meta_dust_small:1616> * 2, <gregtech:meta_dust:1616>, <gregtech:meta_dust_tiny:258>)
    .duration(10 * 20)
    .EUt(8)
    .buildAndRegister();

// Крафт буры
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustFlux> * 4)
    .outputs(<metaitem:dustBorax>)
    .duration(15 * 20)
    .EUt(16)
    .buildAndRegister();

// Рецепты в дробителе
// Селитра из песчаника
macerator.recipeBuilder()
    .inputs(<ore:sandstone>)
    .outputs(<minecraft:sand> * 2)
    .chancedOutput(<gregtech:meta_dust:313>, 3000, 500)
    .duration(7.5 * 20)
    .EUt(8)
    .buildAndRegister();

// Рецепты в гибочном станке
// Резиновая пластина
bender.recipeBuilder()
    .inputs(<gregtech:meta_ingot:1068>)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<gregtech:meta_plate:1068>)
    .duration(1 * 20)
    .EUt(24)
    .buildAndRegister();

// Индий (Маленькая кучка пыли) * 1
<recipemap:chemical_reactor>.findRecipe(600, [<metaitem:dustAluminium> * 4], [<liquid:indium_concentrate> * 1000]).remove();
// Новый крафт пыли индия
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustAluminium> * 16)
    .fluidInputs([<liquid:indium_concentrate> * 4000])
    .outputs(<gregtech:meta_dust:48>, <gregtech:meta_dust:317> * 16)
    .fluidOutputs([<liquid:lead_zinc_solution> * 4000])
    .duration(120 * 20)
    .EUt(512)
    .buildAndRegister();

// Удаление старого крафта нано-брони из верстака по названию
recipes.removeByRecipeName("gregtech:nano_helmet");
recipes.removeByRecipeName("gregtech:nano_chestplate");
recipes.removeByRecipeName("gregtech:nano_leggings");
recipes.removeByRecipeName("gregtech:nano_boots");
recipes.removeByRecipeName("gregtech:nano_chestplate_advanced");
// Новый крафт нано-брони
// Шлем
assembler.recipeBuilder()
    	.inputs(<gregtech:meta_item_1:501> * 5, <ore:circuitHv> * 2, <gregtech:meta_item_1:741>, <gregtech:gt_armor:1>.withTag({}))
	.notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    	.outputs(<gregtech:gt_armor:20>.withTag({}))
    	.duration(35 * 20)
	.EUt(128)
	.buildAndRegister();
// Нагрудник
assembler.recipeBuilder()
    	.inputs(<gregtech:meta_item_1:501> * 8, <ore:circuitHv> * 2, <gregtech:meta_item_1:741>)
	.notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 2}))
    	.outputs(<gregtech:gt_armor:21>)
    	.duration(35 * 20)
	.EUt(128)
	.buildAndRegister();
// Штаны
assembler.recipeBuilder()
    	.inputs(<gregtech:meta_item_1:501> * 7, <ore:circuitHv> * 2, <gregtech:meta_item_1:741>)
	.notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 3}))
    	.outputs(<gregtech:gt_armor:22>)
    	.duration(35 * 20)
	.EUt(128)
	.buildAndRegister();
// Ботинки
assembler.recipeBuilder()
    	.inputs(<gregtech:meta_item_1:501> * 4, <ore:circuitHv> * 2, <gregtech:meta_item_1:741>)
	.notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 4}))
    	.outputs(<gregtech:gt_armor:23>)
    	.duration(35 * 20)
	.EUt(128)
	.buildAndRegister();
// Продвинутый нагрудник
assembler.recipeBuilder()
    	.inputs(<ore:wireGtDoublePlatinum> * 4, <gregtech:meta_item_1:603> * 2, <gregtech:gt_armor:4>, <gregtech:gt_armor:21>, <ore:circuitIv>)
    	.outputs(<gregtech:gt_armor:30>.withTag({}))
    	.duration(50 * 20)
	.EUt(128)
	.buildAndRegister();

// Крафт нано-очков
recipes.removeByRecipeName("gregtech:nightvision_goggles");
assembler.recipeBuilder()
    	.inputs(<ore:circuitHv> * 2, <ore:ringRubber> * 2, <ore:craftingLensWhite> * 2, <gregtech:meta_item_1:732>, <ore:screwSteel>)
    	.outputs(<gregtech:gt_armor:1>.withTag({}))
    	.duration(20 * 20)
	.EUt(32)
	.buildAndRegister();

// Шоколадная монета
recipes.remove(<gregtech:meta_item_1:10>);
mixer.recipeBuilder()
    .inputs(<ore:dustCocoa>, <minecraft:sugar>, <ore:foilGold>)
    .fluidInputs([<liquid:milk> * 100])
    .outputs(<gregtech:meta_item_1:10>)
    .duration(10 * 20)
    .EUt(8)
    .buildAndRegister();

// Удаление старых рецептов в детонационном компрессоре
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustNetherStar> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustNetherStar> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustSpessartine> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustAlmandine> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustApatite> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustRealgar> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustQuartzite> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustAmethyst> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustMonazite> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustOlivine> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustRuby> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGlass> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustRockSalt> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustEnderPearl> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGrossular> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustBlueTopaz> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGarnetYellow> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<minecraft:sugar:0> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustAndradite> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustSodalite> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustMalachite> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustLapis> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustOpal> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustCinnabar> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustSapphire> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustLazurite> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustSalt> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustUvarovite> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustRutile> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustPyrope> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustFlint> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustCertusQuartz> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustEnderEye> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustTopaz> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustNetherQuartz> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustDiamond> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGreenSapphire> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustEmerald> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGarnetRed> * 4, <minecraft:tnt:0> * 2], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustAmethyst> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustMonazite> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustOlivine> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustRuby> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGlass> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustRockSalt> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustEnderPearl> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGrossular> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustBlueTopaz> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGarnetYellow> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<minecraft:sugar:0> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustAndradite> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustSodalite> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustMalachite> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustLapis> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustOpal> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustCinnabar> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustSapphire> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustLazurite> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustSalt> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustUvarovite> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustRutile> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustPyrope> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustFlint> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustCertusQuartz> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustEnderEye> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustTopaz> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustNetherQuartz> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustDiamond> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGreenSapphire> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustEmerald> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustGarnetRed> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustSpessartine> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustAlmandine> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustApatite> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustRealgar> * 4, <metaitem:dynamite>], null).remove();
<recipemap:implosion_compressor>.findRecipe(30, [<metaitem:dustQuartzite> * 4, <metaitem:dynamite>], null).remove();

// Добавление новых рецептов в детонационный компрессор
// Звезда из Незера
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustNetherStar> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<minecraft:nether_star> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Спасерит
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustSpessartine> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:321> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Альмандин
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustAlmandine> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:250> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Реальгар
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustRealgar> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:365> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Аметист
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustAmethyst> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:2006> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Оливин
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustOlivine> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:2004> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Рубин
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustRuby> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:311> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Стеклянный кристалл
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustGlass> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:2000> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Сахар
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustSugar> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:1017> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Гроссуляр
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustGrossular> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:282> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Топаз
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustTopaz> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:329> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Синий топаз
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustBlueTopaz> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:257> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Андрадит
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustAndradite> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:251> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Желтый гранат
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustGarnetYellow> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:2017> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Красный гранат
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustGarnetRed> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:2016> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Малахит
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustMalachite> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:385> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Опал
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustOpal> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:2005> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Сапфир
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustSapphire> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:314> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Зеленый сапфир
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustGreenSapphire> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:281> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Уваровит
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustUvarovite> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:333> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Рутил
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustRutile> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:285> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Пироп
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustPyrope> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<gregtech:meta_gem:308> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Алмаз
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustDiamond> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<minecraft:diamond> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Изумруд
implosion_compressor.recipeBuilder()
    .inputs(<ore:dustEmerald> * 4)
    .property("explosives", <minecraft:tnt> * 2)
    .outputs(<minecraft:emerald> * 2, <gregtech:meta_dust:275>)
    .duration(1 * 20)
    .EUt(32)
    .buildAndRegister();

// Рецепты в химическом реакторе
// Эндер-жемчуг
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustEnderPearl> * 2)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<minecraft:ender_pearl>)
    .duration(25 * 20)
    .EUt(64)
    .buildAndRegister();

// Око края
chemical_reactor.recipeBuilder()
    .inputs(<ore:dustEnderEye> * 2)
    .fluidInputs([<liquid:water> * 1000])
    .outputs(<minecraft:ender_eye>)
    .duration(25 * 20)
    .EUt(64)
    .buildAndRegister();

// Удаление резиновой планки из плавителя
// Резиновая планка * 1
<recipemap:alloy_smelter>.findRecipe(7, [<metaitem:dustSulfur>, <metaitem:dustRawRubber> * 3], null).remove();

// Крафты с плавильне
// Резиновая масса
alloy_smelter.recipeBuilder()
    .inputs(<ore:dustRawRubber> * 3, <ore:dustSulfur>)
    .outputs(<gregtech:meta_dust:1068>)
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();

// Резиновая планка
alloy_smelter.recipeBuilder()
    .inputs(<ore:dustRubber>)
    .notConsumable(<gregtech:meta_item_1:16>)
    .outputs(<gregtech:meta_ingot:1068>)
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();

// Удаление старого рецепта целлюлозы
recipes.removeByRecipeName("gregtech:paper_dust");
// Новый рецепт целлюлозы
recipes.addShaped(<gregtech:meta_dust:1618> * 2,
	[[<tfc:food/sugarcane>, <tfc:food/sugarcane>, <tfc:food/sugarcane>],
	[null, <ore:craftingToolMortarEmptyTag>, null]]);
chemical_reactor.recipeBuilder()
    .circuit(1)
    .inputs(<tfc:food/sugarcane>)
    .fluidInputs([<liquid:water> * 100])
    .outputs(<gregtech:meta_dust:1618>)
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();

// Получение метана из гнилой плоти и мяса
chemical_reactor.recipeBuilder()
    .circuit(1)
    .inputs(<minecraft:rotten_flesh> | <ore:categoryMeat> | <ore:categoryCookedMeat>)
    .fluidInputs([<liquid:water> * 500])
    .fluidOutputs([<liquid:methane> * 1000])
    .duration(25 * 20)
    .EUt(24)
    .buildAndRegister();

// Удаление раскрафтов ускорителей мира
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:world_accelerator.lv>], [<liquid:oxygen> * 279]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:world_accelerator.lv>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:world_accelerator.mv>], [<liquid:oxygen> * 254]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:world_accelerator.mv>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:world_accelerator.hv>], [<liquid:oxygen> * 357]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:world_accelerator.hv>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:world_accelerator.ev>], [<liquid:oxygen> * 474]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:world_accelerator.ev>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:world_accelerator.iv>], [<liquid:oxygen> * 568]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:world_accelerator.iv>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:world_accelerator.luv>], [<liquid:oxygen> * 179]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:world_accelerator.luv>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:world_accelerator.zpm>], [<liquid:oxygen> * 449]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:world_accelerator.zpm>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:world_accelerator.uv>], [<liquid:oxygen> * 335]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:world_accelerator.uv>], null).remove();

// Получение пылек железа в обычной печке из других видов материалов
furnace.addRecipe(<gregtech:meta_dust_tiny:51> * 3, <ore:dustMagnetite>);
furnace.addRecipe(<gregtech:meta_dust_tiny:51> * 3, <ore:dustPyrite>);
furnace.addRecipe(<gregtech:meta_dust_small:51>, <ore:dustYellowLimonite>);
furnace.addRecipe(<gregtech:meta_dust_small:51>, <ore:dustBrownLimonite>);
furnace.addRecipe(<gregtech:meta_dust_tiny:51> * 3, <ore:dustBandedIron>);

// Получение шамотной глины в печке
furnace.addRecipe(<gregtech:meta_item_1:352>, <gregtech:meta_item_1:351>);

// Удаление переработки некоторых инструментов из грега
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadHammerWroughtIron>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadHammerWroughtIron>], [<liquid:oxygen> * 56]).remove();
<recipemap:macerator>.findRecipe(2, [<metaitem:toolHeadHammerWroughtIron>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadHammerSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadHammerSteel>], [<liquid:oxygen> * 56]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadHammerSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadHammerBismuthBronze>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadHammerBismuthBronze>], [<liquid:oxygen> * 92]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadHammerBismuthBronze>], null).remove();
<recipemap:extractor>.findRecipe(480, [<metaitem:toolHeadHammerBlackBronze>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadHammerBlackBronze>], [<liquid:oxygen> * 98]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:toolHeadHammerBlackBronze>], null).remove();
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadHammerBronze>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadHammerBronze>], [<liquid:oxygen> * 76]).remove();
<recipemap:macerator>.findRecipe(2, [<metaitem:toolHeadHammerBronze>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadHammerBlackSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadHammerBlackSteel>], [<liquid:oxygen> * 64]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadHammerBlackSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadHammerBlueSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadHammerBlueSteel>], [<liquid:oxygen> * 75]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadHammerBlueSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadHammerRedSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadHammerRedSteel>], [<liquid:oxygen> * 69]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadHammerRedSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadFileBismuthBronze>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadFileBismuthBronze>], [<liquid:oxygen> * 92]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadFileBismuthBronze>], null).remove();
<recipemap:extractor>.findRecipe(480, [<metaitem:toolHeadFileBlackBronze>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadFileBlackBronze>], [<liquid:oxygen> * 98]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:toolHeadFileBlackBronze>], null).remove();
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadFileBronze>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadFileBronze>], [<liquid:oxygen> * 76]).remove();
<recipemap:macerator>.findRecipe(2, [<metaitem:toolHeadFileBronze>], null).remove();
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadFileWroughtIron>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadFileWroughtIron>], [<liquid:oxygen> * 56]).remove();
<recipemap:macerator>.findRecipe(2, [<metaitem:toolHeadFileWroughtIron>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadFileSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadFileSteel>], [<liquid:oxygen> * 56]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadFileSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadFileBlackSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadFileBlackSteel>], [<liquid:oxygen> * 64]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadFileBlackSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadFileBlueSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadFileBlueSteel>], [<liquid:oxygen> * 75]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadFileBlueSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadFileRedSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadFileRedSteel>], [<liquid:oxygen> * 69]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadFileRedSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadSawBismuthBronze>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadSawBismuthBronze>], [<liquid:oxygen> * 92]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadSawBismuthBronze>], null).remove();
<recipemap:extractor>.findRecipe(480, [<metaitem:toolHeadSawBlackBronze>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadSawBlackBronze>], [<liquid:oxygen> * 98]).remove();
<recipemap:macerator>.findRecipe(32, [<metaitem:toolHeadSawBlackBronze>], null).remove();
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadSawBronze>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadSawBronze>], [<liquid:oxygen> * 76]).remove();
<recipemap:macerator>.findRecipe(2, [<metaitem:toolHeadSawBronze>], null).remove();
<recipemap:extractor>.findRecipe(30, [<metaitem:toolHeadSawWroughtIron>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadSawWroughtIron>], [<liquid:oxygen> * 56]).remove();
<recipemap:macerator>.findRecipe(2, [<metaitem:toolHeadSawWroughtIron>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadSawSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadSawSteel>], [<liquid:oxygen> * 56]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadSawSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadSawBlackSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadSawBlackSteel>], [<liquid:oxygen> * 64]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadSawBlackSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadSawBlueSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadSawBlueSteel>], [<liquid:oxygen> * 75]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadSawBlueSteel>], null).remove();
<recipemap:extractor>.findRecipe(120, [<metaitem:toolHeadSawRedSteel>], null).remove();
<recipemap:arc_furnace>.findRecipe(30, [<metaitem:toolHeadSawRedSteel>], [<liquid:oxygen> * 69]).remove();
<recipemap:macerator>.findRecipe(8, [<metaitem:toolHeadSawRedSteel>], null).remove();

// Крафты в верстаке
// Крафт парового измельчителя
recipes.remove(<gregtech:machine:9>);
recipes.addShaped(<gregtech:machine:9>, 
	[[<ore:gemDiamond>, <ore:pipeSmallFluidBronze>, <ore:gemDiamond>], 
	[<ore:plateBronze>, <appliedenergistics2:grindstone>, <ore:plateBronze>], 
	[<minecraft:piston>, <ore:pipeSmallFluidBronze>, <minecraft:piston>]]);

// Удаление крафта обработанных досок из грега из верстака
recipes.remove(<gregtech:planks:1>);

// Переработка более крупных алмазов в более простые с помощью напильника
recipes.addShapeless(<gregtech:meta_gem_flawless:276>, 
	[<ore:craftingToolFileEmptyTag>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless(<minecraft:diamond>, 
	[<ore:craftingToolFileEmptyTag>, <ore:gemFlawlessDiamond>]);

// Новые крафты ускорителей мира
recipes.remove(<gregtech:machine:1390>);
recipes.remove(<gregtech:machine:1391>);
recipes.remove(<gregtech:machine:1392>);
recipes.remove(<gregtech:machine:1393>);
recipes.remove(<gregtech:machine:1394>);
recipes.remove(<gregtech:machine:1395>);
recipes.remove(<gregtech:machine:1396>);
recipes.remove(<gregtech:machine:1397>);
// Ускоритель мира 1
recipes.addShaped(<gregtech:machine:1390>, 
	[[<gregtech:meta_item_1:202>, <gregtech:meta_item_1:232>, <gregtech:meta_item_1:202>], 
	[<gregtech:meta_item_1:217>, <gregtech:machine:2055>, <gregtech:meta_item_1:217>], 
	[<gregtech:meta_item_1:202>, <gregtech:meta_item_1:232>, <gregtech:meta_item_1:202>]]);

// Ускоритель мира 2
recipes.addShaped(<gregtech:machine:1391>, 
	[[<gregtech:meta_item_1:203>, <gregtech:meta_item_1:233>, <gregtech:meta_item_1:203>], 
	[<gregtech:meta_item_1:218>, <gregtech:machine:1390>, <gregtech:meta_item_1:218>], 
	[<gregtech:meta_item_1:203>, <gregtech:meta_item_1:233>, <gregtech:meta_item_1:203>]]);

// Ускоритель мира 3
recipes.addShaped(<gregtech:machine:1392>, 
	[[<gregtech:meta_item_1:204>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:204>], 
	[<gregtech:meta_item_1:219>, <gregtech:machine:1391>, <gregtech:meta_item_1:219>], 
	[<gregtech:meta_item_1:204>, <gregtech:meta_item_1:234>, <gregtech:meta_item_1:204>]]);

// Ускоритель мира 4
recipes.addShaped(<gregtech:machine:1393>, 
	[[<gregtech:meta_item_1:205>, <gregtech:meta_item_1:235>, <gregtech:meta_item_1:205>], 
	[<gregtech:meta_item_1:220>, <gregtech:machine:1392>, <gregtech:meta_item_1:220>], 
	[<gregtech:meta_item_1:205>, <gregtech:meta_item_1:235>, <gregtech:meta_item_1:205>]]);

// Ускоритель мира 5
recipes.addShaped(<gregtech:machine:1394>, 
	[[<gregtech:meta_item_1:206>, <gregtech:meta_item_1:236>, <gregtech:meta_item_1:206>], 
	[<gregtech:meta_item_1:221>, <gregtech:machine:1393>, <gregtech:meta_item_1:221>], 
	[<gregtech:meta_item_1:206>, <gregtech:meta_item_1:236>, <gregtech:meta_item_1:206>]]);

// Ускоритель мира 6
recipes.addShaped(<gregtech:machine:1395>, 
	[[<gregtech:meta_item_1:207>, <gregtech:meta_item_1:237>, <gregtech:meta_item_1:207>], 
	[<gregtech:meta_item_1:222>, <gregtech:machine:1394>, <gregtech:meta_item_1:222>], 
	[<gregtech:meta_item_1:207>, <gregtech:meta_item_1:237>, <gregtech:meta_item_1:207>]]);

// Ускоритель мира 7
recipes.addShaped(<gregtech:machine:1396>, 
	[[<gregtech:meta_item_1:208>, <gregtech:meta_item_1:238>, <gregtech:meta_item_1:208>], 
	[<gregtech:meta_item_1:223>, <gregtech:machine:1395>, <gregtech:meta_item_1:223>], 
	[<gregtech:meta_item_1:208>, <gregtech:meta_item_1:238>, <gregtech:meta_item_1:208>]]);

// Ускоритель мира 8
recipes.addShaped(<gregtech:machine:1397>, 
	[[<gregtech:meta_item_1:209>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:209>], 
	[<gregtech:meta_item_1:224>, <gregtech:machine:1396>, <gregtech:meta_item_1:224>], 
	[<gregtech:meta_item_1:209>, <gregtech:meta_item_1:239>, <gregtech:meta_item_1:209>]]);

// Удаление самого большого майнера (возможно временно)
<recipemap:assembler>.findRecipe(30720, [<metaitem:hull.luv>, <metaitem:frameHsss> * 4, <metaitem:circuit.nano_mainframe> * 4, <metaitem:electric.motor.luv> * 4, <metaitem:electric.pump.luv> * 4, <metaitem:conveyor.module.luv> * 4, <metaitem:gearRuridit> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 2})], null).remove();


print("Initialized 'GregTech'");