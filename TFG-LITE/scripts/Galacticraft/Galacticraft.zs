import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;

//Удаление+скрытие рецептов JEI
val RemoveItemsFromJEI as IItemStack[] = [
	<galacticraftplanets:rocket_t2:11>,
	<galacticraftplanets:rocket_t2:12>,
	<galacticraftcore:rocket_workbench>,
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
	<galacticraftcore:rocket_workbench>,
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
	<galacticraftplanets:basic_item_venus:4>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
val RemoveItemRecipe as IItemStack[] = [
	<galacticraftcore:aluminum_wire>,
	<galacticraftcore:aluminum_wire:1>,
	<galacticraftcore:aluminum_wire:2>,
	<galacticraftcore:aluminum_wire:3>,
	<galacticraftcore:fluid_pipe>,
	<galacticraftplanets:item_basic_mars:6>,
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
	<galacticraftcore:machine3>,
	<galacticraftcore:telemetry>,
	<galacticraftcore:platform>,
	<galacticraftplanets:mars_machine:8>,
	<galacticraftplanets:mars_machine:4>,
	<galacticraftplanets:mars_machine>,
	<galacticraftplanets:solar_array_controller>,
	<galacticraftplanets:basic_item_venus>,
	<galacticraftplanets:solar_array_module>,
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
	//<galacticraftplanets:thermal_padding_t2>,
	//<galacticraftplanets:thermal_padding_t2:1>,
	//<galacticraftplanets:thermal_padding_t2:2>,
	//<galacticraftplanets:thermal_padding_t2:3>,
	<galacticraftcore:sensor_glasses>,
	<galacticraftcore:sensor_lens>,
	<galacticraftplanets:walkway>,
	<galacticraftplanets:walkway:1>,
	<galacticraftplanets:walkway:2>,
	<galacticraftplanets:beam_receiver>,
	<galacticraftplanets:item_basic_asteroids:8>,
	<galacticraftplanets:basic_item_venus:2>,
	<galacticraftplanets:atomic_battery>,
	<galacticraftplanets:telepad_short>,
	<galacticraftcore:emergency_box>,
	<galacticraftcore:emergency_box:1>,
	<galacticraftcore:emergency_kit>,
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
	<galacticraftcore:standard_wrench>,
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
	<galacticraftplanets:item_basic_mars:4>
] as IItemStack[];
for item in RemoveItemRecipe{
    recipes.remove(item);
}

//Еда из GC
ItemRegistry.registerFood(<galacticraftcore:food>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:1>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:2>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:3>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);

//Еда
recipes.addShapeless(<galacticraftcore:food>, [<galacticraftcore:canister>, <ore:apple>, <ore:apple>]);
recipes.addShapeless(<galacticraftcore:food:1>, [<galacticraftcore:canister>, <tfc:food/carrot>, <tfc:food/carrot>]);
recipes.addShapeless(<galacticraftcore:food:2>, [<galacticraftcore:canister>, <firmalife:melon>, <firmalife:melon>]);
recipes.addShapeless(<galacticraftcore:food:3>, [<galacticraftcore:canister>, <tfc:food/potato>, <tfc:food/potato>]);

//Шест
recipes.addShapeless(<galacticraftcore:steel_pole>*2, [<ore:stickLongSteel>, <ore:stickLongSteel>, <ore:stickLongSteel>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag()]);
//Светофакел
recipes.addShapeless(<galacticraftcore:glowstone_torch>*2, [<minecraft:torch>, <minecraft:glowstone_dust>]);
//Slimeling Inventory Bag
recipes.addShaped(<galacticraftplanets:item_basic_mars:4>,
[[<ore:leather>, <ore:plateDiamond>, <ore:leather>],
 [<ore:leather>, <ore:slimeball>, <ore:leather>],
 [null, <ore:chestWood>, null]]);
//Oxygen mask
recipes.addShaped(<galacticraftcore:oxygen_mask>,
[[<minecraft:glass_pane>, <gregtech:meta_item_1:15209>, <minecraft:glass_pane>],
 [<gregtech:meta_item_1:13184>, <minecraft:leather_helmet>, <gregtech:meta_item_1:13184>],
 [<minecraft:glass_pane>, <gregtech:meta_item_1:32766>, <minecraft:glass_pane>]]);
//Oxygen gear
recipes.addShaped(<galacticraftcore:oxygen_gear>,
[[<gregtech:meta_item_1:12001>, <galacticraftcore:air_vent>, <gregtech:meta_item_1:12001>],
 [<galacticraftcore:oxygen_concentrator>, <gregtech:machine:814>, <galacticraftcore:oxygen_concentrator>],
 [<gregtech:cable:7018>, <gregtech:meta_item_2:18183>, <gregtech:cable:7018>]]);
//Oxygen detector
recipes.addShaped(<galacticraftcore:oxygen_detector>,
[[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:32611>, <gregtech:meta_item_2:32212>, <gregtech:meta_item_1:32691>],
 [<gregtech:cable:7018>, <gregtech:meta_item_1:12001>, <gregtech:cable:7018>]]);
//Oxygen sealer
recipes.addShaped(<galacticraftcore:sealer>,
[[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>],
 [<gregtech:meta_item_1:32611>, <gregtech:meta_item_2:18183>, <gregtech:meta_item_1:32691>],
 [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12001>]]);
//Oxygen bubble distributor
recipes.addShaped(<galacticraftcore:distributor>,
[[<gregtech:meta_item_1:12184>, <galacticraftcore:oxygen_concentrator>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:32611>, <gregtech:machine:503>, <gregtech:meta_item_1:32691>],
 [<gregtech:meta_item_1:12184>, <gregtech:meta_item_2:18183>, <gregtech:meta_item_1:12184>]]);
//Oxygen collector
recipes.addShaped(<galacticraftcore:collector>,
[[<gregtech:meta_item_1:12184>, <galacticraftcore:oxygen_concentrator>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_2:18183>, <gregtech:machine:503>, <gregtech:meta_item_1:32611>],
 [<gregtech:meta_item_1:12001>, <gregtech:machine:814>, <gregtech:meta_item_1:12001>]]);
//Oxygen compressor
recipes.addShaped(<galacticraftcore:oxygen_compressor>,
[[<gregtech:meta_item_1:12184>, <galacticraftcore:oxygen_concentrator>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:12001>, <gregtech:machine:502>, <gregtech:meta_item_1:12001>],
 [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32611>, <gregtech:meta_item_1:12184>]]);
//Oxygen decompressor
recipes.addShaped(<galacticraftcore:oxygen_compressor:4>,
[[<gregtech:meta_item_1:12184>, <gregtech:meta_item_2:18183>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:12001>, <gregtech:machine:502>, <gregtech:meta_item_1:12001>],
 [<galacticraftcore:oxygen_concentrator>, <gregtech:meta_item_1:32691>, <galacticraftcore:oxygen_concentrator>]]);
//Жидкостный манипулятор
recipes.addShaped(<galacticraftplanets:item_basic_mars:6>,
[[<ore:plateIron>, <ore:rotorSteel>, <ore:plateIron>],
 [<ore:glue>, <ore:circuitGood>, <ore:glue>],
 [<ore:plateIron>, <ore:rotorSteel>, <ore:plateIron>]]);
//Загручкик топлива
recipes.addShaped(<galacticraftcore:fuel_loader>,
[[<ore:plateAluminium>, <gregtech:meta_item_1:12184>, <ore:plateAluminium>],
 [<gregtech:meta_item_1:32611>, <gregtech:machine:503>, <gregtech:meta_item_1:32611>],
 [<gregtech:meta_item_1:32691>, <gregtech:machine:814>, <gregtech:cable:8026>]]);
//Магнитный верстак
recipes.addShaped(<galacticraftcore:magnetic_table>,
[[<gregtech:meta_item_1:12297>, <gregtech:meta_item_1:12297>, <gregtech:meta_item_1:12297>],
 [<gregtech:meta_item_1:12297>, <ore:craftingTableWood>, <gregtech:meta_item_1:12297>],
 [<gregtech:meta_item_1:12297>, <gregtech:meta_item_1:12297>, <gregtech:meta_item_1:12297>]]);
//Воздушный шлюз каркас
recipes.addShaped(<galacticraftcore:air_lock_frame>,
[[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>],
 [<gregtech:meta_item_1:12184>, <gregtech:metal_casing:4>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>]]);
//Контроллер воздушного шлюза
recipes.addShaped(<galacticraftcore:air_lock_frame:1>,
[[<gregtech:meta_item_1:12184>, <ore:plateAluminium>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:13033>, <gregtech:meta_item_2:32212>, <gregtech:meta_item_1:13033>],
 [<gregtech:meta_item_1:12184>, <ore:plateAluminium>, <gregtech:meta_item_1:12184>]]);
//Художник
recipes.addShaped(<galacticraftcore:machine3>,
[[<gregtech:meta_item_1:32640>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32640>],
 [<ore:dyeRed>, null, <ore:dyeBlue>],
 [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32517>, <gregtech:meta_item_1:12184>]]);
//Телеметрический блок
recipes.addShaped(<galacticraftcore:telemetry>,
[[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:13184>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:32691>, <gregtech:meta_item_2:32212>, <gregtech:meta_item_1:32691>],
 [<gregtech:meta_item_1:12184>, <appliedenergistics2:part:480>, <gregtech:meta_item_1:12184>]]);
//Платформа гидравлическая
recipes.addShaped(<galacticraftcore:platform>,
[[<gregtech:meta_item_1:12184>, <minecraft:piston>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:32640>, <gregtech:meta_item_1:32600>, <gregtech:meta_item_1:32640>],
 [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32511>, <gregtech:meta_item_1:12184>]]);
//Контроллер запуска
recipes.addShaped(<galacticraftplanets:mars_machine:8>,
[[<gregtech:meta_item_1:13072>, <gregtech:meta_item_1:32633>, <gregtech:meta_item_1:13072>],
 [<gregtech:meta_item_2:32490>, <gregtech:meta_item_2:32213>, <gregtech:meta_item_2:32490>],
 [<gregtech:meta_item_1:13072>, <gregtech:cable:6018>, <gregtech:meta_item_1:13072>]]);
//Креокамера
recipes.addShaped(<galacticraftplanets:mars_machine:4>,
[[<gregtech:meta_item_1:13072>, <gregtech:meta_item_2:32491>, <gregtech:meta_item_1:13072>],
 [<gregtech:meta_item_1:13072>, <ore:bed>, <gregtech:meta_item_1:13072>],
 [<gregtech:meta_item_1:13072>, <gregtech:meta_item_1:13184>, <gregtech:meta_item_1:13072>]]);
//Терраформер
recipes.addShaped(<galacticraftplanets:mars_machine>,
[[<gregtech:meta_item_1:32652>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:32652>],
 [<gregtech:meta_item_1:13072>, <gregtech:meta_item_2:32491>, <gregtech:meta_item_1:13072>],
 [<gregtech:meta_item_1:13072>, <gregtech:meta_item_2:32212>, <gregtech:meta_item_1:13072>]]);
//Контроллер солнечной батареи
recipes.addShaped(<galacticraftplanets:solar_array_controller>,
[[<gregtech:meta_item_1:12184>, <gregtech:meta_item_2:32212>, <gregtech:meta_item_1:12184>],
 [<gregtech:cable:6018>, <gregtech:meta_item_2:32212>, <gregtech:cable:6018>],
 [<gregtech:meta_item_1:12184>, <ore:circuitGood>, <gregtech:meta_item_1:12184>]]);
//Контроллер щита
recipes.addShaped(<galacticraftplanets:basic_item_venus>,
[[<ore:paneGlass>, <gregtech:meta_item_1:32674>, <ore:paneGlass>],
 [<gregtech:meta_item_1:32674>, <gregtech:meta_item_2:32578>, <gregtech:meta_item_1:32674>],
 [<ore:paneGlass>, <gregtech:meta_item_1:32674>, <ore:paneGlass>]]);
//Модуль солнечной батареи
recipes.addShaped(<galacticraftplanets:solar_array_module>,
[[<gregtech:meta_item_1:32750>, <gregtech:meta_item_1:32750>, <gregtech:meta_item_1:32750>],
 [<gregtech:cable:7018>, <gregtech:meta_item_1:32511>, <gregtech:cable:7018>],
 [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32511>, <gregtech:meta_item_1:12184>]]);
//Солнечная панель 1
recipes.addShaped(<galacticraftcore:solar>,
[[<gregtech:meta_item_1:32751>, <gregtech:meta_item_1:32751>, <gregtech:meta_item_1:32751>],
 [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:14184>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:32600>, <gregtech:machine:502>, <gregtech:cable:2026>]]);
//Солнечная панель 2
recipes.addShaped(<galacticraftcore:solar:4>,
[[<gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32752>],
 [<ore:plateStainlessSteel>, <ore:stickStainlessSteel>, <ore:plateStainlessSteel>],
 [<gregtech:meta_item_1:32602>, <gregtech:machine:503>, <gregtech:cable:2026>]]);
//Клапан
recipes.addShaped(<galacticraftcore:air_vent>,
[[<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>],
 [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>],
 [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>]]);
//частотный модуль
recipes.addShaped(<galacticraftcore:basic_item:19>,
[[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:12184>],
 [<ore:circuitBasic>, <ore:cableGtSingleRedAlloy>, <ore:circuitBasic>],
 [<gregtech:meta_item_2:32483>, <gregtech:meta_item_2:32481>, <gregtech:meta_item_2:32483>]]);
//тепло шлем
recipes.addShaped(<galacticraftplanets:thermal_padding>,
[[<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_helmet>, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, <gregtech:meta_item_1:32766>, <galacticraftplanets:item_basic_asteroids:7>],
 [null, null, null]]);
//тепло нагрудник
recipes.addShaped(<galacticraftplanets:thermal_padding:1>,
[[<galacticraftplanets:item_basic_asteroids:7>, <gregtech:meta_item_1:32766>, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_chestplate>, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, <galacticraftplanets:item_basic_asteroids:7>, <galacticraftplanets:item_basic_asteroids:7>]]);
//тепло поножи
recipes.addShaped(<galacticraftplanets:thermal_padding:2>,
[[<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_leggings>, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, <gregtech:meta_item_1:32766>, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>]]);
//тепло ботинки
recipes.addShaped(<galacticraftplanets:thermal_padding:3>,
[[null, <gregtech:meta_item_1:32766>, null],
 [<galacticraftplanets:item_basic_asteroids:7>, null, <galacticraftplanets:item_basic_asteroids:7>],
 [<galacticraftplanets:item_basic_asteroids:7>, <minecraft:leather_boots>, <galacticraftplanets:item_basic_asteroids:7>]]);
//Тепло ткань 1
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:7>*2,
[[<ore:wool>, <ore:wool>, <ore:wool>],
 [<ore:clothHighQuality>, <ore:clothHighQuality>, <ore:clothHighQuality>],
 [<ore:wool>, <ore:wool>, <ore:wool>]]);
//тепло ткань 2
recipes.addShaped(<galacticraftplanets:basic_item_venus:3>*2,
[[null, <galacticraftplanets:item_basic_asteroids:7>, null],
 [<galacticraftplanets:item_basic_asteroids:7>, <gregtech:meta_item_1:12001>, <galacticraftplanets:item_basic_asteroids:7>],
 [null, <galacticraftplanets:item_basic_asteroids:7>, null]]);
//Сенсорные очки
recipes.addShaped(<galacticraftcore:sensor_glasses>,
[[<minecraft:leather>, <ore:plateDiamond>, <minecraft:leather>],
 [<minecraft:leather>, null, <minecraft:leather>],
 [<galacticraftcore:sensor_lens>, <ore:plateBismuthBronze>, <galacticraftcore:sensor_lens>]]);
//Сернсорные линзы
recipes.addShaped(<galacticraftcore:sensor_lens>,
[[<ore:circuitAdvanced>, <ore:wireGtQuadrupleAnnealedCopper>, <ore:circuitAdvanced>],
 [<ore:wireGtQuadrupleAnnealedCopper>, <ore:paneGlass>, <ore:wireGtQuadrupleAnnealedCopper>],
 [<ore:circuitAdvanced>, <ore:wireGtQuadrupleAnnealedCopper>, <ore:circuitAdvanced>]]);
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
[[<galacticraftplanets:walkway>, <galacticraftcore:fluid_pipe>, null],
 [<galacticraftcore:fluid_pipe>, null, null],
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
[[<ore:plateGraphite>, <gregtech:meta_item_1:12076>, <ore:plateGraphite>],
 [<gregtech:meta_item_1:12075>, <gregtech:wire_coil:3>, <gregtech:meta_item_1:12075>],
 [<ore:plateGraphite>, <gregtech:meta_item_1:12076>, <ore:plateGraphite>]]);
//Атомная батарейка
recipes.addShaped(<galacticraftplanets:atomic_battery>,
[[<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>],
 [<ore:plateNickel>, <galacticraftplanets:basic_item_venus:2>, <ore:plateNickel>],
 [<ore:plateNickel>, <gtadditions:ga_meta_item:32246>, <ore:plateNickel>]]);
//Телепорт на корот
recipes.addShaped(<galacticraftplanets:telepad_short>,
[[<ore:plateStaballoy>, <ore:circuitElite>, <ore:plateStaballoy>],
 [<gregtech:machine:493>, <galacticraftplanets:item_basic_asteroids:8>, <gregtech:machine:493>],
 [<ore:plateStaballoy>, <ore:plateStaballoy>, <ore:plateStaballoy>]]);
//Спасательная коробка
recipes.addShaped(<galacticraftcore:emergency_box>,
[[<ore:glowstone>, <ore:plateTin>, <ore:glowstone>],
 [<ore:plateTin>, <ore:chestWood>, <ore:plateTin>],
 [<ore:glowstone>, <ore:plateTin>, <ore:glowstone>]]);
//Спасат коробка с самоспасателем
recipes.addShaped(<galacticraftcore:landing_pad>*9,
[[null, null, null],
 [<ore:plateDenseSteel>, <ore:plateDenseSteel>, <ore:plateDenseSteel>],
 [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]]);
//Площадка для багги
recipes.addShaped(<galacticraftcore:landing_pad:1>*9,
[[null, null, null],
 [<ore:plateDenseWroughtIron>, <ore:plateDenseWroughtIron>, <ore:plateDenseWroughtIron>],
 [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]]);
//Основания астрономического шахтера
recipes.addShaped(<galacticraftplanets:miner_base>,
[[<ore:plateDenseBlackSteel>, <ore:chestWood>, <ore:plateDenseBlackSteel>],
 [<galacticraftplanets:item_basic_asteroids:8>, <gtadditions:ga_meta_item:32205>, <galacticraftplanets:item_basic_asteroids:8>],
 [<ore:plateDenseBlackSteel>, <gregtech:machine:627>, <ore:plateDenseBlackSteel>]]);
//Вращательный движок
recipes.addShaped(<galacticraftcore:spin_thruster>,
[[<galacticraftcore:oil_canister_partial:1001>, <ore:circuitElite>, <galacticraftplanets:item_basic_asteroids:1>],
 [<ore:plateDenseStainlessSteel>, <gregtech:metal_casing:7>, <ore:plateDenseStainlessSteel>],
 [<ore:wireGtDoubleElectrum>, <ore:wireGtDoubleElectrum>, <ore:wireGtDoubleElectrum>]]);
//Капсула из галактики под жидкости
recipes.addShaped(<galacticraftcore:oil_canister_partial:1001>,
[[<gregtech:meta_item_1:12189>, <ore:plateSteel>, <gregtech:meta_item_1:12189>],
 [<gregtech:meta_item_1:12189>, <ore:blockGlass>, <gregtech:meta_item_1:12189>],
 [<gregtech:meta_item_1:12189>, <galacticraftcore:canister>, <gregtech:meta_item_1:12189>]]);
//Канистра из олова
recipes.addShaped(<galacticraftcore:canister>,
[[<gregtech:meta_item_1:12071>, null, <gregtech:meta_item_1:12071>],
 [<gregtech:meta_item_1:12071>, null, <gregtech:meta_item_1:12071>],
 [<gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12071>, <gregtech:meta_item_1:12071>]]);
//Дуговая лампа
recipes.addShaped(<galacticraftcore:arclamp>,
[[<ore:plateSteel>, <ore:dustGlowstone>, <ore:plateSteel>],
 [<ore:dustGlowstone>, <galacticraftplanets:atomic_battery>, <ore:dustGlowstone>],
 [<ore:plateSteel>, <ore:dustGlowstone>, <ore:plateSteel>]]);
//Багги сиденье
recipes.addShaped(<galacticraftcore:buggymat:1>,
[[<ore:plateSteel>, null, null],
 [<ore:plateSteel>, <ore:leather>, null],
 [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
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
[[<ore:plateDenseAluminium>, <galacticraftcore:basic_item:19>, <ore:plateDenseAluminium>],
 [null, <ore:plateDenseAluminium>, null],
 [<gtadditions:ga_meta_item:32208>, <ore:blockSteel>, <gtadditions:ga_meta_item:32209>]]);
//Тепловой контроллер
recipes.addShaped(<galacticraftcore:basic_item:20>,
[[<ore:wireGtSingleAluminium>, <ore:rotorChrome>, <ore:wireGtSingleAluminium>],
 [<ore:plateBronze>, <gtadditions:ga_meta_item:32211>, <ore:plateBronze>],
 [<ore:plateBronze>, <ore:plateSteel>, <ore:plateBronze>]]);
//Концентратор говна донила(кстати это пасхалка :D)
recipes.addShaped(<galacticraftcore:oxygen_concentrator>,
[[<ore:plateSteel>, <ore:circuitGood>, <ore:plateSteel>],
 [<ore:plateTin>, <galacticraftcore:canister>, <ore:plateTin>],
 [<ore:plateSteel>, <galacticraftcore:air_vent>, <ore:plateSteel>]]);
//Привод ориона
recipes.addShaped(<galacticraftplanets:orion_drive>,
[[<gregtech:meta_item_1:12049>, <gtadditions:ga_meta_item:32209>, <gregtech:meta_item_1:12049>],
 [<gtadditions:ga_meta_item:32245>, <galacticraftplanets:miner_base>, <gtadditions:ga_meta_item:32242>],
 [<gregtech:meta_item_1:12049>, <gtadditions:ga_meta_item:32213>, <gregtech:meta_item_1:12049>]]);
//Гаечный ключ
recipes.addShaped(<galacticraftcore:standard_wrench>,
[[null, <ore:craftingToolFile>, <ore:plateBlackSteel>],
 [null, <ore:plateBlackBronze>, <ore:craftingToolHardHammer>],
 [<ore:plateBronze>, null, null]]);
//Колесо багги
recipes.addShaped(<galacticraftcore:buggymat>,
[[null, <ore:leather>, null],
 [<ore:leather>, <gregtech:meta_item_1:12301>, <ore:leather>],
 [null, <ore:leather>, null]]);
//Экран просмотра
recipes.addShaped(<galacticraftcore:view_screen>,
[[<ore:plateSteel>, <ore:circuitBasic>, <ore:plateSteel>],
 [<ore:circuitBasic>, <ore:paneGlass>, <ore:circuitBasic>],
 [<ore:plateSteel>, <ore:circuitBasic>, <ore:plateSteel>]]);
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
 [<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>]]);
//Свет панель 2
recipes.addShaped(<galacticraftcore:panel_lighting:1>,
[[<ore:paneGlass>, null, <ore:paneGlass>],
 [null, <galacticraftcore:glowstone_torch>, null],
 [<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>]]);
//Свет панель 3
recipes.addShaped(<galacticraftcore:panel_lighting:2>,
[[<ore:paneGlass>, null, <ore:paneGlass>],
 [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
 [<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>]]);
//Свет панель 4
recipes.addShaped(<galacticraftcore:panel_lighting:3>,
[[null, null, null],
 [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, <ore:paneGlass>],
 [null, <ore:plateSteel>, null]]);
//Свет панель 5
recipes.addShaped(<galacticraftcore:panel_lighting:4>,
[[null, null, null],
 [<ore:paneGlass>, <galacticraftcore:glowstone_torch>, null],
 [null, <ore:plateSteel>, null]]);
//ENGINES 1-10TIER
//Двигатель 1
recipes.addShaped(<galacticraftcore:engine>,
[[<ore:circuitAdvanced>, <gregtech:meta_item_1:32612>, <ore:circuitAdvanced>],
 [<galacticraftcore:heavy_plating>, <gregtech:machine:814>, <galacticraftcore:heavy_plating>],
 [<galacticraftcore:heavy_plating>, <galacticraftcore:air_vent>, <galacticraftcore:heavy_plating>]]);
//Двигатель 2
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:1>,
[[<ore:circuitAdvanced>, <gregtech:meta_item_1:32612>, <ore:circuitAdvanced>],
 [<galacticraftplanets:item_basic_asteroids:5>, <gregtech:machine:814>, <galacticraftplanets:item_basic_asteroids:5>],
 [<galacticraftplanets:item_basic_asteroids:5>, <galacticraftcore:air_vent>, <galacticraftplanets:item_basic_asteroids:5>]]);
//BOOSTERS 1-10tier
//Lvl 1
recipes.addShaped(<galacticraftcore:engine:1>,
[[<galacticraftplanets:item_basic_mars:3>, <gregtech:meta_item_1:32612>, <galacticraftplanets:item_basic_mars:3>],
 [<galacticraftplanets:item_basic_mars:3>, <gregtech:machine:814>, <galacticraftplanets:item_basic_mars:3>],
 [<galacticraftplanets:item_basic_mars:3>, <galacticraftcore:air_vent>, <galacticraftplanets:item_basic_mars:3>]]);
//STABILIZATORS 1-10TIER
//T1
recipes.addShaped(<galacticraftcore:rocket_fins>,
[[<ore:plateAluminium>, <ore:circuitAdvanced>, <ore:plateAluminium>],
 [<galacticraftcore:heavy_plating>, <gregtech:meta_item_1:32528>, <galacticraftcore:heavy_plating>],
 [<galacticraftcore:heavy_plating>, <galacticraftcore:air_vent>, <galacticraftcore:heavy_plating>]]);
//T2
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:2>,
[[<ore:plateAluminium>, <ore:circuitAdvanced>, <ore:plateAluminium>],
 [<galacticraftplanets:item_basic_mars:3>, <gregtech:meta_item_1:32528>, <galacticraftplanets:item_basic_mars:3>],
 [<galacticraftplanets:item_basic_mars:3>, <galacticraftcore:air_vent>, <galacticraftplanets:item_basic_mars:3>]]);
//T3
recipes.addShaped(<galacticraftplanets:item_basic_asteroids:2>,
[[<ore:plateAluminium>, <ore:circuitAdvanced>, <ore:plateAluminium>],
 [<galacticraftplanets:item_basic_asteroids:5>, <gregtech:meta_item_1:32528>, <galacticraftplanets:item_basic_asteroids:5>],
 [<galacticraftplanets:item_basic_asteroids:5>, <galacticraftcore:air_vent>, <galacticraftplanets:item_basic_asteroids:5>]]);
 
//ADD CRAFT FOR SUPERPLATES FROM GALACTIC IN BLAST FURNACE
//Tier 1
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:13184> * 3, <gregtech:meta_item_1:12001> * 1])
	.outputs(<galacticraftcore:heavy_plating>*3)
	.property("temperature", 2200)
	.duration(1000)
	.EUt(520)
	.buildAndRegister();
//Tier 2
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12001> * 3, <gregtech:meta_item_1:12183> * 1])
	.outputs(<galacticraftplanets:item_basic_mars:3>*3)
	.property("temperature", 2700)
	.duration(1000)
	.EUt(580)
	.buildAndRegister();
//Tier 3
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12183> * 3, <gregtech:meta_item_1:12072> * 1])
	.outputs(<galacticraftplanets:item_basic_asteroids:5>*3)
	.property("temperature", 3000)
	.duration(1000)
	.EUt(640)
	.buildAndRegister();

//ADD CRAFT FOR ROCKETS 1-10TIER
//Tier 1
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_2:32492>*2, <galacticraftcore:heavy_plating>*34, <gregtech:frame_aluminium>*14, <gregtech:machine:813>*4, <ore:chest>*3, <galacticraftcore:nose_cone>, <galacticraftcore:rocket_fins>*4, <galacticraftcore:engine>)
  .outputs(<galacticraftcore:rocket_t1:3>)
  .duration(1000)
  .EUt(220)
  .buildAndRegister();
//Tier 2
assembler.recipeBuilder()
  .inputs(<galacticraftplanets:item_basic_mars:3>*36, <gregtech:frame_aluminium>*16, <gregtech:machine:813>*4, <galacticraftcore:schematic:1>, <ore:chest>*3, <galacticraftcore:nose_cone>, <galacticraftcore:engine:1>*2, <galacticraftcore:rocket_fins>*4, <galacticraftcore:engine>)
  .outputs(<galacticraftplanets:rocket_t2:3>)
  .duration(1500)
  .EUt(280)
  .buildAndRegister();
//Tier 3
assembler.recipeBuilder()
  .inputs(<galacticraftplanets:item_basic_asteroids:5>*38, <gregtech:frame_aluminium>*20, <galacticraftplanets:schematic>, <gregtech:machine:814>*2, <ore:chest>*3, <galacticraftplanets:item_basic_asteroids:1>, <galacticraftplanets:item_basic_asteroids:2>*4, <galacticraftcore:engine:1>*4, <galacticraftplanets:heavy_nose_cone>)
  .outputs(<galacticraftplanets:rocket_t3:3>)
  .duration(2000)
  .EUt(340)
  .buildAndRegister();

//Баллоны
//Легкий
assembler.recipeBuilder()
   .inputs(<gregtech:machine:812>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*2, <gregtech:meta_item_1:32611>*2)
   .outputs(<galacticraftcore:oxygen_tank_light_full:900>)
   .duration(1000).EUt(128).buildAndRegister();
//Средний
assembler.recipeBuilder()
   .inputs(<gregtech:machine:813>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*4, <gregtech:meta_item_1:32612>*2)
   .outputs(<galacticraftcore:oxygen_tank_med_full:1800>)
   .duration(1000).EUt(256).buildAndRegister();
//Тяжелый
assembler.recipeBuilder()
   .inputs(<gregtech:machine:814>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*6, <gregtech:meta_item_1:32613>*2)
   .outputs(<galacticraftcore:oxygen_tank_heavy_full:2700>)
   .duration(1000).EUt(512).buildAndRegister();