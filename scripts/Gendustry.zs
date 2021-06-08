//Удаление рецептов
//recipes.remove();

//Образец гена пустой
recipes.addShaped(<gendustry:gene_sample_blank>, 
[[null ,<ore:plateTin>, null],
[<ore:plateTin>, <ore:paneGlass> ,<ore:plateTin>],
[null ,<ore:plateTin>, null]]);

//Образец гена
recipes.addShaped(<gendustry:gene_template>, 
[[<gregtech:cable:2237>,<ore:plateTin>,<gregtech:cable:2237>],
[<ore:plateTin>,<gregtech:meta_item_1:15111>,<ore:plateTin>],
[<gregtech:cable:2237>,<ore:plateTin>,<gregtech:cable:2237>]]);

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
[[<ore:plateTin>,<gregtech:cable:5237>,<ore:plateTin>],
[<ore:screwGold>,<galacticraftcore:canister>,<ore:screwGold>],
[<ore:plateTin>,<gregtech:cable:5237>,<ore:plateTin>]]);

//Климатический модуль
recipes.addShaped(<gendustry:climate_module>, 
[[<ore:plateBronze>,<ore:cableGtSingleRedAlloy>,<ore:plateBronze>],
[<ore:plateBronze>,<ore:gearBronze>,<ore:plateBronze>],
[<ore:plateBronze>,<ore:cableGtSingleRedAlloy>,<ore:plateBronze>]]);

//Модуль энергии
recipes.addShaped(<gendustry:power_module>, 
[[<ore:gearBronze>,<ore:cableGtSingleRedAlloy>,<ore:gearBronze>],
[<gregtech:meta_item_1:32640>,<appliedenergistics2:energy_cell>,<gregtech:meta_item_1:32640>],
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
[<gendustry:bee_receptacle>,<gregtech:machine:501>,<gendustry:bee_receptacle>],
[<ore:gearBronze>,<gregtech:meta_item_1:32640>,<ore:gearBronze>]]);

//Мутатрон
recipes.addShaped(<gendustry:mutatron>, 
[[<gendustry:bee_receptacle>,<gendustry:genetics_processor>,<ore:cableGtSingleRedAlloy>],
[<gendustry:power_module>,<gregtech:machine:501>,<gregtech:meta_item_1:32611>],
[<gendustry:bee_receptacle>,<gendustry:mutagen_tank>,<ore:plateBronze>]]);

//Производитель мутагена
recipes.addShaped(<gendustry:mutagen_producer>, 
[[<gendustry:power_module>,<galacticraftcore:grating>,<gendustry:power_module>],
[<gregtech:machine:813>,<gregtech:machine:501>,<gregtech:machine:813>],
[<ore:gearBronze>,<gendustry:mutagen_tank>,<ore:gearBronze>]]);

//Принтер?
recipes.addShaped(<gendustry:imprinter>, 
[[<ore:cableGtSingleSilver>,<gendustry:genetics_processor>,<ore:cableGtSingleSilver>],
[<gendustry:bee_receptacle>,<gregtech:machine:501>,<gregtech:meta_item_1:32650>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Шаблонщик?
recipes.addShaped(<gendustry:sampler>, 
[[<ore:cableGtSingleSilver>,<gendustry:genetics_processor>,<ore:cableGtSingleSilver>],
[<gendustry:bee_receptacle>,<gregtech:machine:501>,<gendustry:gene_sample_blank>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Улучшенный мутатрон
recipes.addShaped(<gendustry:mutatron_advanced>, 
[[<ore:cableGtSingleGold>,<gregtech:machine:812>,<gregtech:meta_item_1:32600>],
[<gendustry:genetics_processor>,<gendustry:mutatron>,<gendustry:genetics_processor>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Разжижитель
recipes.addShaped(<gendustry:liquifier>, 
[[<ore:cableGtSingleSilver>,<gregtech:machine:812>,<ore:cableGtSingleSilver>],
[<gregtech:meta_item_1:32640>,<gregtech:machine:501>,<gregtech:meta_item_1:32680>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Экстрактор
recipes.addShaped(<gendustry:extractor>, 
[[<ore:cableGtSingleSteel>,<ore:gearBronze>,<ore:cableGtSingleSteel>],
[<ore:circuitGood>,<gregtech:machine:502>,<gendustry:genetics_processor>],
[<ore:gearBronze>,<gendustry:power_module>,<ore:gearBronze>]]);

//Транспозер-_-
recipes.addShaped(<gendustry:transposer>, 
[[<gregtech:meta_item_1:32630>,<gendustry:power_module>,<gregtech:meta_item_1:32610>],
[<gregtech:machine:812>,<gregtech:machine:501>,<gendustry:genetics_processor>],
[<ore:gearBronze>,<gregtech:fluid_pipe:3196>,<ore:gearBronze>]]);

//Репликатор
recipes.addShaped(<gendustry:replicator>, 
[[<ore:circuitGood>,<ore:cableGtSingleSilver>,<ore:circuitGood>],
[<gregtech:meta_item_1:32611>,<gregtech:machine:502>,<gregtech:meta_item_1:32651>],
[<ore:plateBronze>,<gendustry:genetics_processor>,<ore:plateBronze>]]);

//Модуль - Plains Emulator
recipes.addShaped(<gendustry:apiary.upgrade:17>,
   [[<gregtech:meta_item_2:26095>,<gendustry:climate_module>,<gregtech:meta_item_2:26095>],
	[<ore:grass>,<gendustry:upgrade_frame>,<ore:grass>],
	[<gregtech:meta_item_2:26095>,<gendustry:env_processor>,<gregtech:meta_item_2:26095>]]);

//Модуль - Humidifier Upgrade
recipes.addShaped(<gendustry:apiary.upgrade:4>,
   [[<tfc:food/sugarcane>,<tfc:food/sugarcane>,<tfc:food/sugarcane>],
	[<ore:plateBronze>,<gendustry:upgrade_frame>,<ore:plateBronze>],
	[<ore:plateBronze>,<ore:blockGlass>,<ore:plateBronze>]]);

//Модуль - Desert Emulator
recipes.addShaped(<gendustry:apiary.upgrade:16>,
   [[<gregtech:meta_item_2:26095>,<gendustry:climate_module>,<gregtech:meta_item_2:26095>],
	[<ore:sand>,<gendustry:upgrade_frame>,<ore:sand>],
	[<gregtech:meta_item_2:26095>,<gendustry:env_processor>,<gregtech:meta_item_2:26095>]]);
