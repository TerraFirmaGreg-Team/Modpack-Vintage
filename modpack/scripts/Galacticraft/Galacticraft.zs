import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;

// --- Массивы

val RemoveItemRecipe as IItemStack[] = [
	<galacticraftcore:distributor>,
	<galacticraftcore:collector>,
	<galacticraftcore:oxygen_compressor>,
	<galacticraftcore:oxygen_compressor:4>,
	<galacticraftcore:fuel_loader>,
	<galacticraftcore:sealer>,
	<galacticraftcore:oxygen_detector>,
	<galacticraftcore:air_lock_frame>,
	<galacticraftcore:air_lock_frame:1>,
	<galacticraftcore:telemetry>,
	<galacticraftplanets:mars_machine:8>,
	<galacticraftplanets:mars_machine:4>,
	<galacticraftplanets:mars_machine>,
	<galacticraftplanets:basic_item_venus>,
   <galacticraftplanets:item_basic_mars:2>,
	<galacticraftcore:solar>,
	<galacticraftcore:solar:4>,
	<galacticraftcore:air_vent>,
	<galacticraftcore:oxygen_tank_light_full:900>,
	<galacticraftcore:oxygen_tank_med_full:1800>,
	<galacticraftcore:oxygen_tank_heavy_full:2700>,
	<galacticraftcore:oxygen_mask>,
	<galacticraftcore:oxygen_gear>,
	<galacticraftplanets:thermal_padding:*>,
   <galacticraftplanets:thermal_padding_t2:*>,
	<galacticraftplanets:item_basic_asteroids:7>,
	<galacticraftplanets:basic_item_venus:3>,
	<galacticraftplanets:walkway>,
	<galacticraftplanets:walkway:1>,
	<galacticraftplanets:walkway:2>,
	<galacticraftplanets:beam_receiver>,
	<galacticraftplanets:item_basic_asteroids:8>,
	<galacticraftplanets:basic_item_venus:2>,
	<galacticraftplanets:atomic_battery>,
	<galacticraftcore:landing_pad>,
	<galacticraftcore:landing_pad:1>,
	<galacticraftplanets:miner_base>,
	<galacticraftcore:spin_thruster>,
	<galacticraftcore:oil_canister_partial:1001>,
	<galacticraftcore:canister>,
	<galacticraftcore:arclamp>,
	<galacticraftcore:buggymat:1>,
	<galacticraftcore:buggymat:2>,
	<galacticraftplanets:beam_reflector>,
	<galacticraftcore:dishbase>,
	<galacticraftcore:basic_item:20>,
	<galacticraftcore:oxygen_concentrator>,
	<galacticraftplanets:orion_drive>,
	<galacticraftcore:buggymat>,
	<galacticraftcore:view_screen>,
	<galacticraftcore:basic_block_core:4>,
	<galacticraftcore:basic_block_core:3>,
	<galacticraftcore:panel_lighting>,
	<galacticraftcore:panel_lighting:1>,
	<galacticraftcore:panel_lighting:2>,
	<galacticraftcore:panel_lighting:3>,
	<galacticraftcore:panel_lighting:4>,
	<galacticraftcore:engine>,
	<galacticraftplanets:item_basic_asteroids:1>,
	<galacticraftcore:engine:1>,
	<galacticraftcore:rocket_fins>,
	<galacticraftplanets:item_basic_asteroids:2>,
	<galacticraftplanets:item_basic_asteroids:2>,
	<galacticraftcore:basic_item:19>,
	<galacticraftcore:food>,
	<galacticraftcore:food:1>,
	<galacticraftcore:food:2>,
	<galacticraftcore:food:3>,
	<galacticraftcore:food:9>,
	<galacticraftplanets:item_basic_mars:4>,
	<galacticraftcore:basic_block_core:12>,
	<galacticraftcore:item_basic_moon>,
	<galacticraftcore:steel_pole>,
	<galacticraftplanets:mars:8>,
	<galacticraftcore:enclosed:14>,
	<galacticraftcore:enclosed:15>,
	<galacticraftcore:enclosed:13>,
	<galacticraftcore:enclosed:1>,
	<galacticraftplanets:grapple>,
	<galacticraftcore:nose_cone>,
   <galacticraftcore:compact_workbench>,
   <galacticraftplanets:heavy_nose_cone>,
   <galacticraftcore:parachute:*>,
   <galacticraftcore:cargo>,
   <galacticraftcore:cargo:4>,
   <galacticraftplanets:solar_array_controller>,
   <galacticraftplanets:telepad_short>
];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveItemRecipe{
   recipes.remove(item);
}

// Другие рецепты которые удалены
furnace.remove(<galacticraftcore:food:7>);
furnace.remove(<galacticraftcore:item_basic_moon>);
furnace.remove(<galacticraftcore:basic_item:4>);
furnace.remove(<galacticraftplanets:carbon_fragments>);
furnace.remove(<galacticraftplanets:item_basic_mars:2>);

// Именованное удаление
recipes.removeByRecipeName("galacticraftcore:slime_ball");
recipes.removeByRecipeName("galacticraftcore:cobblestone");
recipes.removeByRecipeName("galacticraftcore:cobblestone_alt");
recipes.removeByRecipeName("galacticraftcore:cobblestone_alt_alt");
recipes.removeByRecipeName("galacticraftcore:basic_item_18");
recipes.removeByRecipeName("galacticraftcore:basic_item_17");
recipes.removeByRecipeName("galacticraftcore:basic_item_16");
recipes.removeByRecipeName("galacticraftcore:basic_item_15");

// --- Добавление рецептов

<galacticraftcore:oil_canister_partial:1001>.maxStackSize = 16;

// Еда из GC
ItemRegistry.registerFood(<galacticraftcore:food>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:1>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:2>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:3>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:9>, 4, 0.6, 0.9, 0.5, 0, 0, 0, 1.0, 0);

// Плотная пластина Дэш
bender.recipeBuilder()
   .circuit(13)
   .inputs(<galacticraftplanets:item_basic_mars:2> * 9)
   .outputs(<metaitem:plateDenseDesh>)
   .duration(100).EUt(7).buildAndRegister();

// Пласина плотного льда
cutter.recipeBuilder()
	.inputs(<galacticraftplanets:dense_ice>)
	.outputs(<metaitem:plateDenseIce> * 9)
	.duration(200).EUt(7).buildAndRegister();
// Блок -> Пыль плотного льда
macerator.recipeBuilder()
	.inputs(<galacticraftplanets:dense_ice>)
	.outputs(<metaitem:dustDenseIce> * 9)
	.duration(300).EUt(2).buildAndRegister();
// Пустая схема
recipes.addShaped("tfg/gc/schematic_blank", <metaitem:schematic.blank>, [
   [null, <ore:paper>, null],
   [null, <littletiles:recipeadvanced>, <ore:craftingToolHardHammer>],
   [null, <ore:paper>, null]]);

// Шест
recipes.addShaped("tfg/gc/steel_pole", <galacticraftcore:steel_pole> * 2, [
   [null, <metaitem:plateDenseSteel>, null],
   [null, <metaitem:plateDenseSteel>, <ore:craftingToolHardHammer>],
   [null, <metaitem:plateDenseSteel>, null]]);

// Светофакел
recipes.addShapeless("tfg/gc/glowstone_torch", <galacticraftcore:glowstone_torch> * 2, [<minecraft:torch>, <minecraft:glowstone_dust>]);

// Slimeball
recipes.addShaped("tfg/gc/slime_ball", <minecraft:slime_ball>, [
   [<ore:dyeGreen>, <minecraft:sugar>, <ore:dyeGreen>],
   [<minecraft:sugar>, <firmalife:cheddar_wheel>,<minecraft:sugar>],
   [<ore:dyeGreen>, <minecraft:sugar>, <ore:dyeGreen>]]);

// Slimeling Inventory Bag
recipes.addShaped("tfg/gc/slimeling_inventory_bag", <galacticraftplanets:item_basic_mars:4>, [
   [<ore:leather>, <metaitem:plateDiamond>, <ore:leather>],
   [<ore:leather>, <ore:slimeball>, <ore:leather>],
   [null, <ore:chestWood>, null]]);

// Oxygen Mask
recipes.addShaped("tfg/gc/oxygen_mask", <galacticraftcore:oxygen_mask>, [
   [<minecraft:glass_pane>, <ore:craftingLensWhite>, <minecraft:glass_pane>],
   [<metaitem:plateDenseSteel>, <minecraft:leather_helmet>, <metaitem:plateDenseSteel>],
   [<minecraft:glass_pane>, <metaitem:pipeTinyFluidStainlessSteel>, <minecraft:glass_pane>]]);

// Oxygen Gear
recipes.addShaped("tfg/gc/oxygen_gear", <galacticraftcore:oxygen_gear>, [
   [<metaitem:plateAluminium>, <galacticraftcore:air_vent>, <metaitem:plateAluminium>],
   [<galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>, <galacticraftcore:oxygen_concentrator>],
   [<metaitem:cableGtQuadrupleCopper>, <metaitem:rotorStainlessSteel>, <metaitem:cableGtQuadrupleCopper>]]);

// Oxygen Detector
recipes.addShaped("tfg/gc/oxygen_detector", <galacticraftcore:oxygen_detector>, [
   [<metaitem:sensor.hv>, <metaitem:plateAluminium>, <metaitem:sensor.hv>],
   [<metaitem:plateAluminium>, <ore:circuitMv>, <metaitem:plateAluminium>],
   [<metaitem:cableGtQuadrupleCopper>, <metaitem:plateAluminium>, <metaitem:cableGtQuadrupleCopper>]]);

// Oxygen Sealer
recipes.addShaped("tfg/gc/oxygen_sealer", <galacticraftcore:sealer>, [
   [<metaitem:sensor.hv>, <galacticraftcore:air_vent>, <metaitem:sensor.hv>],
   [<ore:circuitHv>, <metaitem:rotorStainlessSteel>, <ore:circuitHv>],
   [<metaitem:electric.pump.mv>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.mv>]]);

// Oxygen Bubble Distributor
recipes.addShaped("tfg/gc/oxygen_buble_distributor", <galacticraftcore:distributor>, [
   [<metaitem:sensor.hv>, <galacticraftcore:air_vent>, <metaitem:sensor.hv>],
   [<ore:circuitHv>, <metaitem:rotorStainlessSteel>, <ore:circuitHv>],
   [<metaitem:field.generator.ev>, <galacticraftcore:oxygen_concentrator>, <metaitem:field.generator.ev>]]);

// Oxygen Collector
recipes.addShaped("tfg/gc/oxygen_collector", <galacticraftcore:collector>, [
   [<galacticraftcore:air_vent>, <ore:circuitEv>, <galacticraftcore:air_vent>],
   [<metaitem:rotorStainlessSteel>, <metaitem:hull.hv>, <metaitem:rotorStainlessSteel>],
   [<metaitem:drum.stainless_steel>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>]]);

// Oxygen Compressor
recipes.addShaped("tfg/gc/oxygen_compressor", <galacticraftcore:oxygen_compressor>, [
   [<ore:circuitHv>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.hv>],
   [<metaitem:pipeSmallFluidStainlessSteel>, <metaitem:hull.hv>, <metaitem:pipeSmallFluidStainlessSteel>],
   [<metaitem:drum.stainless_steel>, <metaitem:plateBlackSteel>, <metaitem:electric.pump.hv>]]);

// Oxygen Decompressor
recipes.addShaped("tfg/gc/oxygen_decompressor", <galacticraftcore:oxygen_compressor:4>, [
   [<metaitem:electric.pump.hv>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>],
   [<metaitem:pipeSmallFluidStainlessSteel>, <metaitem:hull.hv>, <metaitem:pipeSmallFluidStainlessSteel>],
   [<metaitem:electric.pump.hv>, <metaitem:plateBlackSteel>, <metaitem:compressor.hv>]]);

// Загручкик топлива
recipes.addShaped("tfg/gc/fuel_loader", <galacticraftcore:fuel_loader>, [
   [<metaitem:plateAluminium>, <ore:circuitMv>, <metaitem:plateAluminium>],
   [<metaitem:drum.stainless_steel>, <metaitem:hull.hv>, <metaitem:electric.pump.mv>],
   [<metaitem:pipeSmallFluidStainlessSteel>, <metaitem:pipeSmallFluidStainlessSteel>, <metaitem:pipeSmallFluidStainlessSteel>]]);

// Воздушный шлюз каркас
recipes.addShaped("tfg/gc/airlock_frame", <galacticraftcore:air_lock_frame> * 2, [
   [<metaitem:plateStainlessSteel>, <metaitem:plateStainlessSteel>, <metaitem:plateStainlessSteel>],
   [<metaitem:plateStainlessSteel>, <metaitem:blockLead>, <metaitem:plateStainlessSteel>],
   [<metaitem:plateStainlessSteel>, <metaitem:plateStainlessSteel>, <metaitem:plateStainlessSteel>]]);

// Контроллер воздушного шлюза
recipes.addShaped("tfg/gc/airlock_frame_controller", <galacticraftcore:air_lock_frame:1>, [
   [<metaitem:plateStainlessSteel>, <metaitem:cableGtDoubleGold>, <metaitem:plateStainlessSteel>],
   [<ore:circuitHv>, <metaitem:blockLead>, <ore:circuitHv>],
   [<metaitem:plateStainlessSteel>, <metaitem:cableGtDoubleGold>, <metaitem:plateStainlessSteel>]]);

// Телеметрический блок
recipes.addShaped("tfg/gc/telemetry", <galacticraftcore:telemetry>, [
   [<metaitem:sensor.hv>, <metaitem:cableGtDoubleGold>, <ore:circuitHv>],
   [<appliedenergistics2:wireless_access_point>, <metaitem:hull.hv>, <appliedenergistics2:wireless_access_point>],
   [<metaitem:plateDenseStainlessSteel>, <appliedenergistics2:part:480>, <metaitem:plateDenseStainlessSteel>]]);

// Контроллер запуска
recipes.addShaped("tfg/gc/start_controller", <galacticraftplanets:mars_machine:8>, [
   [<ore:circuitHv>, <ore:circuitHv>, <ore:circuitHv>],
   [<metaitem:sensor.ev>, <metaitem:hull.hv>, <metaitem:sensor.ev>],
   [<metaitem:cableGtDoubleGold>, <metaitem:cableGtDoubleGold>, <metaitem:cableGtDoubleGold>]]);

// Креокамера
recipes.addShaped("tfg/gc/creogenic_chamber", <galacticraftplanets:mars_machine:4>, [
   [<metaitem:electric.pump.hv>, <ore:circuitHv>, <metaitem:emitter.hv>],
   [<metaitem:plateDenseLead>, <ore:bed>, <metaitem:plateDenseLead>],
   [<galacticraftcore:oxygen_concentrator>, <ore:circuitHv>, <galacticraftcore:oxygen_concentrator>]]);

// Терраформер
recipes.addShaped("tfg/gc/terraformer", <galacticraftplanets:mars_machine>, [
   [<metaitem:sensor.ev>, <metaitem:emitter.ev>, <metaitem:sensor.ev>],
   [<metaitem:plateLead>, <ore:circuitIv>, <metaitem:plateLead>],
   [<metaitem:cableGtDoubleGold>, <metaitem:field.generator.ev>, <metaitem:cableGtDoubleGold>]]);

// Контроллер щита
recipes.addShaped("tfg/gc/shield_controller", <galacticraftplanets:basic_item_venus>, [
   [<ore:paneGlassBlack>, <metaitem:stickNeodymiumMagnetic>, <ore:paneGlassBlack>],
   [<metaitem:wireGtSingleMercuryBariumCalciumCuprate>, <metaitem:field.generator.ev>, <metaitem:wireGtSingleMercuryBariumCalciumCuprate>],
   [<ore:paneGlassBlack>, <metaitem:stickNeodymiumMagnetic>, <ore:paneGlassBlack>]]);

// Базовая солнечная панель
recipes.addShaped("tfg/gc/solar_panel/base", <galacticraftcore:solar>, [
   [<metaitem:cover.solar.panel>, <metaitem:cover.solar.panel>, <metaitem:cover.solar.panel>],
   [<metaitem:gearStainlessSteel>, <metaitem:stickStainlessSteel>, <metaitem:gearStainlessSteel>],
   [<metaitem:electric.piston.hv>, <metaitem:hull.mv>, <metaitem:cableGtQuadrupleGold>]]);

// Улучшенная солнечная панель
recipes.addShaped("tfg/gc/solar_panel/advanced", <galacticraftcore:solar:4>, [
   [<metaitem:cover.solar.panel.ulv>, <metaitem:cover.solar.panel.ulv>, <metaitem:cover.solar.panel.ulv>],
   [<metaitem:gearStainlessSteel>, <metaitem:stickStainlessSteel>, <metaitem:gearStainlessSteel>],
   [<metaitem:electric.piston.ev>, <metaitem:hull.hv>, <metaitem:cableGtQuadrupleGold>]]);

// Клапан
recipes.addShaped("tfg/gc/air_vent", <galacticraftcore:air_vent>, [
   [<galacticraftcore:grating>, <gregtech:meta_plate_dense:112>, <galacticraftcore:grating>],
   [<gregtech:meta_plate_dense:112>, <metaitem:plateDenseSteel>, <gregtech:meta_plate_dense:112>],
   [<galacticraftcore:grating>, <gregtech:meta_plate_dense:112>, <galacticraftcore:grating>]]);

// Частотный модуль
recipes.addShaped("tfg/gc/freq_module", <galacticraftcore:basic_item:19>, [
   [<metaitem:plateLead>, <metaitem:emitter.hv>, <metaitem:plateLead>],
   [<metaitem:sensor.hv>, <metaitem:cableGtSingleRedAlloy>, <ore:circuitLv>],
   [<ore:componentResistor>, <metaitem:wireless>, <ore:componentResistor>]]);

// Пешеходная дорожка
recipes.addShaped("tfg/gc/walkway", <galacticraftplanets:walkway>, [
   [<metaitem:plateTitanium>, <metaitem:plateTitanium>, <metaitem:plateTitanium>],
   [<metaitem:stickTitanium>, <metaitem:plateTitanium>, <metaitem:stickTitanium>],
   [null, <metaitem:plateTitanium>, null]]);

// Пеш. дор с проводом
recipes.addShaped("tfg/gc/walkway/cable", <galacticraftplanets:walkway:1>, [
   [<galacticraftplanets:walkway>, <metaitem:cableGtDoubleAluminium>, null],
   [<metaitem:cableGtDoubleAluminium>, null, null],
   [null, null, null]]);

// Пеш. дор с жид. трубой
recipes.addShaped("tfg/gc/walkway/fluid_pipe", <galacticraftplanets:walkway:2>, [
   [<galacticraftplanets:walkway>, <metaitem:pipeTinyFluidStainlessSteel>, null],
   [<metaitem:pipeTinyFluidStainlessSteel>, null, null],
   [null, null, null]]);

// Маяк ресивер
recipes.addShaped("tfg/gc/beam_reciever", <galacticraftplanets:beam_receiver>, [
   [<metaitem:plateBeryllium>, <metaitem:plateSilver>, <metaitem:plateBeryllium>],
   [<metaitem:plateSilver>, <galacticraftplanets:item_basic_asteroids:8>, <metaitem:plateSilver>],
   [<metaitem:plateBeryllium>, <ore:circuitIv>, <metaitem:plateBeryllium>]]);

// Лучевое ядро
recipes.addShaped("tfg/gc/solar_core", <galacticraftplanets:item_basic_asteroids:8>, [
   [<minecraft:redstone>, <metaitem:platePlatinum>, <minecraft:redstone>],
   [<metaitem:platePlatinum>, <galacticraftplanets:basic_item_venus:2>, <metaitem:platePlatinum>],
   [<minecraft:redstone>, <metaitem:platePlatinum>, <minecraft:redstone>]]);

// Радио-изотопное ядро
recipes.addShaped("tfg/gc/radioisotopic_core", <galacticraftplanets:basic_item_venus:2>, [
   [<metaitem:dustGraphite>, <metaitem:neutron_reflector>, <metaitem:dustGraphite>],
   [<metaitem:stickUranium235>, <metaitem:neutron_reflector>, <metaitem:stickUranium235>],
   [<metaitem:dustGraphite>, <metaitem:neutron_reflector>, <metaitem:dustGraphite>]]);

// Атомная батарейка
recipes.addShaped("tfg/gc/atom_battery", <galacticraftplanets:atomic_battery>, [
   [null, <metaitem:plateInvar>, null],
   [null, <galacticraftplanets:basic_item_venus:2>, null],
   [null, <metaitem:large_fluid_cell.tungstensteel>, null]]);

// Площадка телепортации
recipes.addShaped("tfg/gc/telepad_short", <galacticraftplanets:telepad_short>, [
   [<metaitem:plateDoubleTrinaquadalloy>, <ore:circuitIv>, <metaitem:plateDoubleTrinaquadalloy>],
   [<metaitem:magic_energy_absorber>, <galacticraftplanets:item_basic_asteroids:8>, <metaitem:magic_energy_absorber>],
   [<metaitem:plateDoubleTrinaquadalloy>, <metaitem:plateDoubleTrinaquadalloy>, <metaitem:plateDoubleTrinaquadalloy>]]);


// Спасательная коробка
recipes.addShaped("tfg/gc/emergency_box", <galacticraftcore:emergency_box>, [
   [<ore:glowstone>, <metaitem:plateDenseTin>, <ore:glowstone>],
   [<metaitem:plateDenseTin>, <ore:chestWood>, <metaitem:plateDenseTin>],
   [<ore:glowstone>, <metaitem:plateDenseTin>, <ore:glowstone>]]);

// Площадка для багги
recipes.addShaped("tfg/gc/landing_pad/buggy", <galacticraftcore:landing_pad:1> * 9, [
   [null, null, null],
   [<metaitem:plateDenseBlackSteel>, <metaitem:plateDenseBlackSteel>, <metaitem:plateDenseBlackSteel>],
   [<metaitem:blockSteel>, <metaitem:blockSteel>, <metaitem:blockSteel>]]);

// Взлетная площадка 
recipes.addShaped("tfg/gc/landing_pad/rocket", <galacticraftcore:landing_pad> * 9, [
   [null, null, null],
   [<metaitem:plateDenseIron>, <metaitem:plateDenseIron>, <metaitem:plateDenseIron>],
   [<ore:blockIronAny>, <ore:blockIronAny>, <ore:blockIronAny>]]);

// Основания астрономического шахтера
recipes.addShaped("tfg/gc/miner_base", <galacticraftplanets:miner_base>, [
   [<metaitem:plateDenseBlackSteel>, <ore:chestWood>, <metaitem:plateDenseBlackSteel>],
   [<galacticraftplanets:item_basic_asteroids:8>, <ore:circuitHv>, <galacticraftplanets:item_basic_asteroids:8>],
   [<metaitem:plateDenseBlackSteel>, <metaitem:battery_buffer.luv.16>, <metaitem:plateDenseBlackSteel>]]);

// Вращательный движок
recipes.addShaped("tfg/gc/spin_thruster", <galacticraftcore:spin_thruster>, [
   [<galacticraftcore:oil_canister_partial:1>, <ore:circuitIv>, <galacticraftplanets:item_basic_asteroids:1>],
   [<metaitem:plateDenseStainlessSteel>, <gregtech:metal_casing:7>, <metaitem:plateDenseStainlessSteel>],
   [<metaitem:wireGtDoubleElectrum>, <metaitem:wireGtDoubleElectrum>, <metaitem:wireGtDoubleElectrum>]]);

// Капсула из галактики под жидкости
recipes.addShaped("tfg/gc/oil_canister", <galacticraftcore:oil_canister_partial:1001>, [
   [<metaitem:plateDenseAluminium>, <metaitem:plateDenseBlackSteel>, <metaitem:plateDenseAluminium>],
   [<metaitem:plateDenseAluminium>, <ore:blockGlass>, <metaitem:plateDenseAluminium>],
   [<metaitem:plateDenseAluminium>, <galacticraftcore:canister>, <metaitem:plateDenseAluminium>]]);

// Канистра из олова
recipes.addShaped("tfg/gc/canister", <galacticraftcore:canister>, [
   [<metaitem:plateDenseTin>, null, <metaitem:plateDenseTin>],
   [<metaitem:plateDenseTin>, <ore:craftingToolHardHammer>, <metaitem:plateDenseTin>],
   [<metaitem:plateDenseTin>, <metaitem:plateDenseTin>, <metaitem:plateDenseTin>]]);

// Дуговая лампа
recipes.addShaped("tfg/gc/arclamp", <galacticraftcore:arclamp>, [
   [<metaitem:plateBlackSteel>, <minecraft:glowstone_dust>, <metaitem:plateBlackSteel>],
   [<minecraft:glowstone_dust>, <galacticraftplanets:atomic_battery>, <minecraft:glowstone_dust>],
   [<metaitem:plateBlackSteel>, <minecraft:glowstone_dust>, <metaitem:plateBlackSteel>]]);

// Багги сиденье
recipes.addShaped("tfg/gc/buggy_seat", <galacticraftcore:buggymat:1>, [
   [<metaitem:plateBlackSteel>, null, null],
   [<metaitem:plateBlackSteel>, <ore:leather>, null],
   [<metaitem:plateBlackSteel>, <metaitem:plateBlackSteel>, <metaitem:plateBlackSteel>]]);

// Контейнер багги
recipes.addShaped("tfg/gc/buggy_container", <galacticraftcore:buggymat:2>, [
   [<metaitem:plateAluminium>, <metaitem:plateStainlessSteel>, <metaitem:plateAluminium>],
   [<metaitem:plateAluminium>, <ore:chestWood>, <metaitem:plateAluminium>],
   [<metaitem:plateAluminium>, <metaitem:plateStainlessSteel>, <metaitem:plateAluminium>]]);

// Маяк дефлектор
recipes.addShaped("tfg/gc/beam_reflector", <galacticraftplanets:beam_reflector>, [
   [null, <galacticraftplanets:item_basic_asteroids:8>, null],
   [<ore:circuitMv>, <metaitem:plateTitanium>, <minecraft:lever>],
   [<metaitem:plateTitanium>, <metaitem:plateTitanium>, <metaitem:plateTitanium>]]);

// Крюк
recipes.addShaped("tfg/gc/grapple", <galacticraftplanets:grapple>, [
   [null, null, <ore:string>],
   [<ore:stickIronAny>, <ore:string>, null],
   [<ore:gearIronAny>, <ore:stickIronAny>, null]]);

// Антена связи
recipes.addShaped("tfg/gc/dishbase", <galacticraftcore:dishbase>, [
   [<metaitem:plateDenseStainlessSteel>, <galacticraftcore:basic_item:19>, <metaitem:plateDenseStainlessSteel>],
   [null, <metaitem:plateDenseStainlessSteel>, null],
   [<ore:circuitIv>, <metaitem:blockSteel>, <ore:circuitIv>]]);

// Тепловой контроллер
recipes.addShaped("tfg/gc/thermal_controller", <galacticraftcore:basic_item:20>, [
   [<metaitem:cableGtDoubleElectrum>, <ore:circuitIv>, <metaitem:cableGtDoubleElectrum>],
   [<metaitem:plateBronze>, <ore:circuitIv>, <metaitem:plateBronze>],
   [<metaitem:plateDenseTungstenSteel>, <metaitem:plateBlackSteel>, <metaitem:plateDenseTungstenSteel>]]);

// Концентратор
recipes.addShaped("tfg/gc/oxygen_concentrator", <galacticraftcore:oxygen_concentrator>, [
   [<metaitem:plateDenseBlackSteel>, <ore:circuitMv>, <metaitem:plateDenseBlackSteel>],
   [<metaitem:plateDenseTin>, <galacticraftcore:canister>, <metaitem:plateDenseTin>],
   [<metaitem:plateDenseBlackSteel>, <galacticraftcore:air_vent>, <metaitem:plateDenseBlackSteel>]]);

// Привод ориона
recipes.addShaped("tfg/gc/orion_drive", <galacticraftplanets:orion_drive>, [
   [<metaitem:platePalladium>, <ore:circuitEv>, <metaitem:platePalladium>],
   [<metaitem:robot.arm.iv>, <galacticraftplanets:miner_base>, <metaitem:robot.arm.iv>],
   [<metaitem:platePalladium>, <ore:circuitIv>, <metaitem:platePalladium>]]);

// Колесо багги
recipes.addShaped("tfg/gc/buggy_wheal", <galacticraftcore:buggymat>, [
   [null, <metaitem:plateStyreneButadieneRubber>, null],
   [<metaitem:plateStyreneButadieneRubber>, <metaitem:plateVanadiumSteel>, <metaitem:plateStyreneButadieneRubber>],
   [null, <metaitem:plateStyreneButadieneRubber>, null]]);

// Экран просмотра
recipes.addShaped("tfg/gc/view_screen", <galacticraftcore:view_screen>, [
   [<metaitem:plateDenseBlackSteel>, <ore:circuitLv>, <metaitem:plateDenseBlackSteel>],
   [<ore:circuitLv>, <ore:paneGlass>, <ore:circuitLv>],
   [<metaitem:plateDenseBlackSteel>, <ore:circuitLv>, <metaitem:plateDenseBlackSteel>]]);

// ДО 1
recipes.addShaped("tfg/gc/decor_block_tin_1", <galacticraftcore:basic_block_core:4>, [
   [<ore:stone>, <ore:stone>, null],
   [<ore:stone>, <ore:stone>, <metaitem:plateDenseTin>],
   [null, null, null]]);

// ДО 2
recipes.addShaped("tfg/gc/decor_block_tin_2", <galacticraftcore:basic_block_core:3>, [
   [<ore:stone>, <ore:stone>, null],
   [<ore:stone>, <ore:stone>, null],
   [null, <metaitem:plateDenseTin>, null]]);

// Свет панель 1
recipes.addShaped("tfg/gc/lighting_panel_1", <galacticraftcore:panel_lighting>, [
   [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
   [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
   [<ore:paneGlass>, <metaitem:plateBlackSteel>, <ore:paneGlass>]]);

// Свет панель 2
recipes.addShaped("tfg/gc/lighting_panel_2", <galacticraftcore:panel_lighting:1>, [
   [<ore:paneGlass>, null, <ore:paneGlass>],
   [null, <galacticraftcore:glowstone_torch>, null],
   [<ore:paneGlass>, <metaitem:plateBlackSteel>, <ore:paneGlass>]]);

// Свет панель 3
recipes.addShaped("tfg/gc/lighting_panel_3", <galacticraftcore:panel_lighting:2>, [
   [<ore:paneGlass>, null, <ore:paneGlass>],
   [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
   [<ore:paneGlass>, <metaitem:plateBlackSteel>, <ore:paneGlass>]]);

// Свет панель 4
recipes.addShaped("tfg/gc/lighting_panel_4", <galacticraftcore:panel_lighting:3>, [
   [null, null, null],
   [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
   [null, <metaitem:plateBlackSteel>, null]]);

// Свет панель 5
recipes.addShaped("tfg/gc/lighting_panel_5", <galacticraftcore:panel_lighting:4>, [
   [null, <ore:paneGlass>, null],
   [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, null],
   [null, <metaitem:plateBlackSteel>, null]]);

// Sealable Alum. Wire
recipes.addShaped("tfg/gc/sealable_something_1", <galacticraftcore:enclosed:14>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <metaitem:cableGtDoubleAluminium>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Sealable Alum. Wire
recipes.addShaped("tfg/gc/sealable_something_2", <galacticraftcore:enclosed:15>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <metaitem:cableGtOctalAluminium>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Sealable Alum. Wire
recipes.addShaped("tfg/gc/sealable_something_3", <galacticraftcore:enclosed:13>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <ore:ae2.cable.glass>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Sealable Alum. Wire
recipes.addShaped("tfg/gc/sealable_something_4", <galacticraftcore:enclosed:1>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <metaitem:pipeSmallFluidStainlessSteel>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Еда
// Фруктовая канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:categoryFruit> * 2)
   .outputs(<galacticraftcore:food>)
   .duration(460).EUt(2).buildAndRegister();

// Морковная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/carrot> * 2)
   .outputs(<galacticraftcore:food:1>)
   .duration(460).EUt(2).buildAndRegister();

// Арбузная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <firmalife:melon> * 2)
   .outputs(<galacticraftcore:food:2>)
   .duration(460).EUt(2).buildAndRegister();

// Картофельная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/potato> * 2)
   .outputs(<galacticraftcore:food:3>)
   .duration(460).EUt(2).buildAndRegister();

// Мясная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:categoryMeat> * 2)
   .outputs(<galacticraftcore:food:9>)
   .duration(460).EUt(2).buildAndRegister();

// Слиток Дэш
implosion_compressor.recipeBuilder()
	.inputs(<metaitem:dustDesh> * 4)
	.outputs(<galacticraftplanets:item_basic_mars:2>)
	.property("explosives", 2)
	.duration(20).EUt(380).buildAndRegister();

// Баллоны
// Легкий
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.lv>, <metaitem:pipeTinyFluidAluminium> * 4 , <metaitem:plateDenseTin> * 2, <metaitem:electric.pump.lv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_light_full:900>)
   .property("cleanroom", "cleanroom")
   .duration(1000).EUt(128).buildAndRegister();
// Средний
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.mv>, <metaitem:pipeTinyFluidAluminium> * 4, <metaitem:plateDenseTin> * 4, <metaitem:electric.pump.mv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_med_full:1800>)
   .property("cleanroom", "cleanroom")
   .duration(1000).EUt(256).buildAndRegister();
// Тяжелый
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.hv>, <metaitem:pipeTinyFluidAluminium> * 4, <metaitem:plateDenseTin> * 6, <metaitem:electric.pump.hv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_heavy_full:2700>)
   .property("cleanroom", "cleanroom")
   .duration(1000).EUt(512).buildAndRegister();

// Гидравлический подьемник
assembler.recipeBuilder()
   .inputs(<metaitem:plateDenseTungstenSteel> * 16, <metaitem:electric.piston.iv> * 4, <metaitem:plateLead> * 6)
   .circuit(7)
   .outputs(<galacticraftcore:platform>)
   .duration(1000).EUt(1012).buildAndRegister();

// Вакумное стекло
forming_press.recipeBuilder()
   .inputs(<metaitem:plateDenseAluminium> * 4, <ore:blockGlass> * 5)
   .outputs(<galacticraftcore:space_glass_strong> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();
forming_press.recipeBuilder()
   .inputs(
      <galacticraftcore:basic_block_core:4> * 4,
      <galacticraftcore:space_glass_strong> * 5)
   .outputs(<galacticraftcore:space_glass_strong:1> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();

forming_press.recipeBuilder()
   .inputs(<metaitem:ingotTin> * 4, <ore:blockGlass> * 5)
   .outputs(<galacticraftcore:space_glass_vanilla> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();
forming_press.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_core:4> * 4, <galacticraftcore:space_glass_vanilla> * 5)
   .outputs(<galacticraftcore:space_glass_vanilla:1> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();

forming_press.recipeBuilder()
   .inputs(<metaitem:ingotAluminium> * 4, <ore:blockGlass> * 5)
   .outputs(<galacticraftcore:space_glass_clear> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();
forming_press.recipeBuilder()
   .inputs(<galacticraftcore:basic_block_core:4> * 4, <galacticraftcore:space_glass_clear> * 5)
   .outputs(<galacticraftcore:space_glass_clear:1> * 5)
   .property("cleanroom", "cleanroom")
   .duration(300).EUt(480).buildAndRegister();

// Грузовой загрузчик
assembler.recipeBuilder()
   .inputs(<metaitem:plateDenseAluminium> * 2, <metaitem:plateDenseSteel> * 5, <ore:gtce.block.crate> * 6, <metaitem:robot.arm.hv> * 2)
   .circuit(7)
   .outputs(<galacticraftcore:cargo>)
   .duration(1000).EUt(512).buildAndRegister();
// Грузовой разгрузчик
assembler.recipeBuilder()
   .inputs(<metaitem:plateDenseAluminium> * 2, <metaitem:plateDenseSteel> * 5, <ore:gtce.block.crate> * 6, <metaitem:robot.arm.hv> * 2)
   .circuit(8)
   .outputs(<galacticraftcore:cargo:4>)
   .duration(1000).EUt(512).buildAndRegister();

// Парашуты
assembler.recipeBuilder()
   .circuit(1)
   .inputs([
      <galacticraftcore:canvas> * 6,
      <ore:string> * 4])
   .outputs([<galacticraftcore:parachute>])
   .duration(20).EUt(480).buildAndRegister();
chemical_bath.recipeBuilder()
   .inputs([<ore:gc.parachute.colors>])
   .fluidInputs([<liquid:chlorine> * 144])
   .outputs([<galacticraftcore:parachute>])
   .duration(8).EUt(480).buildAndRegister();
for i in 0 .. 16 {
   chemical_bath.recipeBuilder()
      .inputs([<ore:gc.parachute>])
      .fluidInputs([colorLiquid[i] * 18])
      .outputs([gcParachute[i]])
      .duration(20).EUt(7).buildAndRegister();
}
assembly_line.recipeBuilder()
   .inputs(
      <metaitem:laserKrypton>,  
      <metaitem:laserKrypton>,
      <htmltech:laser_pipe_normal>,
      <galacticraftcore:space_glass_clear> * 6, 
      <metaitem:hull.luv>,
      <metaitem:sensor.luv> * 2,
      <metaitem:emitter.luv> * 4)
   .fluidInputs(
      <liquid:molten.incoloy_ma_956> * 1264, 
      <liquid:molten.hssg> * 1432)
   .outputs(<galacticraftplanets:laser_turret>)
   .duration(1800).EUt(18100).buildAndRegister();

// Посадочный модуль
// T1
recipes.addShaped("tfg/gc/lander_tier1", <metaitem:lander.tier.1>,
   [[<galacticraftcore:basic_item:19>, <metaitem:plateDenseSteel>, <metaitem:plateDenseSteel>],
   [<metaitem:plateDenseSteel>, <galacticraftcore:buggymat:1>, <metaitem:plateDenseCopper>],
   [<galacticraftcore:steel_pole>, <galacticraftcore:engine>, <galacticraftcore:steel_pole>]]);
// Т2
recipes.addShaped("tfg/gc/lander_tier2", <metaitem:lander.tier.2>,
   [[<metaitem:foilGold>, <ore:gc.parachute>, <metaitem:foilGold>],
   [<galacticraftcore:canvas>, <metaitem:lander.tier.1>, <galacticraftcore:canvas>],
   [<metaitem:foilGold>, <galacticraftcore:canvas>, <metaitem:foilGold>]]);
// T3
recipes.addShaped("tfg/gc/lander_tier3", <metaitem:lander.tier.3>,
   [[<metaitem:plateDenseBlackSteel>, <ore:chestWood>, <metaitem:plateDenseBlackSteel>],
   [<galacticraftcore:steel_pole>, <metaitem:lander.tier.2>, <galacticraftcore:steel_pole>],
   [<metaitem:plateDenseBlackSteel>, <metaitem:plateBlackSteel>, <metaitem:plateDenseBlackSteel>]]);

// Схема ракеты
// // T7
// laser_engraver.recipeBuilder()
// 	.inputs([<metaitem:schematic.blank>])
//    .notConsumable([<metaitem:glass_lens.pink>])
// 	.outputs(<extraplanets:schematic_tier7>)
//    .property("cleanroom", "cleanroom")
// 	.duration(9000).EUt(491520).buildAndRegister();
// // T8
// laser_engraver.recipeBuilder()
// 	.inputs([<metaitem:schematic.blank>])
//    .notConsumable([<metaitem:glass_lens.gray>])
// 	.outputs(<extraplanets:schematic_tier8>)
//    .property("cleanroom", "cleanroom")
// 	.duration(9000).EUt(491520).buildAndRegister();
// // T9
// laser_engraver.recipeBuilder()
// 	.inputs([<metaitem:schematic.blank>])
//    .notConsumable([<metaitem:glass_lens.light_gray>])
// 	.outputs(<extraplanets:schematic_tier9>)
//    .property("cleanroom", "cleanroom")
// 	.duration(9000).EUt(122880).buildAndRegister();
// // T10
// laser_engraver.recipeBuilder()
// 	.inputs([<metaitem:schematic.blank>])
//    .notConsumable([<metaitem:glass_lens.cyan>])
// 	.outputs(<extraplanets:schematic_tier10>)
//    .property("cleanroom", "cleanroom")
// 	.duration(9000).EUt(30720).buildAndRegister();
// // T10 - Элекстрическая ракета
// laser_engraver.recipeBuilder()
// 	.inputs([<metaitem:schematic.blank>])
//    .notConsumable([<metaitem:glass_lens.light_blue>])
// 	.outputs(<extraplanets:schematic_tier10_electric_rocket>)
//    .property("cleanroom", "cleanroom")
// 	.duration(9000).EUt(122880).buildAndRegister();