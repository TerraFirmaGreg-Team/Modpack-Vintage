import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;

//Удаление+скрытие рецептов JEI
val RemoveItemsFromJEI as IItemStack[] = [
	//Руды
	//Медь
	<galacticraftcore:basic_block_core:5>,
	<galacticraftcore:basic_block_moon>,
	<galacticraftplanets:mars>,
	<galacticraftplanets:venus:7>,
	//Олово
	<galacticraftcore:basic_block_core:6>,
	<galacticraftcore:basic_block_moon:1>,
	<galacticraftplanets:mars:1>,
	<galacticraftplanets:venus:11>,
	//Железо
	<galacticraftplanets:mars:3>,
	<galacticraftplanets:asteroids_block:5>,
	//Алюминиум
	<galacticraftcore:basic_block_core:7>,
	<galacticraftplanets:asteroids_block:3>,
	<galacticraftplanets:venus:6>,
	//Силикон
	<galacticraftcore:basic_block_core:8>,
	<galacticraftplanets:venus:10>,
	//Остальные руды
	<galacticraftcore:basic_block_moon:6>,
	<galacticraftcore:basic_block_moon:2>,
	<galacticraftplanets:venus:8>,
	<galacticraftplanets:venus:9>,
	<galacticraftplanets:mars:2>,
	<galacticraftplanets:venus:13>,
	//Предметы
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
	//<galacticraftcore:rocket_workbench>,
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
	<galacticraftplanets:asteroids_block:6>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
val RemoveItemRecipe as IItemStack[] = [
	<galacticraftcore:distributor>,
	<galacticraftcore:collector>,
	<galacticraftcore:oxygen_compressor>,
	<galacticraftcore:oxygen_compressor:4>,
	<galacticraftcore:fuel_loader>,
	<galacticraftcore:sealer>,
	<galacticraftcore:oxygen_detector>,
	<galacticraftcore:magnetic_table>,
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
	<galacticraftcore:enclosed:1>
] as IItemStack[];
for item in RemoveItemRecipe{
    recipes.remove(item);
}

//Другие рецепты которые удалены
furnace.remove(<galacticraftcore:item_basic_moon>);
furnace.remove(<galacticraftplanets:item_basic_mars:2>);

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
 [<galacticraftcore:oxygen_concentrator>, <gregtech:machine:1504>, <galacticraftcore:oxygen_concentrator>],
 [<ore:cableGtQuadrupleCopper>, <ore:rotorStainlessSteel>, <ore:cableGtQuadrupleCopper>]]);

//Oxygen Detector
recipes.addShaped(<galacticraftcore:oxygen_detector>,
[[<gregtech:meta_item_1:234>, <ore:plateAluminium>, <gregtech:meta_item_1:234>],
 [<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>],
 [<ore:cableGtQuadrupleCopper>, <ore:plateAluminium>, <ore:cableGtQuadrupleCopper>]]);

//Oxygen Sealer
recipes.addShaped(<galacticraftcore:sealer>,
[[<gregtech:meta_item_1:234>, <galacticraftcore:air_vent>, <gregtech:meta_item_1:234>],
 [<ore:circuitAdvanced>, <ore:rotorStainlessSteel>, <ore:circuitAdvanced>],
 [<gregtech:meta_item_1:143>, <galacticraftcore:oxygen_concentrator>, <gregtech:meta_item_1:143>]]);

//Oxygen Bubble Distributor
recipes.addShaped(<galacticraftcore:distributor>,
[[<gregtech:meta_item_1:234>, <galacticraftcore:air_vent>, <gregtech:meta_item_1:234>],
 [<ore:circuitAdvanced>, <ore:rotorStainlessSteel>, <ore:circuitAdvanced>],
 [<gregtech:meta_item_1:205>, <galacticraftcore:oxygen_concentrator>, <gregtech:meta_item_1:205>]]);

//Oxygen Collector
recipes.addShaped(<galacticraftcore:collector>,
[[<galacticraftcore:air_vent>, <ore:circuitExtreme>, <galacticraftcore:air_vent>],
 [<ore:rotorStainlessSteel>, <gregtech:machine:988>, <ore:rotorStainlessSteel>],
 [<gregtech:machine:1598>, <galacticraftcore:oxygen_concentrator>, <gregtech:machine:1598>]]);

//Oxygen Compressor
recipes.addShaped(<galacticraftcore:oxygen_compressor>,
[[<ore:circuitAdvanced>, <galacticraftcore:oxygen_concentrator>, <gregtech:meta_item_1:144>],
 [<ore:pipeSmallFluidStainlessSteel>, <gregtech:machine:988>, <ore:pipeSmallFluidStainlessSteel>],
 [<gregtech:machine:1600>, <ore:plateBlackSteel>, <gregtech:meta_item_1:144>]]);

//Oxygen Decompressor
recipes.addShaped(<galacticraftcore:oxygen_compressor:4>,
[[<gregtech:meta_item_1:144>, <galacticraftcore:oxygen_concentrator>, <gregtech:machine:1600>],
 [<ore:pipeSmallFluidStainlessSteel>, <gregtech:machine:988>, <ore:pipeSmallFluidStainlessSteel>],
 [<gregtech:meta_item_1:144>, <ore:plateBlackSteel>, <gregtech:machine:245>]]);

//Загручкик топлива
recipes.addShaped(<galacticraftcore:fuel_loader>,
[[<ore:plateAluminium>, <ore:circuitGood>, <ore:plateAluminium>],
 [<gregtech:machine:1598>, <gregtech:machine:988>, <gregtech:meta_item_1:143>],
 [<ore:pipeSmallFluidStainlessSteel>, <ore:pipeSmallFluidStainlessSteel>, <ore:pipeSmallFluidStainlessSteel>]]);

//Магнитный верстак
recipes.addShaped(<galacticraftcore:magnetic_table>,
[[<ore:plateNickel>, <ore:plateNeodymiumMagnetic>, <ore:plateNickel>],
 [<ore:plateNeodymiumMagnetic>, <ore:craftingTableWood>, <ore:plateNeodymiumMagnetic>],
 [<ore:plateNickel>, <ore:plateNeodymiumMagnetic>, <ore:plateNickel>]]);

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
[[<gregtech:meta_item_1:234>, <ore:cableGtDoubleGold>, <ore:circuitAdvanced>],
 [<appliedenergistics2:wireless_access_point>, <gregtech:machine:988>, <appliedenergistics2:wireless_access_point>],
 [<ore:plateStainlessSteel>, <appliedenergistics2:part:480>, <ore:plateStainlessSteel>]]);

//Контроллер запуска
recipes.addShaped(<galacticraftplanets:mars_machine:8>,
[[<ore:circuitAdvanced>, <ore:circuitAdvanced>, <ore:circuitAdvanced>],
 [<gregtech:meta_item_1:235>, <gregtech:machine:988>, <gregtech:meta_item_1:235>],
 [<ore:cableGtDoubleGold>, <ore:cableGtDoubleGold>, <ore:cableGtDoubleGold>]]);

//Креокамера
recipes.addShaped(<galacticraftplanets:mars_machine:4>,
[[<gregtech:meta_item_1:144>, <ore:circuitAdvanced>, <gregtech:meta_item_1:219>],
 [<ore:plateDenseLead>, <ore:bed>, <ore:plateDenseLead>],
 [<galacticraftcore:oxygen_concentrator>, <ore:circuitAdvanced>, <galacticraftcore:oxygen_concentrator>]]);

//Терраформер
recipes.addShaped(<galacticraftplanets:mars_machine>,
[[<gregtech:meta_item_1:235>, <gregtech:meta_item_1:220>, <gregtech:meta_item_1:235>],
 [<ore:plateDenseLead>, <ore:circuitElite>, <ore:plateDenseLead>],
 [<ore:cableGtDoubleGold>, <gregtech:meta_item_1:205>, <ore:cableGtDoubleGold>]]);

//Контроллер щита
recipes.addShaped(<galacticraftplanets:basic_item_venus>,
[[<ore:paneGlassBlack>, <ore:stickNeodymiumMagnetic>, <ore:paneGlassBlack>],
 [<ore:wireGtSingleMercuryBariumCalciumCuprate>, <gregtech:meta_item_1:205>, <ore:wireGtSingleMercuryBariumCalciumCuprate>],
 [<ore:paneGlassBlack>, <ore:stickNeodymiumMagnetic>, <ore:paneGlassBlack>]]);

//Базовая солнечная панель
recipes.addShaped(<galacticraftcore:solar>,
[[<gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>, <gregtech:meta_item_1:331>],
 [<ore:gearStainlessSteel>, <ore:stickStainlessSteel>, <ore:gearStainlessSteel>],
 [<gregtech:meta_item_1:174>, <gregtech:machine:987>, <ore:cableGtQuadrupleGold>]]);

//Улучшенная солнечная панель
recipes.addShaped(<galacticraftcore:solar:4>,
[[<gregtech:meta_item_1:332>, <gregtech:meta_item_1:332>, <gregtech:meta_item_1:332>],
 [<ore:gearStainlessSteel>, <ore:stickStainlessSteel>, <ore:gearStainlessSteel>],
 [<gregtech:meta_item_1:175>, <gregtech:machine:989>, <ore:cableGtQuadrupleGold>]]);

//Клапан
recipes.addShaped(<galacticraftcore:air_vent>,
[[<chisel:ironpane:4>, <ore:stickLongSteel>, <chisel:ironpane:4>],
 [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>],
 [<chisel:ironpane:4>, <ore:stickLongSteel>, <chisel:ironpane:4>]]);

//Частотный модуль
recipes.addShaped(<galacticraftcore:basic_item:19>,
[[<ore:plateLead>, <gregtech:meta_item_1:164>, <ore:plateLead>],
 [<gregtech:meta_item_1:234>, <ore:cableGtSingleRedAlloy>, <ore:circuitBasic>],
 [<gregtech:meta_item_1:575>, <gregtech:meta_item_1:592>, <gregtech:meta_item_1:575>]]);

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
[[<galacticraftplanets:walkway>, <ore:cableGtDoubleGold>, null],
 [<ore:cableGtDoubleGold>, null, null],
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
[[<ore:plateGraphite>, <gregtech:meta_item_1:497>, <ore:plateGraphite>],
 [<ore:stickUranium235>, <gregtech:meta_item_1:497>, <ore:stickUranium235>],
 [<ore:plateGraphite>, <gregtech:meta_item_1:497>, <ore:plateGraphite>]]);

//Атомная батарейка
recipes.addShaped(<galacticraftplanets:atomic_battery>,
[[null, <ore:plateInvar>, null],
 [null, <galacticraftplanets:basic_item_venus:2>, null],
 [null, <gregtech:meta_item_1:80>, null]]);

//Площадка телепортации
recipes.addShaped(<galacticraftplanets:telepad_short>,
[[<ore:plateStaballoy>, <ore:circuitElite>, <ore:plateStaballoy>],
 [<gregtech:machine:984>, <galacticraftplanets:item_basic_asteroids:8>, <gregtech:machine:984>],
 [<ore:plateStaballoy>, <ore:plateStaballoy>, <ore:plateStaballoy>]]);

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
 [<ore:plateDenseBlackSteel>, <gregtech:machine:1333>, <ore:plateDenseBlackSteel>]]);

//Вращательный движок
recipes.addShaped(<galacticraftcore:spin_thruster>,
[[<galacticraftcore:oil_canister_partial:1001>, <ore:circuitElite>, <galacticraftplanets:item_basic_asteroids:1>],
 [<ore:plateDenseStainlessSteel>, <gregtech:metal_casing:7>, <ore:plateDenseStainlessSteel>],
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
 [<gregtech:meta_item_1:191>, <galacticraftplanets:miner_base>, <gregtech:meta_item_1:191>],
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

//ENGINES 1-2TIER
//Двигатель 1
recipes.addShaped(<galacticraftcore:engine>,
[[<ore:circuitAdvanced>, <gregtech:machine:1530>, <ore:circuitAdvanced>],
 [<galacticraftcore:heavy_plating>, <gregtech:machine:1599>, <galacticraftcore:heavy_plating>],
 [<galacticraftcore:heavy_plating>, <galacticraftcore:air_vent>, <galacticraftcore:heavy_plating>]]);
//Двигатель 2
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:1>,
[[<ore:circuitExtreme>, <gregtech:machine:1532>, <ore:circuitExtreme>],
 [<galacticraftplanets:item_basic_asteroids:5>, <gregtech:machine:1600>, <galacticraftplanets:item_basic_asteroids:5>],
 [<galacticraftplanets:item_basic_asteroids:5>, <galacticraftcore:air_vent>, <galacticraftplanets:item_basic_asteroids:5>]]);

//BOOSTER
//Lvl 1
recipes.addShaped(<galacticraftcore:engine:1>,
[[<galacticraftplanets:item_basic_mars:3>, <gregtech:machine:1530>, <galacticraftplanets:item_basic_mars:3>],
 [<galacticraftplanets:item_basic_mars:3>, <gregtech:machine:1600>, <galacticraftplanets:item_basic_mars:3>],
 [<galacticraftplanets:item_basic_mars:3>, <galacticraftcore:air_vent>, <galacticraftplanets:item_basic_mars:3>]]);

//STABILIZATORS 1-2TIER
//T1
recipes.addShaped(<galacticraftcore:rocket_fins>,
[[<ore:plateStainlessSteel>, <ore:circuitAdvanced>, <ore:plateStainlessSteel>],
 [<galacticraftcore:heavy_plating>, <gregtech:machine:1597>, <galacticraftcore:heavy_plating>],
 [<galacticraftcore:heavy_plating>, <galacticraftcore:air_vent>, <galacticraftcore:heavy_plating>]]);
//T2
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:2>,
[[<ore:plateStainlessSteel>, <ore:circuitAdvanced>, <ore:plateStainlessSteel>],
 [<gregtech:meta_item_1:493>, <gregtech:machine:1598>, <gregtech:meta_item_1:493>],
 [<gregtech:meta_item_1:493>, <galacticraftcore:air_vent>, <gregtech:meta_item_1:493>]]);
 
//High Duty Plates(1-3)
//Tier 1
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateBlackSteel>.firstItem * 3, <ore:plateAluminium>.firstItem, <ore:foilStainlessSteel>.firstItem * 16])
	.outputs(<galacticraftcore:heavy_plating> * 3)
	.property("temperature", 3500)
	.duration(1000)
	.EUt(520)
	.buildAndRegister();
//Tier 2
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateAluminium>.firstItem * 3, <ore:plateStainlessSteel>.firstItem, <ore:foilTitanium>.firstItem * 16])
	.outputs(<galacticraftplanets:item_basic_mars:3> * 3)
	.property("temperature", 4400)
	.duration(1000)
	.EUt(580)
	.buildAndRegister();
//Tier 3
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateStainlessSteel>.firstItem * 3, <ore:plateTitanium>.firstItem, <ore:foilTungstenSteel>.firstItem * 16])
	.outputs(<galacticraftplanets:item_basic_asteroids:5> * 3)
	.property("temperature", 5300)
	.duration(1000)
	.EUt(640)
	.buildAndRegister();

//Баллоны
//Легкий
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1596>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*2, <gregtech:meta_item_1:142>*2)
   .outputs(<galacticraftcore:oxygen_tank_light_full:900>)
   .duration(1000).EUt(128).buildAndRegister();
//Средний
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1597>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*4, <gregtech:meta_item_1:143>*2)
   .outputs(<galacticraftcore:oxygen_tank_med_full:1800>)
   .duration(1000).EUt(256).buildAndRegister();
//Тяжелый
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1597>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*6, <gregtech:meta_item_1:144>*2)
   .outputs(<galacticraftcore:oxygen_tank_heavy_full:2700>)
   .duration(1000).EUt(512).buildAndRegister();

//Еда
//Фруктовая канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:apple> * 2)
   .outputs(<galacticraftcore:food>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();
//Морковная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/carrot> * 2)
   .outputs(<galacticraftcore:food:1>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();
//Арбузная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <firmalife:melon> * 2)
   .outputs(<galacticraftcore:food:2>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();
//Картофельная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/potato> * 2)
   .outputs(<galacticraftcore:food:3>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();
//Мясная канистра
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:categoryMeat> * 2)
   .outputs(<galacticraftcore:food:9>)
   .duration(460)
   .EUt(2)
   .buildAndRegister();