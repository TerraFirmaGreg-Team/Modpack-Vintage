import crafttweaker.item.IItemStack;

import mods.terrafirmacraft.ItemRegistry;

// --- Removing Recipes

// Удаление+скрытие рецептов JEI
val RemoveItemsFromJEI as IItemStack[] = [
	// Руды
	// Медь
	<galacticraftcore:basic_block_core:5>,
	<galacticraftcore:basic_block_moon>,
	<galacticraftplanets:mars>,
	<galacticraftplanets:venus:7>,
	// Олово
	<galacticraftcore:basic_block_core:6>,
	<galacticraftcore:basic_block_moon:1>,
	<galacticraftplanets:mars:1>,
	<galacticraftplanets:venus:11>,
	// Железо
	<galacticraftplanets:mars:3>,
	<galacticraftplanets:asteroids_block:5>,
	// Алюминиум
	<galacticraftcore:basic_block_core:7>,
	<galacticraftplanets:asteroids_block:3>,
	<galacticraftplanets:venus:6>,
	// Силикон
	<galacticraftcore:basic_block_core:8>,
	<galacticraftplanets:venus:10>,
	// Остальные руды
	<galacticraftcore:basic_block_moon:6>,
	<galacticraftcore:basic_block_moon:2>,
	<galacticraftplanets:venus:8>,
	<galacticraftplanets:venus:9>,
	<galacticraftplanets:mars:2>,
	<galacticraftplanets:venus:13>,
	// Предметы
	<galacticraftplanets:volcanic_pickaxe>,
	<galacticraftplanets:desh_pick_slime>,
	<galacticraftcore:steel_pickaxe>,
	<galacticraftplanets:titanium_pickaxe>,
	<galacticraftplanets:desh_pick>,
	<galacticraftplanets:carbon_fragments>,
	<galacticraftcore:steel_helmet>,
	<galacticraftcore:steel_chestplate>,
	<galacticraftcore:steel_leggings>,
	<galacticraftcore:steel_boots>,
	<galacticraftcore:steel_sword>,
	<galacticraftcore:steel_axe>,
	<galacticraftcore:steel_shovel>,
	<galacticraftcore:steel_hoe>,
	<galacticraftplanets:titanium_sword>,
	<galacticraftplanets:titanium_axe>,
	<galacticraftplanets:titanium_pickaxe>,
	<galacticraftplanets:titanium_shovel>,
	<galacticraftplanets:titanium_hoe>,
	<galacticraftplanets:desh_sword>,
	<galacticraftplanets:desh_pick>,
	<galacticraftplanets:desh_axe>,
	<galacticraftplanets:desh_hoe>,
	<galacticraftplanets:desh_spade>,
	<galacticraftplanets:titanium_boots>,
	<galacticraftplanets:titanium_leggings>,
	<galacticraftplanets:titanium_chestplate>,
	<galacticraftplanets:titanium_helmet>,
	<galacticraftplanets:desh_boots>,
	<galacticraftplanets:desh_leggings>,
	<galacticraftplanets:desh_chestplate>,
	<galacticraftplanets:desh_helmet>,
	<galacticraftcore:refinery>,
	<galacticraftcore:fluid_tank>,
	<galacticraftcore:basic_item>,
	<galacticraftcore:basic_item:12>,
	<galacticraftcore:basic_item:1>,
	<galacticraftplanets:basic_item_venus:5>,
	<galacticraftplanets:basic_item_venus:6>,
	<galacticraftcore:machine>,
	<galacticraftcore:machine:12>,
	<galacticraftcore:machine2>,
	<galacticraftcore:machine4>,
	<galacticraftcore:machine2:4>,
	<galacticraftcore:machine_tiered>,
	<galacticraftcore:machine_tiered:8>,
	<galacticraftcore:machine_tiered:12>,
	<galacticraftplanets:mars_machine_t2>,
	<galacticraftplanets:mars_machine_t2:8>,
	<galacticraftplanets:mars_machine_t2:4>,
	<galacticraftcore:machine_tiered:4>,
	<galacticraftcore:basic_item:2>,
	<galacticraftplanets:geothermal_generator>,
	<galacticraftcore:air_fan>,
	<galacticraftplanets:atmospheric_valve>,
	<galacticraftcore:battery:100>,
	<galacticraftcore:machine2:12>,
	<galacticraftcore:basic_item:6>,
	<galacticraftcore:basic_item:7>,
	<galacticraftcore:basic_item:8>,
	<galacticraftcore:basic_item:9>,
	<galacticraftcore:basic_item:10>,
	<galacticraftcore:basic_item:11>,
	<galacticraftcore:item_basic_moon:1>,
	<galacticraftplanets:item_basic_mars:5>,
	<galacticraftplanets:item_basic_asteroids:6>,
	<galacticraftcore:canister:1>,
	<galacticraftcore:machine2:8>,
	<galacticraftcore:basic_item:3>,
	<galacticraftcore:basic_item:4>,
	<galacticraftcore:basic_item:5>,
	<galacticraftcore:basic_block_core:9>,
	<galacticraftcore:basic_block_core:10>,
	<galacticraftcore:basic_block_core:11>,
	<galacticraftcore:infinite_oxygen>,
	<galacticraftplanets:basic_item_venus:4>,
	<galacticraftcore:platform>,
	<galacticraftplanets:solar_array_module>,
	<galacticraftplanets:solar_array_controller>,
	<galacticraftcore:sensor_glasses>,
	<galacticraftcore:sensor_lens>,
	<galacticraftcore:standard_wrench>,
	<galacticraftplanets:laser_turret>,
	<galacticraftcore:aluminum_wire>,
	<galacticraftcore:aluminum_wire:1>,
	<galacticraftcore:aluminum_wire:2>,
	<galacticraftcore:aluminum_wire:3>,
	<galacticraftcore:rocket_t1:4>,
	<galacticraftplanets:rocket_t2:4>,
	<galacticraftplanets:rocket_t3:4>,
	<galacticraftplanets:item_basic_mars:6>,
	<galacticraftcore:machine3>,
	<galacticraftcore:cargo>,
	<galacticraftcore:cargo:4>,
	<galacticraftcore:fluid_pipe>,
	<galacticraftcore:parachest>,
	<galacticraftcore:cheese>,
	<galacticraftcore:treasure_chest>,
	<galacticraftcore:key>,
	<galacticraftcore:basic_item:13>,
	<galacticraftcore:basic_item:14>,
	<galacticraftcore:infinite_battery>,
	<galacticraftcore:food:8>,
	<galacticraftcore:food:5>,
	<galacticraftcore:food:4>,
	<galacticraftcore:food:7>,
	<galacticraftcore:food:6>,
	<galacticraftcore:fallen_meteor>,
	<galacticraftcore:meteor_chunk>,
	<galacticraftcore:meteor_chunk>,
	<galacticraftcore:dungeonfinder>,
	<galacticraftcore:cheese_curd>,
	<galacticraftplanets:rocket_t2:14>,
	<galacticraftplanets:slimeling_egg>,
	<galacticraftplanets:slimeling_egg:1>,
	<galacticraftplanets:slimeling_egg:2>,
	<galacticraftplanets:creeper_egg>,
	<galacticraftplanets:cavern_vines>,
	<galacticraftplanets:key>,
	<galacticraftplanets:item_basic_asteroids>,
	<galacticraftplanets:item_basic_asteroids:3>,
	<galacticraftplanets:item_basic_asteroids:4>,
	<galacticraftplanets:item_basic_asteroids:9>,
	<galacticraftplanets:methane_canister_partial:1>,
	<galacticraftplanets:canister_partial_lox:1>,
	<galacticraftplanets:canister_partial_ln2:1>,
	<galacticraftplanets:strange_seed>,
	<galacticraftplanets:crashed_probe>,
	<galacticraftplanets:web_torch:1>,
	<galacticraftplanets:web_torch>,
	<galacticraftplanets:treasure_t3>,
	<galacticraftplanets:strange_seed:1>,
	<galacticraftplanets:key_t3>,
	<galacticraftplanets:basic_item_venus:1>,
	<galacticraftcore:item_basic_moon>,
	<galacticraftcore:meteor_chunk:1>,
	<galacticraftplanets:item_basic_mars:2>,
	<galacticraftplanets:item_basic_mars:1>,
	<galacticraftcore:basic_block_core:13>,
	<galacticraftplanets:dense_ice>,
	<galacticraftcore:emergency_box>,
	<galacticraftcore:emergency_box:1>,
	<galacticraftcore:emergency_kit>,
	<galacticraftplanets:asteroids_block:7>,
	<galacticraftplanets:venus:12>,
	<galacticraftplanets:asteroids_block:6>,
	<galacticraftplanets:treasure_t2>,
	<galacticraftcore:magnetic_table>,
	<galacticraftcore:rocket_workbench>,
	<galacticraftcore:schematic>,
	<galacticraftcore:schematic:1>,
	<galacticraftplanets:schematic:1>,
	<galacticraftplanets:schematic:2>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

// Удаление рецептов
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
	<galacticraftcore:solar>,
	<galacticraftcore:solar:4>,
	<galacticraftcore:air_vent>,
	<galacticraftcore:oxygen_tank_light_full:900>,
	<galacticraftcore:oxygen_tank_med_full:1800>,
	<galacticraftcore:oxygen_tank_heavy_full:2700>,
	<galacticraftcore:oxygen_mask>,
	<galacticraftcore:oxygen_gear>,
	<galacticraftplanets:thermal_padding>,
	<galacticraftplanets:thermal_padding:1>,
	<galacticraftplanets:thermal_padding:2>,
	<galacticraftplanets:thermal_padding:3>,
	<galacticraftplanets:item_basic_asteroids:7>,
	<galacticraftplanets:basic_item_venus:3>,
	<galacticraftplanets:walkway>,
	<galacticraftplanets:walkway:1>,
	<galacticraftplanets:walkway:2>,
	<galacticraftplanets:beam_receiver>,
	<galacticraftplanets:item_basic_asteroids:8>,
	<galacticraftplanets:basic_item_venus:2>,
	<galacticraftplanets:atomic_battery>,
	<galacticraftplanets:telepad_short>,
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
	<galacticraftcore:nose_cone>
] as IItemStack[];
for item in RemoveItemRecipe{
    recipes.remove(item);
}

//Другие рецепты которые удалены
furnace.remove(<galacticraftcore:item_basic_moon>);
furnace.remove(<galacticraftplanets:item_basic_mars:2>);

//Именованное удаление
recipes.removeByRecipeName("galacticraftcore:slime_ball");
recipes.removeByRecipeName("galacticraftcore:cobblestone");
recipes.removeByRecipeName("galacticraftcore:cobblestone_alt");
recipes.removeByRecipeName("galacticraftcore:cobblestone_alt_alt");

// --- Adding Recipes

//Еда из GC
ItemRegistry.registerFood(<galacticraftcore:food>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:1>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:2>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:3>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:9>, 4, 0.6, 0.9, 0.5, 0, 0, 0, 1.0, 0);

//Шест
recipes.addShapeless(<galacticraftcore:steel_pole>*2, [<ore:stickLongSteel>, <ore:stickLongSteel>, <ore:stickLongSteel>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag()]);

//Светофакел
recipes.addShapeless(<galacticraftcore:glowstone_torch>*2, [<minecraft:torch>, <minecraft:glowstone_dust>]);

//Slimeball
recipes.addShaped(<minecraft:slime_ball>,
[[<ore:dyeGreen>, <ore:dustSugar>, <ore:dyeGreen>],
 [<ore:dustSugar>, <firmalife:cheddar_wheel>,<ore:dustSugar>],
 [<ore:dyeGreen>, <ore:dustSugar>, <ore:dyeGreen>]]);

//Slimeling Inventory Bag
recipes.addShaped(<galacticraftplanets:item_basic_mars:4>,
[[<ore:leather>, <ore:plateDiamond>, <ore:leather>],
 [<ore:leather>, <ore:slimeball>, <ore:leather>],
 [null, <ore:chestWood>, null]]);

//Oxygen Mask
recipes.addShaped(<galacticraftcore:oxygen_mask>,
[[<minecraft:glass_pane>, <ore:craftingLensWhite>, <minecraft:glass_pane>],
 [<ore:plateDenseSteel>, <minecraft:leather_helmet>, <ore:plateDenseSteel>],
 [<minecraft:glass_pane>, <ore:pipeTinyFluidStainlessSteel>, <minecraft:glass_pane>]]);

//Oxygen Gear
recipes.addShaped(<galacticraftcore:oxygen_gear>,
[[<ore:plateAluminium>, <galacticraftcore:air_vent>, <ore:plateAluminium>],
 [<galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>, <galacticraftcore:oxygen_concentrator>],
 [<ore:cableGtQuadrupleCopper>, <ore:rotorStainlessSteel>, <ore:cableGtQuadrupleCopper>]]);

//Oxygen Detector
recipes.addShaped(<galacticraftcore:oxygen_detector>,
[[<metaitem:sensor.hv>, <ore:plateAluminium>, <metaitem:sensor.hv>],
 [<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>],
 [<ore:cableGtQuadrupleCopper>, <ore:plateAluminium>, <ore:cableGtQuadrupleCopper>]]);

//Oxygen Sealer
recipes.addShaped(<galacticraftcore:sealer>,
[[<metaitem:sensor.hv>, <galacticraftcore:air_vent>, <metaitem:sensor.hv>],
 [<ore:circuitAdvanced>, <ore:rotorStainlessSteel>, <ore:circuitAdvanced>],
 [<metaitem:electric.pump.mv>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.mv>]]);

//Oxygen Bubble Distributor
recipes.addShaped(<galacticraftcore:distributor>,
[[<metaitem:sensor.hv>, <galacticraftcore:air_vent>, <metaitem:sensor.hv>],
 [<ore:circuitAdvanced>, <ore:rotorStainlessSteel>, <ore:circuitAdvanced>],
 [<metaitem:field.generator.ev>, <galacticraftcore:oxygen_concentrator>, <metaitem:field.generator.ev>]]);

//Oxygen Collector
recipes.addShaped(<galacticraftcore:collector>,
[[<galacticraftcore:air_vent>, <ore:circuitExtreme>, <galacticraftcore:air_vent>],
 [<ore:rotorStainlessSteel>, <metaitem:hull.hv>, <ore:rotorStainlessSteel>],
 [<metaitem:drum.stainless_steel>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>]]);

//Oxygen Compressor
recipes.addShaped(<galacticraftcore:oxygen_compressor>,
[[<ore:circuitAdvanced>, <galacticraftcore:oxygen_concentrator>, <metaitem:electric.pump.hv>],
 [<ore:pipeSmallFluidStainlessSteel>, <metaitem:hull.hv>, <ore:pipeSmallFluidStainlessSteel>],
 [<metaitem:drum.stainless_steel>, <ore:plateBlackSteel>, <metaitem:electric.pump.hv>]]);

//Oxygen Decompressor
recipes.addShaped(<galacticraftcore:oxygen_compressor:4>,
[[<metaitem:electric.pump.hv>, <galacticraftcore:oxygen_concentrator>, <metaitem:drum.stainless_steel>],
 [<ore:pipeSmallFluidStainlessSteel>, <metaitem:hull.hv>, <ore:pipeSmallFluidStainlessSteel>],
 [<metaitem:electric.pump.hv>, <ore:plateBlackSteel>, <metaitem:compressor.hv>]]);

//Загручкик топлива
recipes.addShaped(<galacticraftcore:fuel_loader>,
[[<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>],
 [<metaitem:drum.stainless_steel>, <metaitem:hull.hv>, <metaitem:electric.pump.mv>],
 [<ore:pipeSmallFluidStainlessSteel>, <ore:pipeSmallFluidStainlessSteel>, <ore:pipeSmallFluidStainlessSteel>]]);

//Воздушный шлюз каркас
recipes.addShaped(<galacticraftcore:air_lock_frame> * 2,
[[<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>],
 [<ore:plateStainlessSteel>, <ore:blockLead>, <ore:plateStainlessSteel>],
 [<ore:plateStainlessSteel>, <ore:plateStainlessSteel>, <ore:plateStainlessSteel>]]);

//Контроллер воздушного шлюза
recipes.addShaped(<galacticraftcore:air_lock_frame:1>,
[[<ore:plateStainlessSteel>, <ore:cableGtDoubleGold>, <ore:plateStainlessSteel>],
 [<ore:circuitAdvanced>, <ore:blockLead>, <ore:circuitAdvanced>],
 [<ore:plateStainlessSteel>, <ore:cableGtDoubleGold>, <ore:plateStainlessSteel>]]);

//Телеметрический блок
recipes.addShaped(<galacticraftcore:telemetry>,
[[<metaitem:sensor.hv>, <ore:cableGtDoubleGold>, <ore:circuitAdvanced>],
 [<appliedenergistics2:wireless_access_point>, <metaitem:hull.hv>, <appliedenergistics2:wireless_access_point>],
 [<ore:plateStainlessSteel>, <appliedenergistics2:part:480>, <ore:plateStainlessSteel>]]);

//Контроллер запуска
recipes.addShaped(<galacticraftplanets:mars_machine:8>,
[[<ore:circuitAdvanced>, <ore:circuitAdvanced>, <ore:circuitAdvanced>],
 [<metaitem:sensor.ev>, <metaitem:hull.hv>, <metaitem:sensor.ev>],
 [<ore:cableGtDoubleGold>, <ore:cableGtDoubleGold>, <ore:cableGtDoubleGold>]]);

//Креокамера
recipes.addShaped(<galacticraftplanets:mars_machine:4>,
[[<metaitem:electric.pump.hv>, <ore:circuitAdvanced>, <metaitem:emitter.hv>],
 [<ore:plateDenseLead>, <ore:bed>, <ore:plateDenseLead>],
 [<galacticraftcore:oxygen_concentrator>, <ore:circuitAdvanced>, <galacticraftcore:oxygen_concentrator>]]);

//Терраформер
recipes.addShaped(<galacticraftplanets:mars_machine>,
[[<metaitem:sensor.ev>, <metaitem:emitter.ev>, <metaitem:sensor.ev>],
 [<ore:plateLead>, <ore:circuitElite>, <ore:plateLead>],
 [<ore:cableGtDoubleGold>, <metaitem:field.generator.ev>, <ore:cableGtDoubleGold>]]);

//Контроллер щита
recipes.addShaped(<galacticraftplanets:basic_item_venus>,
[[<ore:paneGlassBlack>, <ore:stickNeodymiumMagnetic>, <ore:paneGlassBlack>],
 [<ore:wireGtSingleMercuryBariumCalciumCuprate>, <metaitem:field.generator.ev>, <ore:wireGtSingleMercuryBariumCalciumCuprate>],
 [<ore:paneGlassBlack>, <ore:stickNeodymiumMagnetic>, <ore:paneGlassBlack>]]);

//Базовая солнечная панель
recipes.addShaped(<galacticraftcore:solar>,
[[<metaitem:cover.solar.panel>, <metaitem:cover.solar.panel>, <metaitem:cover.solar.panel>],
 [<ore:gearStainlessSteel>, <ore:stickStainlessSteel>, <ore:gearStainlessSteel>],
 [<metaitem:electric.piston.hv>, <metaitem:hull.mv>, <ore:cableGtQuadrupleGold>]]);

//Улучшенная солнечная панель
recipes.addShaped(<galacticraftcore:solar:4>,
[[<metaitem:cover.solar.panel.ulv>, <metaitem:cover.solar.panel.ulv>, <metaitem:cover.solar.panel.ulv>],
 [<ore:gearStainlessSteel>, <ore:stickStainlessSteel>, <ore:gearStainlessSteel>],
 [<metaitem:electric.piston.ev>, <metaitem:hull.hv>, <ore:cableGtQuadrupleGold>]]);

//Клапан
recipes.addShaped(<galacticraftcore:air_vent>,
[[<minecraft:iron_bars>, <ore:stickLongSteel>, <minecraft:iron_bars>],
 [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>],
 [<minecraft:iron_bars>, <ore:stickLongSteel>, <minecraft:iron_bars>]]);

//Частотный модуль
recipes.addShaped(<galacticraftcore:basic_item:19>,
[[<ore:plateLead>, <metaitem:emitter.hv>, <ore:plateLead>],
 [<metaitem:sensor.hv>, <ore:cableGtSingleRedAlloy>, <ore:circuitBasic>],
 [<ore:componentResistor>, <metaitem:wireless>, <ore:componentResistor>]]);

//Тепло-шлем
recipes.addShaped(<galacticraftplanets:thermal_padding>,
[[<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_helmet>, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>],
 [null, null, null]]);

//Тепло-нагрудник
recipes.addShaped(<galacticraftplanets:thermal_padding:1>,
[[<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_chestplate>, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, <galacticraftplanets:item_basic_asteroids:7>, <galacticraftplanets:item_basic_asteroids:7>]]);

//Тепло-поножи
recipes.addShaped(<galacticraftplanets:thermal_padding:2>,
[[<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_leggings>, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>]]);

//Тепло-ботинки
recipes.addShaped(<galacticraftplanets:thermal_padding:3>,
[[null, null, null],
 [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_boots>, <galacticraftplanets:item_basic_asteroids:7>]]);

//Тепло-ткань 1
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:7> * 2,
[[<ore:wool>, <ore:wool>, <ore:wool>],
 [<ore:clothHighQuality>, <ore:clothHighQuality>, <ore:clothHighQuality>],
 [<ore:wool>, <ore:wool>, <ore:wool>]]);

//Тепло-ткань 2
recipes.addShaped(<galacticraftplanets:basic_item_venus:3> * 2,
[[null, <galacticraftplanets:item_basic_asteroids:7>, null],
 [<galacticraftplanets:item_basic_asteroids:7>, <ore:plateLead>, <galacticraftplanets:item_basic_asteroids:7>],
 [null, <galacticraftplanets:item_basic_asteroids:7>, null]]);

//Пешеходная дорожка
recipes.addShaped(<galacticraftplanets:walkway>,
[[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
 [<ore:plateCurvedTitanium>, <ore:plateTitanium>, <ore:plateCurvedTitanium>],
 [null, <ore:plateTitanium>, null]]);

//Пеш. дор с проводом
recipes.addShaped(<galacticraftplanets:walkway:1>,
[[<galacticraftplanets:walkway>, <ore:cableGtDoubleAluminium>, null],
 [<ore:cableGtDoubleAluminium>, null, null],
 [null, null, null]]);

//Пеш. дор с жид. трубой
recipes.addShaped(<galacticraftplanets:walkway:2>,
[[<galacticraftplanets:walkway>, <ore:pipeTinyFluidStainlessSteel>, null],
 [<ore:pipeTinyFluidStainlessSteel>, null, null],
 [null, null, null]]);

//Маяк ресивер
recipes.addShaped(<galacticraftplanets:beam_receiver>,
[[<ore:plateBeryllium>, <ore:plateSilver>, <ore:plateBeryllium>],
 [<ore:plateSilver>, <galacticraftplanets:item_basic_asteroids:8>, <ore:plateSilver>],
 [<ore:plateBeryllium>, <ore:circuitElite>, <ore:plateBeryllium>]]);

//Лучевое ядро
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:8>,
[[<ore:dustRedstone>, <ore:platePlatinum>, <ore:dustRedstone>],
 [<ore:platePlatinum>, <galacticraftplanets:basic_item_venus:2>, <ore:platePlatinum>],
 [<ore:dustRedstone>, <ore:platePlatinum>, <ore:dustRedstone>]]);

//Радиоизотопное ядро
recipes.addShaped(<galacticraftplanets:basic_item_venus:2>,
[[<ore:dustGraphite>, <metaitem:neutron_reflector>, <ore:dustGraphite>],
 [<ore:stickUranium235>, <metaitem:neutron_reflector>, <ore:stickUranium235>],
 [<ore:dustGraphite>, <metaitem:neutron_reflector>, <ore:dustGraphite>]]);

//Атомная батарейка
recipes.addShaped(<galacticraftplanets:atomic_battery>,
[[null, <ore:plateInvar>, null],
 [null, <galacticraftplanets:basic_item_venus:2>, null],
 [null, <metaitem:large_fluid_cell.tungstensteel>, null]]);

//Площадка телепортации
recipes.addShaped(<galacticraftplanets:telepad_short>,
[[<ore:plateDoubleTrinaquadalloy>, <ore:circuitElite>, <ore:plateDoubleTrinaquadalloy>],
 [<metaitem:magic_energy_absorber>, <galacticraftplanets:item_basic_asteroids:8>, <metaitem:magic_energy_absorber>],
 [<ore:plateDoubleTrinaquadalloy>, <ore:plateDoubleTrinaquadalloy>, <ore:plateDoubleTrinaquadalloy>]]);

//Спасательная коробка
recipes.addShaped(<galacticraftcore:emergency_box>,
[[<ore:glowstone>, <ore:plateTin>, <ore:glowstone>],
 [<ore:plateTin>, <ore:chestWood>, <ore:plateTin>],
 [<ore:glowstone>, <ore:plateTin>, <ore:glowstone>]]);

//Спасат коробка с самоспасателем
recipes.addShaped(<galacticraftcore:landing_pad>*9,
[[null, null, null],
 [<ore:plateDoubleBlackSteel>, <ore:plateDoubleBlackSteel>, <ore:plateDoubleBlackSteel>],
 [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]]);

//Площадка для багги
recipes.addShaped(<galacticraftcore:landing_pad:1>*9,
[[null, null, null],
 [<ore:plateDoubleIron>, <ore:plateDoubleIron>, <ore:plateDoubleIron>],
 [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]]);

//Основания астрономического шахтера
recipes.addShaped(<galacticraftplanets:miner_base>,
[[<ore:plateDenseBlackSteel>, <ore:chestWood>, <ore:plateDenseBlackSteel>],
 [<galacticraftplanets:item_basic_asteroids:8>, <ore:circuitAdvanced>, <galacticraftplanets:item_basic_asteroids:8>],
 [<ore:plateDenseBlackSteel>, <metaitem:battery_buffer.luv.16>, <ore:plateDenseBlackSteel>]]);

//Вращательный движок
recipes.addShaped(<galacticraftcore:spin_thruster>,
[[<galacticraftcore:oil_canister_partial:1001>, <ore:circuitElite>, <galacticraftplanets:item_basic_asteroids:1>],
 [<ore:plateDoubleStainlessSteel>, <gregtech:metal_casing:7>, <ore:plateDoubleStainlessSteel>],
 [<ore:wireGtDoubleElectrum>, <ore:wireGtDoubleElectrum>, <ore:wireGtDoubleElectrum>]]);

//Капсула из галактики под жидкости
recipes.addShaped(<galacticraftcore:oil_canister_partial:1001>,
[[<ore:plateAluminium>, <ore:plateBlackSteel>, <ore:plateAluminium>],
 [<ore:plateAluminium>, <ore:blockGlass>, <ore:plateAluminium>],
 [<ore:plateAluminium>, <galacticraftcore:canister>, <ore:plateAluminium>]]);

//Канистра из олова
recipes.addShaped(<galacticraftcore:canister>,
[[<ore:plateTin>, null, <ore:plateTin>],
 [<ore:plateTin>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:plateTin>],
 [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);

//Дуговая лампа
recipes.addShaped(<galacticraftcore:arclamp>,
[[<ore:plateBlackSteel>, <ore:dustGlowstone>, <ore:plateBlackSteel>],
 [<ore:dustGlowstone>, <galacticraftplanets:atomic_battery>, <ore:dustGlowstone>],
 [<ore:plateBlackSteel>, <ore:dustGlowstone>, <ore:plateBlackSteel>]]);

//Багги сиденье
recipes.addShaped(<galacticraftcore:buggymat:1>,
[[<ore:plateBlackSteel>, null, null],
 [<ore:plateBlackSteel>, <ore:leather>, null],
 [<ore:plateBlackSteel>, <ore:plateBlackSteel>, <ore:plateBlackSteel>]]);

//Контейнер багги
recipes.addShaped(<galacticraftcore:buggymat:2>,
[[<ore:plateAluminium>, <ore:plateStainlessSteel>, <ore:plateAluminium>],
 [<ore:plateAluminium>, <ore:chestWood>, <ore:plateAluminium>],
 [<ore:plateAluminium>, <ore:plateStainlessSteel>, <ore:plateAluminium>]]);

//Маяк дефлектор
recipes.addShaped(<galacticraftplanets:beam_reflector>,
[[null, <galacticraftplanets:item_basic_asteroids:8>, null],
 [<ore:circuitGood>, <ore:plateTitanium>, <minecraft:lever>],
 [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);

//Крюк
recipes.addShaped(<galacticraftplanets:grapple>,
[[null, null, <ore:string>],
 [<ore:ingotIron>, <ore:string>, null],
 [<ore:ingotIron>, <ore:ingotIron>, null]]);


//Антена связи
recipes.addShaped(<galacticraftcore:dishbase>,
[[<ore:plateStainlessSteel>, <galacticraftcore:basic_item:19>, <ore:plateStainlessSteel>],
 [null, <ore:plateStainlessSteel>, null],
 [<ore:circuitMaster>, <ore:blockSteel>, <ore:circuitMaster>]]);

//Тепловой контроллер
recipes.addShaped(<galacticraftcore:basic_item:20>,
[[<ore:cableGtDoubleElectrum>, <ore:circuitElite>, <ore:cableGtDoubleElectrum>],
 [<ore:plateBronze>, <ore:circuitElite>, <ore:plateBronze>],
 [<galaxyspace:compressed_plates:4>, <ore:plateBlackSteel>, <galaxyspace:compressed_plates:4>]]);

//Концентратор
recipes.addShaped(<galacticraftcore:oxygen_concentrator>,
[[<ore:plateBlackSteel>, <ore:circuitGood>, <ore:plateBlackSteel>],
 [<ore:plateTin>, <galacticraftcore:canister>, <ore:plateTin>],
 [<ore:plateBlackSteel>, <galacticraftcore:air_vent>, <ore:plateBlackSteel>]]);

//Привод ориона
recipes.addShaped(<galacticraftplanets:orion_drive>,
[[<ore:platePalladium>, <ore:circuitExtreme>, <ore:platePalladium>],
 [<metaitem:robot.arm.iv>, <galacticraftplanets:miner_base>, <metaitem:robot.arm.iv>],
 [<ore:platePalladium>, <ore:circuitElite>, <ore:platePalladium>]]);

//Колесо багги
recipes.addShaped(<galacticraftcore:buggymat>,
[[null, <ore:plateStyreneButadieneRubber>, null],
 [<ore:plateStyreneButadieneRubber>, <ore:plateVanadiumSteel>, <ore:plateStyreneButadieneRubber>],
 [null, <ore:plateStyreneButadieneRubber>, null]]);

//Экран просмотра
recipes.addShaped(<galacticraftcore:view_screen>,
[[<ore:plateBlackSteel>, <ore:circuitBasic>, <ore:plateBlackSteel>],
 [<ore:circuitBasic>, <ore:paneGlass>, <ore:circuitBasic>],
 [<ore:plateBlackSteel>, <ore:circuitBasic>, <ore:plateBlackSteel>]]);

//ДО 1
recipes.addShaped(<galacticraftcore:basic_block_core:4>,
[[<ore:stone>, <ore:stone>, null],
 [<ore:stone>, <ore:stone>, <ore:plateTin>],
 [null, null, null]]);

//ДО 2
recipes.addShaped(<galacticraftcore:basic_block_core:3>,
[[<ore:stone>, <ore:stone>, null],
 [<ore:stone>, <ore:stone>, null],
 [null, <ore:plateTin>, null]]);

//Свет панель 1
recipes.addShaped(<galacticraftcore:panel_lighting>,
[[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
 [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
 [<ore:paneGlass>, <ore:plateBlackSteel>, <ore:paneGlass>]]);

//Свет панель 2
recipes.addShaped(<galacticraftcore:panel_lighting:1>,
[[<ore:paneGlass>, null, <ore:paneGlass>],
 [null, <galacticraftcore:glowstone_torch>, null],
 [<ore:paneGlass>, <ore:plateBlackSteel>, <ore:paneGlass>]]);

//Свет панель 3
recipes.addShaped(<galacticraftcore:panel_lighting:2>,
[[<ore:paneGlass>, null, <ore:paneGlass>],
 [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
 [<ore:paneGlass>, <ore:plateBlackSteel>, <ore:paneGlass>]]);

//Свет панель 4
recipes.addShaped(<galacticraftcore:panel_lighting:3>,
[[null, null, null],
 [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
 [null, <ore:plateBlackSteel>, null]]);

//Свет панель 5
recipes.addShaped(<galacticraftcore:panel_lighting:4>,
[[null, null, null],
 [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, null],
 [null, <ore:plateBlackSteel>, null]]);

//Sealable Alum. Wire
recipes.addShaped(<galacticraftcore:enclosed:14>,
[[null, null, null],
 [<galacticraftcore:basic_block_core:4>, <ore:cableGtSingleAnnealedCopper>, <galacticraftcore:basic_block_core:4>],
 [null, null, null]]);

//Sealable Alum. Wire
recipes.addShaped(<galacticraftcore:enclosed:15>,
[[null, null, null],
 [<galacticraftcore:basic_block_core:4>, <ore:cableGtSingleGold>, <galacticraftcore:basic_block_core:4>],
 [null, null, null]]);

//Sealable Alum. Wire
recipes.addShaped(<galacticraftcore:enclosed:13>,
[[null, null, null],
 [<galacticraftcore:basic_block_core:4>, <appliedenergistics2:part:16>, <galacticraftcore:basic_block_core:4>],
 [null, null, null]]);

//Sealable Alum. Wire
recipes.addShaped(<galacticraftcore:enclosed:1>,
[[null, null, null],
 [<galacticraftcore:basic_block_core:4>, <ore:pipeSmallFluidStainlessSteel>, <galacticraftcore:basic_block_core:4>],
 [null, null, null]]);
 
// Еда
// Фруктовая канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:categoryFruit> * 2)
   .outputs(<galacticraftcore:food>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();

// Морковная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/carrot> * 2)
   .outputs(<galacticraftcore:food:1>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();

// Арбузная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <firmalife:melon> * 2)
   .outputs(<galacticraftcore:food:2>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();

// Картофельная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/potato> * 2)
   .outputs(<galacticraftcore:food:3>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();

// Мясная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:categoryMeat> * 2)
   .outputs(<galacticraftcore:food:9>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();

// High Duty Plates(1-3)
// Tier 1
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateBlackSteel>.firstItem * 3, <ore:plateAluminium>.firstItem, <ore:foilStainlessSteel>.firstItem * 16])
	.outputs(<galacticraftcore:heavy_plating> * 3)
	.property("temperature", 3500)
	.duration(1000)
	.EUt(520)
	.buildAndRegister();
// Tier 2
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateAluminium>.firstItem * 3, <ore:plateStainlessSteel>.firstItem, <ore:foilTitanium>.firstItem * 16])
	.outputs(<galacticraftplanets:item_basic_mars:3> * 3)
	.property("temperature", 4400)
	.duration(1000)
	.EUt(580)
	.buildAndRegister();
// Tier 3
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateStainlessSteel>.firstItem * 3, <ore:plateTitanium>.firstItem, <ore:foilTungstenSteel>.firstItem * 16])
	.outputs(<galacticraftplanets:item_basic_asteroids:5> * 3)
	.property("temperature", 5300)
	.duration(1000)
	.EUt(640)
	.buildAndRegister();

// Баллоны
// Легкий
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.lv>, <ore:pipeTinyFluidAluminium> *4 , <ore:plateLead>*2, <metaitem:electric.pump.lv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_light_full:900>)
   .duration(1000).EUt(128).buildAndRegister();
// Средний
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.mv>, <ore:pipeTinyFluidAluminium> * 4, <ore:plateLead> * 4, <metaitem:electric.pump.mv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_med_full:1800>)
   .duration(1000).EUt(256).buildAndRegister();
// Тяжелый
assembler.recipeBuilder()
   .inputs(<metaitem:super_tank.hv>, <ore:pipeTinyFluidAluminium> * 4, <ore:plateLead> * 6, <metaitem:electric.pump.hv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_heavy_full:2700>)
   .duration(1000).EUt(512).buildAndRegister();

// Nose Cones 1-2 Tiers
// Tier 1
assembler.recipeBuilder()
   .inputs(<galacticraftcore:heavy_plating> * 4)
   .inputs(<metaitem:sensor.ev> * 2)
   .inputs(<minecraft:redstone_torch>)
   .circuit(7)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galacticraftcore:nose_cone>)
   .duration(600)
   .EUt(480)
   .buildAndRegister();
// Tier 2
assembler.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_mars:3> * 4)
   .inputs(<metaitem:sensor.iv> * 2)
   .inputs(<minecraft:redstone_torch>)
   .circuit(7)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galacticraftplanets:heavy_nose_cone>)
   .duration(600)
   .EUt(512)
   .buildAndRegister();

// Rocket Engines 1-2 Tiers
// Tier 1
assembler.recipeBuilder()
   .inputs(<galacticraftcore:heavy_plating> * 6)
   .inputs(<galaxyspace:rocket_modules:3>)
   .inputs(<metaitem:electric.motor.ev> * 8)
   .inputs(<metaitem:electric.pump.ev> * 4)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitExtreme> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .circuit(8)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galacticraftcore:engine>)
   .duration(600)
   .EUt(480)
   .buildAndRegister();
// Tier 2
assembler.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_mars:3> * 6)
   .inputs(<galaxyspace:rocket_modules:3> * 2)
   .inputs(<metaitem:electric.motor.iv> * 8)
   .inputs(<metaitem:electric.pump.iv> * 4)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitElite> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .circuit(8)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galacticraftplanets:item_basic_asteroids:1>)
   .duration(600)
   .EUt(512)
   .buildAndRegister();

// Rocket Booster
// Tier 1
assembler.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_mars:3> * 2)	
   .inputs(<galaxyspace:rocket_modules:3>)
   .inputs(<metaitem:electric.motor.mv> * 8)
   .inputs(<metaitem:electric.pump.mv> * 4)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 16)
   .inputs(<ore:circuitGood> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .circuit(9)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galacticraftcore:engine:1>)
   .duration(600)
   .EUt(512)
   .buildAndRegister();

// Stabilizators 1-2 Tiers
// Tier 1
assembler.recipeBuilder()
   .inputs(<galacticraftcore:heavy_plating> * 4)
   .inputs(<ore:screwAluminium> * 64)
   .circuit(10)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galacticraftcore:rocket_fins>)
   .duration(600)
   .EUt(482)
   .buildAndRegister();
// Tier 2
assembler.recipeBuilder()
   .inputs(<galacticraftplanets:item_basic_mars:3> * 4)
   .inputs(<ore:screwAluminium> * 64)
   .circuit(10)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galacticraftplanets:item_basic_asteroids:2>)
   .duration(600)
   .EUt(482)
   .buildAndRegister();

// Rockets 1-2 Tiers
// Tier 1 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<galacticraftcore:nose_cone>)
   .inputs(<galacticraftcore:heavy_plating> * 32)
   .inputs(<galacticraftcore:rocket_fins> * 4)
   .inputs(<galacticraftcore:engine>)
   .inputs(<galaxyspace:rocket_modules:3> * 3)
   .inputs(<ore:wireGtSingleUraniumTriplatinum> * 16)
   .inputs(<galaxyspace:rocket_modules>)
   .inputs(<ore:batteryAdvanced> * 3)
   .inputs(<metaitem:electric.motor.ev> * 4)
   .inputs(<metaitem:emitter.ev> * 4)
   .inputs(<ore:circuitElite> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftcore:rocket_t1>)
   .duration(1200)
   .EUt(6000)
   .buildAndRegister();

// Tier 1 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<galacticraftcore:nose_cone>)
   .inputs(<galacticraftcore:heavy_plating> * 32)
   .inputs(<galacticraftcore:rocket_fins> * 4)
   .inputs(<galacticraftcore:engine>)
   .inputs(<galaxyspace:rocket_modules:3> * 3)
   .inputs(<ore:wireGtSingleUraniumTriplatinum> * 16)
   .inputs(<galaxyspace:rocket_modules>)
   .inputs(<ore:batteryAdvanced> * 3)
   .inputs(<metaitem:electric.motor.ev> * 4)
   .inputs(<metaitem:emitter.ev> * 4)
   .inputs(<ore:circuitElite> * 16)
   .inputs(<ore:chestWood>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftcore:rocket_t1:1>)
   .duration(1200)
   .EUt(6000)
   .buildAndRegister();

// Tier 1 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<galacticraftcore:nose_cone>)
   .inputs(<galacticraftcore:heavy_plating> * 32)
   .inputs(<galacticraftcore:rocket_fins> * 4)
   .inputs(<galacticraftcore:engine>)
   .inputs(<galaxyspace:rocket_modules:3> * 3)
   .inputs(<ore:wireGtSingleUraniumTriplatinum> * 16)
   .inputs(<galaxyspace:rocket_modules>)
   .inputs(<ore:batteryAdvanced> * 3)
   .inputs(<metaitem:electric.motor.ev> * 4)
   .inputs(<metaitem:emitter.ev> * 4)
   .inputs(<ore:circuitElite> * 16)
   .inputs(<ore:chestWood> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftcore:rocket_t1:2>)
   .duration(1200)
   .EUt(6000)
   .buildAndRegister();

// Tier 1 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<galacticraftcore:nose_cone>)
   .inputs(<galacticraftcore:heavy_plating> * 32)
   .inputs(<galacticraftcore:rocket_fins> * 4)
   .inputs(<galacticraftcore:engine>)
   .inputs(<galaxyspace:rocket_modules:3> * 3)
   .inputs(<ore:wireGtSingleUraniumTriplatinum> * 16)
   .inputs(<galaxyspace:rocket_modules>)
   .inputs(<ore:batteryAdvanced> * 3)
   .inputs(<metaitem:electric.motor.ev> * 4)
   .inputs(<metaitem:emitter.ev> * 4)
   .inputs(<ore:circuitElite> * 16)
   .inputs(<ore:chestWood> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftcore:rocket_t1:3>)
   .duration(1200)
   .EUt(6000)
   .buildAndRegister();

// Tier 2 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<galacticraftplanets:heavy_nose_cone>)
   .inputs(<galacticraftplanets:item_basic_mars:3> * 36)
   .inputs(<galacticraftplanets:item_basic_asteroids:2> * 4)
   .inputs(<galacticraftplanets:item_basic_asteroids:1>)
   .inputs(<galaxyspace:rocket_modules:3> * 6)
   .inputs(<ore:wireGtSingleSamariumIronArsenicOxide> * 16)
   .inputs(<galacticraftcore:engine:1> * 4)
   .inputs(<ore:batteryAdvanced> * 3)
   .inputs(<galaxyspace:rocket_modules:1>)
   .inputs(<metaitem:electric.motor.iv> * 4)
   .inputs(<metaitem:emitter.iv> * 4)
   .inputs(<ore:circuitElite> * 22)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftplanets:rocket_t2>)
   .duration(1200)
   .EUt(9000)
   .buildAndRegister();

// Tier 2 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<galacticraftplanets:heavy_nose_cone>)
   .inputs(<galacticraftplanets:item_basic_mars:3> * 36)
   .inputs(<galacticraftplanets:item_basic_asteroids:2> * 4)
   .inputs(<galacticraftplanets:item_basic_asteroids:1>)
   .inputs(<galaxyspace:rocket_modules:3> * 6)
   .inputs(<ore:wireGtSingleSamariumIronArsenicOxide> * 16)
   .inputs(<galacticraftcore:engine:1> * 4)
   .inputs(<ore:batteryAdvanced> * 3)
   .inputs(<galaxyspace:rocket_modules:1>)
   .inputs(<metaitem:electric.motor.iv> * 4)
   .inputs(<metaitem:emitter.iv> * 4)
   .inputs(<ore:circuitElite> * 22)
   .inputs(<ore:chestWood>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftplanets:rocket_t2:1>)
   .duration(1200)
   .EUt(9000)
   .buildAndRegister();

// Tier 2 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<galacticraftplanets:heavy_nose_cone>)
   .inputs(<galacticraftplanets:item_basic_mars:3> * 36)
   .inputs(<galacticraftplanets:item_basic_asteroids:2> * 4)
   .inputs(<galacticraftplanets:item_basic_asteroids:1>)
   .inputs(<galaxyspace:rocket_modules:3> * 6)
   .inputs(<ore:wireGtSingleSamariumIronArsenicOxide> * 16)
   .inputs(<galacticraftcore:engine:1> * 4)
   .inputs(<ore:batteryAdvanced> * 3)
   .inputs(<galaxyspace:rocket_modules:1>)
   .inputs(<metaitem:electric.motor.iv> * 4)
   .inputs(<metaitem:emitter.iv> * 4)
   .inputs(<ore:circuitElite> * 22)
   .inputs(<ore:chestWood> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftplanets:rocket_t2:2>)
   .duration(1200)
   .EUt(9000)
   .buildAndRegister();

// Tier 2 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<galacticraftplanets:heavy_nose_cone>)
   .inputs(<galacticraftplanets:item_basic_mars:3> * 36)
   .inputs(<galacticraftplanets:item_basic_asteroids:2> * 4)
   .inputs(<galacticraftplanets:item_basic_asteroids:1>)
   .inputs(<galaxyspace:rocket_modules:3> * 6)
   .inputs(<ore:wireGtSingleSamariumIronArsenicOxide> * 16)
   .inputs(<galacticraftcore:engine:1> * 4)
   .inputs(<ore:batteryAdvanced> * 3)
   .inputs(<galaxyspace:rocket_modules:1>)
   .inputs(<metaitem:electric.motor.iv> * 4)
   .inputs(<metaitem:emitter.iv> * 4)
   .inputs(<ore:circuitElite> * 22)
   .inputs(<ore:chestWood> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<galacticraftplanets:rocket_t2:3>)
   .duration(1200)
   .EUt(9000)
   .buildAndRegister();