import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;

// --- Removing Recipes

// Удаление + скрытие рецептов JEI
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
  <galaxyspace:phobosblocks:2>,
  <galaxyspace:phobosblocks:3>,
  <galaxyspace:phobosblocks:4>,
  <galaxyspace:mirandablocks:5>,
  <galaxyspace:mirandablocks:8>,
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
  <galaxyspace:plasma_sword>,
  <galaxyspace:plasma_axe>,
  <galaxyspace:plasma_pickaxe>,
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
  <galaxyspace:gs_basic:5>,
  <galaxyspace:gs_basic:7>,
  <galaxyspace:gs_basic:10>,
  <galaxyspace:decoblocks:4>,
  <galaxyspace:decoblocks:5>,
  <galaxyspace:decoblocks:6>,
  <galaxyspace:gs_basic:16>,
  <galaxyspace:gs_basic:19>,
  <galaxyspace:gs_basic:18>,
  <galaxyspace:gs_basic:6>,
  <galaxyspace:rocket_modules:4>,
  <galaxyspace:rocket_modules:5>,
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
  <galaxyspace:tauceti_f_watergrass:7>,
  <galaxyspace:rocket_assembler>,
  <galaxyspace:gs_basic:14>,
  <galaxyspace:schematics>,
  <galaxyspace:schematics:1>,
  <galaxyspace:schematics:2>,
  <galaxyspace:schematics:3>,
  <galaxyspace:schematics:6>,
  <galaxyspace:schematics:5>,
  <galaxyspace:schematics:4>
] as IItemStack[];
for item in RemoveItemsFromJEI{
  mods.jei.JEI.removeAndHide(item);
}

// Удаление рецептов
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

// Удаление странного рецепта стекла
furnace.remove(<minecraft:glass>);

// --- Adding Recipes

// Еда из GC
ItemRegistry.registerFood(<galaxyspace:br_foods>, 4, 0.6, 0.7, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0);

// Деко блоки
recipes.addShapeless (<galaxyspace:decoblocks>, [<galacticraftcore:basic_block_core:3>, <ore:plateCobalt>]);
recipes.addShapeless (<galaxyspace:decoblocks:1>, [<galacticraftcore:basic_block_core:3>, <ore:plateMagnesium>]);
recipes.addShapeless (<galaxyspace:decoblocks:2>, [<galacticraftcore:basic_block_core:3>, <ore:plateNickel>]);
recipes.addShapeless (<galaxyspace:decoblocks:3>, [<galacticraftcore:basic_block_core:3>, <ore:plateCopper>]);

// Схематика пустая
recipes.addShapeless (<galaxyspace:gs_basic:14>, [<ore:paper>, <ore:paper>, <projectred-fabrication:ic_blueprint>]);

// Теплоизолирующая ткань 3
assembler.recipeBuilder()
   .inputs(<ore:dustDolomite> * 4, <galacticraftplanets:basic_item_venus:3> * 2, <galacticraftcore:basic_item:20>)
   .fluidInputs([<liquid:nitrogen> * 400])
   .outputs(<galaxyspace:gs_basic:21> * 2)
   .duration(1000).EUt(512).buildAndRegister();

// Теплоизолирующая ткань 4
assembler.recipeBuilder()
   .inputs(<ore:plateHssg>*4, <galaxyspace:gs_basic:21> * 2, <galacticraftcore:basic_item:20>)
   .fluidInputs([<liquid:nitrogen> * 12000])
   .outputs(<galaxyspace:gs_basic:22> * 2)
   .duration(1000).EUt(512).buildAndRegister();

// Воздушные баки
// Супер
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.ev>, <ore:pipeNormalFluidWroughtIron> * 4, <ore:plateLead> * 8, <metaitem:electric.pump.ev> * 2)
   .circuit(6)
   .outputs(<galaxyspace:oxygen_tank_4:3500>)
   .duration(1000).EUt(1024).buildAndRegister();
// Элитный
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.iv>, <ore:pipeNormalFluidWroughtIron> * 4, <ore:plateLead> * 10, <metaitem:electric.pump.iv> * 2)
   .circuit(6)
   .outputs(<galaxyspace:oxygen_tank_5:4000>)
   .duration(1000).EUt(2048).buildAndRegister();
// Омега
assembler.recipeBuilder()
   .inputs(<metaitem:quantum_tank.iv>, <ore:pipeNormalFluidStainlessSteel> * 4, <ore:plateLead> * 12, <metaitem:electric.pump.luv> * 2)
   .circuit(6)
   .outputs(<galaxyspace:oxygen_tank_6:4500>)
   .duration(1000).EUt(4096).buildAndRegister();
// Реген
assembler.recipeBuilder()
   .inputs(<metaitem:quantum_tank.luv>, <ore:pipeNormalFluidStainlessSteel> * 16, <ore:plateLead> * 32, <metaitem:electric.pump.zpm> * 4)
   .circuit(6)
   .outputs(<galaxyspace:oxygen_tank_epp_1:2500> * 2)
   .fluidInputs([<liquid:sterilized_growth_medium>*144])
   .duration(1000).EUt(4096).buildAndRegister();

// Взлётка 2 лвл
recipes.addShaped(<galaxyspace:advanced_landing_pad> * 25,
[[<ore:plateDenseTitanium>, <ore:plateDenseTitanium>, <ore:plateDenseTitanium>],
 [<ore:blockTitanium>, <ore:blockTitanium>, <ore:blockTitanium>]]);

// Solar Flare Module
recipes.addShaped(<galaxyspace:gs_basic:1>,
[[<galacticraftcore:steel_pole>, null, null],
 [<metaitem:carbon.plate>, <galacticraftcore:steel_pole>, null],
 [<metaitem:cover.solar.panel>, <ore:foilStainlessSteel>, <galacticraftcore:steel_pole>]]);

// Гибридная солнечная панель
recipes.addShaped(<galaxyspace:modern_solarpanel>,
[[<metaitem:cover.solar.panel.lv>, <metaitem:cover.solar.panel.lv>, <metaitem:cover.solar.panel.lv>],
 [<ore:plateTitanium>, <ore:stickTitanium>, <ore:plateTitanium>],
 [<metaitem:electric.piston.iv>, <metaitem:hull.ev>, <ore:cableGtQuadrupleGold>]]);

// Модификационный стол
recipes.addShaped(<galaxyspace:modification_table>,
[[<ore:circuitMaster>, <metaitem:robot.arm.ev>, <metaitem:conveyor.module.ev>],
 [<metaitem:robot.arm.ev>, <metaitem:hull.ev>, <metaitem:robot.arm.ev>],
 [<ore:chestWood>, <metaitem:robot.arm.ev>, <ore:circuitMaster>]]);

// Контроллер мини-панелей
recipes.addShaped(<galaxyspace:panel_controller>,
[[<ore:plateLead>, <metaitem:emitter.hv>, <ore:plateLead>],
 [<ore:wireGtSingleMagnesiumDiboride>, <metaitem:hull.hv>, <ore:wireGtSingleMagnesiumDiboride>],
 [<ore:plateLead>, <ore:circuitElite>, <ore:plateLead>]]);

// Стабилизатор радиации
recipes.addShaped(<galaxyspace:radiation_stabiliser>,
[[<gregtech:wire_coil:1>, <gregtech:wire_coil:1>, <gregtech:wire_coil:1>],
 [<metaitem:field.generator.iv>, <metaitem:hull.hv>, <metaitem:field.generator.iv>],
 [<ore:cableGtDoublePlatinum>, <metaitem:emitter.mv>, <ore:cableGtDoublePlatinum>]]);

// Солнечный парус
recipes.addShaped(<galaxyspace:solarwind_panel>,
[[<galaxyspace:gs_basic:2>, <galaxyspace:gs_basic:2>, <galaxyspace:gs_basic:2>],
 [<ore:stickLongAluminium>, <metaitem:hull.hv>, <ore:stickLongAluminium>],
 [<ore:cableGtDoublePlatinum>, <ore:circuitExtreme>, <ore:cableGtDoublePlatinum>]]);

// Планитарный щит
recipes.addShaped(<galaxyspace:planet_shield>,
[[<metaitem:field.generator.mv>, <ore:circuitAdvanced>, <metaitem:field.generator.mv>],
 [<metaitem:field.generator.mv>, <metaitem:hull.ev>, <metaitem:field.generator.mv>],
 [<ore:wireGtSingleMagnesiumDiboride>, <galaxyspace:gravitation_module>, <ore:wireGtSingleMagnesiumDiboride>]]);

// Ветряная мельница
recipes.addShaped(<galaxyspace:wind_generator>,
[[<ore:rotorStainlessSteel>, <ore:rotorStainlessSteel>, <ore:rotorStainlessSteel>],
 [<ore:circuitExtreme>, <galacticraftcore:steel_pole>, <ore:circuitExtreme>],
 [<ore:wireGtSingleMercuryBariumCalciumCuprate>, <metaitem:hull.hv>, <ore:wireGtSingleMercuryBariumCalciumCuprate>]]);

// Клетка для животных
recipes.addShaped(<galaxyspace:gs_basic:32>,
[[<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>],
 [<galacticraftcore:grating>, <ore:carpet>, <ore:plateBlackSteel>],
 [<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>]]);

// Тир 1 лэндер
recipes.addShaped(<galaxyspace:rocket_modules>,
[[<galacticraftcore:basic_item:19>, <ore:plateBlackSteel>, <ore:plateBlackSteel>],
 [<ore:plateBlackSteel>, <galacticraftcore:buggymat:1>, <galaxyspace:compressed_plates:4>],
 [<galacticraftcore:steel_pole>, <galacticraftcore:engine>, <galacticraftcore:steel_pole>]]);

// Антирад
recipes.addShaped(<galaxyspace:gs_basic:9>*3,
[[<ore:plateIronMagnetic>, <ore:plateBlackSteel>, <ore:plateIronMagnetic>],
 [<galacticraftcore:canister>, <minecraft:milk_bucket>, <galacticraftcore:canister>],
 [<ore:plateIronMagnetic>, <ore:plateBlackSteel>, <ore:plateIronMagnetic>]]);

// Тир 3 лэндер
recipes.addShaped(<galaxyspace:rocket_modules:2>,
[[<ore:plateBlackSteel>, <ore:chestWood>, <ore:plateBlackSteel>],
 [<galacticraftcore:steel_pole>, <galacticraftcore:buggymat:1>, <galacticraftcore:steel_pole>],
 [<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>]]);

// Blank Module
recipes.addShaped(<galaxyspace:gs_basic:11>,
[[<ore:plateTinAlloy>, <ore:cableGtSingleGold>, <ore:plateTinAlloy>],
 [<ore:cableGtSingleRedAlloy>, <ore:plateCobalt>, <ore:cableGtSingleRedAlloy>],
 [<ore:plateTinAlloy>, <metaitem:wafer.silicon>, <ore:plateTinAlloy>]]);

// Module Stabilization
recipes.addShaped(<galaxyspace:upgrades:1>,
[[null, <galaxyspace:gs_basic:8>, null],
 [<ore:wireGtSingleManganesePhosphide>, <galaxyspace:gs_basic:11>, <ore:wireGtSingleManganesePhosphide>],
 [<ore:plateMagnesium>, <metaitem:wafer.glowstone>, <ore:plateMagnesium>]]);

// Module Speed
recipes.addShaped(<galaxyspace:upgrades:2>,
[[null, <galaxyspace:gs_basic:3>, null],
 [<ore:wireGtSingleManganesePhosphide>, <galaxyspace:gs_basic:11>, <ore:wireGtSingleManganesePhosphide>],
 [<ore:plateNickel>, <metaitem:wafer.glowstone>, <ore:plateNickel>]]);

// Module Expander
recipes.addShaped(<galaxyspace:upgrades>,
[[null, <galaxyspace:gs_basic:12>, null],
 [<ore:wireGtSingleManganesePhosphide>, <galaxyspace:gs_basic:11>, <ore:wireGtSingleManganesePhosphide>],
 [<ore:plateCobalt>, <metaitem:wafer.glowstone>, <ore:plateCobalt>]]);

// Module Energy
recipes.addShaped(<galaxyspace:upgrades:3>,
[[null, <galaxyspace:gs_basic:13>, null],
 [<ore:wireGtSingleManganesePhosphide>, <galaxyspace:gs_basic:11>, <ore:wireGtSingleManganesePhosphide>],
 [<ore:plateCobalt>, <metaitem:wafer.glowstone>, <ore:plateCobalt>]]);

// SSHD-Alloy
implosion_compressor.recipeBuilder()
	.inputs(<ore:plateBronze> * 2, <ore:plateBlackSteel> * 3)
	.property("explosives", 4)
	.outputs(<galaxyspace:compressed_plates:4> * 2)
	.duration(150).EUt(780).buildAndRegister();

// Солнечная мини-панель
assembler.recipeBuilder()
  .inputs(<metaitem:hull.hv>, <metaitem:cover.solar.panel.mv> * 8, <ore:cableGtSinglePlatinum> * 8, <ore:plateLead> * 2, <ore:circuitAdvanced>)
  .circuit(5)
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galaxyspace:single_solarpanel> * 2)
  .duration(500)
  .EUt(128)
  .buildAndRegister();

// Солнечная модернизированная мини-панель
assembler.recipeBuilder()
  .inputs(<metaitem:hull.hv>, <metaitem:cover.solar.panel.hv> * 24, <ore:cableGtSinglePlatinum> * 24, <ore:plateLead> * 8, <ore:circuitAdvanced>)
  .circuit(6)
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galaxyspace:modern_single_solarpanel> * 2)
  .duration(500)
  .EUt(256)
  .buildAndRegister();

// Зарядная панель
assembler.recipeBuilder()
  .inputs(<ore:plateAluminium> * 3, <metaitem:voltage_coil.mv>, <ore:circuitAdvanced>, <metaitem:field.generator.lv> * 2)
  .outputs(<galaxyspace:energy_pad>)
  .duration(500)
  .EUt(256)
  .buildAndRegister();

// Гравитационный модуль
assembler.recipeBuilder()
  .inputs(<ore:plateAluminium> * 3, <ore:circuitElite>, <metaitem:field.generator.hv> * 2, <metaitem:voltage_coil.ev> * 4)
  .outputs(<galaxyspace:gravitation_module>)
  .duration(500)
  .EUt(256)
  .buildAndRegister();

// Основание гидроподной фермы
assembler.recipeBuilder()
  .inputs(<metaitem:hull.ev>, <metaitem:robot.arm.ev> * 2, <metaitem:sensor.lv> * 2, <galacticraftcore:grating> * 6, <ore:cableGtQuadrupleAnnealedCopper> * 4)
  .outputs(<galaxyspace:hydroponic_base>)
  .duration(260)
  .EUt(718)
  .buildAndRegister();

// Стеклянное основание гидроподной фермы
assembler.recipeBuilder()
  .inputs(<appliedenergistics2:quartz_vibrant_glass> * 6, <ore:frameGtStainlessSteel> * 3, <ore:gearStainlessSteel> * 2)
  .outputs(<galaxyspace:hydroponic_farm>)
  .duration(260)
  .EUt(560)
  .buildAndRegister();

// Small Fuel Canister
assembler.recipeBuilder()
  .inputs(<galaxyspace:gs_basic>, <galaxyspace:compressed_plates:4>*2)
  .circuit(3)
  .outputs(<galaxyspace:rocket_modules:3>)
  .duration(260)
  .EUt(4)
  .buildAndRegister();

// Blank Fuel Canister
assembler.recipeBuilder()
  .inputs(<ore:plateBlackSteel>*8, <ore:paneGlass>)
  .circuit(3)
  .outputs(<galaxyspace:gs_basic>)
  .duration(260)
  .EUt(4)
  .buildAndRegister();

// High Duty Plates(4-6)
// Tier 4
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateTitanium>.firstItem * 3, <ore:plateTungstenSteel>.firstItem, <ore:foilOsmiridium>.firstItem * 16])
	.outputs(<galaxyspace:hdp> * 3)
	.property("temperature", 7100)
	.duration(1000)
	.EUt(520)
	.buildAndRegister();
// Tier 5
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateTungstenSteel>.firstItem * 3, <ore:plateHssg>.firstItem, <ore:foilHsss>.firstItem * 16])
	.outputs(<galaxyspace:hdp:1> * 3)
	.property("temperature", 8750)
	.duration(1000)
	.EUt(580)
	.buildAndRegister();
// Tier 6
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateHssg>.firstItem * 3, <ore:foilNaquadria>.firstItem * 16])
	.outputs(<galaxyspace:hdp:2> * 3)
	.property("temperature", 10777)
	.duration(1000)
	.EUt(640)
	.buildAndRegister();

// Скафандры
// Скаф 1лвл тапки
assembler.recipeBuilder()
  .inputs(<metaitem:voltage_coil.lv>, <galaxyspace:compressed_plates:4>*4, <ore:plateNickel>*2, <ore:circuitExtreme>*3, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_feet:200>.withTag({modification_count: 2, boots_button: 0 as byte}))
  .duration(500)
  .EUt(512)
  .buildAndRegister();
// Скаф 1лвл поножи
assembler.recipeBuilder()
  .inputs(<metaitem:voltage_coil.lv>, <galaxyspace:compressed_plates:4>*7, <ore:plateNickel>*2, <ore:circuitExtreme>, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_legs:200>.withTag({legs_button: 0 as byte, modification_count: 2}))
  .duration(500)
  .EUt(512)
  .buildAndRegister();
// Скаф 1лвл грудак
assembler.recipeBuilder()
  .inputs(<metaitem:voltage_coil.lv>, <galaxyspace:compressed_plates:4>*8, <ore:plateNickel>*2, <ore:circuitExtreme>, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_chest:200>.withTag({modification_count: 2, chest_button: 0 as byte}))
  .duration(500)
  .EUt(512)
  .buildAndRegister();
// Скаф 1лвл шапка
assembler.recipeBuilder()
  .inputs(<metaitem:voltage_coil.lv>, <galaxyspace:compressed_plates:4>*5, <ore:plateNickel>*2, <ore:circuitExtreme>, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_head:200>.withTag({modification_count: 2, helmet_button: 0 as byte}))
  .duration(500)
  .EUt(512)
  .buildAndRegister();

// Nose Cons 3-6 Tiers
// Tier 3
assembler.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_asteroids:5> * 4)
   .inputs(<metaitem:sensor.luv> * 2)
   .inputs(<minecraft:redstone_torch>)
   .circuit(7)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts>)
   .duration(600)
   .EUt(580)
   .buildAndRegister();

// Tier 4
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp> * 4)
   .inputs(<metaitem:sensor.iv> * 2)
   .inputs(<minecraft:redstone_torch>)
   .circuit(7)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:5>)
   .duration(600)
   .EUt(640)
   .buildAndRegister();

// Tier 5
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:1> * 4)
   .inputs(<metaitem:sensor.luv> * 2)
   .inputs(<minecraft:redstone_torch>)
   .circuit(7)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:10>)
   .duration(600)
   .EUt(680)
   .buildAndRegister();

// Tier 6
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:2> * 4)
   .inputs(<metaitem:sensor.zpm> * 2)
   .inputs(<minecraft:redstone_torch>)
   .circuit(7)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:15>)
   .duration(600)
   .EUt(720)
   .buildAndRegister();

// Rocket Body 3-6 Tiers
// Tier 3
assembler.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_asteroids:5> * 2)
   .inputs(<ore:screwStainlessSteel> * 64)
   .circuit(12)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:1>)
   .duration(600)
   .EUt(580)
   .buildAndRegister();

// Tier 4
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp> * 2)
   .inputs(<ore:screwStainlessSteel> * 64)
   .circuit(12)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:6>)
   .duration(600)
   .EUt(640)
   .buildAndRegister();

// Tier 5
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:1> * 2)
   .inputs(<ore:screwStainlessSteel> * 64)
   .circuit(12)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:11>)
   .duration(600)
   .EUt(680)
   .buildAndRegister();

// Tier 6
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:2> * 2)
   .inputs(<ore:screwStainlessSteel> * 64)
   .circuit(12)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:16>)
   .duration(600)
   .EUt(720)
   .buildAndRegister();

// Heavy Boosters 3-6 Tiers
// Tier 3
assembler.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_asteroids:5> * 2)	
   .inputs(<galaxyspace:rocket_modules:3> * 2)
   .inputs(<metaitem:electric.motor.hv> * 8)
   .inputs(<metaitem:electric.pump.hv> * 4)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 16)
   .inputs(<ore:circuitAdvanced> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .circuit(9)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:3>)
   .duration(580)
   .EUt(512)
   .buildAndRegister();

// Tier 4
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp> * 2)	
   .inputs(<galaxyspace:rocket_modules:3> * 2)
   .inputs(<metaitem:electric.motor.ev> * 8)
   .inputs(<metaitem:electric.pump.ev> * 4)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 16)
   .inputs(<ore:circuitAdvanced> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .circuit(9)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:8>)
   .duration(580)
   .EUt(560)
   .buildAndRegister();

// Tier 5
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:1> * 2)	
   .inputs(<galaxyspace:rocket_modules:3> * 2)
   .inputs(<metaitem:electric.motor.iv> * 8)
   .inputs(<metaitem:electric.pump.iv> * 4)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 16)
   .inputs(<ore:circuitAdvanced> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .circuit(9)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:13>)
   .duration(580)
   .EUt(620)
   .buildAndRegister();

// Tier 6
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:2> * 2)	
   .inputs(<galaxyspace:rocket_modules:3> * 2)
   .inputs(<metaitem:electric.motor.luv> * 8)
   .inputs(<metaitem:electric.pump.luv> * 4)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 16)
   .inputs(<ore:circuitAdvanced> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .circuit(9)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:18>)
   .duration(580)
   .EUt(672)
   .buildAndRegister();

// Rocket Engines 3-6 Tiers
// Tier 3
assembler.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_asteroids:5> * 6)
   .inputs(<galaxyspace:rocket_modules:3> * 2)
   .inputs(<metaitem:electric.pump.iv> * 4)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitElite> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing>)
   .inputs(<gcym:unique_casing:3>)
   .circuit(8)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:2>)
   .duration(600)
   .EUt(512)
   .buildAndRegister();

// Tier 4
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp> * 6)
   .inputs(<galaxyspace:rocket_modules:3> * 2)
   .inputs(<metaitem:electric.pump.iv> * 8)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitElite> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing> * 2)
   .inputs(<gcym:unique_casing:3> * 2)
   .circuit(8)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:7>)
   .duration(600)
   .EUt(560)
   .buildAndRegister();

// Tier 5
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:1> * 6)
   .inputs(<galaxyspace:rocket_modules:3> * 2)
   .inputs(<metaitem:electric.pump.luv> * 4)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitElite> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing:1>)
   .inputs(<gcym:unique_casing:3>)
   .circuit(8)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:12>)
   .duration(600)
   .EUt(620)
   .buildAndRegister();

// Tier 6
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:2> * 6)
   .inputs(<galaxyspace:rocket_modules:3> * 2)
   .inputs(<metaitem:electric.pump.luv> * 8)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitElite> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing:1> * 2)
   .inputs(<gcym:unique_casing:3> * 2)
   .circuit(8)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:17>)
   .duration(600)
   .EUt(690)
   .buildAndRegister();

// Rocket Stabilizators 3-6 Tiers
// Tier 3
assembler.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_asteroids:5> * 4)
   .inputs(<ore:screwAluminium> * 64)
   .circuit(10)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:4>)
   .duration(600)
   .EUt(482)
   .buildAndRegister();

// Tier 4
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp> * 4)
   .inputs(<ore:screwAluminium> * 64)
   .circuit(10)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:9>)
   .duration(600)
   .EUt(524)
   .buildAndRegister();

// Tier 5
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:1> * 4)
   .inputs(<ore:screwAluminium> * 64)
   .circuit(10)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:14>)
   .duration(600)
   .EUt(548)
   .buildAndRegister();

// Tier 6
assembler.recipeBuilder()
   .inputs(<galaxyspace:hdp:2> * 4)
   .inputs(<ore:screwAluminium> * 64)
   .circuit(10)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:19>)
   .duration(600)
   .EUt(566)
   .buildAndRegister();

// Rockets 3-6 Tiers 
// Tier 3 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts>)
   .inputs(<galaxyspace:rocket_parts:1> * 20)
   .inputs(<galaxyspace:rocket_parts:3> * 4)
   .inputs(<galaxyspace:rocket_parts:4> * 4)
   .inputs(<galaxyspace:rocket_parts:2>)
   .inputs(<galaxyspace:rocket_modules:3> * 9)
   .inputs(<ore:wireGtSingleIndiumTinBariumTitaniumCuprate> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.luv> * 4)
   .inputs(<metaitem:emitter.luv> * 4)
   .inputs(<ore:circuitMaster> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftplanets:rocket_t3>)
   .duration(1200)
   .EUt(12000)
   .buildAndRegister();

// Tier 3 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts>)
   .inputs(<galaxyspace:rocket_parts:1> * 20)
   .inputs(<galaxyspace:rocket_parts:3> * 4)
   .inputs(<galaxyspace:rocket_parts:4> * 4)
   .inputs(<galaxyspace:rocket_parts:2>)
   .inputs(<galaxyspace:rocket_modules:3> * 9)
   .inputs(<ore:wireGtSingleIndiumTinBariumTitaniumCuprate> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.luv> * 4)
   .inputs(<metaitem:emitter.luv> * 4)
   .inputs(<ore:circuitMaster> * 16)
   .inputs(<ore:chestWood>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftplanets:rocket_t3:1>)
   .duration(1200)
   .EUt(12000)
   .buildAndRegister();

// Tier 3 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts>)
   .inputs(<galaxyspace:rocket_parts:1> * 20)
   .inputs(<galaxyspace:rocket_parts:3> * 4)
   .inputs(<galaxyspace:rocket_parts:4> * 4)
   .inputs(<galaxyspace:rocket_parts:2>)
   .inputs(<galaxyspace:rocket_modules:3> * 9)
   .inputs(<ore:wireGtSingleIndiumTinBariumTitaniumCuprate> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.luv> * 4)
   .inputs(<metaitem:emitter.luv> * 4)
   .inputs(<ore:circuitMaster> * 16)
   .inputs(<ore:chestWood> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftplanets:rocket_t3:2>)
   .duration(1200)
   .EUt(12000)
   .buildAndRegister();

// Tier 3 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts>)
   .inputs(<galaxyspace:rocket_parts:1> * 20)
   .inputs(<galaxyspace:rocket_parts:3> * 4)
   .inputs(<galaxyspace:rocket_parts:4> * 4)
   .inputs(<galaxyspace:rocket_parts:2>)
   .inputs(<galaxyspace:rocket_modules:3> * 9)
   .inputs(<ore:wireGtSingleIndiumTinBariumTitaniumCuprate> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.luv> * 4)
   .inputs(<metaitem:emitter.luv> * 4)
   .inputs(<ore:circuitMaster> * 16)
   .inputs(<ore:chestWood> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftplanets:rocket_t3:3>)
   .duration(1200)
   .EUt(12000)
   .buildAndRegister();

// Tier 4 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:5>)
   .inputs(<galaxyspace:rocket_parts:6> * 22)
   .inputs(<galaxyspace:rocket_parts:8> * 4)
   .inputs(<galaxyspace:rocket_parts:7>)
   .inputs(<galaxyspace:rocket_parts:9> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 12)
   .inputs(<ore:wireGtSingleUraniumRhodiumDinaquadide> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.zpm> * 4)
   .inputs(<metaitem:emitter.zpm> * 4)
   .inputs(<ore:circuitUltimate> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_4>)
   .duration(1200)
   .EUt(15000)
   .buildAndRegister();

// Tier 4 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:5>)
   .inputs(<galaxyspace:rocket_parts:6> * 22)
   .inputs(<galaxyspace:rocket_parts:8> * 4)
   .inputs(<galaxyspace:rocket_parts:7>)
   .inputs(<galaxyspace:rocket_parts:9> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 12)
   .inputs(<ore:wireGtSingleUraniumRhodiumDinaquadide> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.zpm> * 4)
   .inputs(<metaitem:emitter.zpm> * 4)
   .inputs(<ore:circuitUltimate> * 16)
   .inputs(<ore:chestWood>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_4:1>)
   .duration(1200)
   .EUt(15000)
   .buildAndRegister();

// Tier 4 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:5>)
   .inputs(<galaxyspace:rocket_parts:6> * 22)
   .inputs(<galaxyspace:rocket_parts:8> * 4)
   .inputs(<galaxyspace:rocket_parts:7>)
   .inputs(<galaxyspace:rocket_parts:9> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 12)
   .inputs(<ore:wireGtSingleUraniumRhodiumDinaquadide> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.zpm> * 4)
   .inputs(<metaitem:emitter.zpm> * 4)
   .inputs(<ore:circuitUltimate> * 16)
   .inputs(<ore:chestWood> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_4:2>)
   .duration(1200)
   .EUt(15000)
   .buildAndRegister();

// Tier 4 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:5>)
   .inputs(<galaxyspace:rocket_parts:6> * 22)
   .inputs(<galaxyspace:rocket_parts:8> * 4)
   .inputs(<galaxyspace:rocket_parts:7>)
   .inputs(<galaxyspace:rocket_parts:9> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 12)
   .inputs(<ore:wireGtSingleUraniumRhodiumDinaquadide> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.zpm> * 4)
   .inputs(<metaitem:emitter.zpm> * 4)
   .inputs(<ore:circuitUltimate> * 16)
   .inputs(<ore:chestWood> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_4:3>)
   .duration(1200)
   .EUt(15000)
   .buildAndRegister();

// Tier 5 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:10>)
   .inputs(<galaxyspace:rocket_parts:11> * 24)
   .inputs(<galaxyspace:rocket_parts:13> * 4)
   .inputs(<galaxyspace:rocket_parts:12>)
   .inputs(<galaxyspace:rocket_parts:14> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 15)
   .inputs(<ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 4)
   .inputs(<metaitem:emitter.uv> * 4)
   .inputs(<ore:circuitSuper> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_5>)
   .duration(1200)
   .EUt(18000)
   .buildAndRegister();

// Tier 5 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:10>)
   .inputs(<galaxyspace:rocket_parts:11> * 24)
   .inputs(<galaxyspace:rocket_parts:13> * 4)
   .inputs(<galaxyspace:rocket_parts:12>)
   .inputs(<galaxyspace:rocket_parts:14> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 15)
   .inputs(<ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 4)
   .inputs(<metaitem:emitter.uv> * 4)
   .inputs(<ore:circuitSuper> * 16)
   .inputs(<ore:chestWood>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_5:1>)
   .duration(1200)
   .EUt(18000)
   .buildAndRegister();

// Tier 5 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:10>)
   .inputs(<galaxyspace:rocket_parts:11> * 24)
   .inputs(<galaxyspace:rocket_parts:13> * 4)
   .inputs(<galaxyspace:rocket_parts:12>)
   .inputs(<galaxyspace:rocket_parts:14> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 15)
   .inputs(<ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 4)
   .inputs(<metaitem:emitter.uv> * 4)
   .inputs(<ore:circuitSuper> * 16)
   .inputs(<ore:chestWood> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_5:2>)
   .duration(1200)
   .EUt(18000)
   .buildAndRegister();

// Tier 5 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:10>)
   .inputs(<galaxyspace:rocket_parts:11> * 24)
   .inputs(<galaxyspace:rocket_parts:13> * 4)
   .inputs(<galaxyspace:rocket_parts:12>)
   .inputs(<galaxyspace:rocket_parts:14> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 15)
   .inputs(<ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 4)
   .inputs(<metaitem:emitter.uv> * 4)
   .inputs(<ore:circuitSuper> * 16)
   .inputs(<ore:chestWood> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_5:3>)
   .duration(1200)
   .EUt(18000)
   .buildAndRegister();

// Tier 6 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:15>)
   .inputs(<galaxyspace:rocket_parts:16> * 26)
   .inputs(<galaxyspace:rocket_parts:18> * 4)
   .inputs(<galaxyspace:rocket_parts:17>)
   .inputs(<galaxyspace:rocket_parts:19> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 18)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitInfinite> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_6>)
   .duration(1200)
   .EUt(21000)
   .buildAndRegister();

// Tier 6 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:15>)
   .inputs(<galaxyspace:rocket_parts:16> * 26)
   .inputs(<galaxyspace:rocket_parts:18> * 4)
   .inputs(<galaxyspace:rocket_parts:17>)
   .inputs(<galaxyspace:rocket_parts:19> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 18)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitInfinite> * 16)
   .inputs(<ore:chestWood>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_6:1>)
   .duration(1200)
   .EUt(21000)
   .buildAndRegister();

// Tier 6 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:15>)
   .inputs(<galaxyspace:rocket_parts:16> * 26)
   .inputs(<galaxyspace:rocket_parts:18> * 4)
   .inputs(<galaxyspace:rocket_parts:17>)
   .inputs(<galaxyspace:rocket_parts:19> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 18)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitInfinite> * 16)
   .inputs(<ore:chestWood> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_6:2>)
   .duration(1200)
   .EUt(21000)
   .buildAndRegister();

// Tier 6 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:rocket_parts:15>)
   .inputs(<galaxyspace:rocket_parts:16> * 26)
   .inputs(<galaxyspace:rocket_parts:18> * 4)
   .inputs(<galaxyspace:rocket_parts:17>)
   .inputs(<galaxyspace:rocket_parts:19> * 4)
   .inputs(<galaxyspace:rocket_modules:3> * 18)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryElite>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitInfinite> * 16)
   .inputs(<ore:chestWood> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_tier_6:3>)
   .duration(1200)
   .EUt(21000)
   .buildAndRegister();

// SubLight Engine
assembly_line.recipeBuilder()
   .inputs(<galaxyspace:hdp:2> * 4)
   .inputs(<ore:wireGtDoubleRutheniumTriniumAmericiumNeutronate> * 32)
   .inputs(<ore:batteryInfinite>)
   .inputs(<ore:batteryInfinite>)
   .inputs(<metaitem:electric.motor.uv> * 8)
   .inputs(<metaitem:emitter.uv> * 32)
   .inputs(<ore:circuitInfinite> * 32)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galaxyspace:rocket_modules:6>)
   .duration(1200)
   .EUt(480600)
   .buildAndRegister();
