import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

//Переменные
val assembler as RecipeMap = RecipeMap.getByName("assembler");
val blast_furnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val compressor as RecipeMap = RecipeMap.getByName("compressor");

//Удаление+скрытие рецептов JEI
global ItemsToRemoveGCJEI as IItemStack[] = [
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
	<extraplanets:basic_solar_evaporation_chamber>,
	<galacticraftcore:fluid_tank>,
	<galacticraftcore:basic_item>,
	<galacticraftcore:basic_item:12>,
	<galacticraftcore:basic_item:1>,
	<galacticraftplanets:basic_item_venus:5>,
	<galacticraftplanets:basic_item_venus:6>,
	<extraplanets:basic_solar_evaporation_chamber>,
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
	<extraplanets:advanced_launch_pad:3>,
	<extraplanets:canned_food:1>,
	<extraplanets:canned_food:2>,
	<extraplanets:canned_food:3>,
	<galacticraftcore:food:2>,
	<galacticraftcore:food:3>,
	<galacticraftcore:food:6>
] as IItemStack[];
for item in ItemsToRemoveGCJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
global ItemsToRemoveGC as IItemStack[] = [
	<extraplanets:canned_food>,
	<galacticraftcore:food>,
	<galacticraftcore:food:1>,
	<galacticraftcore:aluminum_wire>,
	<galacticraftcore:aluminum_wire:1>,
	<galacticraftcore:aluminum_wire:2>,
	<galacticraftcore:aluminum_wire:3>,
	<galacticraftcore:fluid_pipe>,
	<extraplanets:tools>,
	<extraplanets:tier1_space_suit_helmet>,
	<extraplanets:tier1_space_suit_chest>,
	<extraplanets:tier1_space_suit_jetpack_chest>,
	<extraplanets:tier1_space_suit_legings>,
	<extraplanets:tier1_space_suit_boots>,
	<extraplanets:tier1_space_suit_gravity_boots>,
	<extraplanets:tier2_space_suit_helmet>,
	<extraplanets:tier2_space_suit_chest>,
	<extraplanets:tier2_space_suit_jetpack_chest>,
	<extraplanets:tier2_space_suit_legings>,
	<extraplanets:tier2_space_suit_boots>,
	<extraplanets:tier2_space_suit_gravity_boots>,
	<extraplanets:tier2_space_suit_helmet>,
	<extraplanets:tier2_space_suit_chest>,
	<extraplanets:tier2_space_suit_jetpack_chest>,
	<extraplanets:tier2_space_suit_legings>,
	<extraplanets:tier2_space_suit_boots>,
	<extraplanets:tier2_space_suit_gravity_boots>,
	<extraplanets:tier2_space_suit_helmet>,
	<extraplanets:tier2_space_suit_chest>,
	<extraplanets:tier2_space_suit_jetpack_chest>,
	<extraplanets:tier2_space_suit_legings>,
	<extraplanets:tier2_space_suit_boots>,
	<extraplanets:tier2_space_suit_gravity_boots>,
	<extraplanets:tier1_radiation_layer>,
	<extraplanets:tier2_radiation_layer>,
	<extraplanets:tier3_radiation_layer>,
	<extraplanets:tier4_radiation_layer>,
	<extraplanets:tier1_pressure_layer>,
	<extraplanets:tier2_pressure_layer>,
	<extraplanets:tier3_pressure_layer>,
	<extraplanets:tier4_pressure_layer>,
	<extraplanets:basic_decontamination_unit>,
	<galacticraftplanets:item_basic_mars:6>,
	<extraplanets:tools:2>,
	<galacticraftcore:distributor>,
	<galacticraftcore:collector>,
	<galacticraftcore:oxygen_compressor>,
	<extraplanets:advanced_oxygen_compressor>,
	<extraplanets:ultimate_oxygen_compressor>,
	<galacticraftcore:oxygen_compressor:4>,
	<extraplanets:advanced_oxygen_compressor:4>,
	<extraplanets:ultimate_oxygen_compressor:4>,
	<galacticraftcore:fuel_loader>,
	<extraplanets:advanced_fuel_loader>,
	<extraplanets:ultimate_fuel_loader>,
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
	<extraplanets:solar>,
	<galacticraftcore:solar:4>,
	<extraplanets:solar:4>,
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
	<extraplanets:thermal_cloth>,
	<extraplanets:thermal_cloth:1>,
	<extraplanets:thermal_cloth:2>,
	<galacticraftplanets:thermal_padding_t2>,
	<galacticraftplanets:thermal_padding_t2:1>,
	<galacticraftplanets:thermal_padding_t2:2>,
	<galacticraftplanets:thermal_padding_t2:3>,
	<extraplanets:tier3_thermal_padding>,
	<extraplanets:tier3_thermal_padding:1>,
	<extraplanets:tier3_thermal_padding:2>,
	<extraplanets:tier3_thermal_padding:3>,
	<extraplanets:tier4_thermal_padding>,
	<extraplanets:tier4_thermal_padding:1>,
	<extraplanets:tier4_thermal_padding:2>,
	<extraplanets:tier4_thermal_padding:3>,
	<extraplanets:tier5_thermal_padding>,
	<extraplanets:tier5_thermal_padding:1>,
	<extraplanets:tier5_thermal_padding:2>,
	<extraplanets:tier5_thermal_padding:3>,
	<extraplanets:tier1_un_prepared_space_suit_helmet>,
	<extraplanets:tier1_un_prepared_space_suit_chest>,
	<extraplanets:tier1_un_prepared_space_suit_boots>,
	<extraplanets:tier2_un_prepared_space_suit_helmet>,
	<extraplanets:tier2_un_prepared_space_suit_chest>,
	<extraplanets:tier2_un_prepared_space_suit_legings>,
	<extraplanets:tier2_un_prepared_space_suit_boots>,
	<extraplanets:tier3_un_prepared_space_suit_helmet>,
	<extraplanets:tier3_un_prepared_space_suit_chest>,
	<extraplanets:tier3_un_prepared_space_suit_legings>,
	<extraplanets:tier3_un_prepared_space_suit_boots>,
	<extraplanets:tier4_un_prepared_space_suit_helmet>,
	<extraplanets:tier4_un_prepared_space_suit_chest>,
	<extraplanets:tier4_un_prepared_space_suit_legings>,
	<extraplanets:tier4_un_prepared_space_suit_boots>,
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
	<extraplanets:advanced_launch_pad>,
	<extraplanets:advanced_launch_pad:1>,
	<galacticraftcore:landing_pad:1>,
	<extraplanets:advanced_launch_pad:2>,
	<extraplanets:fire_bomb>,
	<extraplanets:nuclear_bomb>,
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
	<extraplanets:geiger_counter>,
	<galacticraftcore:standard_wrench>,
	<extraplanets:gravity_controller>,
	<extraplanets:module_items:1>,
	<extraplanets:module_items:2>,
	<extraplanets:electric_parts>,
	<extraplanets:electric_parts:1>,
	<galacticraftcore:buggymat>,
	<extraplanets:electric_parts:2>,
	<extraplanets:electric_parts:3>,
	<extraplanets:tier1_pressure_layer>,
	<extraplanets:tier2_pressure_layer>,
	<extraplanets:tier3_pressure_layer>,
	<extraplanets:tier4_pressure_layer>,
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
	<extraplanets:tier4_items>,
	<extraplanets:tier5_items>,
	<extraplanets:tier6_items>,
	<extraplanets:tier7_items>,
	<extraplanets:tier8_items>,
	<extraplanets:tier9_items>,
	<extraplanets:tier10_items>,
	<galacticraftcore:engine:1>,
	<extraplanets:tier4_items:1>,
	<extraplanets:tier5_items:1>,
	<extraplanets:tier6_items:1>,
	<extraplanets:tier7_items:1>,
	<extraplanets:tier8_items:1>,
	<extraplanets:tier9_items:1>,
	<extraplanets:tier10_items:1>,
	<galacticraftcore:rocket_fins>,
	<galacticraftplanets:item_basic_asteroids:2>,
	<galacticraftplanets:item_basic_asteroids:2>,
	<extraplanets:tier4_items:2>,
	<extraplanets:tier5_items:2>,
	<extraplanets:tier6_items:2>,
	<extraplanets:tier7_items:2>,
	<extraplanets:tier8_items:2>,
	<extraplanets:tier9_items:2>,
	<extraplanets:tier10_items:2>
] as IItemStack[];
for item in ItemsToRemoveGC{
    recipes.remove(item);
}

//Еще минус рецепты
furnace.remove(<minecraft:iron_ingot>);

//Еда
recipes.addShapeless (<extraplanets:canned_food>, [<galacticraftcore:canister>, <ore:categoryCookedMeat>, <ore:categoryCookedMeat>]);
recipes.addShapeless (<galacticraftcore:food>, [<galacticraftcore:canister>, <ore:categoryFruit>, <ore:categoryFruit>]);
recipes.addShapeless (<galacticraftcore:food:1>, [<galacticraftcore:canister>, <ore:categoryVegetable>, <ore:categoryVegetable>]);

//Светофакел
recipes.addShapeless (<galacticraftcore:glowstone_torch>*2, [<minecraft:torch>, <minecraft:glowstone_dust>]);
//Жидкостный манипулятор
recipes.addShaped(<galacticraftplanets:item_basic_mars:6>,
[[<ore:plateIron>, <ore:rotorSteel>, <ore:plateIron>],
 [<ore:glue>, <ore:circuitGood>, <ore:glue>],
 [<ore:plateIron>, <ore:rotorSteel>, <ore:plateIron>]]);
//Строчная сетка
recipes.addShaped(<extraplanets:tools:2>,
[[<ore:string>, <ore:string>, <ore:string>],
 [<ore:string>, <ore:spindle>, <ore:string>],
 [<ore:string>, <ore:string>, <ore:string>]]);
//Загручкик топлива
recipes.addShaped(<galacticraftcore:fuel_loader>,
[[<ore:plateAluminium>, <gregtech:meta_item_1:12184>, <ore:plateAluminium>],
 [<gregtech:meta_item_1:32611>, <gregtech:machine:503>, <gregtech:meta_item_1:32611>],
 [<gregtech:meta_item_1:32691>, <gregtech:machine:814>, <gregtech:cable:8026>]]);
//Загручкик топлива 2
recipes.addShaped(<extraplanets:advanced_fuel_loader>,
[[<gregtech:meta_item_1:12044>, <gregtech:meta_item_1:12044>, <gregtech:meta_item_1:12044>],
 [<gregtech:meta_item_1:12044>, <galacticraftcore:fuel_loader>, <gregtech:meta_item_1:12044>],
 [<gregtech:meta_item_1:12049>, <gregtech:meta_item_2:32212>, <gregtech:meta_item_1:12049>]]);
//Загрузчик топлива 3
recipes.addShaped(<extraplanets:ultimate_fuel_loader>,
[[<gregtech:meta_item_1:12074>, <gregtech:meta_item_1:12074>, <gregtech:meta_item_1:12074>],
 [<gregtech:meta_item_1:12074>, <extraplanets:advanced_fuel_loader>, <gregtech:meta_item_1:12074>],
 [<gregtech:meta_item_1:12079>, <gregtech:meta_item_2:32213>, <gregtech:meta_item_1:12079>]]);
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
 [<gregtech:meta_item_1:13184>, <gregtech:meta_item_1:14184>, <gregtech:meta_item_1:13184>],
 [<gregtech:meta_item_1:32602>, <gregtech:machine:503>, <gregtech:cable:2026>]]);
//Солнечная панель 3
recipes.addShaped(<extraplanets:solar>,
[[<gregtech:meta_item_1:32751>, <gregtech:meta_item_1:32751>, <gregtech:meta_item_1:32751>],
 [<galacticraftcore:solar:4>, <gregtech:machine:504>, <galacticraftcore:solar:4>],
 [<gregtech:meta_item_1:13072>, <gregtech:meta_item_1:13072>, <gregtech:meta_item_1:13072>]]);
//Солнечная панель 4
recipes.addShaped(<extraplanets:solar:4>,
[[<gregtech:meta_item_1:32752>, <gregtech:meta_item_1:32725>, <gregtech:meta_item_1:32752>],
 [<extraplanets:solar>, <gregtech:machine:505>, <extraplanets:solar>],
 [<gregtech:meta_item_1:12074>, <gregtech:meta_item_1:32724>, <gregtech:meta_item_1:12074>]]);
//Клапан
recipes.addShaped(<galacticraftcore:air_vent>,
[[<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>],
 [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>],
 [<ore:stickSteel>, <ore:stickLongSteel>, <ore:stickSteel>]]);
//частотный модуль
recipes.remove(<galacticraftcore:basic_item:19>);
recipes.addShaped(<galacticraftcore:basic_item:19>,
[[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:32692>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_2:32507>, <ore:cableGtSingleRedAlloy>, <gregtech:meta_item_2:32507>],
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
//тепло ткань 3
recipes.addShaped(<extraplanets:thermal_cloth>*2,
[[null, <galacticraftplanets:item_basic_asteroids:7>, null],
 [<galacticraftplanets:item_basic_asteroids:7>, <gregtech:meta_item_1:12183>, <galacticraftplanets:item_basic_asteroids:7>],
 [null, <galacticraftplanets:item_basic_asteroids:7>, null]]);
//тепло ткань 4
recipes.addShaped(<extraplanets:thermal_cloth:1>*2,
[[null, <galacticraftplanets:item_basic_asteroids:7>, null],
 [<galacticraftplanets:item_basic_asteroids:7>, <gregtech:meta_item_1:12016>, <galacticraftplanets:item_basic_asteroids:7>],
 [null, <galacticraftplanets:item_basic_asteroids:7>, null]]);
//тепло ткань 5
recipes.addShaped(<extraplanets:thermal_cloth:2>*2,
[[null, <galacticraftplanets:item_basic_asteroids:7>, null],
 [<galacticraftplanets:item_basic_asteroids:7>, <gregtech:meta_item_1:12047>, <galacticraftplanets:item_basic_asteroids:7>],
 [null, <galacticraftplanets:item_basic_asteroids:7>, null]]);
//тепло шлем 2
recipes.addShaped(<galacticraftplanets:thermal_padding_t2>,
[[<galacticraftplanets:basic_item_venus:3>, <galacticraftplanets:basic_item_venus:3>, <galacticraftplanets:basic_item_venus:3>],
 [<galacticraftplanets:basic_item_venus:3>, <galacticraftplanets:thermal_padding>, <galacticraftplanets:basic_item_venus:3>],
 [null, null, null]]);
//тепло нагрудник 2
recipes.addShaped(<galacticraftplanets:thermal_padding_t2:1>,
[[<galacticraftplanets:basic_item_venus:3>, null, <galacticraftplanets:basic_item_venus:3>],
 [<galacticraftplanets:basic_item_venus:3>, <galacticraftplanets:thermal_padding:1>, <galacticraftplanets:basic_item_venus:3>],
 [<galacticraftplanets:basic_item_venus:3>, <galacticraftplanets:basic_item_venus:3>, <galacticraftplanets:basic_item_venus:3>]]);
//тепло поножи 2
recipes.addShaped(<galacticraftplanets:thermal_padding_t2:2>,
[[<galacticraftplanets:basic_item_venus:3>, <galacticraftplanets:thermal_padding:2>, <galacticraftplanets:basic_item_venus:3>],
 [<galacticraftplanets:basic_item_venus:3>, null, <galacticraftplanets:basic_item_venus:3>],
 [<galacticraftplanets:basic_item_venus:3>, null, <galacticraftplanets:basic_item_venus:3>]]);
//тепло ботинки 2
recipes.addShaped(<galacticraftplanets:thermal_padding_t2:3>,
[[null, null, null],
 [<galacticraftplanets:basic_item_venus:3>, null, <galacticraftplanets:basic_item_venus:3>],
 [<galacticraftplanets:basic_item_venus:3>, <galacticraftplanets:thermal_padding:3>, <galacticraftplanets:basic_item_venus:3>]]);
//тепло шлем 3
recipes.addShaped(<extraplanets:tier3_thermal_padding>,
[[<extraplanets:thermal_cloth>, <extraplanets:thermal_cloth>, <extraplanets:thermal_cloth>],
 [<extraplanets:thermal_cloth>, <galacticraftplanets:thermal_padding_t2>, <extraplanets:thermal_cloth>],
 [null, null, null]]);
//тепло нагрудник 3
recipes.addShaped(<extraplanets:tier3_thermal_padding:1>,
[[<extraplanets:thermal_cloth>, null, <extraplanets:thermal_cloth>],
 [<extraplanets:thermal_cloth>, <galacticraftplanets:thermal_padding_t2:1>, <extraplanets:thermal_cloth>],
 [<extraplanets:thermal_cloth>, <extraplanets:thermal_cloth>, <extraplanets:thermal_cloth>]]);
//тепло поножи 3
recipes.addShaped(<extraplanets:tier3_thermal_padding:2>,
[[<extraplanets:thermal_cloth>, <galacticraftplanets:thermal_padding_t2:2>, <extraplanets:thermal_cloth>],
 [<extraplanets:thermal_cloth>, null, <extraplanets:thermal_cloth>],
 [<extraplanets:thermal_cloth>, null, <extraplanets:thermal_cloth>]]);
//тепло ботинки 3
recipes.addShaped(<extraplanets:tier3_thermal_padding:3>,
[[null, null, null],
 [<extraplanets:thermal_cloth>, null, <extraplanets:thermal_cloth>],
 [<extraplanets:thermal_cloth>, <galacticraftplanets:thermal_padding_t2:3>, <extraplanets:thermal_cloth>]]);
//тепло шлем 4
recipes.addShaped(<extraplanets:tier4_thermal_padding>,
[[<extraplanets:thermal_cloth:1>, <extraplanets:thermal_cloth:1>, <extraplanets:thermal_cloth:1>],
 [<extraplanets:thermal_cloth:1>, <extraplanets:tier3_thermal_padding>, <extraplanets:thermal_cloth:1>],
 [null, null, null]]);
//тепло нагрудник 4
recipes.addShaped(<extraplanets:tier4_thermal_padding:1>,
[[<extraplanets:thermal_cloth:1>, null, <extraplanets:thermal_cloth:1>],
 [<extraplanets:thermal_cloth:1>, <extraplanets:tier3_thermal_padding:1>, <extraplanets:thermal_cloth:1>],
 [<extraplanets:thermal_cloth:1>, <extraplanets:thermal_cloth:1>, <extraplanets:thermal_cloth:1>]]);
//тепло поножи 4
recipes.addShaped(<extraplanets:tier4_thermal_padding:2>,
[[<extraplanets:thermal_cloth:1>, <extraplanets:tier3_thermal_padding:2>, <extraplanets:thermal_cloth:1>],
 [<extraplanets:thermal_cloth:1>, null, <extraplanets:thermal_cloth:1>],
 [<extraplanets:thermal_cloth:1>, null, <extraplanets:thermal_cloth:1>]]);
//тепло ботинки 4
recipes.addShaped(<extraplanets:tier4_thermal_padding:3>,
[[null, null, null],
 [<extraplanets:thermal_cloth:1>, null, <extraplanets:thermal_cloth:1>],
 [<extraplanets:thermal_cloth:1>, <extraplanets:tier3_thermal_padding:3>, <extraplanets:thermal_cloth:1>]]);
//тепло шлем 5
recipes.addShaped(<extraplanets:tier5_thermal_padding>,
[[<extraplanets:thermal_cloth:2>, <extraplanets:thermal_cloth:2>, <extraplanets:thermal_cloth:2>],
 [<extraplanets:thermal_cloth:2>, <extraplanets:tier4_thermal_padding>, <extraplanets:thermal_cloth:2>],
 [null, null, null]]);
//тепло нагрудник 5
recipes.addShaped(<extraplanets:tier5_thermal_padding:1>,
[[<extraplanets:thermal_cloth:2>, null, <extraplanets:thermal_cloth:2>],
 [<extraplanets:thermal_cloth:2>, <extraplanets:tier4_thermal_padding:1>, <extraplanets:thermal_cloth:2>],
 [<extraplanets:thermal_cloth:2>, <extraplanets:thermal_cloth:2>, <extraplanets:thermal_cloth:2>]]);
//тепло поножи 5
recipes.addShaped(<extraplanets:tier5_thermal_padding:2>,
[[<extraplanets:thermal_cloth:2>, <extraplanets:tier4_thermal_padding:2>, <extraplanets:thermal_cloth:2>],
 [<extraplanets:thermal_cloth:2>, null, <extraplanets:thermal_cloth:2>],
 [<extraplanets:thermal_cloth:2>, null, <extraplanets:thermal_cloth:2>]]);
//тепло ботинки 5
recipes.addShaped(<extraplanets:tier5_thermal_padding:3>,
[[null, null, null],
 [<extraplanets:thermal_cloth:2>, null, <extraplanets:thermal_cloth:2>],
 [<extraplanets:thermal_cloth:2>, <extraplanets:tier4_thermal_padding:3>, <extraplanets:thermal_cloth:2>]]);
//неподготовленный шлем 
recipes.addShaped(<extraplanets:tier1_un_prepared_space_suit_helmet>,
[[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>],
 [null, null, null]]);
//неподготовленный нагрудник
recipes.addShaped(<extraplanets:tier1_un_prepared_space_suit_chest>,
[[<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>]]);
//неподготовленный поножи
recipes.addShaped(<extraplanets:tier1_un_prepared_space_suit_legings>,
[[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>]]);
//неподготовленный ботинки
recipes.addShaped(<extraplanets:tier1_un_prepared_space_suit_boots>,
[[null, null, null],
 [<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>],
 [<gregtech:meta_item_1:12184>, null, <gregtech:meta_item_1:12184>]]);
//неподготовленный шлем 2
recipes.addShaped(<extraplanets:tier2_un_prepared_space_suit_helmet>,
[[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>],
 [<gregtech:meta_item_1:12001>, <extraplanets:tier1_un_prepared_space_suit_helmet>, <gregtech:meta_item_1:12001>],
 [null, null, null]]);
//неподготовленный нагрудник 2
recipes.addShaped(<extraplanets:tier2_un_prepared_space_suit_chest>,
[[<gregtech:meta_item_1:12001>, null, <gregtech:meta_item_1:12001>],
 [<gregtech:meta_item_1:12001>, <extraplanets:tier1_un_prepared_space_suit_chest>, <gregtech:meta_item_1:12001>],
 [<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12001>]]);
//неподготовленный поножи 2
recipes.addShaped(<extraplanets:tier2_un_prepared_space_suit_legings>,
[[<gregtech:meta_item_1:12001>, <extraplanets:tier1_un_prepared_space_suit_legings>, <gregtech:meta_item_1:12001>],
 [<gregtech:meta_item_1:12001>, null, <gregtech:meta_item_1:12001>],
 [<gregtech:meta_item_1:12001>, null, <gregtech:meta_item_1:12001>]]);
//неподготовленный ботинки 2
recipes.addShaped(<extraplanets:tier2_un_prepared_space_suit_boots>,
[[null, null, null],
 [<gregtech:meta_item_1:12001>, null, <gregtech:meta_item_1:12001>],
 [<gregtech:meta_item_1:12001>, <extraplanets:tier1_un_prepared_space_suit_boots>, <gregtech:meta_item_1:12001>]]);
//неподготовленный шлем 3
recipes.addShaped(<extraplanets:tier3_un_prepared_space_suit_helmet>,
[[<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>],
 [<gregtech:meta_item_1:12183>, <extraplanets:tier2_un_prepared_space_suit_helmet>, <gregtech:meta_item_1:12183>],
 [null, null, null]]);
//неподготовленный нагрудник 3
recipes.addShaped(<extraplanets:tier3_un_prepared_space_suit_chest>,
[[<gregtech:meta_item_1:12183>, null, <gregtech:meta_item_1:12183>],
 [<gregtech:meta_item_1:12183>, <extraplanets:tier2_un_prepared_space_suit_chest>, <gregtech:meta_item_1:12183>],
 [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>]]);
//неподготовленный поножи 3
recipes.addShaped(<extraplanets:tier3_un_prepared_space_suit_legings>,
[[<gregtech:meta_item_1:12183>, <extraplanets:tier2_un_prepared_space_suit_legings>, <gregtech:meta_item_1:12183>],
 [<gregtech:meta_item_1:12183>, null, <gregtech:meta_item_1:12183>],
 [<gregtech:meta_item_1:12183>, null, <gregtech:meta_item_1:12183>]]);
//неподготовленный ботинки 3
recipes.addShaped(<extraplanets:tier3_un_prepared_space_suit_boots>,
[[null, null, null],
 [<gregtech:meta_item_1:12183>, null, <gregtech:meta_item_1:12183>],
 [<gregtech:meta_item_1:12183>, <extraplanets:tier2_un_prepared_space_suit_boots>, <gregtech:meta_item_1:12183>]]);
//неподготовленный шлем 4
recipes.addShaped(<extraplanets:tier4_un_prepared_space_suit_helmet>,
[[<gregtech:meta_item_1:12016>, <gregtech:meta_item_1:12016>, <gregtech:meta_item_1:12016>],
 [<gregtech:meta_item_1:12016>, <extraplanets:tier3_un_prepared_space_suit_helmet>, <gregtech:meta_item_1:12016>],
 [null, null, null]]);
//неподготовленный нагрудник 4
recipes.addShaped(<extraplanets:tier4_un_prepared_space_suit_chest>,
[[<gregtech:meta_item_1:12016>, null, <gregtech:meta_item_1:12016>],
 [<gregtech:meta_item_1:12016>, <extraplanets:tier3_un_prepared_space_suit_chest>, <gregtech:meta_item_1:12016>],
 [<gregtech:meta_item_1:12016>, <gregtech:meta_item_1:12016>, <gregtech:meta_item_1:12016>]]);
//неподготовленный поножи 4
recipes.addShaped(<extraplanets:tier4_un_prepared_space_suit_legings>,
[[<gregtech:meta_item_1:12016>, <extraplanets:tier3_un_prepared_space_suit_legings>, <gregtech:meta_item_1:12016>],
 [<gregtech:meta_item_1:12016>, null, <gregtech:meta_item_1:12016>],
 [<gregtech:meta_item_1:12016>, null, <gregtech:meta_item_1:12016>]]);
//неподготовленный ботинки 4
recipes.addShaped(<extraplanets:tier4_un_prepared_space_suit_boots>,
[[null, null, null],
 [<gregtech:meta_item_1:12016>, null, <gregtech:meta_item_1:12016>],
 [<gregtech:meta_item_1:12016>, <extraplanets:tier3_un_prepared_space_suit_boots>, <gregtech:meta_item_1:12016>]]);
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
//Взлетка 2лвл
recipes.addShaped(<extraplanets:advanced_launch_pad>*5,
[[null, null, null],
 [<ore:plateDenseVanadiumSteel>, <ore:plateDenseVanadiumSteel>, <ore:plateDenseVanadiumSteel>],
 [<ore:blockVanadiumSteel>, <ore:blockVanadiumSteel>, <ore:blockVanadiumSteel>]]);
//Взлетка 3лвл
recipes.addShaped(<extraplanets:advanced_launch_pad:1>*5,
[[null, null, null],
 [<ore:plateDenseTungsten>, <ore:plateDenseTungsten>, <ore:plateDenseTungsten>],
 [<ore:blockTungsten>, <ore:blockTungsten>, <ore:blockTungsten>]]);
//Площадка для багги
recipes.addShaped(<galacticraftcore:landing_pad:1>*9,
[[null, null, null],
 [<ore:plateDenseWroughtIron>, <ore:plateDenseWroughtIron>, <ore:plateDenseWroughtIron>],
 [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]]);
//Площадка для венерианского ровера
recipes.addShaped(<extraplanets:advanced_launch_pad:2>*5,
[[null, null, null],
 [<ore:plateDenseAluminium>, <ore:plateDenseAluminium>, <ore:plateDenseAluminium>],
 [<ore:blockAluminium>, <ore:blockAluminium>, <ore:blockAluminium>]]);
//Огененная бомба
recipes.addShaped(<extraplanets:fire_bomb>,
[[<ore:plateUranium>, <ore:gunpowder>, <ore:plateUranium>],
 [<ore:dustSand>, <galacticraftplanets:basic_item_venus:2>, <ore:dustSand>],
 [<ore:plateUranium>, <ore:gunpowder>, <ore:plateUranium>]]);
//Ядерная бомба
recipes.addShaped(<extraplanets:nuclear_bomb>,
[[<gregtech:meta_item_2:32436>, <ore:crystalLitherite>, <gregtech:meta_item_2:32436>],
 [<gregtech:meta_item_2:32436>, <galacticraftplanets:basic_item_venus:2>, <gregtech:meta_item_2:32436>],
 [<gregtech:meta_item_2:32436>, <ore:crystalLitherite>, <gregtech:meta_item_2:32436>]]);
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
//Счетчик гейгера
recipes.addShaped(<extraplanets:geiger_counter>,
[[<gregtech:meta_item_1:12039>, <gregtech:meta_item_1:32690>, <gregtech:meta_item_1:12039>],
 [<gregtech:meta_item_1:12298>, <ore:paneGlass>, <gregtech:meta_item_1:12298>],
 [<gregtech:meta_item_1:12184>, <gregtech:meta_item_2:32488>, <gregtech:meta_item_1:12184>]]);
//Гаечный ключ
recipes.addShaped(<galacticraftcore:standard_wrench>,
[[null, <ore:craftingToolFile>, <ore:plateBlackSteel>],
 [null, <ore:plateBlackBronze>, <ore:craftingToolHardHammer>],
 [<ore:plateBronze>, null, null]]);
//Контроллер гравитации
recipes.addShaped(<extraplanets:gravity_controller>,
[[<gregtech:meta_item_1:32518>, <ore:circuitExtreme>, <gregtech:meta_item_1:32518>],
 [<ore:circuitExtreme>, <gregtech:meta_item_1:32673>, <ore:circuitExtreme>],
 [<gregtech:meta_item_1:32518>, <ore:circuitExtreme>, <gregtech:meta_item_1:32518>]]);
//Кислородный контроллер
recipes.addShaped(<extraplanets:module_items:1>,
[[<ore:plateMaragingSteelA>, <ore:circuitExtreme>, <gregtech:meta_item_1:32518>],
 [<ore:circuitExtreme>, <galacticraftcore:oxygen_tank_heavy_full:2700>, <ore:circuitExtreme>],
 [<gregtech:meta_item_1:32518>, <ore:circuitExtreme>, <ore:plateMaragingSteelA>]]);
//Контроллер космического снаряжения
recipes.addShaped(<extraplanets:module_items:2>,
[[<ore:plateChrome>, <ore:circuitExtreme>, <gregtech:meta_item_1:32518>],
 [<ore:circuitExtreme>, <galacticraftcore:oxygen_gear>, <ore:circuitExtreme>],
 [<gregtech:meta_item_1:32518>, <ore:circuitExtreme>, <ore:plateChrome>]]);
//Аккумулятор 1
recipes.addShaped(<extraplanets:electric_parts>,
[[<ore:circuitBasic>, <ore:plateBatteryAlloy>, <ore:circuitBasic>],
 [<ore:plateBatteryAlloy>, <gregtech:frame_black_steel>, <ore:plateBatteryAlloy>],
 [<gregtech:cable:5018>, <ore:plateBatteryAlloy>, <gregtech:cable:5018>]]);
//Аккумулятор 2
recipes.addShaped(<extraplanets:electric_parts:1>,
[[<ore:circuitGood>, <ore:plateBatteryAlloy>, <ore:circuitGood>],
 [<ore:plateBatteryAlloy>, <gregtech:frame_black_steel>, <ore:plateBatteryAlloy>],
 [<gregtech:cable:5195>, <ore:plateBatteryAlloy>, <gregtech:cable:5195>]]);
//Колесо багги
recipes.addShaped(<galacticraftcore:buggymat>,
[[null, <ore:leather>, null],
 [<ore:leather>, <gregtech:meta_item_1:12301>, <ore:leather>],
 [null, <ore:leather>, null]]);
//Колесо 2-уго уровня
recipes.addShaped(<extraplanets:electric_parts:2>,
[[null, <galacticraftplanets:item_basic_mars:3>, null],
 [<galacticraftplanets:item_basic_mars:3>, <galacticraftcore:buggymat>, <galacticraftplanets:item_basic_mars:3>],
 [null, <galacticraftplanets:item_basic_mars:3>, null]]);
//Колесо 3-го уровня
recipes.addShaped(<extraplanets:electric_parts:3>,
[[null, <galacticraftplanets:item_basic_asteroids:5>, null],
 [<galacticraftplanets:item_basic_asteroids:5>, <extraplanets:electric_parts:2>, <galacticraftplanets:item_basic_asteroids:5>],
 [null, <galacticraftplanets:item_basic_asteroids:5>, null]]);
//Слой давление 1
recipes.addShaped(<extraplanets:tier1_pressure_layer>,
[[<gregtech:meta_item_1:12077>, <galacticraftcore:fluid_pipe>, <gregtech:meta_item_1:12077>],
 [<galacticraftcore:oxygen_detector>, <galacticraftcore:oxygen_concentrator>, <extraplanets:module_items:1>],
 [<gregtech:meta_item_1:12077>, <ore:circuitAdvanced>, <gregtech:meta_item_1:12077>]]);
//Слой давление 2
recipes.addShaped(<extraplanets:tier2_pressure_layer>,
[[<ore:plateAmethyst>, <galacticraftcore:fluid_pipe>, <ore:plateAmethyst>],
 [<galacticraftcore:oxygen_detector>, <galacticraftcore:oxygen_concentrator>, <extraplanets:module_items:1>],
 [<ore:plateAmethyst>, <ore:circuitExtreme>, <ore:plateAmethyst>]]);
//Слой давление 3
recipes.addShaped(<extraplanets:tier3_pressure_layer>,
[[<ore:plateOlivine>, <galacticraftcore:fluid_pipe>, <ore:plateOlivine>],
 [<galacticraftcore:oxygen_detector>, <galacticraftcore:oxygen_concentrator>, <extraplanets:module_items:1>],
 [<ore:plateOlivine>, <gtadditions:ga_meta_item:32211>, <ore:plateOlivine>]]);
//Слой давление 4
recipes.addShaped(<extraplanets:tier4_pressure_layer>,
[[<ore:plateOpal>, <galacticraftcore:fluid_pipe>, <ore:plateOpal>],
 [<galacticraftcore:oxygen_detector>, <galacticraftcore:oxygen_concentrator>, <extraplanets:module_items:1>],
 [<ore:plateOpal>, <ore:circuitElite>, <ore:plateOpal>]]);
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
//Двигатель 4
recipes.addShaped(<extraplanets:tier4_items>,
[[<ore:circuitExtreme>, <gregtech:meta_item_1:32613>, <ore:circuitExtreme>],
 [<extraplanets:tier4_items:3>, <gregtech:machine:814>, <extraplanets:tier4_items:3>],
 [<extraplanets:tier4_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier4_items:3>]]);
//Двигатель 5
recipes.addShaped(<extraplanets:tier5_items>,
[[<ore:circuitExtreme>, <gregtech:meta_item_1:32613>, <ore:circuitExtreme>],
 [<extraplanets:tier5_items:3>, <gregtech:machine:814>, <extraplanets:tier5_items:3>],
 [<extraplanets:tier5_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier5_items:3>]]);
//Двигатель 6
recipes.addShaped(<extraplanets:tier6_items>,
[[<ore:circuitExtreme>, <gregtech:meta_item_1:32613>, <ore:circuitExtreme>],
 [<extraplanets:tier6_items:3>, <gregtech:machine:815>, <extraplanets:tier6_items:3>],
 [<extraplanets:tier6_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier6_items:3>]]);
//Двигатель 7
recipes.addShaped(<extraplanets:tier7_items>,
[[<ore:circuitExtreme>, <gregtech:meta_item_1:32614>, <ore:circuitExtreme>],
 [<extraplanets:tier7_items:3>, <gregtech:machine:815>, <extraplanets:tier7_items:3>],
 [<extraplanets:tier7_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier7_items:3>]]);
//Двигатель 8
recipes.addShaped(<extraplanets:tier8_items>,
[[<ore:circuitExtreme>, <gregtech:meta_item_1:32614>, <ore:circuitExtreme>],
 [<extraplanets:tier8_items:3>, <gregtech:machine:815>, <extraplanets:tier8_items:3>],
 [<extraplanets:tier8_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier8_items:3>]]);
//Двигатель 9
recipes.addShaped(<extraplanets:tier9_items>,
[[<ore:circuitUltimate>, <gregtech:meta_item_1:32614>, <ore:circuitUltimate>],
 [<extraplanets:tier9_items:3>, <gregtech:machine:815>, <extraplanets:tier9_items:3>],
 [<extraplanets:tier9_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier9_items:3>]]);
//Двигатель 10
recipes.addShaped(<extraplanets:tier10_items>,
[[<ore:circuitUltimate>, <gregtech:meta_item_1:32614>, <ore:circuitUltimate>],
 [<extraplanets:tier10_items:3>, <gregtech:machine:815>, <extraplanets:tier10_items:3>],
 [<extraplanets:tier10_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier10_items:3>]]);
//BOOSTERS 1-10tier
//Lvl 1
recipes.addShaped(<galacticraftcore:engine:1>,
[[<galacticraftplanets:item_basic_mars:3>, <gregtech:meta_item_1:32612>, <galacticraftplanets:item_basic_mars:3>],
 [<galacticraftplanets:item_basic_mars:3>, <gregtech:machine:814>, <galacticraftplanets:item_basic_mars:3>],
 [<galacticraftplanets:item_basic_mars:3>, <galacticraftcore:air_vent>, <galacticraftplanets:item_basic_mars:3>]]);
//Lvl 4
recipes.addShaped(<extraplanets:tier4_items:1>,
[[<gregtech:meta_item_2:32506>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_2:32506>],
 [<gregtech:meta_item_2:32506>, <gregtech:machine:814>, <gregtech:meta_item_2:32506>],
 [<extraplanets:tier4_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier4_items:3>]]);
//Lvl 5
recipes.addShaped(<extraplanets:tier5_items:1>,
[[<gregtech:meta_item_1:12049>, <gregtech:meta_item_1:32612>, <gregtech:meta_item_1:12049>],
 [<gregtech:meta_item_1:12049>, <gregtech:machine:814>, <gregtech:meta_item_1:12049>],
 [<extraplanets:tier5_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier5_items:3>]]);
//Lvl 6
recipes.addShaped(<extraplanets:tier6_items:1>,
[[<gregtech:meta_item_1:12016>, <gregtech:meta_item_1:32613>, <gregtech:meta_item_1:12016>],
 [<gregtech:meta_item_1:12016>, <gregtech:machine:815>, <gregtech:meta_item_1:12016>],
 [<extraplanets:tier6_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier6_items:3>]]);
//Lvl 7
recipes.addShaped(<extraplanets:tier7_items:1>,
[[<gregtech:meta_item_1:12074>, <gregtech:meta_item_1:32613>, <gregtech:meta_item_1:12074>],
 [<gregtech:meta_item_1:12074>, <gregtech:machine:815>, <gregtech:meta_item_1:12074>],
 [<extraplanets:tier7_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier7_items:3>]]);
//Lvl 8
recipes.addShaped(<extraplanets:tier8_items:1>,
[[<gregtech:meta_item_1:12032>, <gregtech:meta_item_1:32614>, <gregtech:meta_item_1:12032>],
 [<gregtech:meta_item_1:12032>, <gregtech:machine:816>, <gregtech:meta_item_1:12032>],
 [<extraplanets:tier8_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier8_items:3>]]);
//Lvl 9
recipes.addShaped(<extraplanets:tier9_items:1>,
[[<gregtech:meta_item_1:12235>, <gregtech:meta_item_1:32614>, <gregtech:meta_item_1:12235>],
 [<gregtech:meta_item_1:12235>, <gregtech:machine:816>, <gregtech:meta_item_1:12235>],
 [<extraplanets:tier9_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier9_items:3>]]);
//Lvl 10
recipes.addShaped(<extraplanets:tier10_items:1>,
[[<gregtech:meta_item_1:12309>, <gregtech:machine:930>, <gregtech:meta_item_1:12309>],
 [<gregtech:meta_item_1:12309>, <gregtech:machine:1020>, <gregtech:meta_item_1:12309>],
 [<extraplanets:tier10_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier10_items:3>]]);
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
//T4
recipes.addShaped(<extraplanets:tier4_items:2>,
[[<ore:plateAluminium>, <ore:circuitAdvanced>, <ore:plateAluminium>],
 [<extraplanets:tier4_items:3>, <gregtech:meta_item_1:32528>, <extraplanets:tier4_items:3>],
 [<extraplanets:tier4_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier4_items:3>]]);
//T5
recipes.addShaped(<extraplanets:tier5_items:2>,
[[<ore:plateAluminium>, <ore:circuitExtreme>, <ore:plateAluminium>],
 [<extraplanets:tier5_items:3>, <gregtech:meta_item_1:32538>, <extraplanets:tier5_items:3>],
 [<extraplanets:tier5_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier5_items:3>]]);
//T6
recipes.addShaped(<extraplanets:tier6_items:2>,
[[<ore:plateAluminium>, <ore:circuitExtreme>, <ore:plateAluminium>],
 [<extraplanets:tier6_items:3>, <gregtech:meta_item_1:32538>, <extraplanets:tier6_items:3>],
 [<extraplanets:tier6_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier6_items:3>]]);
//T7
recipes.addShaped(<extraplanets:tier7_items:2>,
[[<ore:plateAluminium>, <ore:circuitExtreme>, <ore:plateAluminium>],
 [<extraplanets:tier7_items:3>, <gregtech:meta_item_1:32538>, <extraplanets:tier7_items:3>],
 [<extraplanets:tier7_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier7_items:3>]]);
//T8
recipes.addShaped(<extraplanets:tier8_items:2>,
[[<ore:plateAluminium>, <ore:circuitExtreme>, <ore:plateAluminium>],
 [<extraplanets:tier8_items:3>, <gregtech:meta_item_1:32538>, <extraplanets:tier8_items:3>],
 [<extraplanets:tier8_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier8_items:3>]]);
//T9
recipes.addShaped(<extraplanets:tier9_items:2>,
[[<ore:plateAluminium>, <ore:circuitUltimate>, <ore:plateAluminium>],
 [<extraplanets:tier9_items:3>, <gregtech:meta_item_1:32538>, <extraplanets:tier9_items:3>],
 [<extraplanets:tier9_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier9_items:3>]]);
//T10
recipes.addShaped(<extraplanets:tier10_items:2>,
[[<ore:plateAluminium>, <ore:circuitUltimate>, <ore:plateAluminium>],
 [<extraplanets:tier10_items:3>, <ore:batteryUltimate>, <extraplanets:tier10_items:3>],
 [<extraplanets:tier10_items:3>, <galacticraftcore:air_vent>, <extraplanets:tier10_items:3>]]);
 
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
//Tier 4
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12016>*3, <gregtech:meta_item_1:10038>*1])
	.outputs(<extraplanets:tier4_items:3>*3)
	.property("temperature", 3500)
	.duration(1000)
	.EUt(700)
	.buildAndRegister();
//Tier 5
/*
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12047>*3, <contenttweaker:part_plate_basic>*1])
	.outputs(<extraplanets:tier5_items:3>*3)
	.property("temperature", 4000)
	.duration(1000)
	.EUt(760)
	.buildAndRegister();
//Tier 6
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12235>*3, <contenttweaker:part_plate_advanced>*1])
	.outputs(<extraplanets:tier6_items:3>*3)
	.property("temperature", 4500)
	.duration(1000)
	.EUt(820)
	.buildAndRegister();
//Tier 7
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_2:32435>*3, <contenttweaker:part_plate_advanced>*1])
	.outputs(<extraplanets:tier7_items:3>*3)
	.property("temperature", 5000)
	.duration(1000)
	.EUt(880)
	.buildAndRegister();
//Tier 8
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12302>*3, <contenttweaker:part_plate_du>*1])
	.outputs(<extraplanets:tier8_items:3>*3)
	.property("temperature", 5500)
	.duration(1000)
	.EUt(940)
	.buildAndRegister();
//Tier 9
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12304>*3, <contenttweaker:part_plate_du>*1])
	.outputs(<extraplanets:tier9_items:3>*3)
	.property("temperature", 6000)
	.duration(1000)
	.EUt(1000)
	.buildAndRegister();
//Tier 10
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12308>*3, <contenttweaker:part_plate_elite>*1])
	.outputs(<extraplanets:tier10_items:3>*3)
	.property("temperature", 6500)
	.duration(1000)
	.EUt(1060)
	.buildAndRegister();
*/
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
//Tier 4
assembler.recipeBuilder()
  .inputs(<extraplanets:tier4_items:3>*40, <extraplanets:schematic_tier4>, <gregtech:frame_stainless_steel>*20, <gregtech:machine:814>*4, <ore:chest>*3, <extraplanets:tier4_items>, <extraplanets:tier4_items:2>*4, <extraplanets:tier4_items:1>*4, <extraplanets:nose_cone_tier4>)
  .outputs(<extraplanets:item_tier4_rocket:3>)
  .duration(2500)
  .EUt(400)
  .buildAndRegister();
/*
//Tier 5
assembler.recipeBuilder()
  .inputs(<extraplanets:tier5_items:3>*42, <extraplanets:schematic_tier5>, <gregtech:frame_titanium>*22, <gregtech:machine:815>*4, <ore:chest>*3, <extraplanets:tier5_items>, <extraplanets:tier5_items:2>*4, <extraplanets:tier5_items:1>*4, <extraplanets:nose_cone_tier5>)
  .outputs(<extraplanets:item_tier5_rocket:3>)
  .duration(3000)
  .EUt(460)
  .buildAndRegister();
//Tier 6
assembler.recipeBuilder()
  .inputs(<extraplanets:tier6_items:3>*44, <extraplanets:schematic_tier6>, <gregtech:frame_tungsten_steel>*24, <gregtech:machine:816>*4, <ore:chest>*3, <extraplanets:tier6_items>, <extraplanets:tier6_items:2>*4, <extraplanets:tier6_items:1>*4, <extraplanets:nose_cone_tier6>)
  .outputs(<extraplanets:item_tier6_rocket:3>)
  .duration(3500)
  .EUt(512)
  .buildAndRegister();
//Tier 7
assembler.recipeBuilder()
  .inputs(<extraplanets:tier7_items:3>*46, <extraplanets:schematic_tier7>, <gregtech:frame_hssg>*26, <gregtech:machine:1020>, <ore:chest>*3, <extraplanets:tier7_items>, <extraplanets:tier7_items:2>*4, <extraplanets:tier7_items:1>*4, <extraplanets:nose_cone_tier7>)
  .outputs(<extraplanets:item_tier7_rocket:3>)
  .duration(4000)
  .EUt(570)
  .buildAndRegister();
//Tier 8
assembler.recipeBuilder()
  .inputs(<extraplanets:tier8_items:3>*48, <extraplanets:schematic_tier8>, <gregtech:frame_hssg>*28, <gregtech:machine:1021>, <ore:chest>*3, <extraplanets:tier8_items>, <extraplanets:tier8_items:2>*4, <extraplanets:tier8_items:1>*4, <extraplanets:nose_cone_tier8>)
  .outputs(<extraplanets:item_tier8_rocket:3>)
  .duration(4500)
  .EUt(630)
  .buildAndRegister();
//Tier 9
assembler.recipeBuilder()
  .inputs(<extraplanets:tier9_items:3>*50, <extraplanets:schematic_tier9>, <gregtech:frame_hsse>*30, <gregtech:machine:1022>, <ore:chest>*3, <extraplanets:tier9_items>, <extraplanets:tier9_items:2>*4, <extraplanets:tier9_items:1>*4, <extraplanets:nose_cone_tier9>)
  .outputs(<extraplanets:item_tier9_rocket:3>)
  .duration(5000)
  .EUt(690)
  .buildAndRegister();
//Tier 10
assembler.recipeBuilder()
  .inputs(<extraplanets:tier10_items:3>*52, <extraplanets:schematic_tier10>, <gregtech:frame_hsse>*32, <gregtech:machine:1023>, <ore:chest>*3, <extraplanets:tier10_items>, <extraplanets:tier10_items:2>*4, <extraplanets:tier10_items:1>*4, <extraplanets:nose_cone_tier10>)
  .outputs(<extraplanets:item_tier10_rocket:3>)
  .duration(5500)
  .EUt(750)
  .buildAndRegister();
*/
//Слой броня 1
compressor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:13001>*4)
	.outputs(<extraplanets:tier1_armor_layer>)
	.duration(400)
	.EUt(32)
	.buildAndRegister();
//Слой броня 2
compressor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:13072>*4)
	.outputs(<extraplanets:tier2_armor_layer>)
	.duration(500)
	.EUt(64)
	.buildAndRegister();
//Слой броня 3
compressor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:13049>*4)
	.outputs(<extraplanets:tier3_armor_layer>)
	.duration(600)
	.EUt(128)
	.buildAndRegister();
//Слой броня 4
compressor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12424>*4)
	.outputs(<extraplanets:tier4_armor_layer>)
	.duration(700)
	.EUt(256)
	.buildAndRegister();
//Слой радиация 1
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:12035>*4)
  .fluidInputs([<liquid:argon> * 250])
  .outputs(<extraplanets:tier1_radiation_layer>)
  .duration(400)
  .EUt(128)
  .buildAndRegister();
//Слой радиация 2
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:13035>*4)
  .fluidInputs([<liquid:argon> * 500])
  .outputs(<extraplanets:tier2_radiation_layer>)
  .duration(500)
  .EUt(256)
  .buildAndRegister();
//Слой радиация 3
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:13035>*8, <gregtech:meta_item_1:12141>*32)
  .fluidInputs([<liquid:argon> * 750])
  .outputs(<extraplanets:tier3_radiation_layer>)
  .duration(600)
  .EUt(512)
  .buildAndRegister();
//Слой радиация 4
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:13035>*8, <gregtech:meta_item_1:12141>*32, <gregtech:meta_item_1:13184>*8)
  .fluidInputs([<liquid:argon> * 1000])
  .outputs(<extraplanets:tier4_radiation_layer>)
  .duration(700)
  .EUt(1024)
  .buildAndRegister();
//Обеззараживающая камера
assembler.recipeBuilder()
  .inputs(<gtadditions:ga_meta_item:32211>*4, <ore:circuitGood>*2, <gregtech:meta_item_1:13035>*8, <galacticraftcore:buggymat:1>, <gregtech:meta_item_1:32691>*2, <gregtech:meta_item_1:32683>*2, <gregtech:meta_item_1:32672>*4, <gregtech:meta_item_1:32650>*2, <gtadditions:ga_meta_item:32304>)
  .fluidInputs([<liquid:soldering_alloy> * 14652])
  .outputs(<extraplanets:basic_decontamination_unit>)
  .duration(15000)
  .EUt(488)
  .buildAndRegister();
//Скафандры
//Скаф 1лвл тапки
assembler.recipeBuilder()
  .inputs(<extraplanets:tier1_un_prepared_space_suit_boots>, <extraplanets:tier1_pressure_layer>*6, <extraplanets:tier1_radiation_layer>*3, <extraplanets:tier1_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier1_space_suit_boots:100>)
  .duration(500)
  .EUt(128)
  .buildAndRegister();
//Скаф 1лвл тапки+гравик
assembler.recipeBuilder()
  .inputs(<extraplanets:tier1_space_suit_boots:100>, <extraplanets:gravity_controller>*4)
  .outputs(<extraplanets:tier1_space_suit_gravity_boots:100>)
  .duration(150)
  .EUt(120)
  .buildAndRegister();
//Скаф 1лвл поножи
assembler.recipeBuilder()
  .inputs(<extraplanets:tier1_un_prepared_space_suit_legings>, <extraplanets:tier1_pressure_layer>*6, <extraplanets:tier1_radiation_layer>*3, <extraplanets:tier1_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier1_space_suit_legings:100>)
  .duration(500)
  .EUt(128)
  .buildAndRegister();
//Скаф 1лвл грудак
assembler.recipeBuilder()
  .inputs(<extraplanets:tier1_un_prepared_space_suit_chest>, <extraplanets:tier1_pressure_layer>*6, <extraplanets:tier1_radiation_layer>*3, <extraplanets:tier1_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier1_space_suit_chest:100>)
  .duration(500)
  .EUt(128)
  .buildAndRegister();
//Скаф 1лвл грудак+ранец
assembler.recipeBuilder()
  .inputs(<extraplanets:tier1_space_suit_chest:100>, <galacticraftplanets:item_basic_asteroids:1>*2, <gregtech:meta_item_1:32539>*2)
  .outputs(<extraplanets:tier1_space_suit_jetpack_chest:100>)
  .duration(150)
  .EUt(120)
  .buildAndRegister();
//Скаф 1лвл шапка
assembler.recipeBuilder()
  .inputs(<extraplanets:tier1_un_prepared_space_suit_helmet>, <extraplanets:tier1_pressure_layer>*6, <extraplanets:tier1_radiation_layer>*3, <extraplanets:tier1_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier1_space_suit_helmet:100>)
  .duration(500)
  .EUt(128)
  .buildAndRegister();
//Скаф 2лвл тапки
assembler.recipeBuilder()
  .inputs(<extraplanets:tier2_un_prepared_space_suit_boots>, <extraplanets:tier2_pressure_layer>*6, <extraplanets:tier2_radiation_layer>*3, <extraplanets:tier2_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier2_space_suit_boots:100>)
  .duration(550)
  .EUt(156)
  .buildAndRegister();
//Скаф 2лвл тапки+гравик
assembler.recipeBuilder()
  .inputs(<extraplanets:tier2_space_suit_boots:100>, <extraplanets:gravity_controller>*4)
  .outputs(<extraplanets:tier2_space_suit_gravity_boots:100>)
  .duration(150)
  .EUt(120)
  .buildAndRegister();
//Скаф 2лвл поножи
assembler.recipeBuilder()
  .inputs(<extraplanets:tier2_un_prepared_space_suit_legings>, <extraplanets:tier2_pressure_layer>*6, <extraplanets:tier2_radiation_layer>*3, <extraplanets:tier2_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier2_space_suit_legings:100>)
  .duration(550)
  .EUt(156)
  .buildAndRegister();
//Скаф 2лвл грудак
assembler.recipeBuilder()
  .inputs(<extraplanets:tier2_un_prepared_space_suit_chest>, <extraplanets:tier2_pressure_layer>*6, <extraplanets:tier2_radiation_layer>*3, <extraplanets:tier2_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier2_space_suit_chest:100>)
  .duration(550)
  .EUt(156)
  .buildAndRegister();
//Скаф 2лвл грудак+ранец
assembler.recipeBuilder()
  .inputs(<extraplanets:tier2_space_suit_chest:100>, <extraplanets:tier4_items>*2, <gregtech:meta_item_1:32539>*2)
  .outputs(<extraplanets:tier2_space_suit_jetpack_chest:100>)
  .duration(150)
  .EUt(120)
  .buildAndRegister();
//Скаф 2лвл шапка
assembler.recipeBuilder()
  .inputs(<extraplanets:tier2_un_prepared_space_suit_helmet>, <extraplanets:tier2_pressure_layer>*6, <extraplanets:tier2_radiation_layer>*3, <extraplanets:tier2_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier2_space_suit_helmet:100>)
  .duration(550)
  .EUt(156)
  .buildAndRegister();
//Скаф 3лвл тапки
assembler.recipeBuilder()
  .inputs(<extraplanets:tier3_un_prepared_space_suit_boots>, <extraplanets:tier3_pressure_layer>*6, <extraplanets:tier3_radiation_layer>*3, <extraplanets:tier3_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier3_space_suit_boots:100>)
  .duration(600)
  .EUt(256)
  .buildAndRegister();
//Скаф 3лвл тапки+гравик
assembler.recipeBuilder()
  .inputs(<extraplanets:tier3_space_suit_boots:100>, <extraplanets:gravity_controller>*4)
  .outputs(<extraplanets:tier3_space_suit_gravity_boots:100>)
  .duration(150)
  .EUt(250)
  .buildAndRegister();
//Скаф 3лвл поножи
assembler.recipeBuilder()
  .inputs(<extraplanets:tier3_un_prepared_space_suit_legings>, <extraplanets:tier3_pressure_layer>*6, <extraplanets:tier3_radiation_layer>*3, <extraplanets:tier3_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier3_space_suit_legings:100>)
  .duration(600)
  .EUt(256)
  .buildAndRegister();
//Скаф 3лвл грудак
assembler.recipeBuilder()
  .inputs(<extraplanets:tier3_un_prepared_space_suit_chest>, <extraplanets:tier3_pressure_layer>*6, <extraplanets:tier3_radiation_layer>*3, <extraplanets:tier3_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier3_space_suit_chest:100>)
  .duration(600)
  .EUt(256)
  .buildAndRegister();
//Скаф 3лвл грудак+ранец
assembler.recipeBuilder()
  .inputs(<extraplanets:tier3_space_suit_chest:100>, <extraplanets:tier6_items>*2, <gregtech:meta_item_1:32539>*2)
  .outputs(<extraplanets:tier3_space_suit_jetpack_chest:100>)
  .duration(150)
  .EUt(250)
  .buildAndRegister();
//Скаф 3лвл шапка
assembler.recipeBuilder()
  .inputs(<extraplanets:tier3_un_prepared_space_suit_helmet>, <extraplanets:tier3_pressure_layer>*6, <extraplanets:tier3_radiation_layer>*3, <extraplanets:tier3_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier3_space_suit_helmet:100>)
  .duration(600)
  .EUt(256)
  .buildAndRegister();
//Скаф 4лвл тапки
assembler.recipeBuilder()
  .inputs(<extraplanets:tier4_un_prepared_space_suit_boots>, <extraplanets:tier4_pressure_layer>*6, <extraplanets:tier4_radiation_layer>*3, <extraplanets:tier4_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier4_space_suit_boots:100>)
  .duration(650)
  .EUt(504)
  .buildAndRegister();
//Скаф 4лвл тапки+гравик
assembler.recipeBuilder()
  .inputs(<extraplanets:tier4_space_suit_boots:100>, <extraplanets:gravity_controller>*4)
  .outputs(<extraplanets:tier4_space_suit_gravity_boots:100>)
  .duration(150)
  .EUt(500)
  .buildAndRegister();
//Скаф 4лвл поножи
assembler.recipeBuilder()
  .inputs(<extraplanets:tier4_un_prepared_space_suit_legings>, <extraplanets:tier4_pressure_layer>*6, <extraplanets:tier4_radiation_layer>*3, <extraplanets:tier4_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier4_space_suit_legings:100>)
  .duration(650)
  .EUt(504)
  .buildAndRegister();
//Скаф 4лвл грудак
assembler.recipeBuilder()
  .inputs(<extraplanets:tier4_un_prepared_space_suit_chest>, <extraplanets:tier4_pressure_layer>*6, <extraplanets:tier4_radiation_layer>*3, <extraplanets:tier4_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier4_space_suit_chest:100>)
  .duration(650)
  .EUt(504)
  .buildAndRegister();
//Скаф 4лвл грудак+ранец
assembler.recipeBuilder()
  .inputs(<extraplanets:tier4_space_suit_chest:100>, <extraplanets:tier8_items>*2, <gregtech:meta_item_1:32539>*2)
  .outputs(<extraplanets:tier4_space_suit_jetpack_chest:100>)
  .duration(150)
  .EUt(500)
  .buildAndRegister();
//Скаф 4лвл шапка
assembler.recipeBuilder()
  .inputs(<extraplanets:tier4_un_prepared_space_suit_helmet>, <extraplanets:tier4_pressure_layer>*6, <extraplanets:tier4_radiation_layer>*3, <extraplanets:tier4_armor_layer>*3, <ore:leather>*5)
  .outputs(<extraplanets:tier4_space_suit_helmet:100>)
  .duration(650)
  .EUt(504)
  .buildAndRegister();