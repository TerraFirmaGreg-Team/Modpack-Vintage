import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

// Удаление рецептов + скрытие
val RemoveItemsFromJEI as IItemStack[] = [
	<appliedenergistics2:material:46>,
	<appliedenergistics2:material:2>,
	<appliedenergistics2:material:49>,
	<appliedenergistics2:material:51>,
	<appliedenergistics2:material:3>,
	<appliedenergistics2:smooth_sky_stone_block>,
	<appliedenergistics2:sky_stone_block>,
	<appliedenergistics2:smooth_sky_stone_slab>,
	<appliedenergistics2:sky_stone_brick_slab>,
	<appliedenergistics2:sky_stone_small_brick_slab>,
	<appliedenergistics2:creative_storage_cell>,
	<appliedenergistics2:encoded_pattern>,
	<appliedenergistics2:material:45>,
	<appliedenergistics2:creative_energy_cell>,
	<appliedenergistics2:sky_stone_slab>,
	<appliedenergistics2:sky_stone_small_brick_stairs>,
	<appliedenergistics2:sky_stone_brick_stairs>,
	<appliedenergistics2:smooth_sky_stone_stairs>,
	<appliedenergistics2:sky_stone_stairs>,
	<appliedenergistics2:sky_stone_small_brick>,
	<appliedenergistics2:sky_stone_brick>,
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

// Удаление рецептов
val RemoveItemRecipes as IItemStack[] = [
	//Блоки
	<appliedenergistics2:fluix_block>,
	<appliedenergistics2:quartz_block>,
	<appliedenergistics2:chiseled_quartz_block>,
	<appliedenergistics2:controller>,
	<appliedenergistics2:energy_cell>,
	<appliedenergistics2:dense_energy_cell>,
	<appliedenergistics2:chest>,
	<appliedenergistics2:drive>,
	<appliedenergistics2:crafting_unit>,
	<appliedenergistics2:crafting_accelerator>,
	<appliedenergistics2:molecular_assembler>,
	<appliedenergistics2:quantum_ring>,
	<appliedenergistics2:quantum_link>,
	<appliedenergistics2:spatial_pylon>,
	<appliedenergistics2:spatial_io_port>,
	<appliedenergistics2:cell_workbench>,
	<appliedenergistics2:io_port>,
	<appliedenergistics2:condenser>,
	<appliedenergistics2:energy_acceptor>,
	<appliedenergistics2:security_station>,
	//Предметы
	<appliedenergistics2:part:140>,
	<appliedenergistics2:material:7>,
	<appliedenergistics2:material:12>,
	<appliedenergistics2:material:9>,
	<appliedenergistics2:material:44>,
	<appliedenergistics2:material:43>,
	<appliedenergistics2:part:180>,
	<appliedenergistics2:part:380>,
	<appliedenergistics2:part:360>,
	<appliedenergistics2:part:480>,
	<appliedenergistics2:part:340>,
	<appliedenergistics2:wireless_terminal>,
	<appliedenergistics2:quartz_glass>,
	<appliedenergistics2:quartz_vibrant_glass>,
	<appliedenergistics2:quartz_fixture>,
	<appliedenergistics2:light_detector>,
	<appliedenergistics2:material:28>,
	<appliedenergistics2:material:52>,
	<appliedenergistics2:material:25>,
	<appliedenergistics2:material:52>,
	<appliedenergistics2:material:27>,
	<appliedenergistics2:material:53>,
	<appliedenergistics2:material:26>,
	<appliedenergistics2:material:29>,
	<appliedenergistics2:material:31>,
	<appliedenergistics2:material:30>,
	<appliedenergistics2:material:42>,
	<appliedenergistics2:part:300>,
	<appliedenergistics2:part:120>,
	<appliedenergistics2:part:260>,
	<appliedenergistics2:part:320>,
	<appliedenergistics2:part:240>,
	<appliedenergistics2:part:460>,
	<appliedenergistics2:part:180>,
	<appliedenergistics2:part:80>,
	<appliedenergistics2:matter_cannon>,
	<appliedenergistics2:memory_card>,
	<appliedenergistics2:entropy_manipulator>,
	<appliedenergistics2:color_applicator>,
	<appliedenergistics2:biometric_card>,
	<appliedenergistics2:part:221>,
	<appliedenergistics2:part:241>,
	<appliedenergistics2:part:261>,
	<appliedenergistics2:part:281>,
	<appliedenergistics2:part:302>,
	<appliedenergistics2:part:321>,
	<appliedenergistics2:part:441>,
	<appliedenergistics2:part:463>,
	<appliedenergistics2:part:520>,
	//Ячейки
	<appliedenergistics2:storage_cell_1k>,
	<appliedenergistics2:storage_cell_4k>,
	<appliedenergistics2:storage_cell_16k>,
	<appliedenergistics2:storage_cell_64k>,
	<appliedenergistics2:material:39>,
	<appliedenergistics2:material:35>,
	<appliedenergistics2:material:36>,
	<appliedenergistics2:material:37>,
	<appliedenergistics2:material:38>,
	<appliedenergistics2:spatial_storage_cell_2_cubed>,
	<appliedenergistics2:spatial_storage_cell_16_cubed>,
	<appliedenergistics2:spatial_storage_cell_128_cubed>,
	<appliedenergistics2:view_cell>,
	<appliedenergistics2:material:32>,
	<appliedenergistics2:material:33>,
	<appliedenergistics2:material:34>,
	<appliedenergistics2:fluid_storage_cell_1k>,
	<appliedenergistics2:fluid_storage_cell_4k>,
	<appliedenergistics2:fluid_storage_cell_16k>,
	<appliedenergistics2:fluid_storage_cell_64k>,
	<appliedenergistics2:material:54>,
	<appliedenergistics2:material:55>,
	<appliedenergistics2:material:56>,
	<appliedenergistics2:material:57>
] as IItemStack[];
for item in RemoveItemRecipes{
    recipes.remove(item);
}

// Поименное удаление рецептов
val RemoveItemRecipesByName = [
  "appliedenergistics2:decorative/quartz_block_pure",
	"appliedenergistics2:tools/misctools_charged_staff",
	"appliedenergistics2:network/blocks/fluid_interfaces_interface",
	"appliedenergistics2:network/blocks/interfaces_interface",
	"appliedenergistics2:misc/vanilla_comparator",
	"appliedenergistics2:misc/vanilla_daylight_detector",
	"appliedenergistics2:network/crafting/molecular_assembler",
	"appliedenergistics2:network/cables/covered_fluix_clean",
	"appliedenergistics2:network/cables/covered_fluix",
	"appliedenergistics2:network/cables/glass_fluix_clean",
	"appliedenergistics2:network/cables/glass_fluix",
	"appliedenergistics2:network/cables/smart_fluix_clean",
	"appliedenergistics2:network/cables/smart_fluix",
	"appliedenergistics2:network/cables/dense_smart_fluix_clean",
	"appliedenergistics2:network/cables/dense_smart_fluix",
	"appliedenergistics2:network/cables/dense_covered_fluix_clean",
	"appliedenergistics2:network/cables/dense_covered_fluix"
] as string[];
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// --- Рецепты

//Прессы
//Силиконовый
laser_engraver.recipeBuilder()
	.inputs(<minecraft:iron_block> * 1)
 	.notConsumable(<ore:craftingLensWhite> * 1)
 	.outputs(<appliedenergistics2:material:19> * 1)
 	.duration(12000).EUt(116).buildAndRegister();
//Силиконовый 2
laser_engraver.recipeBuilder()
 	.inputs(<ore:blockWroughtIron> * 1)
 	.notConsumable(<ore:craftingLensWhite> * 1)
 	.outputs(<appliedenergistics2:material:19> * 1)
	.duration(8000).EUt(116).buildAndRegister();
//Логический
laser_engraver.recipeBuilder()
 	.inputs(<minecraft:iron_block> * 1)
 	.notConsumable(<ore:craftingLensLime> * 1)
 	.outputs(<appliedenergistics2:material:15> * 1)
 	.duration(12000).EUt(118).buildAndRegister();
//Логический 2
laser_engraver.recipeBuilder()
 	.inputs(<ore:blockWroughtIron> * 1)
 	.notConsumable(<ore:craftingLensGreen> * 1)
 	.outputs(<appliedenergistics2:material:15> * 1)
	.duration(8000).EUt(118).buildAndRegister();
//Инженерный
laser_engraver.recipeBuilder()
 	.inputs(<minecraft:iron_block> * 1)
 	.notConsumable(<ore:craftingLensYellow> * 1)
 	.outputs(<appliedenergistics2:material:14> * 1)
 	.duration(12000).EUt(120).buildAndRegister();
//Инженерный 2
laser_engraver.recipeBuilder()
 	.inputs(<ore:blockWroughtIron> * 1)
 	.notConsumable(<ore:craftingLensYellow> * 1)
 	.outputs(<appliedenergistics2:material:14> * 1)
 	.duration(8000).EUt(120).buildAndRegister();
//Вычислительный
laser_engraver.recipeBuilder()
 	.inputs(<minecraft:iron_block> * 1)
 	.notConsumable(<ore:craftingLensBlue> * 1)
 	.outputs(<appliedenergistics2:material:13> * 1)
 	.duration(12000).EUt(122).buildAndRegister();
//Вычислительный
laser_engraver.recipeBuilder()
 	.inputs(<ore:blockWroughtIron> * 1)
 	.notConsumable(<ore:craftingLensBlue> * 1)
 	.outputs(<appliedenergistics2:material:13> * 1)
 	.duration(8000).EUt(122).buildAndRegister();
//Форменные прессы
//Силиконовый пресс/микросхема
forming_press.recipeBuilder()
 	.inputs(<ore:plateSilicon> * 1)
 	.notConsumable(<appliedenergistics2:material:19> * 1)
 	.outputs(<appliedenergistics2:material:20> * 1)
 	.duration(200).EUt(16).buildAndRegister();
//Логический пресс/микросхема
forming_press.recipeBuilder()
 	.inputs(<ore:plateGold> * 1)
 	.notConsumable(<appliedenergistics2:material:15> * 1)
 	.outputs(<appliedenergistics2:material:18> * 1)
 	.duration(200).EUt(16).buildAndRegister();
//Инженерный пресс/микросхема
forming_press.recipeBuilder()
 	.inputs(<ore:plateDiamond> * 1)
 	.notConsumable(<appliedenergistics2:material:14> * 1)
 	.outputs(<appliedenergistics2:material:17> * 1)
 	.duration(200).EUt(16).buildAndRegister();
//Вычислительный пресс/микросхема
forming_press.recipeBuilder()
 	.inputs(<ore:plateCertusQuartz> * 1)
 	.notConsumable(<appliedenergistics2:material:13> * 1)
 	.outputs(<appliedenergistics2:material:16> * 1)
 	.duration(200).EUt(16).buildAndRegister();
//Вычислительный пресс/микросхема 2
forming_press.recipeBuilder()
 	.inputs(<appliedenergistics2:material:10> * 1)
 	.notConsumable(<appliedenergistics2:material:13> * 1)
 	.outputs(<appliedenergistics2:material:16> * 1)
 	.duration(200).EUt(16).buildAndRegister();
//Процессоры аплайда
//Логичсекий
circuit_assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>)
    .inputs(<appliedenergistics2:material:18>)
    .inputs(<ore:circuitBasic>)
    .inputs(<ore:componentResistor>)
    .inputs(<ore:wireFineTin> * 2)
    .outputs(<appliedenergistics2:material:22> * 2)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
//Инженерный
circuit_assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>)
    .inputs(<appliedenergistics2:material:17>)
    .inputs(<ore:circuitBasic>)
    .inputs(<ore:componentResistor>)
    .inputs(<ore:wireFineTin> * 2)
    .outputs(<appliedenergistics2:material:24> * 2)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
//Вычислительный 
circuit_assembler.recipeBuilder()
    .inputs(<appliedenergistics2:material:20>)
    .inputs(<appliedenergistics2:material:16>)
    .inputs(<ore:circuitBasic>)
    .inputs(<ore:componentResistor>)
    .inputs(<ore:wireFineTin> * 2)
    .outputs(<appliedenergistics2:material:23> * 2)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
//Заряженный кварц
electrolyzer.recipeBuilder()
		.inputs(<ore:crystalCertusQuartz> | <ore:gemCertusQuartz>)
		.outputs(<appliedenergistics2:material:1>)
		.duration(520)
		.EUt(82)
		.buildAndRegister();
//Пустой шаблон
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 3)
    .inputs(<ore:platePlastic> * 2)
    .inputs(<ore:wireFineRedAlloy> * 4)
    .inputs(<ore:circuitGood>)
    .outputs(<appliedenergistics2:material:52>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 3)
    .inputs(<ore:platePolyvinylChloride> * 2)
    .inputs(<ore:wireFineRedAlloy> * 4)
    .inputs(<ore:circuitGood>)
    .outputs(<appliedenergistics2:material:52> * 4)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 3)
    .inputs(<ore:platePolytetrafluoroethylene> * 2)
    .inputs(<ore:wireFineRedAlloy> * 4)
    .inputs(<ore:circuitGood>)
    .outputs(<appliedenergistics2:material:52> * 16)
    .duration(200)
    .EUt(480)
    .buildAndRegister();
    
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 3)
    .inputs(<ore:platePolybenzimidazole> * 2)
    .inputs(<ore:wireFineRedAlloy> * 4)
    .inputs(<ore:circuitGood>)
    .outputs(<appliedenergistics2:material:52> * 64)
    .duration(200)
    .EUt(480)
    .buildAndRegister();
//Флакс блок
compressor.recipeBuilder()
	.inputs(<ore:crystalFluix> * 4)
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(400)
	.EUt(6)
	.buildAndRegister();
//Флакс блок
compressor.recipeBuilder()
	.inputs(<ore:crystalPureFluix> * 8)
	.outputs(<appliedenergistics2:fluix_block>)
	.duration(400)
	.EUt(6)
	.buildAndRegister();
//Блок истинного кварца
compressor.recipeBuilder()
	.inputs(<ore:crystalCertusQuartz> * 4)
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400)
	.EUt(4)
	.buildAndRegister();
//Блок истинного кварца
compressor.recipeBuilder()
	.inputs(<ore:crystalPureCertusQuartz> * 16)
	.outputs(<appliedenergistics2:quartz_block>)
	.duration(400)
	.EUt(4)
	.buildAndRegister();
//Крафт пыли флакса
macerator.recipeBuilder()
	.inputs([<ore:crystalFluix> * 1])
	.outputs(<appliedenergistics2:material:8> * 1)
	.duration(65)
	.EUt(12)
	.buildAndRegister();
//Рецепт сингулярности
implosion_compressor.recipeBuilder()
	.inputs(<appliedenergistics2:material:47>)
	.property("explosives", 16)
	.outputs(<appliedenergistics2:material:48>)
	.duration(150).EUt(900).buildAndRegister();
//Иллюм панель
recipes.addShapeless(<appliedenergistics2:part:180>, [<appliedenergistics2:part:200>]);
//Инвертированная карта включения 2
recipes.addShapeless(<appliedenergistics2:part:100>, [<appliedenergistics2:part:80>]);
//Шина инвертировання отключенная
recipes.addShapeless(<appliedenergistics2:part:80>, [<appliedenergistics2:part:100>]);
//Карта емкости
recipes.addShapeless(<appliedenergistics2:material:27>, [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, <appliedenergistics2:material:35>, <appliedenergistics2:material:1>]);
//Карта создания
recipes.addShapeless(<appliedenergistics2:material:53>, [<appliedenergistics2:material:25>, <appliedenergistics2:material:35>, <appliedenergistics2:material:35>, <ore:workbench>]);
//Карта красного камня
recipes.addShapeless(<appliedenergistics2:material:26>, [<appliedenergistics2:material:25>, <ore:craftingRedstoneTorch>, <ore:craftingRedstoneTorch>, <appliedenergistics2:material:23>]);
//Карта нечетности
recipes.addShapeless(<appliedenergistics2:material:29>, [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, <appliedenergistics2:material:22>, <appliedenergistics2:material:23>]);
//Карта инвертор
recipes.addShapeless(<appliedenergistics2:material:31>, [<appliedenergistics2:material:28>, <appliedenergistics2:part:100>, <appliedenergistics2:part:100>, <appliedenergistics2:material:23>]);
//Карта ускорения
recipes.addShapeless(<appliedenergistics2:material:30>, [<appliedenergistics2:material:28>, <appliedenergistics2:material:24>, <appliedenergistics2:material:22>, <appliedenergistics2:material:7>]);
//Заряженная кварцевая фикстура
recipes.addShapeless(<appliedenergistics2:quartz_fixture>, [<ore:gemCertusQuartz> | <ore:crystalCertusQuartz>, <ore:stickAluminium>]);
//Легкая фикстура
recipes.addShapeless(<appliedenergistics2:light_detector>, [<appliedenergistics2:material:1>, <ore:stickIron>]);
//Сопроцесоор сборщика
recipes.addShapeless(<appliedenergistics2:crafting_accelerator>, [<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:23>, <appliedenergistics2:material:22>, <appliedenergistics2:material:24>]);
//Жидкостная шина хранения
recipes.addShapeless(<appliedenergistics2:part:221>, [<appliedenergistics2:part:220>, <minecraft:water_bucket>]);
//Жидкостная импорт шина
recipes.addShapeless(<appliedenergistics2:part:241>, [<appliedenergistics2:part:240>, <minecraft:water_bucket>]);
//Шина экспорта
recipes.addShapeless(<appliedenergistics2:part:261>, [<appliedenergistics2:part:260>, <minecraft:water_bucket>]);
//Датчик жидкостного уровня
recipes.addShapeless(<appliedenergistics2:part:281>, [<appliedenergistics2:part:280>, <minecraft:water_bucket>]);
//Жидкостный интерфейс
recipes.addShapeless(<appliedenergistics2:part:441>, [<appliedenergistics2:fluid_interface>]);
//Шина P2P тунеля жидкостная
recipes.addShapeless(<appliedenergistics2:part:463>, [<appliedenergistics2:part:460>, <minecraft:water_bucket>]);
//Шина P2P тунеля редстоуновая
recipes.addShapeless(<appliedenergistics2:part:461>, [<appliedenergistics2:part:460>, <minecraft:redstone_torch>]);
//Шина P2P тунеля световая
recipes.addShapeless(<appliedenergistics2:part:467>, [<appliedenergistics2:part:460>, <ore:glowstone>]);
//Шина P2P тунеля предметная
recipes.addShapeless(<appliedenergistics2:part:462>, [<appliedenergistics2:part:460>, <ore:pipeLargeItemCobalt>]);
//Шина P2P тунеля FE
recipes.addShapeless(<appliedenergistics2:part:469>, [<appliedenergistics2:part:460>, <ore:cableGtQuadrupleCobalt>]);
//Якори
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotIron>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotCopper>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 3, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotBronze>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotTin>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 4, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotSteel>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 4, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotAluminium>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotLead>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotNickel>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 2, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotSilver>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 3, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotBrass>]);
recipes.addShapeless(<appliedenergistics2:part:120> * 3, [<ore:craftingToolKnife>.firstItem.withEmptyTag(), <ore:ingotInvar>]);

//Жидкостный интерфейс
recipes.addShaped(<appliedenergistics2:fluid_interface>, [
	[<ore:plateIron>, <ore:plateLazurite>, <ore:plateIron>],
	[<appliedenergistics2:material:43>, <gregtech:meta_item_1:32682>, <appliedenergistics2:material:44>],
	[<ore:plateIron>, <ore:plateLazurite>, <ore:plateIron>]]);
//Контроллер
recipes.addShaped(<appliedenergistics2:controller>, [
	[<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>],
	[<appliedenergistics2:material:24>, <appliedenergistics2:fluix_block>, <appliedenergistics2:material:24>],
	[<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>]]);
//Энерго-ячейка
recipes.addShaped(<appliedenergistics2:energy_cell>, [
	[<ore:stickCertusQuartz>, <ore:dustFluix>, <ore:stickCertusQuartz>],
	[<ore:circuitAdvanced>, <appliedenergistics2:fluix_block>, <ore:circuitAdvanced>],
	[<ore:stickCertusQuartz>, <ore:cableGtOctalAluminium>, <ore:stickCertusQuartz>]]);
//Энерго-ячейка 2
recipes.addShaped(<appliedenergistics2:dense_energy_cell>, [
	[<appliedenergistics2:energy_cell>, <appliedenergistics2:energy_cell>, <appliedenergistics2:energy_cell>],
	[<ore:circuitMaster>, <appliedenergistics2:material:24>, <ore:circuitMaster>],
	[<appliedenergistics2:energy_cell>, <meta_tile_entity:battery_buffer.ev.1>, <appliedenergistics2:energy_cell>]]);
//Сундук
recipes.addShaped(<appliedenergistics2:chest>, [
	[<ore:plateStainlessSteel>, <ore:circuitGood>, <ore:plateStainlessSteel>],
	[<appliedenergistics2:part:16>, <metaitem:super_chest.mv>, <appliedenergistics2:part:16>],
	[<ore:plateStainlessSteel>, <ore:circuitGood>, <ore:plateStainlessSteel>]]);
//Дисковод :D
recipes.addShaped(<appliedenergistics2:drive>, [
	[<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>], 
	[<appliedenergistics2:part:16>, <appliedenergistics2:chest>, <appliedenergistics2:part:16>], 
	[<ore:plateTitanium>, <ore:circuitAdvanced>, <ore:plateTitanium>]]);
//Юнит сборщика
recipes.addShaped(<appliedenergistics2:crafting_unit>, [
	[<ore:plateAluminium>, <appliedenergistics2:material:22>, <ore:plateAluminium>],
	[<metaitem:circuit.good.regular>, <appliedenergistics2:material:24>, <metaitem:circuit.good.regular>],
	[<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>]]);
// Молекулярный сборщик
recipes.addShaped("molecular_assembler", <appliedenergistics2:molecular_assembler>, [
    [<ore:plateStainlessSteel>, <appliedenergistics2:quartz_glass>, <ore:plateStainlessSteel>],
    [<appliedenergistics2:material:44>, <metaitem:robot.arm.hv>, <appliedenergistics2:material:43>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:quartz_glass>, <ore:plateStainlessSteel>]
]);
recipes.addShaped("molecular_assembler_ev", <appliedenergistics2:molecular_assembler> * 4, [
    [<ore:plateTitanium>, <appliedenergistics2:quartz_glass>, <ore:plateTitanium>],
    [<appliedenergistics2:material:44>, <metaitem:robot.arm.ev>, <appliedenergistics2:material:43>],
    [<ore:plateTitanium>, <appliedenergistics2:quartz_glass>, <ore:plateTitanium>]
]);
recipes.addShaped("molecular_assembler_iv", <appliedenergistics2:molecular_assembler> * 16, [
    [<ore:plateTungstenSteel>, <appliedenergistics2:quartz_glass>, <ore:plateTungstenSteel>],
    [<appliedenergistics2:material:44>, <metaitem:robot.arm.iv>, <appliedenergistics2:material:43>],
    [<ore:plateTungstenSteel>, <appliedenergistics2:quartz_glass>, <ore:plateTungstenSteel>]
]);
//Квантовое кольцо
assembly_line.recipeBuilder()
   .inputs(<ore:batteryAdvanced> * 3)
   .inputs(<ore:circuitElite> * 12)
	 .inputs(<metaitem:emitter.iv> * 16)
	 .inputs(<appliedenergistics2:material:24> * 8)
   .inputs(<metaitem:sensor.iv> * 14)
		.inputs(<appliedenergistics2:dense_energy_cell>)
		.inputs(<appliedenergistics2:material:22>)
		.circuit(12)
   .fluidInputs([<liquid:titanium> * 1188])
		.outputs(<appliedenergistics2:quantum_ring>)
		.duration(900)
		.EUt(8300)
		.buildAndRegister();
//Камера квантового моста
assembly_line.recipeBuilder()
   .inputs(<appliedenergistics2:material:9> * 8)
   .inputs(<appliedenergistics2:quartz_vibrant_glass> * 6)
	 .inputs(<appliedenergistics2:material:24> * 8)
   .inputs(<metaitem:sensor.iv> * 14)
		.inputs(<appliedenergistics2:dense_energy_cell>)
		.circuit(12)
   .fluidInputs([<liquid:titanium> * 1088])
		.outputs(<appliedenergistics2:quantum_link>)
		.duration(700)
		.EUt(8300)
		.buildAndRegister();
//Пилон
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [
	[<ore:plateTitanium>, <appliedenergistics2:part:16>, <ore:plateTitanium>],
	[<ore:dustFluix>, <appliedenergistics2:material:7>, <ore:dustFluix>],
	[<ore:plateTitanium>, <appliedenergistics2:part:16>, <ore:plateTitanium>]]);
//Порт входа/выхода
recipes.addShaped(<appliedenergistics2:spatial_io_port>, [
	[<ore:plateTitanium>, <ore:plateGlass>, <ore:plateTitanium>],
	[<appliedenergistics2:part:16>, <appliedenergistics2:io_port>, <appliedenergistics2:part:16>],
	[<ore:plateTitanium>, <appliedenergistics2:material:24>, <ore:plateTitanium>]]);
//Интерфейс
recipes.addShaped(<appliedenergistics2:interface>, [
	[<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>],
	[<appliedenergistics2:material:43>, <meta_tile_entity:machine_casing.medium_voltage>, <appliedenergistics2:material:44>],
	[<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>]]);
//Верстак ячеек
recipes.addShaped(<appliedenergistics2:cell_workbench>, [
	[<minecraft:wool>, <appliedenergistics2:part:380>, <minecraft:wool>],
	[<ore:plateAluminium>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
//МЕ вход/выход порт
recipes.addShaped(<appliedenergistics2:io_port>, [
	[<ore:plateGlass>, <ore:plateGlass>, <ore:plateGlass>],
	[<appliedenergistics2:drive>, <appliedenergistics2:part:16>, <appliedenergistics2:drive>],
	[<ore:plateAluminium>, <appliedenergistics2:material:22>, <ore:plateAluminium>]]);
//Конденсатор
recipes.addShaped(<appliedenergistics2:condenser>, [
	[<ore:plateAluminium>, <metaitem:electric.piston.mv>, <ore:plateAluminium>],
	[<metaitem:electric.piston.mv>, <meta_tile_entity:hull.hv>, <metaitem:electric.piston.mv>],
	[<ore:plateAluminium>, <metaitem:electric.piston.mv>, <ore:plateAluminium>]]);
//Приниматель энергии
recipes.addShaped(<appliedenergistics2:energy_acceptor>, [
	[<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>],
	[<ore:plateGlass>, <appliedenergistics2:material:7>, <ore:plateGlass>],
	[<ore:plateAluminium>, <ore:plateGlass>, <ore:plateAluminium>]]);
//Терминал безопасности
recipes.addShaped(<appliedenergistics2:security_station>, [
	[<ore:plateAluminium>, <appliedenergistics2:chest>, <ore:plateAluminium>],
	[<appliedenergistics2:part:16>, <appliedenergistics2:material:37>, <appliedenergistics2:part:16>],
	[<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>]]);

// Annihilation Core
recipes.addShaped("annihilationcore", <appliedenergistics2:material:44>, [
    [<ore:circuitPrimitive>, <appliedenergistics2:material:22>, <ore:boltNetherQuartz>]]);
// Formation Core
recipes.addShaped("formationcore", <appliedenergistics2:material:43>, [
    [<ore:circuitPrimitive>, <appliedenergistics2:material:22>, <ore:boltCertusQuartz>]]);
// ME Fluid Formation Plane
recipes.addShaped("planes_formation_fluid", <appliedenergistics2:part:321>, [
    [<metaitem:electric.pump.lv>, <appliedenergistics2:material:43>, <ore:crystalFluix>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
// ME Fluid Annihilation Plane
recipes.addShaped("planes_annihilation_fluid", <appliedenergistics2:part:302>, [
    [<metaitem:electric.pump.lv>, <appliedenergistics2:material:44>, <ore:crystalFluix>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
//Флаксовый перл
recipes.addShaped(<appliedenergistics2:material:9>, [
	[<appliedenergistics2:material:12>, <ore:plateEnderPearl>, <appliedenergistics2:material:12>],
	[<ore:plateEnderPearl>, <minecraft:ender_pearl>, <ore:plateEnderPearl>],
	[<appliedenergistics2:material:12>, <ore:plateEnderPearl>, <appliedenergistics2:material:12>]]);
//Флаксовый перл рецепт 2
recipes.addShaped(<appliedenergistics2:material:9>, [
	[<appliedenergistics2:material:7>, <ore:plateEnderPearl>, <appliedenergistics2:material:7>],
	[<ore:plateEnderPearl>, <minecraft:ender_pearl>, <ore:plateEnderPearl>],
	[<appliedenergistics2:material:7>, <ore:plateEnderPearl>, <appliedenergistics2:material:7>]]);

//Терминал
recipes.addShaped(<appliedenergistics2:part:380>, [
	[<ore:stickNetherQuartz>, <ore:gemQuartzite>, <ore:stickNetherQuartz>],
	[<appliedenergistics2:part:180>, <ore:circuitGood>, <ore:plateCertusQuartz>],
	[<ore:stickNetherQuartz>, <ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <ore:stickNetherQuartz>]]);
//Терминал создания
recipes.addShaped(<appliedenergistics2:part:360>, [
	[<ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>.firstItem.withEmptyTag()],
	[<ore:stickCertusQuartz>, <ore:workbench>, <ore:stickCertusQuartz>],
	[<ore:plateNetherQuartz>, <appliedenergistics2:material:24>, <ore:plateNetherQuartz>]]);
//Терминал интерфейстов
recipes.addShaped(<appliedenergistics2:part:480>, [
	[<ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>.firstItem.withEmptyTag()],
	[<ore:stickCertusQuartz>, <appliedenergistics2:part:440>, <ore:stickCertusQuartz>],
	[<ore:plateNetherQuartz>, <appliedenergistics2:material:24>, <ore:plateNetherQuartz>]]);
//Терминал шаблонов
recipes.addShaped(<appliedenergistics2:part:340>, [
	[<ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <appliedenergistics2:part:380>, <ore:craftingToolSoftHammer>.firstItem.withEmptyTag()],
	[<ore:stickCertusQuartz>, <appliedenergistics2:material:52>, <ore:stickCertusQuartz>],
	[<ore:plateNetherQuartz>, <appliedenergistics2:material:24>, <ore:plateNetherQuartz>]]);
//Беспроводной терминал
recipes.addShaped(<appliedenergistics2:wireless_terminal>, [
	[<appliedenergistics2:material:41>, <appliedenergistics2:part:380>, <appliedenergistics2:material:41>],
	[<ore:plateNetherQuartz>, <appliedenergistics2:material:24>, <ore:plateNetherQuartz>],
	[<ore:plateNetherQuartz>, <appliedenergistics2:dense_energy_cell>, <ore:plateNetherQuartz>]]);
//Вибрируещее кварцевое стекло
recipes.addShaped(<appliedenergistics2:quartz_vibrant_glass>, [
	[<ore:dustGlowstone>, <ore:plateGlowstone>, <ore:dustGlowstone>],
	[<ore:plateGlowstone>, <appliedenergistics2:quartz_glass>, <ore:plateGlowstone>],
	[<ore:dustGlowstone>, <ore:plateGlowstone>, <ore:dustGlowstone>]]);
//Улучшенная карта улучшения
recipes.addShaped(<appliedenergistics2:material:28>, [
	[<ore:platePlatinum>, <ore:plateAluminium>, null],
	[<ore:plateRedAlloy>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
	[<ore:platePlatinum>, <ore:plateAluminium>, null]]);
//Базовая карта улучшения
recipes.addShaped(<appliedenergistics2:material:25>, [
	[<ore:plateGold>, <ore:plateAluminium>, null],
	[<ore:plateRedAlloy>, <appliedenergistics2:material:23>, <ore:plateAluminium>],
	[<ore:plateGold>, <ore:plateAluminium>, null]]);
//Увеличитель сигнала для беспроводной точки доступа
recipes.addShaped(<appliedenergistics2:material:42>, [
	[<ore:dustFluix>, <ore:gemCertusQuartz> | <ore:crystalCertusQuartz>, <ore:plateEnderPearl>],
	[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
	[null, null, null]]);
//Какой-то аннигиляционный самолёт
recipes.addShaped(<appliedenergistics2:part:300>, [
	[<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
	[<ore:plateAluminium>, <appliedenergistics2:material:44>, <ore:plateAluminium>],
	[null, null, null]]);
//Шина экспорта
recipes.addShaped(<appliedenergistics2:part:260>, [
	[<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>],
	[null, <minecraft:piston>, null],
	[null, null, null]]);
//Какой-то формированный самолёт
recipes.addShaped(<appliedenergistics2:part:320>, [
	[<ore:dustFluix>, <ore:dustFluix>, <ore:dustFluix>],
	[<ore:plateAluminium>, <appliedenergistics2:material:43>, <ore:plateAluminium>],
[null, null, null]]);
//Шина импорта
recipes.addShaped(<appliedenergistics2:part:240>, [
	[null, <appliedenergistics2:material:44>, null],
	[<ore:plateAluminium>, <minecraft:sticky_piston>, <ore:plateAluminium>],
	[null, null, null]]);
//Тунель P2P
recipes.addShaped(<appliedenergistics2:part:460>, [
	[null, <ore:plateAluminium>, null],
	[<ore:plateAluminium>, <appliedenergistics2:material:24>, <ore:plateAluminium>],
	[<appliedenergistics2:material:7>, <appliedenergistics2:material:7>, <appliedenergistics2:material:7>]]);
//Иллюм панель 2
recipes.addShaped(<appliedenergistics2:part:180>, [
	[null, <ore:plateGlowstone>, null],
	[<ore:plateAluminium>, <ore:plateRedAlloy>, <ore:dustRedstone>],
	[null, <ore:plateGlowstone>, null]]);
//Шина переключения 2
recipes.addShaped(<appliedenergistics2:part:80>, [
	[null, <ore:plateRedAlloy>, null],
	[<appliedenergistics2:part:16>, <minecraft:lever>, <appliedenergistics2:part:16>],
	[null, <ore:plateRedAlloy>, null]]);
//Пушка
recipes.addShaped(<appliedenergistics2:matter_cannon>, [
	[<ore:plateAluminium>, <ore:plateAluminium>, <appliedenergistics2:material:43>],
	[<appliedenergistics2:material:38>, <appliedenergistics2:dense_energy_cell>, null],
	[<ore:plateAluminium>, null, null]]);
//Карта памяти
recipes.addShaped("network_memory_card", <appliedenergistics2:memory_card>, [
    [<appliedenergistics2:material:23>, <ore:circuitBasic>],
    [<ore:wireFineGold>, <ore:plateIron>]
]);
//Заряженная палка
recipes.addShaped(<appliedenergistics2:charged_staff>, [
	[<appliedenergistics2:material:1>, <appliedenergistics2:material:1>, null],
	[<appliedenergistics2:material:1>, <ore:stickNeodymiumMagnetic>, null],
	[null, null, <ore:plateThaumium>]]);
//Манипулятор хаоса
recipes.addShaped(<appliedenergistics2:entropy_manipulator>, [
	[<appliedenergistics2:material:7>, <appliedenergistics2:material:22>, null],
	[<appliedenergistics2:material:24>, <appliedenergistics2:energy_cell>, null],
	[null, null, <ore:stickThaumium>]]);
//Кисточка
recipes.addShaped(<appliedenergistics2:color_applicator>, [
	[<ore:wireGtSingleAluminium>, <appliedenergistics2:material:43>, <ore:wireGtSingleAluminium>],
	[<appliedenergistics2:material:36>, <appliedenergistics2:energy_cell>, <appliedenergistics2:material:36>],
	[null, <ore:stickSteel>, null]]);
//Биометрическая карта
recipes.addShaped("network_biometric_card", <appliedenergistics2:biometric_card>, [
    [<appliedenergistics2:material:24>, <ore:circuitPrimitive>],
    [<ore:wireFineGold>, <ore:plateIron>]
]);
//Жидкостный терминал
recipes.addShaped(<appliedenergistics2:part:520>, [
	[<ore:stickCertusQuartz>, <ore:screwApatite>, <ore:stickCertusQuartz>],
	[<appliedenergistics2:part:180>, <ore:circuitGood>, <ore:plateNetherQuartz>],
	[<ore:stickCertusQuartz>, <ore:craftingToolScrewdriver>.firstItem.withEmptyTag(), <ore:stickCertusQuartz>]]);
//Ячейка видимости
recipes.addShapeless(<appliedenergistics2:view_cell>, [<appliedenergistics2:material:39>, <ore:gemCertusQuartz> | <ore:crystalCertusQuartz>]);
//1к ячейка
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:35>)
    .outputs(<appliedenergistics2:storage_cell_1k>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//4к ячейка
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:36>)
    .outputs(<appliedenergistics2:storage_cell_4k>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//16к ячейка 
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:37>)
    .outputs(<appliedenergistics2:storage_cell_16k>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//64к ячейка
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:38>)
    .outputs(<appliedenergistics2:storage_cell_64k>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//1к ячейка жидкость
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:54>)
    .outputs(<appliedenergistics2:fluid_storage_cell_1k>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();

//4к ячейка жидкость
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:55>)
    .outputs(<appliedenergistics2:fluid_storage_cell_4k>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//16к ячейка жидкость
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:56>)
    .outputs(<appliedenergistics2:fluid_storage_cell_16k>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//64к ячейка жидкость
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:57>)
    .outputs(<appliedenergistics2:fluid_storage_cell_64k>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//2к куб ячейка
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:32>)
    .outputs(<appliedenergistics2:spatial_storage_cell_2_cubed>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//16к куб ячейка
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:33>)
    .outputs(<appliedenergistics2:spatial_storage_cell_16_cubed>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//128к куб ячейка
canner.recipeBuilder()
    .inputs(<appliedenergistics2:material:39>)
    .inputs(<appliedenergistics2:material:34>)
    .outputs(<appliedenergistics2:spatial_storage_cell_128_cubed>)
    .duration(100)
    .EUt(4)
    .buildAndRegister();
//Обшивка универсального хранилища
recipes.addShaped(<appliedenergistics2:material:39>, [
	[<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:dustFluix>, <ore:plateCertusQuartz>],
	[<ore:plateStainlessSteel>, <ore:plateGlass>, <ore:plateStainlessSteel>],
	[<ore:plateCertusQuartz>, <ore:plateAluminium>, <ore:craftingToolScrewdriver>.firstItem.withEmptyTag()]]);
//Компонент 1к
assembler.recipeBuilder()
    .inputs(<metaitem:plate.central_processing_unit>)
    .inputs(<ore:plateCertusQuartz>)
    .inputs(<ore:circuitBasic>)
    .outputs(<appliedenergistics2:material:35>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<metaitem:component.resistor> * 16)
    .inputs(<ore:plateCertusQuartz>)
    .inputs(<ore:circuitBasic> * 2)
    .fluidInputs([<liquid:red_alloy> * 288])
    .outputs(<appliedenergistics2:material:35>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();		
//Компонент 4к
assembler.recipeBuilder()
    .inputs(<metaitem:plate.random_access_memory>)
    .inputs(<appliedenergistics2:material:35> * 3)
    .inputs(<ore:circuitGood>)
    .outputs(<appliedenergistics2:material:36>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
//Компонент 16к
assembler.recipeBuilder()
    .inputs(<metaitem:plate.ultra_low_power_integrated_circuit>)
    .inputs(<appliedenergistics2:material:36> * 3)
    .inputs(<ore:circuitAdvanced>)
    .outputs(<appliedenergistics2:material:37>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();
//Компонент 64к
assembler.recipeBuilder()
    .inputs(<metaitem:plate.power_integrated_circuit>)
    .inputs(<appliedenergistics2:material:37> * 3)
    .inputs(<ore:circuitExtreme>)
    .outputs(<appliedenergistics2:material:38>)
    .duration(200)
    .EUt(480)
    .buildAndRegister();
//Жидкость компонент ячейки 1к
assembler.recipeBuilder()
    .inputs(<metaitem:plate.central_processing_unit>)
    .inputs(<ore:plateLapis>)
    .inputs(<ore:circuitBasic>)
    .outputs(<appliedenergistics2:material:54>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
//Жидкость компонент ячейки 4к
assembler.recipeBuilder()
    .inputs(<metaitem:plate.random_access_memory>)
    .inputs(<appliedenergistics2:material:54> * 3)
    .inputs(<ore:circuitGood>)
    .outputs(<appliedenergistics2:material:55>)
    .duration(200)
    .EUt(30)
    .buildAndRegister();
//Жидкость компонент ячейки 16к
assembler.recipeBuilder()
    .inputs(<metaitem:plate.ultra_low_power_integrated_circuit>)
    .inputs(<appliedenergistics2:material:55> * 3)
    .inputs(<ore:circuitAdvanced>)
    .outputs(<appliedenergistics2:material:56>)
    .duration(200)
    .EUt(120)
    .buildAndRegister();   
//Жидкость компонент ячейки 64к
assembler.recipeBuilder()
    .inputs(<metaitem:plate.power_integrated_circuit>)
    .inputs(<appliedenergistics2:material:56> * 3)
    .inputs(<ore:circuitExtreme>)
    .outputs(<appliedenergistics2:material:57>)
    .duration(200)
    .EUt(480)
    .buildAndRegister();
//Кубичсекий компонент 2к
recipes.addShaped(<appliedenergistics2:material:32>, [
	[<ore:plateGlowstone>, <appliedenergistics2:material:9>, <ore:plateGlowstone>],
	[<appliedenergistics2:material:9>, <appliedenergistics2:material:24>, <appliedenergistics2:material:9>],
	[<ore:plateGlowstone>, <appliedenergistics2:material:9>, <ore:plateGlowstone>]]);
//Кубичсекий компонент 16к
recipes.addShaped(<appliedenergistics2:material:33>, [
	[<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>],
	[<appliedenergistics2:material:32>, <appliedenergistics2:material:24>, <appliedenergistics2:material:32>],
	[<ore:plateEnderPearl>, <appliedenergistics2:material:32>, <ore:plateEnderPearl>]]);
//Кубичсекий компонент 128к
recipes.addShaped(<appliedenergistics2:material:34>, [
	[<ore:plateEnderEye>, <appliedenergistics2:material:33>, <ore:plateEnderEye>],
	[<appliedenergistics2:material:33>, <appliedenergistics2:material:24>, <appliedenergistics2:material:33>],
	[<ore:plateEnderEye>, <appliedenergistics2:material:33>, <ore:plateEnderEye>]]);


########################################
# Items
########################################

// Покраска, обесвечивание кабелей и присвоение oredict
// Glass Cable
var glassCables as IItemStack[] = [
    <appliedenergistics2:part>,
    <appliedenergistics2:part:1>,
    <appliedenergistics2:part:2>,
    <appliedenergistics2:part:3>,
    <appliedenergistics2:part:4>,
    <appliedenergistics2:part:5>,
    <appliedenergistics2:part:6>,
    <appliedenergistics2:part:7>,
    <appliedenergistics2:part:8>,
    <appliedenergistics2:part:9>,
    <appliedenergistics2:part:10>,
    <appliedenergistics2:part:11>,
    <appliedenergistics2:part:12>,
    <appliedenergistics2:part:13>,
    <appliedenergistics2:part:14>,
    <appliedenergistics2:part:15>,
    <appliedenergistics2:part:16>
];
for glassCable in glassCables {
    <ore:ae2.cable.glass>.add(glassCable);
    if (glassCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.glass.colors>.add(glassCable);
    }
}
var colored_GlassCables as IItemStack[] = [
    <appliedenergistics2:part>,
    <appliedenergistics2:part:1>,
    <appliedenergistics2:part:2>,
    <appliedenergistics2:part:3>,
    <appliedenergistics2:part:4>,
    <appliedenergistics2:part:5>,
    <appliedenergistics2:part:6>,
    <appliedenergistics2:part:7>,
    <appliedenergistics2:part:8>,
    <appliedenergistics2:part:9>,
    <appliedenergistics2:part:10>,
    <appliedenergistics2:part:11>,
    <appliedenergistics2:part:12>,
    <appliedenergistics2:part:13>,
    <appliedenergistics2:part:14>,
    <appliedenergistics2:part:15>
];
for i, cable in colored_GlassCables {
    recipes.remove(cable);
    chemical_bath.recipeBuilder()
        .inputs(<appliedenergistics2:part:16>)
        .fluidInputs([All_Liquid_Dyes[i] * 8])
        .outputs(cable)
        .duration(40)
        .EUt(16)
        .buildAndRegister();

    chemical_bath.recipeBuilder()
        .inputs(cable)
        .fluidInputs([<liquid:chlorine> * 10])
        .outputs(<appliedenergistics2:part:16>)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
}
recipes.remove(<appliedenergistics2:part:16>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:140> * 2)
    .inputs(<ore:dustFluix> * 2)
    .outputs(<appliedenergistics2:part:16> * 3)
    .duration(100)
    .EUt(30)
    .buildAndRegister();

// Covered Cable
var coveredCables as IItemStack[] = [
    <appliedenergistics2:part:20>,
    <appliedenergistics2:part:21>,
    <appliedenergistics2:part:22>,
    <appliedenergistics2:part:23>,
    <appliedenergistics2:part:24>,
    <appliedenergistics2:part:25>,
    <appliedenergistics2:part:26>,
    <appliedenergistics2:part:27>,
    <appliedenergistics2:part:28>,
    <appliedenergistics2:part:29>,
    <appliedenergistics2:part:30>,
    <appliedenergistics2:part:31>,
    <appliedenergistics2:part:32>,
    <appliedenergistics2:part:33>,
    <appliedenergistics2:part:34>,
    <appliedenergistics2:part:35>,
    <appliedenergistics2:part:36>
];
for coveredCable in coveredCables {
    <ore:ae2.cable.covered>.add(coveredCable);
    if (coveredCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.covered.colors>.add(coveredCable);
    }
}
var colored_CoveredCable as IItemStack[] = [
	<appliedenergistics2:part:20>,
	<appliedenergistics2:part:21>,
	<appliedenergistics2:part:22>,
	<appliedenergistics2:part:23>,
	<appliedenergistics2:part:24>,
	<appliedenergistics2:part:25>,
	<appliedenergistics2:part:26>,
	<appliedenergistics2:part:27>,
	<appliedenergistics2:part:28>,
	<appliedenergistics2:part:29>,
	<appliedenergistics2:part:30>,
	<appliedenergistics2:part:31>,
	<appliedenergistics2:part:32>,
	<appliedenergistics2:part:33>,
	<appliedenergistics2:part:34>,
	<appliedenergistics2:part:35>
];

for i, cable in colored_CoveredCable {
    recipes.remove(cable);
    chemical_bath.recipeBuilder()
        .inputs(<appliedenergistics2:part:36>)
        .fluidInputs([All_Liquid_Dyes[i] * 8])
        .outputs(cable)
        .duration(40)
        .EUt(16)
        .buildAndRegister();

    chemical_bath.recipeBuilder()
        .inputs(cable)
        .fluidInputs([<liquid:chlorine> * 10])
        .outputs(<appliedenergistics2:part:36>)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
}
recipes.remove(<appliedenergistics2:part:36>);
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16>)
    .circuit(24)
    .fluidInputs([<liquid:rubber> * 144])
    .outputs(<appliedenergistics2:part:36>)
    .duration(150)
    .EUt(8)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16>)
    .circuit(24)
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 72])
    .outputs(<appliedenergistics2:part:36>)
    .duration(150)
    .EUt(8)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:16>)
    .circuit(24)
    .fluidInputs([<liquid:silicone_rubber> * 36])
    .outputs(<appliedenergistics2:part:36>)
    .duration(150)
    .EUt(8)
    .buildAndRegister();

// Smart Cable
var smartCables as IItemStack[] = [
    <appliedenergistics2:part:40>,
    <appliedenergistics2:part:41>,
    <appliedenergistics2:part:42>,
    <appliedenergistics2:part:43>,
    <appliedenergistics2:part:44>,
    <appliedenergistics2:part:45>,
    <appliedenergistics2:part:46>,
    <appliedenergistics2:part:47>,
    <appliedenergistics2:part:48>,
    <appliedenergistics2:part:49>,
    <appliedenergistics2:part:50>,
    <appliedenergistics2:part:51>,
    <appliedenergistics2:part:52>,
    <appliedenergistics2:part:53>,
    <appliedenergistics2:part:54>,
    <appliedenergistics2:part:55>,
    <appliedenergistics2:part:56>
];
for smartCable in smartCables {
    <ore:ae2.cable.smart>.add(smartCable);
    if (smartCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.smart.colors>.add(smartCable);
    }
}
var colored_SmartCable as IItemStack[] = [
	<appliedenergistics2:part:40>,
	<appliedenergistics2:part:41>,
	<appliedenergistics2:part:42>,
	<appliedenergistics2:part:43>,
	<appliedenergistics2:part:44>,
	<appliedenergistics2:part:45>,
	<appliedenergistics2:part:46>,
	<appliedenergistics2:part:47>,
	<appliedenergistics2:part:48>,
	<appliedenergistics2:part:49>,
	<appliedenergistics2:part:50>,
	<appliedenergistics2:part:51>,
	<appliedenergistics2:part:52>,
	<appliedenergistics2:part:53>,
	<appliedenergistics2:part:54>,
	<appliedenergistics2:part:55>
];
for i, cable in colored_SmartCable {
    recipes.remove(cable);
    chemical_bath.recipeBuilder()
        .inputs(<appliedenergistics2:part:56>)
        .fluidInputs([All_Liquid_Dyes[i] * 8])
        .outputs(cable)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
    chemical_bath.recipeBuilder()
        .inputs(cable)
        .fluidInputs([<liquid:chlorine> * 10])
        .outputs(<appliedenergistics2:part:56>)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
}
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:36>)
		.inputs([<ore:dustRedstone> * 2])
    .circuit(24)
    .fluidInputs([<liquid:glowstone> * 144])
    .outputs(<appliedenergistics2:part:56>)
    .duration(100)
    .EUt(30)
    .buildAndRegister();

// Dense Covered Cable
var denseCoveredCables as IItemStack[] = [
    <appliedenergistics2:part:500>,
    <appliedenergistics2:part:501>,
    <appliedenergistics2:part:502>,
    <appliedenergistics2:part:503>,
    <appliedenergistics2:part:504>,
    <appliedenergistics2:part:505>,
    <appliedenergistics2:part:506>,
    <appliedenergistics2:part:507>,
    <appliedenergistics2:part:508>,
    <appliedenergistics2:part:509>,
    <appliedenergistics2:part:510>,
    <appliedenergistics2:part:511>,
    <appliedenergistics2:part:512>,
    <appliedenergistics2:part:513>,
    <appliedenergistics2:part:514>,
    <appliedenergistics2:part:515>,
    <appliedenergistics2:part:516>
];
for denseCoveredCable in denseCoveredCables {
    <ore:ae2.cable.dense.covered>.add(denseCoveredCable);
    if (denseCoveredCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.dense.covered.colors>.add(denseCoveredCable);
    }
}
var colored_DenseCoveredCable as IItemStack[] = [
	<appliedenergistics2:part:500>,
	<appliedenergistics2:part:501>,
	<appliedenergistics2:part:502>,
	<appliedenergistics2:part:503>,
	<appliedenergistics2:part:504>,
	<appliedenergistics2:part:505>,
	<appliedenergistics2:part:506>,
	<appliedenergistics2:part:507>,
	<appliedenergistics2:part:508>,
	<appliedenergistics2:part:509>,
	<appliedenergistics2:part:510>,
	<appliedenergistics2:part:511>,
	<appliedenergistics2:part:512>,
	<appliedenergistics2:part:513>,
	<appliedenergistics2:part:514>,
	<appliedenergistics2:part:515>
];
for i, cable in colored_DenseCoveredCable {
    recipes.remove(cable);
    chemical_bath.recipeBuilder()
        .inputs(<appliedenergistics2:part:516>)
        .fluidInputs([All_Liquid_Dyes[i] * 8])
        .outputs(cable)
        .duration(40)
        .EUt(16)
        .buildAndRegister();

    chemical_bath.recipeBuilder()
        .inputs(cable)
        .fluidInputs([<liquid:chlorine> * 10])
        .outputs(<appliedenergistics2:part:516>)
        .duration(40)
        .EUt(16)
        .buildAndRegister();
}
assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:36> * 4)
    .circuit(24)
    .fluidInputs([<liquid:rubber> * 576])
    .outputs(<appliedenergistics2:part:516>)
    .duration(150)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:36> * 4)
    .circuit(24)
    .fluidInputs([<liquid:styrene_butadiene_rubber> * 288])
    .outputs(<appliedenergistics2:part:516>)
    .duration(150)
    .EUt(32)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<appliedenergistics2:part:36> * 4)
    .circuit(24)
    .fluidInputs([<liquid:silicone_rubber> * 144])
    .outputs(<appliedenergistics2:part:516>)
    .duration(150)
    .EUt(32)
    .buildAndRegister();

// Dense Smart Cable
var denseSmartCables as IItemStack[] = [
    <appliedenergistics2:part:60>,
    <appliedenergistics2:part:61>,
    <appliedenergistics2:part:62>,
    <appliedenergistics2:part:63>,
    <appliedenergistics2:part:64>,
    <appliedenergistics2:part:65>,
    <appliedenergistics2:part:66>,
    <appliedenergistics2:part:67>,
    <appliedenergistics2:part:68>,
    <appliedenergistics2:part:69>,
    <appliedenergistics2:part:70>,
    <appliedenergistics2:part:71>,
    <appliedenergistics2:part:72>,
    <appliedenergistics2:part:73>,
    <appliedenergistics2:part:74>,
    <appliedenergistics2:part:75>,
    <appliedenergistics2:part:76>
];
for denseSmartCable in denseSmartCables {
    <ore:ae2.cable.dense.smart>.add(denseSmartCable);
    if (denseSmartCable.displayName has "Fluix") {}
    else {
        <ore:ae2.cable.dense.smart.colors>.add(denseSmartCable);
    }
}
var colored_DenseSmartCable as IItemStack[] = [
	<appliedenergistics2:part:60>,
	<appliedenergistics2:part:61>,
	<appliedenergistics2:part:62>,
	<appliedenergistics2:part:63>,
	<appliedenergistics2:part:64>,
	<appliedenergistics2:part:65>,
	<appliedenergistics2:part:66>,
	<appliedenergistics2:part:67>,
	<appliedenergistics2:part:68>,
	<appliedenergistics2:part:69>,
	<appliedenergistics2:part:70>,
	<appliedenergistics2:part:71>,
	<appliedenergistics2:part:72>,
	<appliedenergistics2:part:73>,
	<appliedenergistics2:part:74>,
	<appliedenergistics2:part:75>
];
for i, cable in colored_DenseSmartCable {
  recipes.remove(cable);
  chemical_bath.recipeBuilder()
    .inputs(<appliedenergistics2:part:76>)
    .fluidInputs([All_Liquid_Dyes[i] * 8])
    .outputs(cable)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
  chemical_bath.recipeBuilder()
    .inputs(cable)
    .fluidInputs([<liquid:chlorine> * 10])
    .outputs(<appliedenergistics2:part:76>)
    .duration(40)
    .EUt(16)
    .buildAndRegister();
}
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:part:516>)
	.inputs([<ore:dustRedstone> * 2])
  .circuit(24)
  .fluidInputs([<liquid:glowstone> * 288])
  .outputs(<appliedenergistics2:part:76>)
  .duration(150)
  .EUt(32)
  .buildAndRegister();

// Сетевой инструмент
recipes.removeByRecipeName("appliedenergistics2:tools/network_tool");
recipes.addShaped("network_tool", <appliedenergistics2:network_tool>, [
  [<ore:craftingToolWrench>, <ore:circuitBasic>],
  [<appliedenergistics2:material:23>, <ore:itemIlluminatedPanel>]
]);
// Беспроводной раздатчик сигнала
recipes.removeByRecipeName("appliedenergistics2:network/wireless_part");
recipes.addShaped("wireless_part", <appliedenergistics2:material:41>, [
  [<ore:ae2.cable.glass>, <appliedenergistics2:material:9>, <ore:ae2.cable.glass>],
  [<metaitem:sensor.ev>, <ore:stickTitanium>, <metaitem:sensor.ev>],
  [<ore:plateCertusQuartz>, <ore:circuitExtreme>, <ore:plateCertusQuartz>]
]);
// Quartz Fiber
recipes.remove(<appliedenergistics2:part:140>);
wiremill.recipeBuilder()
  .inputs([<ore:stickNetherQuartz> | <ore:stickCertusQuartz>])
  .outputs([<appliedenergistics2:part:140>])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Quartz Glass
recipes.remove(<appliedenergistics2:quartz_glass>);
alloy_smelter.recipeBuilder()
  .inputs([
    <ore:blockGlass> * 4,
    <ore:dustCertusQuartz> * 4
  ])
  .outputs([<appliedenergistics2:quartz_glass> * 4])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
// Vibrant Quartz Glass
recipes.remove(<appliedenergistics2:quartz_vibrant_glass>);
recipes.addShaped(<appliedenergistics2:quartz_vibrant_glass>, [
  [<minecraft:glowstone_dust>, <ore:plateGlowstone>, <minecraft:glowstone_dust>],
  [<ore:plateGlowstone>, <appliedenergistics2:quartz_glass>, <ore:plateGlowstone>],
  [<minecraft:glowstone_dust>, <ore:plateGlowstone>, <minecraft:glowstone_dust>]
]);
recipes.addShaped(<appliedenergistics2:quartz_vibrant_glass>, [
  [<ore:stickAluminium>, <ore:dustAluminium>, <ore:stickAluminium>],
  [<ore:dustAluminium>, <minecraft:glowstone>, <ore:dustAluminium>],
  [<ore:stickAluminium>, <ore:dustAluminium>, <ore:stickAluminium>]
]);
// Pure Fluix Crystal
recipes.remove(<appliedenergistics2:crystal_seed:1200>);
mixer.recipeBuilder()
  .inputs([<ore:dustFluix>, <ore:sand>])
  .outputs([<appliedenergistics2:crystal_seed:1200> * 2])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:1200>])
  .fluidInputs([<liquid:distilled_water> * 144])
 	.chancedOutput(<appliedenergistics2:material:12> * 1, 8600, 700)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
 	.inputs(<appliedenergistics2:crystal_seed:1200> * 1)
 	.fluidInputs([<liquid:water> * 144])
 	.chancedOutput(<appliedenergistics2:material:12> * 1, 7500, 500)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
// Pure Certus Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed>);
mixer.recipeBuilder()
  .inputs([<ore:dustCertusQuartz>, <ore:sand>])
  .outputs([<appliedenergistics2:crystal_seed> * 2])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed>])
  .fluidInputs([<liquid:distilled_water> * 144])
  .chancedOutput(<appliedenergistics2:material:10> * 1, 8600, 700)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed>])
  .fluidInputs([<liquid:water> * 144])
  .chancedOutput(<appliedenergistics2:material:10> * 1, 7500, 500)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
// Pure Nether Quartz Crystal
recipes.remove(<appliedenergistics2:crystal_seed:600>);
mixer.recipeBuilder()
  .inputs([<ore:dustNetherQuartz>, <ore:sand>])
  .outputs([<appliedenergistics2:crystal_seed:600> * 2])
  .duration(20)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:600>])
  .fluidInputs([<liquid:distilled_water> * 144])
  .chancedOutput(<appliedenergistics2:material:11> * 1, 8600, 700)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:600>])
  .fluidInputs([<liquid:water> * 144])
  .chancedOutput(<appliedenergistics2:material:11> * 1, 7500, 500)
  .duration(50)
  .EUt(480)
  .buildAndRegister();
//Флакс кристалл из пыли с водой
autoclave.recipeBuilder()
 	.inputs(<ore:dustFluix> * 1)
 	.fluidInputs(<liquid:water> * 144)
 	.chancedOutput(<appliedenergistics2:material:7> * 1, 7000, 500)
	.duration(2000)
	.EUt(480)
	.buildAndRegister();
//Флакс кристалл из пыли с дистиллированной водой
autoclave.recipeBuilder()
 	.inputs(<ore:dustFluix> * 1)
 	.fluidInputs(<liquid:distilled_water> * 144)
 	.chancedOutput(<appliedenergistics2:material:7> * 1, 7500, 500)
	.duration(1000)
	.EUt(480)
	.buildAndRegister();
//Флакс кристалл 1
mixer.recipeBuilder()
 	.inputs(<minecraft:quartz>, <minecraft:redstone> * 4, <appliedenergistics2:material:1>)
	.outputs(<appliedenergistics2:material:7>)
	.duration(40)
	.EUt(18)
	.buildAndRegister();
//Флакс кристалл 2
mixer.recipeBuilder()
	.inputs(<minecraft:quartz>, <ore:gemExquisiteRuby>, <appliedenergistics2:material:1>)
 	.outputs(<appliedenergistics2:material:7> * 4)
	.duration(40)
	.EUt(18)
	.buildAndRegister();
//Флакс кристалл 3
mixer.recipeBuilder()
 	.inputs(<ore:gemExquisiteNetherQuartz> * 1, <minecraft:redstone> * 4, <appliedenergistics2:material:1> * 1)
 	.outputs(<appliedenergistics2:material:7> * 4)
	.duration(40)
	.EUt(18)
	.buildAndRegister();
//Флакс кристалл 4
mixer.recipeBuilder()
	.inputs(<ore:gemExquisiteNetherQuartz>, <ore:gemExquisiteRuby>, <appliedenergistics2:material:1>)
 	.outputs(<appliedenergistics2:material:7> * 12)
	.duration(40)
	.EUt(18)
	.buildAndRegister();
// Recycle - Storage Housing
macerator.recipeBuilder()
  .inputs([<appliedenergistics2:material:39>])
  .outputs([<metaitem:dustSteel>])
  .duration(20)
  .EUt(16)
  .buildAndRegister();
