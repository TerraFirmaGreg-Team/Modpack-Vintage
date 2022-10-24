#priority 1
# Forestry

import mods.forestry.Carpenter;
import mods.forestry.ThermionicFabricator;
import mods.forestry.Centrifuge;
import crafttweaker.item.IItemStack;

print("Initializing 'Forestry'...");


// Удаление рецептов из NEI
var items = [<binniecore:field_kit:64>, <forestry:kit_shovel>, <forestry:kit_pickaxe>, <forestry:squeezer>, <forestry:fabricator>, <forestry:gear_bronze>, <forestry:gear_copper>, <forestry:gear_tin>, <forestry:rainmaker>, <forestry:cart.beehouse:1>, <forestry:ingot_copper>, <forestry:ingot_tin>, <forestry:ingot_bronze>, <forestry:crafting_material:7>, <forestry:wood_pulp>, <forestry:carton>, <forestry:resource_storage:1>, <forestry:resource_storage:2>, <forestry:resource_storage:3>, <extrabees:misc>, <binniecore:cylinder>, <binniecore:cylinder:1>, <extrabees:misc:26>, <extrabees:misc:18>, <extrabees:misc:5>, <extrabees:misc:4>, <extrabees:misc:3>, <extrabees:misc:2>, <extrabees:misc:1>, <extrabees:misc:14>, <extrabees:misc:13>, <extrabees:misc:12>, <extrabees:misc:11>, <extrabees:misc:10>, <extrabees:misc:9>, <extrabees:misc:8>, <extrabees:misc:7>, <extrabees:misc:6>, <extrabees:misc:15>, <extrabees:misc:16>, <extrabees:misc:17>, <binniecore:storage>, <binniecore:storage:1>, <binniecore:storage:2>, <binniecore:storage:3>, <binniecore:storage:4>, <binniecore:storage:5>, <forestry:broken_bronze_shovel>, <forestry:bronze_shovel>, <forestry:broken_bronze_pickaxe>, <forestry:bronze_pickaxe>, <binniecore:glass>, <forestry:crafting_material>, <forestry:fermenter>, <forestry:moistener>, <forestry:still>, <forestry:ash>, <forestry:humus>] as IItemStack[];
for item in items {
    mods.jei.JEI.removeAndHide(item);
	item.addTooltip("");
}

// Удаление рецептов плотника
Carpenter.removeRecipe(<forestry:humus>, <liquid:water>);
Carpenter.removeRecipe(<forestry:ingot_bronze>);
Carpenter.removeRecipe(<forestry:bog_earth>, <liquid:water>);
Carpenter.removeRecipe(<minecraft:ender_pearl>);
Carpenter.removeRecipe(<forestry:kit_shovel>);
Carpenter.removeRecipe(<forestry:kit_pickaxe>);
Carpenter.removeRecipe(<forestry:hardened_machine>, <liquid:water>);
Carpenter.removeRecipe(<extrabees:misc>, <liquid:for.honey>);
Carpenter.removeRecipe(<forestry:wood_pulp>, <liquid:water>);
Carpenter.removeRecipe(<minecraft:paper>, <liquid:water>);
Carpenter.removeRecipe(<forestry:carton>, <liquid:water>);
Carpenter.removeRecipe(<forestry:portable_alyzer>, <liquid:water>);
Carpenter.removeRecipe(<forestry:oak_stick>, <liquid:seed.oil>);

// Новые рецепты в плотнике
// Бумага
Carpenter.addRecipe(<minecraft:paper>, [[<ore:dustWood>],[<ore:dustWood>],[<ore:dustWood>]], 30, <liquid:water> * 250);
Carpenter.addRecipe(<minecraft:paper>, [[<ore:dustWood>],[<ore:dustWood>],[<ore:dustWood>]], 30, <liquid:fresh_water> * 250);
// Банка
Carpenter.addRecipe(<forestry:can>, [[<ore:plateTin>]], 25, <liquid:water> * 250);
Carpenter.addRecipe(<forestry:can>, [[<ore:plateTin>]], 25, <liquid:fresh_water> * 250);
// Восковая капсула
Carpenter.addRecipe(<forestry:capsule>, [[<forestry:beeswax>],[<forestry:beeswax>]], 10, <liquid:water> * 100);
Carpenter.addRecipe(<forestry:capsule>, [[<forestry:beeswax>],[<forestry:beeswax>]], 10, <liquid:fresh_water> * 100);
// Огнеупорная капсула
Carpenter.addRecipe(<forestry:refractory>, [[<forestry:refractory_wax>],[<forestry:refractory_wax>]], 10, <liquid:water> * 100);
Carpenter.addRecipe(<forestry:refractory>, [[<forestry:refractory_wax>],[<forestry:refractory_wax>]], 10, <liquid:fresh_water> * 100);
// Свеча
Carpenter.addRecipe(<forestry:candle>, [[<minecraft:string>],[<forestry:beeswax>],[<forestry:beeswax>]], 15, <liquid:water> * 250);
Carpenter.addRecipe(<forestry:candle>, [[<minecraft:string>],[<forestry:beeswax>],[<forestry:beeswax>]], 15, <liquid:fresh_water> * 250);
// Полированная палка
Carpenter.addRecipe(<forestry:oak_stick> * 2, [[<ore:logWood>],[<ore:logWood>]], 45, <liquid:seed.oil> * 100);

// Новые рецепты в центрифуге
// Медовые соты
Centrifuge.addRecipe([<forestry:honey_drop> % 85, <forestry:beeswax> % 85], <forestry:bee_combs>, 20);
// Кипящие соты
Centrifuge.addRecipe([<forestry:phosphor> % 75, <forestry:honey_drop> % 85, <forestry:refractory_wax> % 85], <forestry:bee_combs:2>, 20);
// Вязкие соты
Centrifuge.addRecipe([<forestry:propolis> % 75, <forestry:honey_drop> % 85, <forestry:beeswax> % 85], <forestry:bee_combs:3>, 20);
// Морозные соты
Centrifuge.addRecipe([<forestry:pollen:1> % 25, <minecraft:snowball> % 25, <forestry:honey_drop> % 85, <forestry:beeswax> % 85], <forestry:bee_combs:4>, 20);
// Капающие соты
Centrifuge.addRecipe([<forestry:honeydew> % 75, <forestry:honey_drop> % 85, <forestry:beeswax> % 85], <forestry:bee_combs:5>, 20);
// Шелковистые соты
Centrifuge.addRecipe([<forestry:propolis:3> % 75, <forestry:honey_drop> % 85, <forestry:beeswax> % 85], <forestry:bee_combs:6>, 20);
// Пересохшие соты
Centrifuge.addRecipe([<forestry:honey_drop> % 85, <forestry:beeswax> % 85], <forestry:bee_combs:7>, 20);
// Замшелые соты
Centrifuge.addRecipe([<forestry:honey_drop> % 85, <forestry:beeswax> % 85], <forestry:bee_combs:15>, 20);

// Удаление рецептов
recipes.remove(<forestry:fertilizer_compound>);

// Удаление рецептов крафтов из верстака по названию
recipes.removeByRecipeName("binniecore:glass_bottle_conversion");
recipes.removeByRecipeName("binniecore:glass_container_conversion");
recipes.removeByRecipeName("binniecore:glass_container");

// Бутерброд с медом
recipes.remove(<forestry:honeyed_slice>);
mixer.recipeBuilder()
    .inputs(<ore:categoryBread>)
    .fluidInputs([<liquid:for.honey> * 300])
    .outputs(<forestry:honeyed_slice>)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();
mixer.recipeBuilder()
    .inputs(<forestry:honey_drop> * 3, <ore:categoryBread>)
    .outputs(<forestry:honeyed_slice>)
    .duration(15 * 20)
    .EUt(24)
    .buildAndRegister();
recipes.addShaped(<forestry:honeyed_slice>, 
	[[null, <forestry:honey_drop>, null], 
	[<forestry:honey_drop>, <ore:categoryBread>, <forestry:honey_drop>], 
	[null, <forestry:honey_drop>, null]]);

// Горшочек меда
recipes.remove(<forestry:honey_pot>);
mixer.recipeBuilder()
    .inputs(<forestry:honey_drop> * 5, <forestry:capsule>)
    .outputs(<forestry:honey_pot>)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();
recipes.addShaped(<forestry:honey_pot>, 
	[[<forestry:honey_drop>, <forestry:honey_drop>, <forestry:honey_drop>], 
	[<forestry:honey_drop>, <forestry:capsule>, <forestry:honey_drop>], 
	[<forestry:honey_drop>, <forestry:honey_drop>, <forestry:honey_drop>]]);

// Амброзия
recipes.remove(<forestry:ambrosia>);
mixer.recipeBuilder()
    .inputs(<forestry:honeydew> * 5, <forestry:royal_jelly> * 3, <forestry:capsule>)
    .outputs(<forestry:ambrosia>)
    .duration(12 * 20)
    .EUt(16)
    .buildAndRegister();

// Пчеловодство
// Пропитанный корпус
Carpenter.removeRecipe(<forestry:impregnated_casing>);
assembler.recipeBuilder()
    .inputs(<ore:logWood> * 8)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 2}))
    .fluidInputs([<liquid:seed.oil> * 1000])
    .outputs(<forestry:impregnated_casing>)
    .duration(12 * 20)
    .EUt(24)
    .buildAndRegister();
recipes.addShaped(<forestry:impregnated_casing>, 
	[[<ore:logWood>, <ore:logWood>, <ore:logWood>], 
	[<ore:logWood>, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "seed.oil", Amount: 1000}}), <ore:logWood>], 
	[<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

// Пчелиный домик
recipes.remove(<forestry:bee_house>);
assembler.recipeBuilder()
    .inputs(<ore:lumber> * 5, <forestry:impregnated_casing>, <forestry:frame_untreated>)
    .fluidInputs([<liquid:glue> * 200])
    .outputs(<forestry:bee_house>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();
recipes.addShaped(<forestry:bee_house>, 
	[[<ore:lumber>, <ore:lumber>, <ore:lumber>], 
	[<ore:glue> | <ore:dustRawRubber>, <forestry:impregnated_casing>, <ore:glue> | <ore:dustRawRubber>], 
	[<ore:lumber>, <forestry:frame_untreated>, <ore:lumber>]]);

// Пасека
recipes.remove(<forestry:apiary>);
assembler.recipeBuilder()
    .inputs(<ore:lumber> * 5, <forestry:frame_impregnated> * 3, <forestry:bee_house>)
    .outputs(<forestry:apiary>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();
recipes.addShaped(<forestry:apiary>, 
	[[<ore:lumber>, <ore:lumber>, <ore:lumber>], 
	[<forestry:frame_impregnated>, <forestry:bee_house>, <forestry:frame_impregnated>], 
	[<ore:lumber>, <forestry:frame_impregnated>, <ore:lumber>]]);

// Центрифуга
recipes.remove(<forestry:centrifuge>);
recipes.addShaped(<forestry:centrifuge>, 
	[[<ore:plankWood>, <forestry:raintank>, <ore:plankWood>], 
	[<immersiveengineering:material:9>, <forestry:sturdy_machine>, <immersiveengineering:material:9>], 
	[<ore:plankWood>, <immersiveengineering:metal_decoration0:4>, <ore:plankWood>]]);

// Плотник
recipes.remove(<forestry:carpenter>);
recipes.addShaped(<forestry:carpenter>, 
	[[<ore:plankTreatedWood>, <ore:chestWood>, <ore:plankTreatedWood>], 
	[<immersiveengineering:material:9>, <forestry:sturdy_machine>, <immersiveengineering:material:9>], 
	[<ore:plankTreatedWood>, <immersiveengineering:metal_decoration0:4>, <ore:plankTreatedWood>]]);

// Торфяной двигатель
recipes.remove(<forestry:engine_peat>);
recipes.addShaped(<forestry:engine_peat>, 
	[[<ore:plankTreatedWood>, <immersiveengineering:connector>, <ore:plankTreatedWood>], 
	[<immersiveengineering:material:9>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:material:9>], 
	[<ore:plankTreatedWood>, <minecraft:furnace>, <ore:plankTreatedWood>]]);

// Биогазовый двигатель
recipes.remove(<forestry:engine_biogas>);
recipes.addShaped(<forestry:engine_biogas>, 
	[[<ore:plankTreatedWood>, <immersiveengineering:connector>, <ore:plankTreatedWood>], 
	[<immersiveengineering:material:9>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:material:9>], 
	[<immersiveengineering:metal_device0:4>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device0:4>]]);

// Заводной двигатель 
recipes.remove(<forestry:engine_clockwork>);
recipes.addShaped(<forestry:engine_clockwork>, 
	[[<ore:plankWood>, <immersiveengineering:connector>, <ore:plankWood>], 
	[<immersiveengineering:material:8>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:material:8>], 
	[<ore:plankWood>, <ore:gearBronze>, <ore:plankWood>]]);

// Компост
recipes.remove(<forestry:fertilizer_bio>);
recipes.addShaped(<forestry:fertilizer_bio>, 
	[[<ore:dustAsh>, <ore:dustWood>, <ore:dustAsh>], 
	[<ore:dustWood>, <ore:dirt>, <ore:dustWood>], 
	[<ore:dustAsh>, <ore:dustWood>, <ore:dustAsh>]]);

// Болотная земля
recipes.remove(<forestry:bog_earth>);
recipes.addShaped(<forestry:bog_earth> * 4, 
	[[<forestry:fertilizer_bio>, <ore:dirt>, <forestry:fertilizer_bio>], 
	[<ore:sand>, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "fresh_water", Amount: 1000}}) | <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <ore:sand>], 
	[<forestry:fertilizer_bio>, <ore:dirt>, <forestry:fertilizer_bio>]]);

// Смолистый торф
recipes.remove(<forestry:bituminous_peat>);
recipes.addShaped(<forestry:bituminous_peat> * 8, 
	[[<forestry:peat>, <forestry:peat>, <forestry:peat>], 
	[<forestry:peat>, <tfc:wooden_bucket>.withTag({Fluid: {FluidName: "latex", Amount: 1000}}), <forestry:peat>], 
	[<forestry:peat>, <forestry:peat>, <forestry:peat>]]);

// Кирпич из золы
recipes.remove(<forestry:ash_brick>);
recipes.addShaped(<forestry:ash_brick>, 
	[[<tfc:mortar>, <ore:dustAsh>, <tfc:mortar>], 
	[<ore:dustAsh>, <minecraft:brick_block>, <ore:dustAsh>], 
	[<tfc:mortar>, <ore:dustAsh>, <tfc:mortar>]]);

// Ступеньки из золы
recipes.remove(<forestry:ash_stairs>);
recipes.addShaped(<forestry:ash_stairs> * 4, 
	[[<forestry:ash_brick>, null, null], 
	[<forestry:ash_brick>, <forestry:ash_brick>, null], 
	[<forestry:ash_brick>, <forestry:ash_brick>, <forestry:ash_brick>]]);

// Печатные платы
// Основная печатная плата
Carpenter.removeRecipe(<forestry:chipsets>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 4, <gregtech:meta_item_1:381> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:chipsets>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 4, <gregtech:meta_item_1:381> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<forestry:chipsets>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Продвинутая печатная плата
Carpenter.removeRecipe(<forestry:chipsets:1>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleTin> * 4, <gregtech:meta_item_1:382> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:chipsets:1>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleTin> * 4, <gregtech:meta_item_1:382> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<forestry:chipsets:1>)
    .duration(10 * 20)
    .EUt(48)
    .buildAndRegister();

// Усовершенствованная печатная плата
Carpenter.removeRecipe(<forestry:chipsets:2>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleCopper> * 4, <gregtech:meta_item_1:383> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:chipsets:2>)
    .duration(10 * 20)
    .EUt(72)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleCopper> * 4, <gregtech:meta_item_1:383> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<forestry:chipsets:2>)
    .duration(10 * 20)
    .EUt(72)
    .buildAndRegister();

// Усложненная печатная плата
Carpenter.removeRecipe(<forestry:chipsets:3>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleElectrum> * 4, <gregtech:meta_item_1:384> * 2)
    .fluidInputs([<liquid:soldering_alloy> * 72])
    .outputs(<forestry:chipsets:3>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleElectrum> * 4, <gregtech:meta_item_1:384> * 2)
    .fluidInputs([<liquid:tin> * 144])
    .outputs(<forestry:chipsets:3>)
    .duration(10 * 20)
    .EUt(96)
    .buildAndRegister();

// Получение биомассы
// Удаление старых рецептов
<recipemap:pyrolyse_oven>.findRecipe(10, [<metaitem:bio_chaff> * 4, <metaitem:circuit.integrated>.withTag({Configuration: 1})], [<liquid:water> * 4000]).remove();
<recipemap:brewery>.findRecipe(4, [<metaitem:bio_chaff>], [<liquid:water> * 750]).remove();
<recipemap:brewery>.findRecipe(3, [<minecraft:beetroot:0>], [<liquid:water> * 20]).remove();
<recipemap:brewery>.findRecipe(3, [<minecraft:potato:0>], [<liquid:water> * 20]).remove();
<recipemap:brewery>.findRecipe(3, [<minecraft:carrot:0>], [<liquid:water> * 20]).remove();
<recipemap:brewery>.findRecipe(3, [<minecraft:cactus:0>], [<liquid:water> * 20]).remove();

// Новые рецепты
brewery.recipeBuilder()
    .fluidInputs([<liquid:water> * 150])
    .inputs(<tfc:food/green_apple> | <tfc:food/red_apple> | <tfc:food/lemon> | <tfc:food/orange> | <tfc:food/banana> | <tfc:food/peach> | <tfc:food/plum>)
    .fluidOutputs([<liquid:biomass> * 150])
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
brewery.recipeBuilder()
    .fluidInputs([<liquid:water> * 150])
    .inputs(<ore:categoryVegetable>)
    .fluidOutputs([<liquid:biomass> * 150])
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
brewery.recipeBuilder()
    .fluidInputs([<liquid:water> * 150])
    .inputs(<tfc:food/barley> | <tfc:food/maize> | <tfc:food/oat> | <tfc:food/rice> | <tfc:food/rye> | <tfc:food/wheat> | <tfc:food/sugarcane>)
    .fluidOutputs([<liquid:biomass> * 150])
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
brewery.recipeBuilder()
    .fluidInputs([<liquid:water> * 100])
    .inputs(<tfc:food/blackberry> | <tfc:food/blueberry> | <tfc:food/bunch_berry> | <tfc:food/cherry> | <tfc:food/cloud_berry> | <tfc:food/cranberry> | <tfc:food/elderberry> | <tfc:food/gooseberry> | <tfc:food/olive> | <tfc:food/raspberry> | <tfc:food/snow_berry> | <tfc:food/strawberry> | <tfc:food/wintergreen_berry> | <ca:tea_leaves> | <ca:coffee_cherries>)
    .fluidOutputs([<liquid:biomass> * 100])
    .duration(5 * 20)
    .EUt(16)
    .buildAndRegister();
brewery.recipeBuilder()
    .fluidInputs([<liquid:water> * 500])
    .inputs(<gregtech:meta_item_1:440>)
    .fluidOutputs([<liquid:biomass> * 500])
    .duration(30 * 20)
    .EUt(16)
    .buildAndRegister();

// Прочие предметы
// Проверенная рамка
recipes.addShaped("forestry_frame_proven", <forestry:frame_proven>,
 [[<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>],
  [<forestry:oak_stick>, <forestry:crafting_material:3>, <forestry:oak_stick>],
  [<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>]]);

// Рамка Новы
recipes.addShaped("extrabees_hive_frame_debug", <extrabees:hive_frame.debug>,
 [[<ore:stickHsss>, <ore:stickHsss>, <ore:stickHsss>],
  [<ore:stickHsss>, <gregtech:meta_item_1:282>, <ore:stickHsss>],
  [<ore:stickHsss>, <ore:stickHsss>, <ore:stickHsss>]]);

// Сачок
recipes.remove(<forestry:scoop>);
recipes.addShaped("forestry_scoop", <forestry:scoop>,
	[[<minecraft:stick>, <tfc:animal/product/wool_cloth> | <tfc:crop/product/burlap_cloth>, <minecraft:stick>],
	[<minecraft:stick>, <minecraft:stick>, <minecraft:stick>],
	[null, <minecraft:stick>, null]]);

// Банка
recipes.remove(<forestry:can>);
assembler.recipeBuilder()
    .inputs(<ore:plateTin> * 2)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<forestry:can> * 8)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();

// Восковая капсула
Carpenter.removeRecipe(<forestry:capsule>);
recipes.remove(<forestry:capsule>);
assembler.recipeBuilder()
    .inputs(<forestry:beeswax> * 2)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<forestry:capsule> * 2)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();

// Огнеупорная капсула
Carpenter.removeRecipe(<forestry:refractory>);
recipes.remove(<forestry:refractory>);
assembler.recipeBuilder()
    .inputs(<forestry:refractory_wax> * 2)
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<forestry:refractory> * 2)
    .duration(10 * 20)
    .EUt(16)
    .buildAndRegister();

// Экран среды обитания
Carpenter.removeRecipe(<forestry:habitat_screen>);
assembler.recipeBuilder()
    .inputs(<ore:circuitMv>, <ore:paneGlass> * 2, <ore:plateSteel> * 6)
    .outputs(<forestry:habitat_screen>)
    .duration(10 * 20)
    .EUt(64)
    .buildAndRegister();

// Секретер
Carpenter.removeRecipe(<forestry:escritoire>);
assembler.recipeBuilder()
    .inputs(<ore:plateWood> * 6, <forestry:oak_stick> * 4, <ore:foilBronze> * 4, <ore:screwBronze> * 4, <ore:boltBronze> * 4)
    .fluidInputs([<liquid:seed.oil> * 500])
    .outputs(<forestry:escritoire>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();

// Темная свеча
Carpenter.removeRecipe(<forestry:candle>);
assembler.recipeBuilder()
    .inputs(<forestry:beeswax> * 2, <forestry:crafting_material:2>)
    .fluidInputs([<liquid:water> * 100])
    .outputs(<forestry:candle>)
    .duration(3 * 20)
    .EUt(10)
    .buildAndRegister();

// Тканный шелк
Carpenter.removeRecipe(<forestry:crafting_material:3>);
assembler.recipeBuilder()
    .inputs(<forestry:crafting_material:2> * 9)
    .fluidInputs([<liquid:water> * 500])
    .outputs(<forestry:crafting_material:3>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Укрепленный корпус
assembler.recipeBuilder()
    .inputs(<ore:plateDiamond> * 8, <forestry:sturdy_machine>)
    .fluidInputs([<liquid:water> * 5000])
    .outputs(<forestry:hardened_machine>)
    .duration(10 * 20)
    .EUt(128)
    .buildAndRegister();

// Пропитанная обшивка
Carpenter.removeRecipe(<forestry:crafting_material:6>);
assembler.recipeBuilder()
    .inputs(<forestry:beeswax> * 4, <ore:plateWood> * 3, <forestry:pollen>, <forestry:pollen:1>, <forestry:royal_jelly>)
    .fluidInputs([<liquid:water> * 500])
    .outputs(<forestry:crafting_material:6>)
    .duration(45 * 20)
    .EUt(32)
    .buildAndRegister();

// Полированная палка
assembler.recipeBuilder()
    .inputs(<ore:logWood>)
    .fluidInputs([<liquid:seed.oil> * 100])
    .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 1}))
    .outputs(<forestry:oak_stick> * 2)
    .duration(5 * 20)
    .EUt(24)
    .buildAndRegister();

// Гибкий корпус
ThermionicFabricator.removeCast(<forestry:flexible_casing>);
assembler.recipeBuilder()
    .inputs(<ore:plateBronze> * 4, <minecraft:slime_ball> * 4, <forestry:sturdy_machine>)
    .outputs(<forestry:flexible_casing>)
    .duration(15 * 20)
    .EUt(128)
    .buildAndRegister();

// Паяльник
Carpenter.removeRecipe(<forestry:soldering_iron>);
assembler.recipeBuilder()
    .inputs(<ore:foilTin> * 4, <ore:foilRubber> * 2, <ore:stickStainlessSteel> * 2, <ore:componentInductor> * 2, <ore:stickTin>, <forestry:oak_stick>)
    .outputs(<forestry:soldering_iron>)
    .duration(5 * 20)
    .EUt(32)
    .buildAndRegister();

// Получение этанола из форестри
chemical_reactor.recipeBuilder()
    .circuit(1)
    .fluidInputs([<liquid:ethanol> * 1000])
    .fluidOutputs([<liquid:bio.ethanol> * 1000])
    .duration(5 * 20)
    .EUt(32)
    .buildAndRegister();

// Очки
recipes.remove(<forestry:naturalist_helmet>);
assembler.recipeBuilder()
    .inputs(<gregtech:meta_lens:2000> * 2, <ore:wireGtSingleTin> * 3)
    .outputs(<forestry:naturalist_helmet>)
    .duration(5 * 20)
    .EUt(12)
    .buildAndRegister();

// Анализатор портативный
recipes.remove(<forestry:portable_alyzer>);
assembler.recipeBuilder()
    .inputs(<minecraft:glass_pane> * 2, <ore:plateIron> * 4, <ore:plateDiamond>, <ore:plateRedAlloy> * 2)
    .outputs(<forestry:portable_alyzer>)
    .duration(10 * 20)
    .EUt(32)
    .buildAndRegister();

// Удаление старых крафтов получения растительного масла из экстрактора из грега
<recipemap:extractor>.findRecipe(2, [<immersiveengineering:seed:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:melon_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:beetroot_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:pumpkin_seeds:0>], null).remove();
<recipemap:extractor>.findRecipe(2, [<minecraft:wheat_seeds:0>], null).remove();
// Новые крафты получения растительного масла из зерен ТФК
centrifuge.recipeBuilder()
    .circuit(2)
    .inputs(<tfc:food/maize_grain>)
    .fluidOutputs([<liquid:seed.oil> * 20])
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
centrifuge.recipeBuilder()
    .circuit(2)
    .inputs(<tfc:food/wheat_grain>)
    .fluidOutputs([<liquid:seed.oil> * 15])
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
centrifuge.recipeBuilder()
    .circuit(2)
    .inputs(<tfc:food/oat_grain>)
    .fluidOutputs([<liquid:seed.oil> * 10])
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
centrifuge.recipeBuilder()
    .circuit(2)
    .inputs(<tfc:food/barley_grain>)
    .fluidOutputs([<liquid:seed.oil> * 10])
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
centrifuge.recipeBuilder()
    .circuit(2)
    .inputs(<tfc:food/rye_grain>)
    .fluidOutputs([<liquid:seed.oil> * 10])
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
centrifuge.recipeBuilder()
    .circuit(2)
    .inputs(<ca:coffee_beans_green>)
    .fluidOutputs([<liquid:seed.oil> * 25])
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
extractor.recipeBuilder()
    .inputs(<tfc:food/olive_paste>)
    .fluidOutputs([<liquid:seed.oil> * 25])
    .duration(2 * 20)
    .EUt(8)
    .buildAndRegister();
// Новые крафты получения растительного масла из семечек тыквы и арбуза
centrifuge.recipeBuilder()
    .circuit(2)
    .inputs(<minecraft:pumpkin_seeds>)
    .fluidOutputs([<liquid:seed.oil> * 10])
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
centrifuge.recipeBuilder()
    .circuit(2)
    .inputs(<minecraft:melon_seeds>)
    .fluidOutputs([<liquid:seed.oil> * 10])
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();
// Из растений из форестри
centrifuge.recipeBuilder()
    .circuit(2)
    .inputs(<forestry:fruits:2>)
    .fluidOutputs([<liquid:seed.oil> * 45])
    .duration(5 * 20)
    .EUt(8)
    .buildAndRegister();

// Прочный корпус
recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>, 
	[[<ore:plateBronze>, <ore:plateCopper>, <ore:plateBronze>], 
	[<ore:plateCopper>, <ore:craftingToolWrenchEmptyTag>, <ore:plateCopper>], 
	[<ore:plateBronze>, <ore:plateCopper>, <ore:plateBronze>]]);

// Анализатор 
recipes.remove(<forestry:analyzer>);
recipes.addShaped(<forestry:analyzer>, 
	[[<ore:plateSteel>, <forestry:portable_alyzer>, <ore:plateSteel>], 
	[<ore:plateBronze>, <forestry:sturdy_machine>, <ore:plateBronze>], 
	[<ore:plateBronze>, <ore:plateSteel>, <ore:plateBronze>]]);

// Минеральное удобрение
recipes.addShaped(<forestry:fertilizer_compound> * 8, 
	[[null, <ore:sand>, null], 
	[<ore:sand>, <ore:dustApatite>, <ore:sand>], 
	[null, <ore:sand>, null]]);

// Бывшая среда обитания
recipes.remove(<forestry:habitat_former>);
recipes.addShaped("forestry_habitat_former", <forestry:habitat_former>,
 [[<ore:blockGlass>, <forestry:chipsets:3>, <ore:blockGlass>],
  [<gregtech:meta_item_1:144>, <forestry:hardened_machine>, <gregtech:meta_item_1:144>],
  [<ore:circuitHv>, <gregtech:meta_item_1:144>, <ore:circuitHv>]]);

// Разливочный механизм 
recipes.remove(<forestry:bottler>);
recipes.addShaped("forestry_filling_mechanism", <forestry:bottler>,
 [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
  [<gregtech:meta_item_1:142>, <forestry:flexible_casing>, <gregtech:meta_item_1:142>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Бак для дождя
recipes.remove(<forestry:raintank>);
recipes.addShaped("forestry_raintank", <forestry:raintank>,
 [[<ore:plateSteel>, null, <ore:plateSteel>],
  [<ore:plateSteel>, <ore:craftingToolHardHammerEmptyTag>, <ore:plateSteel>],
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

// Пипетка
recipes.remove(<forestry:pipette>);
recipes.addShaped("forestry_pipette", <forestry:pipette>,
 [[null, null, <ore:plateRubber>],
  [null, <ore:plateRubber>, null],
  [<gregtech:meta_item_1:517>, null, null]]);

// Дымарь
recipes.remove(<forestry:smoker>);
recipes.addShaped("forestry_smoker", <forestry:smoker>,
 [[<minecraft:leather>, <minecraft:hay_block>, <ore:plateTin>],
  [<minecraft:leather>, <minecraft:flint_and_steel>, <ore:plateTin>],
  [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);

// Пульсирующая сеть
electric_blast_furnace.recipeBuilder()
    .inputs(<gregtech:meta_item_1:499> * 8, <ore:dustEnderPearl> * 4, <gregtech:meta_item_1:491> * 2)
    .outputs(<forestry:crafting_material:1>)
    .property("temperature", 2700)
    .duration(30 * 20)
    .EUt(128)
    .buildAndRegister();

// Удаление предметов
// Рассеивающий заряд
Carpenter.removeRecipe(<forestry:crafting_material:4>);
<forestry:crafting_material:4>.addTooltip("§cВ данной сборке этот предмет выключен");

// Капсула йода
Carpenter.removeRecipe(<forestry:iodine_capsule>);
<forestry:iodine_capsule>.addTooltip("§cВ данной сборке этот предмет выключен");

// Электронные лампы
// Медная электронная лампа
recipes.remove(<forestry:thermionic_tubes>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustCopper>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Оловянная электронная лампа
recipes.remove(<forestry:thermionic_tubes:1>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustTin>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:1>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Бронзовая электронная лампа
recipes.remove(<forestry:thermionic_tubes:2>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustBronze>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:2>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Железная электронная лампа
recipes.remove(<forestry:thermionic_tubes:3>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustIron>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:3>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Золотая электронная лампа
recipes.remove(<forestry:thermionic_tubes:4>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustGold>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:4>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Алмазная электронная лампа
recipes.remove(<forestry:thermionic_tubes:5>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustDiamond>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:5>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Обсидиановая электронная лампа
recipes.remove(<forestry:thermionic_tubes:6>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustObsidian>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:6>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Огненная электронная лампа
recipes.remove(<forestry:thermionic_tubes:7>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustBlaze>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:7>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Изумрудная электронная лампа
recipes.remove(<forestry:thermionic_tubes:9>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustEmerald>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:9>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Апатитовая электронная лампа
recipes.remove(<forestry:thermionic_tubes:10>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustApatite>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:10>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Лазуритная электронная лампа
recipes.remove(<forestry:thermionic_tubes:11>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustLapis>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:11>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

//  Эндер электронная лампа
recipes.remove(<forestry:thermionic_tubes:12>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <ore:dustEnderEye>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:12>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

//  Редстоун электронная лампа
recipes.remove(<forestry:thermionic_tubes:13>);
assembler.recipeBuilder()
    .inputs(<ore:wireGtSingleRedAlloy> * 2, <minecraft:redstone>, <gregtech:meta_item_1:517>)
    .fluidInputs([<liquid:glass> * 144])
    .outputs(<forestry:thermionic_tubes:13>)
    .duration(10 * 20)
    .EUt(24)
    .buildAndRegister();

// Роевня
recipes.remove(<forestry:alveary.swarmer>);
assembler.recipeBuilder()
    .inputs(<forestry:thermionic_tubes:5> * 4, <ore:plateGold> * 4, <forestry:alveary.plain>)
    .outputs(<forestry:alveary.swarmer>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Вентилятор улья
recipes.remove(<forestry:alveary.fan>);
assembler.recipeBuilder()
    .inputs(<ore:plateBronze> * 4, <ore:rotorTin>, <gregtech:meta_item_1:127>, <forestry:alveary.plain>)
    .outputs(<forestry:alveary.fan>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Обогреватель улья
recipes.remove(<forestry:alveary.heater>);
assembler.recipeBuilder()
    .inputs(<ore:plateCopper> * 4, <ore:wireGtSingleCopper> * 4, <forestry:thermionic_tubes:4>, <forestry:alveary.plain>)
    .outputs(<forestry:alveary.heater>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Кондиционер улья
recipes.remove(<forestry:alveary.hygro>);
assembler.recipeBuilder()
    .inputs(<ore:plateSilver> * 4, <minecraft:water_bucket>, <gregtech:meta_item_1:142>, <forestry:alveary.plain>)
    .outputs(<forestry:alveary.hygro>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Стабилизатор улья
recipes.remove(<forestry:alveary.stabiliser>);
assembler.recipeBuilder()
    .inputs(<ore:plateNetherQuartz> * 4, <forestry:alveary.plain>)
    .outputs(<forestry:alveary.stabiliser>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Сито улья
recipes.remove(<forestry:alveary.sieve>);
assembler.recipeBuilder()
    .inputs(<ore:plateBronze> * 2, <forestry:crafting_material:3> * 2, <forestry:alveary.plain>)
    .outputs(<forestry:alveary.sieve>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Мутатор
recipes.remove(<extrabees:alveary>);
assembler.recipeBuilder()
    .inputs(<ore:plateUranium235> * 6, <ore:plateWood> * 6, <forestry:thermionic_tubes:5> * 4, <forestry:alveary.plain>)
    .outputs(<extrabees:alveary>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Блок для рамок
recipes.remove(<extrabees:alveary:1>);
assembler.recipeBuilder()
    .inputs(<ore:plateSteel> * 4, <forestry:crafting_material:6> * 4, <forestry:thermionic_tubes:4> * 2, <forestry:alveary.plain>)
    .outputs(<extrabees:alveary:1>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Защита от дождя
recipes.remove(<extrabees:alveary:2>);
assembler.recipeBuilder()
    .inputs(<ore:plateRubber> * 6, <minecraft:brick> * 4, <forestry:thermionic_tubes:4> * 2, <forestry:alveary.plain>)
    .outputs(<extrabees:alveary:2>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Светильник для улья
recipes.remove(<extrabees:alveary:3>);
assembler.recipeBuilder()
    .inputs(<ore:plateGlowstone> * 6, <forestry:thermionic_tubes:4> * 2, <forestry:alveary.plain>)
    .outputs(<extrabees:alveary:3>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Электрический стимулятор
recipes.remove(<extrabees:alveary:4>);
assembler.recipeBuilder()
    .inputs(<ore:plateEnderPearl> * 6, <forestry:chipsets:2>.withTag({T: 2 as short}) * 4, <forestry:thermionic_tubes:4> * 2, <forestry:alveary.plain>)
    .outputs(<extrabees:alveary:4>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Блок для личинок пчел
recipes.remove(<extrabees:alveary:5>);
assembler.recipeBuilder()
    .inputs(<ore:plateGlass> * 4, <forestry:crafting_material:6> * 4, <forestry:thermionic_tubes:5>, <forestry:alveary.plain>)
    .outputs(<extrabees:alveary:5>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();

// Активатор
recipes.remove(<extrabees:alveary:6>);
assembler.recipeBuilder()
    .inputs(<ore:gearTin> * 4, <minecraft:repeater> * 2, <forestry:alveary.plain>)
    .outputs(<extrabees:alveary:6>)
    .duration(25 * 20)
    .EUt(48)
    .buildAndRegister();


print("Initialized 'Forestry'");