import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;

//Удаление+скрытие рецептов JEI
val RemoveItemsFromJEI as IItemStack[] = [
  <galaxyspace:ingots>,
  <galaxyspace:ingots:1>,
  <galaxyspace:ingots:2>,
  <galaxyspace:compressed_plates>,
  <galaxyspace:compressed_plates:1>,
  <galaxyspace:compressed_plates:2>,
  <galaxyspace:compressed_plates:3>,
  <galaxyspace:marsores:2>,
  <galaxyspace:marsores:2>,
  <galaxyspace:marsores:3>,
  <galaxyspace:marsores:4>,
  <galaxyspace:titanblocks:6>,
  <galaxyspace:titanblocks:3>,
  <galaxyspace:titanblocks:4>,
  <galaxyspace:titanblocks:5>,
  <galaxyspace:gsores>,
  <galaxyspace:gsores:1>,
  <galaxyspace:gsores:2>,
  <galaxyspace:mirandablocks:5>,
  <galaxyspace:titanblocks:8>,
  <galaxyspace:ioblocks:3>,
  <galaxyspace:ioblocks:4>,
  <galaxyspace:ioblocks:5>,
  <galaxyspace:mercuryblocks:3>,
  <galaxyspace:mercuryblocks:4>,
  <galaxyspace:mercuryblocks:5>,
  <galaxyspace:mirandablocks:6>,
  <galaxyspace:titanblocks:7>,
  <galaxyspace:haumeablocks:3>,
  <galaxyspace:europablocks:3>,
  <galaxyspace:europablocks:4>,
  <galaxyspace:enceladusblocks:2>,
  <galaxyspace:ceresblocks:2>,
  <galaxyspace:ceresblocks:3>,
  <galaxyspace:marsores>,
  <galaxyspace:marsores:1>,
  <galaxyspace:marsores:2>,
  <galaxyspace:marsores:5>,
  <galaxyspace:mirandablocks:7>,
  <galaxyspace:mirandablocks:3>,
  <galaxyspace:mirandablocks:4>,
  <galaxyspace:titanblocks:7>,
  <galaxyspace:ganymedeblocks:2>,
  <galaxyspace:ganymedeblocks:3>,
  <galaxyspace:europablocks:5>,
  <galaxyspace:cobalt_helmet>,
  <galaxyspace:cobalt_chest>,
  <galaxyspace:cobalt_legs>,
  <galaxyspace:cobalt_boots>,
  <galaxyspace:cobalt_sword>,
  <galaxyspace:cobalt_pickaxe>,
  <galaxyspace:cobalt_axe>,
  <galaxyspace:cobalt_spade>,
  <galaxyspace:cobalt_hoe>,
  <galaxyspace:advanced_battery>,
  <galaxyspace:modern_battery>,
  <galaxyspace:extra_battery>,
  <galaxyspace:ultimate_battery>,
  <galaxyspace:hydrogen_canister:1>,
  <galaxyspace:ethane_canister:1>,
  <galaxyspace:em_canister:1>,
  <galaxyspace:helium_canister:1>,
  <galaxyspace:hh_canister:1>,
  <galaxyspace:proxima_b_blocks:10>,
  <galaxyspace:proxima_b_blocks:5>,
  <galaxyspace:proxima_b_blocks:9>,
  <galaxyspace:proxima_b_blocks:6>,
  <galaxyspace:proxima_b_blocks:7>,
  <galaxyspace:proxima_b_blocks:8>,
  <galaxyspace:plasma_sword>.withTag({plasma_heat: 0.0 as float}),
  <galaxyspace:plasma_axe>.withTag({plasma_heat: 0.0 as float}),
  <galaxyspace:plasma_pickaxe>.withTag({plasma_heat: 0.0 as float}),
  <galaxyspace:gs_basic:29>,
  <galaxyspace:gs_basic:30>,
  <galaxyspace:mars_rover>,//WIP in GS
  <galaxyspace:barnarda_c_ores>,
  <galaxyspace:barnarda_c_ores:1>,
  <galaxyspace:barnarda_c_ores:2>,
  <galaxyspace:barnarda_c_ores:3>,
  <galaxyspace:barnarda_c_ores:4>,
  <galaxyspace:barnarda_c_ores:5>,
  <galaxyspace:barnarda_c_ores:6>,
  <galaxyspace:barnarda_c_ores:7>,
  <galaxyspace:barnarda_c_ores:8>,
  <galaxyspace:barnarda_c_ores:12>,
  <galaxyspace:barnarda_c_ores:9>,
  <galaxyspace:barnarda_c_ores:10>,
  <galaxyspace:barnarda_c_ores:11>,
  <galaxyspace:gas_burner>,
  <galaxyspace:modern_storage_module>,
  <galaxyspace:liquid_separator>,
  <galaxyspace:liquid_extractor>,
  <galaxyspace:universal_recycler>,
  <galaxyspace:fuel_generator>,
  <galaxyspace:assembly_machine>,
  <galaxyspace:adv_circuit_fabricator>,
  <galaxyspace:oxygen_storage_module_1>,
  <galaxyspace:gs_basic:4>,
  <galaxyspace:jetpack:200>,
  <galaxyspace:rocket_tier_4:4>,
  <galaxyspace:rocket_tier_5:4>,
  <galaxyspace:rocket_tier_6:4>,
  <galaxyspace:gs_basic:28>,
  <galaxyspace:machineframes>,
  <galaxyspace:machineframes:1>,
  <galaxyspace:machineframes:2>,
  <galaxyspace:treasure_t4>,
  <galaxyspace:treasure_t5>,
  <galaxyspace:gs_basic>,
  <galaxyspace:gs_basic:5>,
  <galaxyspace:gs_basic:7>,
  <galaxyspace:gs_basic:10>,
  <galaxyspace:decoblocks:4>,
  <galaxyspace:decoblocks:5>,
  <galaxyspace:decoblocks:6>,
  <galaxyspace:gs_basic:16>,
  <galaxyspace:gs_basic:19>,
  <galaxyspace:gs_basic:18>,
  <galaxyspace:rocket_modules:4>,
  <galaxyspace:rocket_modules:5>,
  <galaxyspace:rocket_modules:6>,
  <galaxyspace:rocket_modules:7>,
  <galaxyspace:dungeon_keys>,
  <galaxyspace:dungeon_keys:1>,
  <galaxyspace:geo_scanner:*>,
  <galaxyspace:gs_basic:1>,
  <galaxyspace:barnarda_c_dandelions>,
  <galaxyspace:barnarda_c_dandelions:1>,
  <galaxyspace:barnarda_c_dandelions:2>,
  <galaxyspace:barnarda_c_dandelions:3>,
  <galaxyspace:barnarda_c_dandelions:4>,
  <galaxyspace:barnarda_c_dandelions:5>,
  <galaxyspace:barnarda_c_dandelions:6>,
  <galaxyspace:barnarda_c_dandelions:8>,
  <galaxyspace:tauceti_f_corals>,
  <galaxyspace:tauceti_f_corals:1>,
  <galaxyspace:tauceti_f_corals:2>,
  <galaxyspace:tauceti_f_corals:3>,
  <galaxyspace:tauceti_f_corals:4>,
  <galaxyspace:tauceti_f_corals:5>,
  <galaxyspace:tauceti_f_corals:6>,
  <galaxyspace:tauceti_f_corals:7>,
  <galaxyspace:tauceti_f_corals:8>,
  <galaxyspace:tauceti_f_corals:9>,
  <galaxyspace:tauceti_f_corals:10>,
  <galaxyspace:br_basic:1>,
  <galaxyspace:gs_basic:20>,
  <galaxyspace:tauceti_f_watergrass>,
  <galaxyspace:tauceti_f_watergrass:1>,
  <galaxyspace:tauceti_f_watergrass:2>,
  <galaxyspace:tauceti_f_watergrass:3>,
  <galaxyspace:tauceti_f_watergrass:4>,
  <galaxyspace:tauceti_f_watergrass:5>,
  <galaxyspace:tauceti_f_watergrass:6>,
  <galaxyspace:tauceti_f_watergrass:7>
] as IItemStack[];
for item in RemoveItemsFromJEI{
  mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
val RemoveItemRecipe as IItemStack[] = [
  <galaxyspace:decoblocks>,
  <galaxyspace:decoblocks:1>,
  <galaxyspace:decoblocks:2>,
  <galaxyspace:decoblocks:3>,
  <galaxyspace:oxygen_tank_4:3500>,
  <galaxyspace:oxygen_tank_5:4000>,
  <galaxyspace:oxygen_tank_6:4500>,
  <galaxyspace:gs_basic:21>,
  <galaxyspace:gs_basic:22>,
  <galaxyspace:hydroponic_farm>,
  <galaxyspace:hydroponic_base>,
  <galaxyspace:modern_solarpanel>,
  <galaxyspace:wind_generator>,
  <galaxyspace:advanced_landing_pad>,
  <galaxyspace:modification_table>,
  <galaxyspace:solarwind_panel>,
  <galaxyspace:planet_shield>,
  <galaxyspace:energy_pad>,
  <galaxyspace:modern_single_solarpanel>,
  <galaxyspace:single_solarpanel>,
  <galaxyspace:panel_controller>,
  <galaxyspace:radiation_stabiliser>,
  <galaxyspace:gravitation_module>,
  <galaxyspace:rocket_assembler>,
  <galaxyspace:gs_basic:32>,
  <galaxyspace:gs_basic:9>,
  <galaxyspace:rocket_modules>,
  <galaxyspace:upgrades:1>,
  <galaxyspace:upgrades:2>,
  <galaxyspace:upgrades>,
  <galaxyspace:upgrades:3>,
  <galaxyspace:gs_basic:11>
] as IItemStack[];
for item in RemoveItemRecipe{
  recipes.remove(item);
}

//Еда из GC
ItemRegistry.registerFood(<galaxyspace:br_foods>, 4, 0.6, 0.7, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0);

//Деко блоки
recipes.addShapeless (<galaxyspace:decoblocks>, [<galacticraftcore:basic_block_core:3>, <ore:plateCobalt>]);
recipes.addShapeless (<galaxyspace:decoblocks:1>, [<galacticraftcore:basic_block_core:3>, <ore:plateMagnesium>]);
recipes.addShapeless (<galaxyspace:decoblocks:2>, [<galacticraftcore:basic_block_core:3>, <ore:plateNickel>]);
recipes.addShapeless (<galaxyspace:decoblocks:3>, [<galacticraftcore:basic_block_core:3>, <ore:plateCopper>]);

//Схематика пустая
recipes.addShapeless (<galaxyspace:gs_basic:14>, [<ore:paperBlack>, <ore:paperBlack>, <gregtech:meta_item_1:11>]);

//Теплоизолирующая ткань 3
assembler.recipeBuilder()
   .inputs(<ore:dustDolomite> * 4, <galacticraftplanets:basic_item_venus:3> * 2, <galacticraftcore:basic_item:20>)
   .fluidInputs([<liquid:nitrogen> * 400])
   .outputs(<galaxyspace:gs_basic:21> * 2)
   .duration(1000).EUt(512).buildAndRegister();

//Теплоизолирующая ткань 4
assembler.recipeBuilder()
   .inputs(<ore:plateHssg>*4, <galaxyspace:gs_basic:21> * 2, <galacticraftcore:basic_item:20>)
   .fluidInputs([<liquid:nitrogen> * 12000])
   .outputs(<galaxyspace:gs_basic:22> * 2)
   .duration(1000).EUt(512).buildAndRegister();

//Воздушные баки
//Супер
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1575>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*8, <gregtech:meta_item_1:145>*2)
   .outputs(<galaxyspace:oxygen_tank_4:3500>)
   .duration(1000).EUt(1024).buildAndRegister();
//Элитный
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1576>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*10, <gregtech:meta_item_1:146>*4)
   .outputs(<galaxyspace:oxygen_tank_5:4000>)
   .duration(1000).EUt(2048).buildAndRegister();
//Омега
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1577>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*12, <gregtech:meta_item_1:147>*4)
   .outputs(<galaxyspace:oxygen_tank_6:4500>)
   .duration(1000).EUt(4096).buildAndRegister();
//Реген
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1579>*2, <enderio:item_liquid_conduit:1>*16, <ore:plateLead>*32, <gregtech:meta_item_1:148>*6)
   .outputs(<galaxyspace:oxygen_tank_epp_1:2500> * 2)
   .fluidInputs([<liquid:sterilized_growth_medium>*144])
   .duration(1000).EUt(4096).buildAndRegister();

//Взлётка 2 лвл
recipes.addShaped(<galaxyspace:advanced_landing_pad> * 25,
[[<ore:plateDenseTitanium>, <ore:plateDenseTitanium>, <ore:plateDenseTitanium>],
 [<ore:blockTitanium>, <ore:blockTitanium>, <ore:blockTitanium>]]);

//Solar Flare Module
recipes.addShaped(<galaxyspace:gs_basic:1>,
[[<galacticraftcore:steel_pole>, null, null],
 [<gregtech:meta_item_1:501>, <galacticraftcore:steel_pole>, null],
 [<gregtech:meta_item_1:331>, <ore:foilStainlessSteel>, <galacticraftcore:steel_pole>]]);

//Сборщик ракет
recipes.addShaped(<galaxyspace:rocket_assembler>,
[[<gregtech:meta_item_1:189>, <gregtech:meta_item_1:159>, <gregtech:meta_item_1:189>],
 [<ore:plateAluminium>, <gregtech:machine:988>, <ore:plateAluminium>],
 [<ore:wireGtSingleMagnesiumDiboride>, <ore:wireGtSingleMagnesiumDiboride>, <ore:wireGtSingleMagnesiumDiboride>]]);

//Гибридная солнечная панель
recipes.addShaped(<galaxyspace:modern_solarpanel>,
[[<gregtech:meta_item_1:333>, <gregtech:meta_item_1:333>, <gregtech:meta_item_1:333>],
 [<ore:plateTitanium>, <ore:stickTitanium>, <ore:plateTitanium>],
 [<gregtech:meta_item_1:176>, <gregtech:machine:989>, <ore:cableGtQuadrupleGold>]]);

//Модификационный стол
recipes.addShaped(<galaxyspace:modification_table>,
[[<ore:circuitMaster>, <gregtech:meta_item_1:190>, <gregtech:meta_item_1:160>],
 [<gregtech:meta_item_1:190>, <gregtech:machine:989>, <gregtech:meta_item_1:190>],
 [<ore:chestWood>, <gregtech:meta_item_1:190>, <ore:circuitMaster>]]);

//Контроллер мини-панелей
recipes.addShaped(<galaxyspace:panel_controller>,
[[<ore:plateLead>, <gregtech:meta_item_1:219>, <ore:plateLead>],
 [<ore:wireGtSingleMagnesiumDiboride>, <gregtech:machine:988>, <ore:wireGtSingleMagnesiumDiboride>],
 [<ore:plateLead>, <ore:circuitElite>, <ore:plateLead>]]);

//Стабилизатор радиации
recipes.addShaped(<galaxyspace:radiation_stabiliser>,
[[<gregtech:wire_coil:1>, <gregtech:wire_coil:1>, <gregtech:wire_coil:1>],
 [<gregtech:meta_item_1:206>, <gregtech:machine:988>, <gregtech:meta_item_1:206>],
 [<ore:cableGtDoublePlatinum>, <gregtech:meta_item_1:218>, <ore:cableGtDoublePlatinum>]]);

//Солнечный парус
recipes.addShaped(<galaxyspace:solarwind_panel>,
[[<galaxyspace:gs_basic:2>, <galaxyspace:gs_basic:2>, <galaxyspace:gs_basic:2>],
 [<ore:stickLongAluminium>, <gregtech:machine:988>, <ore:stickLongAluminium>],
 [<ore:cableGtDoublePlatinum>, <ore:circuitExtreme>, <ore:cableGtDoublePlatinum>]]);

//Планитарный щит
recipes.addShaped(<galaxyspace:planet_shield>,
[[<gregtech:meta_item_1:203>, <ore:circuitAdvanced>, <gregtech:meta_item_1:203>],
 [<gregtech:meta_item_1:203>, <gregtech:machine:989>, <gregtech:meta_item_1:203>],
 [<ore:wireGtSingleMagnesiumDiboride>, <galaxyspace:gravitation_module>, <ore:wireGtSingleMagnesiumDiboride>]]);

//Ветряная мельница
recipes.addShaped(<galaxyspace:wind_generator>,
[[<ore:rotorStainlessSteel>, <ore:rotorStainlessSteel>, <ore:rotorStainlessSteel>],
 [<ore:circuitExtreme>, <galacticraftcore:steel_pole>, <ore:circuitExtreme>],
 [<ore:wireGtSingleMercuryBariumCalciumCuprate>, <gregtech:machine:988>, <ore:wireGtSingleMercuryBariumCalciumCuprate>]]);

//Клетка для животных
recipes.addShaped(<galaxyspace:gs_basic:32>,
[[<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>],
 [<galacticraftcore:grating>, <ore:carpet>, <ore:plateBlackSteel>],
 [<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>]]);

//Тир 1 лэндер
recipes.addShaped(<galaxyspace:rocket_modules>,
[[<galacticraftcore:basic_item:19>, <ore:plateBlackSteel>, <ore:plateBlackSteel>],
 [<ore:plateBlackSteel>, <galacticraftcore:buggymat:1>, <galaxyspace:compressed_plates:4>],
 [<galacticraftcore:steel_pole>, <galacticraftcore:engine>, <galacticraftcore:steel_pole>]]);

//Антирад
recipes.addShaped(<galaxyspace:gs_basic:9>*3,
[[<ore:plateIronMagnetic>, <ore:plateBlackSteel>, <ore:plateIronMagnetic>],
 [<galacticraftcore:canister>, <minecraft:milk_bucket>, <galacticraftcore:canister>],
 [<ore:plateIronMagnetic>, <ore:plateBlackSteel>, <ore:plateIronMagnetic>]]);

//Тир 3 лэндер
recipes.addShaped(<galaxyspace:rocket_modules:2>,
[[<ore:plateBlackSteel>, <ore:chestWood>, <ore:plateBlackSteel>],
 [<galacticraftcore:steel_pole>, <galacticraftcore:buggymat:1>, <galacticraftcore:steel_pole>],
 [<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>]]);

//Blank Module
recipes.addShaped(<galaxyspace:gs_basic:11>,
[[<ore:plateTinAlloy>, <ore:cableGtSingleGold>, <ore:plateTinAlloy>],
 [<ore:cableGtSingleRedAlloy>, <ore:plateCobalt>, <ore:cableGtSingleRedAlloy>],
 [<ore:plateTinAlloy>, <gregtech:meta_item_1:371>, <ore:plateTinAlloy>]]);

//Module Stabilization
recipes.addShaped(<galaxyspace:upgrades:1>,
[[null, <galaxyspace:gs_basic:8>, null],
 [<ore:wireGtSingleManganesePhosphide>, <galaxyspace:gs_basic:11>, <ore:wireGtSingleManganesePhosphide>],
 [<ore:plateMagnesium>, <gregtech:meta_item_1:372>, <ore:plateMagnesium>]]);

//Module Speed
recipes.addShaped(<galaxyspace:upgrades:2>,
[[null, <galaxyspace:gs_basic:3>, null],
 [<ore:wireGtSingleManganesePhosphide>, <galaxyspace:gs_basic:11>, <ore:wireGtSingleManganesePhosphide>],
 [<ore:plateNickel>, <gregtech:meta_item_1:372>, <ore:plateNickel>]]);

//Module Expander
recipes.addShaped(<galaxyspace:upgrades>,
[[null, <galaxyspace:gs_basic:12>, null],
 [<ore:wireGtSingleManganesePhosphide>, <galaxyspace:gs_basic:11>, <ore:wireGtSingleManganesePhosphide>],
 [<ore:plateCobalt>, <gregtech:meta_item_1:372>, <ore:plateCobalt>]]);

//Module Energy
recipes.addShaped(<galaxyspace:upgrades:3>,
[[null, <galaxyspace:gs_basic:6>, null],
 [<ore:wireGtSingleManganesePhosphide>, <galaxyspace:gs_basic:11>, <ore:wireGtSingleManganesePhosphide>],
 [<ore:plateCobalt>, <gregtech:meta_item_1:372>, <ore:plateCobalt>]]);

//High Duty Plates(4-6)
//Tier 4
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateTitanium>.firstItem * 3, <ore:plateTungstenSteel>.firstItem, <ore:foilOsmiridium>.firstItem * 16])
	.outputs(<galaxyspace:hdp> * 3)
	.property("temperature", 7100)
	.duration(1000)
	.EUt(520)
	.buildAndRegister();
//Tier 5
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateTungstenSteel>.firstItem * 3, <ore:plateHssg>.firstItem, <ore:foilHsss>.firstItem * 16])
	.outputs(<galaxyspace:hdp:1> * 3)
	.property("temperature", 8750)
	.duration(1000)
	.EUt(580)
	.buildAndRegister();
//Tier 6
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateHssg>.firstItem * 3, <ore:ingotDiamericiumTitanium>.firstItem, <ore:foilNaquadria>.firstItem * 16])
	.outputs(<galaxyspace:hdp:2> * 3)
	.property("temperature", 10777)
	.duration(1000)
	.EUt(640)
	.buildAndRegister();

//Скафандры
//Скаф 1лвл тапки
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:97>, <galaxyspace:compressed_plates:4>*4, <ore:plateNickel>*2, <ore:circuitExtreme>*3, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_feet:200>.withTag({modification_count: 2, boots_button: 0 as byte}))
  .duration(500)
  .EUt(512)
  .buildAndRegister();
//Скаф 1лвл поножи
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:97>, <galaxyspace:compressed_plates:4>*7, <ore:plateNickel>*2, <ore:circuitExtreme>, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_legs:200>.withTag({legs_button: 0 as byte, modification_count: 2}))
  .duration(500)
  .EUt(512)
  .buildAndRegister();
//Скаф 1лвл грудак
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:97>, <galaxyspace:compressed_plates:4>*8, <ore:plateNickel>*2, <ore:circuitExtreme>, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_chest:200>.withTag({modification_count: 2, chest_button: 0 as byte}))
  .duration(500)
  .EUt(512)
  .buildAndRegister();
//Скаф 1лвл шапка
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:97>, <galaxyspace:compressed_plates:4>*5, <ore:plateNickel>*2, <ore:circuitExtreme>, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_head:200>.withTag({modification_count: 2, helmet_button: 0 as byte}))
  .duration(500)
  .EUt(512)
  .buildAndRegister();

//SSHD-Alloy
icompressor.recipeBuilder()
	.inputs(<ore:plateBronze> * 2, <ore:plateBlackSteel> * 3)
	.property("explosives", 4)
	.outputs(<galaxyspace:compressed_plates:4> * 2)
	.duration(150).EUt(780).buildAndRegister();

//Солнечная мини-панель
assembler.recipeBuilder()
  .inputs(<gregtech:machine:988>, <gregtech:meta_item_1:334>*8, <ore:cableGtSinglePlatinum>*8, <ore:plateLead>*2, <ore:circuitAdvanced>)
  .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 5}))
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galaxyspace:single_solarpanel> * 2)
  .duration(500)
  .EUt(128)
  .buildAndRegister();

//Солнечная модернизированная мини-панель
assembler.recipeBuilder()
  .inputs(<gregtech:machine:988>, <gregtech:meta_item_1:335>*24, <ore:cableGtSinglePlatinum>*24, <ore:plateLead>*8, <ore:circuitAdvanced>)
  .notConsumable(<gregtech:meta_item_1:461>.withTag({Configuration: 6}))
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galaxyspace:modern_single_solarpanel> * 2)
  .duration(500)
  .EUt(256)
  .buildAndRegister();

//Зарядная панель
assembler.recipeBuilder()
  .inputs(<ore:plateAluminium>*3, <gregtech:meta_item_1:98>, <ore:circuitAdvanced>, <gregtech:meta_item_1:202>*2)
  .outputs(<galaxyspace:energy_pad>)
  .duration(500)
  .EUt(256)
  .buildAndRegister();

//Гравитационный модуль
assembler.recipeBuilder()
  .inputs(<ore:plateAluminium>*3, <ore:circuitElite>, <gregtech:meta_item_1:204>*2, <gregtech:meta_item_1:100>*4)
  .outputs(<galaxyspace:gravitation_module>)
  .duration(500)
  .EUt(256)
  .buildAndRegister();

//Основание гидроподной фермы
assembler.recipeBuilder()
  .inputs(<gregtech:machine:989>, <gregtech:meta_item_1:190>*2, <gregtech:meta_item_1:232>*2, <galacticraftcore:grating>*6, <ore:cableGtQuadrupleAnnealedCopper>*4)
  .outputs(<galaxyspace:hydroponic_base>)
  .duration(260)
  .EUt(718)
  .buildAndRegister();

//Стеклянное основание гидроподной фермы
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:quartz_vibrant_glass>*6, <ore:frameGtStainlessSteel>*3, <ore:gearStainlessSteel>*2)
  .outputs(<galaxyspace:hydroponic_farm>)
  .duration(260)
  .EUt(560)
  .buildAndRegister();

