import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;


// --- Добавление рецептов

<galacticraftcore:oil_canister_partial:1001>.maxStackSize = 16;

// Еда из GC
ItemRegistry.registerFood(<galacticraftcore:food>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:1>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:2>, 4, 0.6, 0.7, 0.5, 0, 0, 1.0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:3>, 4, 0.6, 0.7, 0.5, 0, 1.0, 0, 0, 0);
ItemRegistry.registerFood(<galacticraftcore:food:9>, 4, 0.6, 0.9, 0.5, 0, 0, 0, 1.0, 0);


// Взлетная площадка 
recipes.addShaped("tfg/gc/landing_pad/rocket", <galacticraftcore:landing_pad> * 9, [
   [null, null, null],
   [<metaitem:plateDenseIron>, <metaitem:plateDenseIron>, <metaitem:plateDenseIron>],
   [<ore:blockIronAny>, <ore:blockIronAny>, <ore:blockIronAny>]]);

// Площадка для багги
recipes.addShaped("tfg/gc/landing_pad/buggy", <galacticraftcore:landing_pad:1> * 9, [
   [null, null, null],
   [<metaitem:plateDenseBlackSteel>, <metaitem:plateDenseBlackSteel>, <metaitem:plateDenseBlackSteel>],
   [<metaitem:blockSteel>, <metaitem:blockSteel>, <metaitem:blockSteel>]]);



// Декоративный оловянный блок
recipes.addShaped("tfg/gc/decor_block_tin_1", <galacticraftcore:basic_block_core:3>, [
   [<ore:stone>, <ore:stone>, null],
   [<ore:stone>, <ore:stone>, <metaitem:plateDenseTin>],
   [null, null, null]]);
recipes.addShaped("tfg/gc/decor_block_tin_2", <galacticraftcore:basic_block_core:4>, [
   [<ore:stone>, <ore:stone>, null],
   [<ore:stone>, <ore:stone>, null],
   [null, <metaitem:plateDenseTin>, null]]);

// Каркас воздушного шлюза
recipes.addShaped("tfg/gc/airlock_frame", <galacticraftcore:air_lock_frame> * 2, [
   [<metaitem:plateDenseAluminium>, <metaitem:plateDenseAluminium>, <metaitem:plateDenseAluminium>],
   [<metaitem:plateDenseSteel>, <galacticraftcore:oxygen_concentrator>, <metaitem:plateDenseSteel>],
   [<metaitem:plateDenseAluminium>, <metaitem:plateDenseAluminium>, <metaitem:plateDenseAluminium>]]);

// Контроллер воздушного шлюза
recipes.addShaped("tfg/gc/machine/airlock_frame_controller", <galacticraftcore:air_lock_frame:1>, [
   [<metaitem:plateDenseStainlessSteel>, <metaitem:cableGtDoubleGold>, <metaitem:plateDenseStainlessSteel>],
   [<ore:circuitHv>, <metaitem:hull.ev>, <ore:circuitHv>],
   [<metaitem:plateDenseStainlessSteel>, <metaitem:cableGtDoubleGold>, <metaitem:plateDenseStainlessSteel>]]);

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

// Магнитный верстак
recipes.addShaped("tfg/gc/magnetic_table", <galacticraftcore:magnetic_table>, [
   [<ore:workbench>, <metaitem:plateDenseIron>, null],
   [null, null, null],
   [null, null, null]]);

// Герметичная жидкостная труба
recipes.addShaped("tfg/gc/sealable_something_1", <galacticraftcore:enclosed:1>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <metaitem:pipeSmallFluidStainlessSteel>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Герметичный МЕ кабель
recipes.addShaped("tfg/gc/sealable_something_2", <galacticraftcore:enclosed:13>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <ore:ae2.cable.glass>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Герметичный кабель
recipes.addShaped("tfg/gc/sealable_something_3", <galacticraftcore:enclosed:14>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <metaitem:cableGtDoubleAluminium>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);

// Герметичный толстый кабель
recipes.addShaped("tfg/gc/sealable_something_4", <galacticraftcore:enclosed:15>, [
   [null, null, null],
   [<galacticraftcore:basic_block_core:4>, <metaitem:cableGtOctalAluminium>, <galacticraftcore:basic_block_core:4>],
   [null, null, null]]);


// Антена связи
recipes.addShaped("tfg/gc/machine/dishbase", <galacticraftcore:dishbase>, [
   [<metaitem:plateDenseStainlessSteel>, <galacticraftcore:basic_item:19>, <metaitem:plateDenseStainlessSteel>],
   [null, <metaitem:plateDenseStainlessSteel>, null],
   [<ore:circuitIv>, <metaitem:hull.ev>, <ore:circuitIv>]]);

// Световые панели
assembler.recipeBuilder()
   .circuit(1)
   .inputs([
      <metaitem:plateDenseBlackSteel>,
      <galacticraftcore:glowstone_torch>])
   .fluidInputs([<liquid:glass> * 432])
   .outputs([<galacticraftcore:panel_lighting>])
   .duration(20).EUt(58).buildAndRegister();
assembler.recipeBuilder()
   .circuit(2)
   .inputs([
      <metaitem:plateDenseBlackSteel>,
      <galacticraftcore:glowstone_torch>])
   .fluidInputs([<liquid:glass> * 432])
   .outputs([<galacticraftcore:panel_lighting:1>])
   .duration(20).EUt(58).buildAndRegister();
assembler.recipeBuilder()
   .circuit(3)
   .inputs([
      <metaitem:plateDenseBlackSteel>,
      <galacticraftcore:glowstone_torch>])
   .fluidInputs([<liquid:glass> * 432])
   .outputs([<galacticraftcore:panel_lighting:2>])
   .duration(20).EUt(58).buildAndRegister();
assembler.recipeBuilder()
   .circuit(4)
   .inputs([
      <metaitem:plateDenseBlackSteel>,
      <galacticraftcore:glowstone_torch>])
   .fluidInputs([<liquid:glass> * 432])
   .outputs([<galacticraftcore:panel_lighting:3>])
   .duration(20).EUt(58).buildAndRegister();
assembler.recipeBuilder()
   .circuit(5)
   .inputs([
      <metaitem:plateDenseBlackSteel>,
      <galacticraftcore:glowstone_torch>])
   .fluidInputs([<liquid:glass> * 432])
   .outputs([<galacticraftcore:panel_lighting:4>])
   .duration(20).EUt(58).buildAndRegister();

// Светофакел
recipes.addShapeless("tfg/gc/glowstone_torch", <galacticraftcore:glowstone_torch> * 2, [<minecraft:torch>, <minecraft:glowstone_dust>]);

// Подруливающее устройство
recipes.addShaped("tfg/gc/machine/spin_thruster", <galacticraftcore:spin_thruster>, [
   [<galacticraftcore:oil_canister_partial:1>, <ore:circuitIv>, <galacticraftcore:engine>],
   [<metaitem:plateDenseMeteoricIron>, <gregtech:metal_casing:7>, <metaitem:plateDenseMeteoricIron>],
   [<metaitem:wireGtDoubleElectrum>, <metaitem:wireGtDoubleElectrum>, <metaitem:wireGtDoubleElectrum>]]);

// Экран просмотра
recipes.addShaped("tfg/gc/machine/view_screen", <galacticraftcore:view_screen>, [
   [<metaitem:plateDenseBlackSteel>, <ore:circuitLv>, <metaitem:plateDenseBlackSteel>],
   [<ore:circuitLv>, <ore:blockGlass>, <ore:circuitLv>],
   [<metaitem:plateDenseBlackSteel>, <ore:circuitLv>, <metaitem:plateDenseBlackSteel>]]);

// Телеметрический блок
recipes.addShaped("tfg/gc/machine/telemetry", <galacticraftcore:telemetry>, [
   [<metaitem:sensor.hv>, <metaitem:cableGtDoubleGold>, <ore:circuitHv>],
   [<appliedenergistics2:wireless_access_point>, <metaitem:hull.ev>, <appliedenergistics2:wireless_access_point>],
   [<metaitem:plateDenseStainlessSteel>, <galacticraftcore:basic_item:19>, <metaitem:plateDenseStainlessSteel>]]);

// Дуговая лампа
recipes.addShaped("tfg/gc/arclamp", <galacticraftcore:arclamp>, [
   [<metaitem:plateDesh>, <minecraft:glowstone_dust>, <metaitem:plateDesh>],
   [<minecraft:glowstone_dust>, <galacticraftplanets:atomic_battery>, <minecraft:glowstone_dust>],
   [<metaitem:plateDesh>, <minecraft:glowstone_dust>, <metaitem:plateDesh>]]);

// Гидравлический подьемник
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <metaitem:plateDenseTungstenSteel> * 16, 
      <metaitem:electric.piston.iv> * 4, 
      <metaitem:plateLead> * 6)
   .fluidInputs([<liquid:glowstone> * 432])
   .outputs(<galacticraftcore:platform>)
   .duration(1000).EUt(1012).buildAndRegister();

// Oxygen Mask
recipes.addShaped("tfg/gc/oxygen_mask", <galacticraftcore:oxygen_mask>, [
   [<minecraft:glass_pane>, <metaitem:lensGlass>, <minecraft:glass_pane>],
   [<minecraft:glass_pane>, <extraplanets:tier1_un_prepared_space_suit_helmet>, <minecraft:glass_pane>],
   [<metaitem:plateDenseSteel>, <metaitem:pipeTinyFluidStainlessSteel>, <metaitem:plateDenseSteel>]]);

// Oxygen Gear
recipes.addShaped("tfg/gc/oxygen_gear", <galacticraftcore:oxygen_gear>, [
   [<metaitem:plateAluminium>, <galacticraftcore:air_vent>, <metaitem:plateAluminium>],
   [<metaitem:large_fluid_cell.stainless_steel>, <galacticraftcore:oxygen_concentrator>, <metaitem:large_fluid_cell.stainless_steel>],
   [<metaitem:pipeTinyFluidStainlessSteel>, <galacticraftcore:air_fan>, <metaitem:pipeTinyFluidStainlessSteel>]]);

// Сенсорные линза
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <metaitem:plateDenseMeteoricIron>, 
      <metaitem:lensNetherStar>)
   .fluidInputs([<liquid:redstone> * 632])
   .outputs(<galacticraftcore:sensor_lens>)
   .duration(1000).EUt(2012).buildAndRegister();

// Сенсорные очки
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <galacticraftcore:sensor_lens> * 2, 
      <metaitem:sensor.iv>,
      <metaitem:prospector.hv> * 2,
      <metaitem:plateMeteoricIron>,
      <metaitem:screwDiamond> * 2)
   .fluidInputs([<liquid:redstone> * 632])
   .outputs(<galacticraftcore:sensor_glasses>)
   .duration(1000).EUt(4012).buildAndRegister();

// Воздушный клапан
recipes.addShaped("tfg/gc/air_vent", <galacticraftcore:air_vent>, [
   [<galacticraftcore:grating>, <metaitem:plateDenseTin>, <galacticraftcore:grating>],
   [<metaitem:plateDenseTin>, <metaitem:plateDenseSteel>, <metaitem:plateDenseTin>],
   [<galacticraftcore:grating>, <metaitem:plateDenseTin>, <galacticraftcore:grating>]]);

// Воздушный ротор
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <metaitem:plateDenseSteel> * 4, 
      <metaitem:ringStainlessSteel>,
      <metaitem:screwStainlessSteel>)
   .fluidInputs([<liquid:styrene_butadiene_rubber> * 632])
   .outputs(<galacticraftcore:air_fan>)
   .duration(100).EUt(400).buildAndRegister();

// Воздушный концентратор
recipes.addShaped("tfg/gc/oxygen_concentrator", <galacticraftcore:oxygen_concentrator>, [
   [<metaitem:plateDenseBlackSteel>, <ore:circuitMv>, <metaitem:plateDenseBlackSteel>],
   [<metaitem:plateDenseTin>, <galacticraftcore:canister>, <metaitem:plateDenseTin>],
   [<metaitem:plateDenseBlackSteel>, <galacticraftcore:air_vent>, <metaitem:plateDenseBlackSteel>]]);

// Шест
recipes.addShaped("tfg/gc/steel_pole", <galacticraftcore:steel_pole> * 2, [
   [null, <metaitem:plateDenseSteel>, null],
   [null, <metaitem:plateDenseSteel>, <ore:gtce.tool.hard.hammers>],
   [null, <metaitem:plateDenseSteel>, null]]);

// Жидкостная капсула
recipes.addShaped("tfg/gc/oil_canister", <galacticraftcore:oil_canister_partial:1001>, [
   [<metaitem:plateDenseAluminium>, <metaitem:plateDenseBlackSteel>, <metaitem:plateDenseAluminium>],
   [<metaitem:plateDenseAluminium>, <ore:blockGlass>, <metaitem:plateDenseAluminium>],
   [<metaitem:plateDenseAluminium>, <galacticraftcore:canister>, <metaitem:plateDenseAluminium>]]);

// Частотный модуль
recipes.addShaped("tfg/gc/freq_module", <galacticraftcore:basic_item:19>, [
   [<metaitem:plateLead>, <metaitem:emitter.hv>, <metaitem:plateLead>],
   [<metaitem:sensor.hv>, <metaitem:cableGtSingleRedAlloy>, <ore:circuitLv>],
   [<ore:componentResistor>, <metaitem:wireless>, <ore:componentResistor>]]);

// Тепловой контроллер
recipes.addShaped("tfg/gc/thermal_controller", <galacticraftcore:basic_item:20>, [
   [<metaitem:cableGtDoubleElectrum>, <galacticraftcore:air_vent>, <metaitem:cableGtDoubleElectrum>],
   [<metaitem:plateDenseBronze>, <metaitem:plateDenseSteel>, <metaitem:plateDenseBronze>],
   [<metaitem:plateDenseTungstenSteel>, <ore:circuitIv>, <metaitem:plateDenseTungstenSteel>]]);

// Еда
// Фруктовая кансерва
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:categoryFruit> * 2)
   .outputs(<galacticraftcore:food>)
   .duration(460).EUt(2).buildAndRegister();

// Морковная кансерва
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/carrot> * 2)
   .outputs(<galacticraftcore:food:1>)
   .duration(460).EUt(2).buildAndRegister();

// Арбузная кансерва
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <firmalife:melon> * 2)
   .outputs(<galacticraftcore:food:2>)
   .duration(460).EUt(2).buildAndRegister();

// Картофельная кансерва
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <tfc:food/potato> * 2)
   .outputs(<galacticraftcore:food:3>)
   .duration(460).EUt(2).buildAndRegister();

// Мясная кансерва
canner.recipeBuilder()
   .inputs(<galacticraftcore:canister>, <ore:categoryMeat> * 2)
   .outputs(<galacticraftcore:food:9>)
   .duration(460).EUt(2).buildAndRegister();

// Креокамера
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <metaitem:plateDenseDesh> * 6, 
      <ore:bed>,
      <galacticraftplanets:item_basic_mars:3>,
      <galacticraftcore:oxygen_concentrator> * 2,
      <metaitem:electric.pump.hv>,
      <metaitem:emitter.hv>,
      <ore:circuitHv> * 2)
   .fluidInputs([<liquid:styrene_butadiene_rubber> * 144])
   .outputs(<galacticraftplanets:mars_machine:4>)
   .duration(100).EUt(480).buildAndRegister();

// Сумка для инвентаря слизи
recipes.addShaped("tfg/gc/slimeling_inventory_bag", <galacticraftplanets:item_basic_mars:4>, [
   [<ore:leather>, <metaitem:plateDiamond>, <ore:leather>],
   [<ore:leather>, <ore:slimeball>, <ore:leather>],
   [null, <metaitem:crate.aluminium>, null]]);

// Лучевое ядро
recipes.addShaped("tfg/gc/solar_core", <galacticraftplanets:item_basic_asteroids:8>, [
   [<metaitem:foilRedAlloy>, <metaitem:platePlatinum>, <metaitem:foilRedAlloy>],
   [<metaitem:platePlatinum>, <galacticraftplanets:basic_item_venus:2>, <metaitem:platePlatinum>],
   [<metaitem:foilRedAlloy>, <metaitem:platePlatinum>, <metaitem:foilRedAlloy>]]);

// Привод ориона
recipes.addShaped("tfg/gc/orion_drive", <galacticraftplanets:orion_drive>, [
   [<metaitem:plateDenseTitanium>, <galacticraftplanets:item_basic_asteroids:8>, <metaitem:plateDenseTitanium>],
   [<ore:circuitLuv>, <opencomputers:storage:4>, <ore:circuitLuv>],
   [<metaitem:plateDenseSteel>, <galacticraftplanets:item_basic_asteroids:8>, <metaitem:plateDenseSteel>]]);

// Модуль солнечной батареи
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <metaitem:cableGtDoubleAluminium> * 2, 
      <galacticraftplanets:basic_item_venus:5> * 3,
      <ore:circuitLuv> * 2)
   .outputs(<galacticraftplanets:solar_array_module>)
   .duration(100).EUt(1480).buildAndRegister();

// Панель солнечной батареи
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <metaitem:cover.solar.panel.luv> * 3, 
      <metaitem:cableGtDoubleAluminium> * 3)
   .fluidInputs([<liquid:glass> * 1000])
   .outputs(<galacticraftplanets:basic_item_venus:5> * 3)
   .duration(100).EUt(1480).buildAndRegister();

// Контролер солнечной батареи
assembler.recipeBuilder()
   .circuit(7)
   .inputs(
      <ore:circuitLuv> * 2,
      <metaitem:plateDenseSteel> * 3, 
      <metaitem:cableGtDoubleAluminium> * 3)
   .outputs(<galacticraftplanets:solar_array_controller>)
   .duration(100).EUt(1480).buildAndRegister();

// Контроллер щита
recipes.addShaped("tfg/gc/shield_controller", <galacticraftplanets:basic_item_venus>, [
   [<ore:paneGlassBlack>, <metaitem:stickNeodymiumMagnetic>, <ore:paneGlassBlack>],
   [<metaitem:wireGtSingleMercuryBariumCalciumCuprate>, <metaitem:field.generator.luv>, <metaitem:wireGtSingleMercuryBariumCalciumCuprate>],
   [<ore:paneGlassBlack>, <metaitem:stickNeodymiumMagnetic>, <ore:paneGlassBlack>]]);

// Пустая схема
recipes.addShaped("tfg/gc/schematic_blank", <metaitem:schematic.blank>, [
   [null, <ore:paper>, null],
   [null, <littletiles:recipeadvanced>, <ore:gtce.tool.hard.hammers>],
   [null, <ore:paper>, null]]);

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

// Пешеходная дорожка
recipes.addShaped("tfg/gc/walkway", <galacticraftplanets:walkway>, [
   [null, null, null],
   [<metaitem:plateDenseTitanium>, <metaitem:plateDenseTitanium>, <metaitem:plateDenseTitanium>],
   [<metaitem:stickTitanium>, <metaitem:plateDenseTitanium>, <metaitem:stickTitanium>]]);

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

// Маяк дефлектор
recipes.addShaped("tfg/gc/beam_reflector", <galacticraftplanets:beam_reflector>, [
   [null, <galacticraftplanets:item_basic_asteroids:8>, null],
   [<ore:circuitMv>, <metaitem:plateDenseTitanium>, <minecraft:lever>],
   [<metaitem:plateDenseTitanium>, <metaitem:plateDenseTitanium>, <metaitem:plateDenseTitanium>]]);

// Маяк ресивер
recipes.addShaped("tfg/gc/beam_reciever", <galacticraftplanets:beam_receiver>, [
   [<metaitem:plateBeryllium>, <metaitem:plateDenseDesh>, <metaitem:plateBeryllium>],
   [<metaitem:plateDenseDesh>, <galacticraftplanets:item_basic_asteroids:8>, <metaitem:plateDenseDesh>],
   [<metaitem:plateBeryllium>, <ore:circuitIv>, <metaitem:plateBeryllium>]]);

// Площадка телепортации
recipes.addShaped("tfg/gc/telepad_short", <galacticraftplanets:telepad_short>, [
   [<metaitem:plateDoubleTrinaquadalloy>, <ore:circuitIv>, <metaitem:plateDoubleTrinaquadalloy>],
   [<metaitem:magic_energy_absorber>, <galacticraftplanets:item_basic_asteroids:8>, <metaitem:magic_energy_absorber>],
   [<metaitem:plateDoubleTrinaquadalloy>, <metaitem:plateDoubleTrinaquadalloy>, <metaitem:plateDoubleTrinaquadalloy>]]);



// Канистра из олова
recipes.addShaped("tfg/gc/canister", <galacticraftcore:canister>, [
   [<metaitem:plateDenseTin>, null, <metaitem:plateDenseTin>],
   [<metaitem:plateDenseTin>, <ore:gtce.tool.hard.hammers>, <metaitem:plateDenseTin>],
   [<metaitem:plateDenseTin>, <metaitem:plateDenseTin>, <metaitem:plateDenseTin>]]);

// Крюк
recipes.addShaped("tfg/gc/grapple", <galacticraftplanets:grapple>, [
   [null, null, <ore:string>],
   [<ore:stickIronAny>, <ore:string>, null],
   [<ore:gearIronAny>, <ore:stickIronAny>, null]]);











// Баллоны
// Легкий
assembler.recipeBuilder()
   .inputs(
      <metaitem:super_tank.lv>, 
      <metaitem:pipeTinyFluidAluminium> * 4 , 
      <metaitem:plateDenseTin> * 2, 
      <metaitem:electric.pump.lv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_light_full:900>)
   .property("cleanroom", "cleanroom")
   .duration(1000).EUt(128).buildAndRegister();
// Средний
assembler.recipeBuilder()
   .inputs(
      <metaitem:super_tank.mv>, 
      <metaitem:pipeTinyFluidAluminium> * 4, 
      <metaitem:plateDenseTin> * 4, 
      <metaitem:electric.pump.mv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_med_full:1800>)
   .property("cleanroom", "cleanroom")
   .duration(1000).EUt(256).buildAndRegister();
// Тяжелый
assembler.recipeBuilder()
   .inputs(
      <metaitem:super_tank.hv>, 
      <metaitem:pipeTinyFluidAluminium> * 4, 
      <metaitem:plateDenseTin> * 6, 
      <metaitem:electric.pump.hv> * 2)
   .circuit(6)
   .outputs(<galacticraftcore:oxygen_tank_heavy_full:2700>)
   .property("cleanroom", "cleanroom")
   .duration(1000).EUt(512).buildAndRegister();

// Парашюты
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
   [[<metaitem:plateDenseBlackSteel>, <metaitem:crate.stainless_steel>, <metaitem:plateDenseBlackSteel>],
   [<galacticraftcore:steel_pole>, <metaitem:lander.tier.2>, <galacticraftcore:steel_pole>],
   [<metaitem:plateDenseBlackSteel>, <metaitem:plateBlackSteel>, <metaitem:plateDenseBlackSteel>]]);
