import crafttweaker.item.IItemStack;

val RemoveItemsFromJEI as IItemStack[] = [
	<gendustry:industrial_grafter:*>,
	<gendustry:industrial_scoop:*>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Фикс сот с красителями
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:10>)
	.chancedOutput(<gendustry:honey_drop:10>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:11>)
	.chancedOutput(<gendustry:honey_drop:11>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:12>)
	.chancedOutput(<gendustry:honey_drop:12>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:13>)
	.chancedOutput(<gendustry:honey_drop:13>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:14>)
	.chancedOutput(<gendustry:honey_drop:14>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:15>)
	.chancedOutput(<gendustry:honey_drop:15>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:16>)
	.chancedOutput(<gendustry:honey_drop:16>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:17>)
	.chancedOutput(<gendustry:honey_drop:17>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:18>)
	.chancedOutput(<gendustry:honey_drop:18>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:19>)
	.chancedOutput(<gendustry:honey_drop:19>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:20>)
	.chancedOutput(<gendustry:honey_drop:20>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:21>)
	.chancedOutput(<gendustry:honey_drop:21>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:22>)
	.chancedOutput(<gendustry:honey_drop:22>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:23>)
	.chancedOutput(<gendustry:honey_drop:23>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:24>)
	.chancedOutput(<gendustry:honey_drop:24>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();
//Соты 
centrifuge.recipeBuilder()
	.inputs(<gendustry:honey_comb:25>)
	.chancedOutput(<gendustry:honey_drop:25>, 10000, 0)
	.chancedOutput(<forestry:beeswax>, 5000, 1000)
	.chancedOutput(<forestry:honey_drop>, 3000, 750)
	.duration(30).EUt(5).buildAndRegister();

//Создание рецептов
//Образец гена пустой
recipes.addShaped(<gendustry:gene_sample_blank>, 
[[null ,<ore:plateTin>, null],
[<ore:plateTin>, <ore:paneGlass> ,<ore:plateTin>],
[null ,<ore:plateTin>, null]]);

//Образец гена
recipes.addShaped(<gendustry:gene_template>, 
[[null, <ore:plateTin>, null],
[<ore:plateTin>,<gregtech:meta_item_1:15111>,<ore:plateTin>],
[null, <ore:plateTin>, null]]);

//Набор пыльцы
recipes.addShaped(<gendustry:pollen_kit>, 
[[<gendustry:labware>,<ore:paper>,null],
[<ore:string>,null,null],
[null,null,null]]);

//Лаб. предметы
recipes.addShaped(<gendustry:labware>*16, 
[[<ore:paneGlass>,null,<ore:paneGlass>],
[<ore:paneGlass>,<ore:lensDiamond>,<ore:paneGlass>],
[<ore:paneGlass>,<ore:craftingToolKnife>,<ore:paneGlass>]]);

//Улучшающая рамка
recipes.addShaped(<gendustry:upgrade_frame>, 
[[<ore:plateTin>,<ore:cableGtDoubleRedAlloy>,<ore:plateTin>],
[<ore:screwGold>,<galacticraftcore:canister>,<ore:screwGold>],
[<ore:plateTin>,<ore:cableGtDoubleRedAlloy>,<ore:plateTin>]]);

//Климатический модуль
recipes.addShaped(<gendustry:climate_module>, 
[[<ore:plateBronze>,<ore:cableGtSingleRedAlloy>,<ore:plateBronze>],
[<ore:plateBronze>,<ore:gearBronze>,<ore:plateBronze>],
[<ore:plateBronze>,<ore:cableGtSingleRedAlloy>,<ore:plateBronze>]]);

//Модуль энергии
recipes.addShaped(<gendustry:power_module>, 
[[<ore:gearBronze>,<ore:cableGtSingleRedAlloy>,<ore:gearBronze>],
[<gregtech:meta_item_1:81>,<appliedenergistics2:energy_cell>,<gregtech:meta_item_1:81>],
[<ore:gearBronze>,<ore:cableGtSingleRedAlloy>,<ore:gearBronze>]]);

//Херня связанная с пчелами
recipes.addShaped(<gendustry:bee_receptacle>, 
[[<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>],
[<ore:plateBronze>,<ore:paneGlass>,<ore:plateBronze>],
[<ore:cableGtSingleRedAlloy>,<minecraft:light_weighted_pressure_plate>,<ore:cableGtSingleRedAlloy>]]);

//Бак с мутагеном?
recipes.addShaped(<gendustry:mutagen_tank>, 
[[<ore:plateTin>,<ore:paneGlass>,<ore:plateTin>],
[<ore:plateTin>,<ore:paneGlass>,<ore:plateTin>],
[<ore:plateTin>,<ore:paneGlass>,<ore:plateTin>]]);

//Сенсор ошибок
recipes.addShaped(<gendustry:error_sensor_cover>, 
[[<ore:plateBronze>,<ore:cableGtSingleRedAlloy>,<ore:plateBronze>],
[<ore:cableGtSingleRedAlloy>,<ore:stickIronMagnetic>,<ore:cableGtSingleRedAlloy>],
[<ore:plateBronze>,<ore:cableGtSingleRedAlloy>,<ore:plateBronze>]]);

//Шина импорта, которая крышка
recipes.addShaped(<gendustry:import_cover>, 
[[<ore:plateBronze>,null,<ore:plateBronze>],
[null,<ore:craftingPiston>,null],
[null,<ore:gearBronze>,null]]);

//Крышка втягивания
recipes.addShaped(<gendustry:eject_cover>, 
[[null,<ore:gearBronze>,null],
[null,<ore:craftingPiston>,null],
[<ore:plateBronze>,null,<ore:plateBronze>]]);

//Индустриальная пасека
recipes.addShaped(<gendustry:industrial_apiary>, 
[[<ore:paneGlass>,<forestry:apiary>,<ore:paneGlass>],
[<gendustry:bee_receptacle>,<gregtech:machine:986>,<gendustry:bee_receptacle>],
[<ore:gearBronze>,<ore:pipeTinySteel>,<ore:gearBronze>]]);

//Мутатрон
recipes.addShaped(<gendustry:mutatron>, 
[[<gendustry:bee_receptacle>,<gendustry:genetics_processor>,<ore:cableGtSingleRedAlloy>],
[<gendustry:power_module>,<gregtech:machine:986>,<gregtech:meta_item_1:139>],
[<gendustry:bee_receptacle>,<gendustry:mutagen_tank>,<ore:plateBronze>]]);

//Производитель мутагена
recipes.addShaped(<gendustry:mutagen_producer>, 
[[<gendustry:power_module>,<galacticraftcore:grating>,<gendustry:power_module>],
[<gregtech:machine:1502>,<gregtech:machine:986>,<gregtech:machine:1502>],
[<ore:gearBronze>,<gendustry:mutagen_tank>,<ore:gearBronze>]]);

//Принтер?
recipes.addShaped(<gendustry:imprinter>, 
[[<ore:cableGtSingleSilver>,<gendustry:genetics_processor>,<ore:cableGtSingleSilver>],
[<gendustry:bee_receptacle>,<gregtech:machine:986>,<ore:pipeTinySteel>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Шаблонщик?
recipes.addShaped(<gendustry:sampler>, 
[[<ore:cableGtSingleSilver>,<gendustry:genetics_processor>,<ore:cableGtSingleSilver>],
[<gendustry:bee_receptacle>,<gregtech:machine:986>,<gendustry:gene_sample_blank>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Улучшенный мутатрон
recipes.addShaped(<gendustry:mutatron_advanced>, 
[[<ore:cableGtSingleGold>,<gregtech:machine:1502>,<gregtech:machine:1501>],
[<gendustry:genetics_processor>,<gendustry:mutatron>,<gendustry:genetics_processor>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Разжижитель
recipes.addShaped(<gendustry:liquifier>, 
[[<ore:cableGtSingleSilver>,<ore:circuitAdvanced>,<ore:cableGtSingleSilver>],
[<ore:pipeTinySteel>,<gregtech:machine:986>,<gregtech:machine:1502>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Экстрактор
recipes.addShaped(<gendustry:extractor>, 
[[<ore:cableGtSingleSteel>,<ore:gearBronze>,<ore:cableGtSingleSteel>],
[<ore:circuitGood>,<gregtech:machine:986>,<gendustry:genetics_processor>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Транспозер-_-
recipes.addShaped(<gendustry:transposer>, 
[[<ore:pipeTinySteel>,<gendustry:power_module>,<ore:pipeTinySteel>],
[<gregtech:machine:1502>,<gregtech:machine:986>,<gendustry:genetics_processor>],
[<ore:gearBronze>,<ore:pipeSmallPlastic>,<ore:gearBronze>]]);

//Репликатор
recipes.addShaped(<gendustry:replicator>, 
[[<ore:circuitGood>,<ore:cableGtSingleSilver>,<ore:circuitGood>],
[<ore:pipeTinySteel>,<gregtech:machine:986>,<ore:pipeTinySteel>],
[<ore:plateBronze>,<gendustry:genetics_processor>,<ore:plateBronze>]]);

//Модуль - Plains Emulator
recipes.addShaped(<gendustry:apiary.upgrade:17>,
   [[<gregtech:meta_item_1:146>,<gendustry:climate_module>,<gregtech:meta_item_1:146>],
	[<ore:grass>,<gendustry:upgrade_frame>,<ore:grass>],
	[<gregtech:meta_item_1:146>,<gendustry:env_processor>,<gregtech:meta_item_1:146>]]);

//Модуль - Humidifier Upgrade
recipes.addShaped(<gendustry:apiary.upgrade:4>,
   [[<tfc:food/sugarcane>,<tfc:food/sugarcane>,<tfc:food/sugarcane>],
	[<ore:plateBronze>,<gendustry:upgrade_frame>,<ore:plateBronze>],
	[<ore:plateBronze>,<ore:blockGlass>,<ore:plateBronze>]]);

//Модуль - Desert Emulator
recipes.addShaped(<gendustry:apiary.upgrade:16>,
   [[<gregtech:meta_item_1:164>,<gendustry:climate_module>,<gregtech:meta_item_1:164>],
	[<ore:sand>,<gendustry:upgrade_frame>,<ore:sand>],
	[<gregtech:meta_item_1:164>,<gendustry:env_processor>,<gregtech:meta_item_1:164>]]);
