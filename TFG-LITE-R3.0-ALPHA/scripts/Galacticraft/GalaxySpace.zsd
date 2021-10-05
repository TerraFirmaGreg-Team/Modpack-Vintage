
import crafttweaker.item.IItemStack;

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
   <galaxyspace:mars_rover>,
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
   <galaxyspace:rocket_assembler>,
   <galaxyspace:fuel_generator>,
   <galaxyspace:assembly_machine>,
   <galaxyspace:adv_circuit_fabricator>,
   <galaxyspace:oxygen_storage_module_1>,
   <galaxyspace:gs_basic:4>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
val RemoveItemRecipe as IItemStack[] = [
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
   <galaxyspace:gravitation_module>
] as IItemStack[];
for item in RemoveItemRecipe{
    recipes.remove(item);
}

//Теплоизолирующая ткань 3
assembler.recipeBuilder()
   .inputs(<ore:dustDolomite>*4, <galacticraftplanets:basic_item_venus:3> * 2, <galacticraftcore:basic_item:20>)
   .fluidInputs([<liquid:nitrogen>*400])
   .outputs(<galaxyspace:gs_basic:21> * 2)
   .duration(1000).EUt(512).buildAndRegister();
//Теплоизолирующая ткань 4
assembler.recipeBuilder()
   .inputs(<ore:plateHssg>*4, <galaxyspace:gs_basic:21> * 2, <galacticraftcore:basic_item:20>)
   .fluidInputs([<liquid:supercooled_cryotheum>*288])
   .outputs(<galaxyspace:gs_basic:22> * 2)
   .duration(1000).EUt(512).buildAndRegister();

//Воздушные баки
//Супер
assembler.recipeBuilder()
   .inputs(<gregtech:machine:815>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*8, <gregtech:meta_item_1:32614>*2)
   .outputs(<galaxyspace:oxygen_tank_4:3500>)
   .duration(1000).EUt(1024).buildAndRegister();
//Элитный
assembler.recipeBuilder()
   .inputs(<gregtech:machine:816>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*10, <gregtech:meta_item_1:32615>*4)
   .outputs(<galaxyspace:oxygen_tank_5:4000>)
   .duration(1000).EUt(2048).buildAndRegister();
//Омега
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1020>*2, <enderio:item_liquid_conduit:1>*4, <ore:plateLead>*12, <gregtech:meta_item_1:32616>*4)
   .outputs(<galaxyspace:oxygen_tank_6:4500>)
   .duration(1000).EUt(4096).buildAndRegister();
//Реген
assembler.recipeBuilder()
   .inputs(<gregtech:machine:1021>*2, <enderio:item_liquid_conduit:1>*16, <ore:plateLead>*32, <gregtech:meta_item_1:32617>*6)
   .outputs(<galaxyspace:oxygen_tank_epp_1:2500> * 2)
   .fluidInputs([<liquid:sterilized_growth_medium>*144])
   .duration(1000).EUt(4096).buildAndRegister();

//GALAXY-SPACE
/*
#########ADD##########
mods.galaxyspace.addAssemblyRecipe(output, inputs...);
mods.galaxyspace.addFuelGeneratorRecipe(luqidstack, burn_time, mod_energy);
mods.galaxyspace.addHydroponicFarmRecipe(seed, product, (Nullable) secondproduct, (0-100) secondchance, stages, block, (boolean) product_rand, (boolean) secproduct_rand);
mods.galaxyspace.addLiquidExtractorRecipe(block, liquid);
mods.galaxyspace.addRecyclerRecipe(input, output, (Nullable) liquid, (0-100) chance);
mods.galaxyspace.addRocketAssemblyRecipe(output, inputs...);
#########REMOVE########
mods.galaxyspace.removeAssemblyRecipe(output);
mods.galaxyspace.removeFuelGeneratorRecipe(liquid);
mods.galaxyspace.removeHydroponicFarmRecipe(seed);
mods.galaxyspace.removeRecyclerRecipe(result);
mods.galaxyspace.removeRocketAssemblyRecipe(result);
*/

//Скафандры
//Скаф 1лвл тапки
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:32538>, <galaxyspace:compressed_plates:4>*4, <ore:plateNickel>*2, <ore:circuitExtreme>*3, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_feet:200>.withTag({modification_count: 2, boots_button: 0 as byte}))
  .duration(500)
  .EUt(128)
  .buildAndRegister();
//Скаф 1лвл поножи
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:32538>, <galaxyspace:compressed_plates:4>*7, <ore:plateNickel>*2, <ore:circuitExtreme>, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_legs:200>.withTag({legs_button: 0 as byte, modification_count: 2}))
  .duration(500)
  .EUt(128)
  .buildAndRegister();
//Скаф 1лвл грудак
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:32538>, <galaxyspace:compressed_plates:4>*8, <ore:plateNickel>*2, <ore:circuitExtreme>, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_chest:200>.withTag({modification_count: 2, chest_button: 0 as byte}))
  .duration(500)
  .EUt(128)
  .buildAndRegister();
//Скаф 1лвл шапка
assembler.recipeBuilder()
  .inputs(<gregtech:meta_item_1:32538>, <galaxyspace:compressed_plates:4>*5, <ore:plateNickel>*2, <ore:circuitExtreme>, <ore:leather>*5)
  .outputs(<galaxyspace:space_suit_head:200>.withTag({modification_count: 2, helmet_button: 0 as byte}))
  .duration(500)
  .EUt(128)
  .buildAndRegister();

//SSHD-Alloy
icompressor.recipeBuilder()
	.inputs(<ore:plateBronze>*2, <ore:plateSteel>*3)
	.property("explosives", 4)
	.outputs(<galaxyspace:compressed_plates:4>*2)
	.duration(150).EUt(780).buildAndRegister();

//Взлётка 2 лвл
recipes.addShaped(<galaxyspace:advanced_landing_pad> * 25,
[[<ore:plateDenseTitanium>, <ore:plateDenseTitanium>, <ore:plateDenseTitanium>],
 [<ore:blockTitanium>, <ore:blockTitanium>, <ore:blockTitanium>]]);

//Гибридная солнечная панель
recipes.addShaped(<galaxyspace:modern_solarpanel>,
[[<galacticraftcore:solar:4>, <galacticraftcore:solar:4>, <galacticraftcore:solar:4>],
 [<ore:plateTitanium>, <ore:stickTitanium>, <ore:plateTitanium>],
 [<gregtech:meta_item_1:32602>, <gregtech:machine:504>, <gregtech:cable:2026>]]);

//Модификационный стол
recipes.addShaped(<galaxyspace:modification_table>,
[[<gregtech:meta_item_1:32539>, <gregtech:meta_item_1:32652>, <gregtech:meta_item_1:32499>],
 [<gregtech:meta_item_1:32652>, <gregtech:machine:504>, <gregtech:meta_item_1:32652>],
 [<gregtech:machine:2210>, <gregtech:meta_item_1:32652>, <gregtech:meta_item_1:32539>]]);

//Контроллер мини-панелей
recipes.addShaped(<galaxyspace:panel_controller>,
[[<ore:plateLead>, <gtadditions:ga_meta_item:32579>, <ore:plateLead>],
 [<ore:cableGtDoubleHvSuperconductor>, <gregtech:machine:503>, <ore:cableGtDoubleHvSuperconductor>],
 [<ore:plateLead>, <gtadditions:ga_meta_item2:1>, <ore:plateLead>]]);

//Солнечная мини-панель
assembler.recipeBuilder()
  .inputs(<gregtech:machine:503>, <gregtech:meta_item_1:32752>*8, <ore:cableGtSinglePlatinum>*8, <ore:plateLead>*2, <ore:circuitAdvanced>)
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galaxyspace:single_solarpanel>*2)
  .duration(500)
  .EUt(128)
  .buildAndRegister();

//Солнечная модернизированная мини-панель
assembler.recipeBuilder()
  .inputs(<gregtech:machine:504>, <gregtech:meta_item_1:32752>*24, <ore:cableGtSinglePlatinum>*24, <ore:plateLead>*8, <ore:circuitAdvanced>)
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galaxyspace:modern_single_solarpanel>*2)
  .duration(500)
  .EUt(256)
  .buildAndRegister();

//Зарядная панель
assembler.recipeBuilder()
  .inputs(<ore:plateAluminium>*3, <gregtech:meta_item_1:32539>, <ore:circuitAdvanced>, <gregtech:meta_item_1:32670>)
  .fluidInputs([<liquid:soldering_alloy> * 1000])
  .outputs(<galaxyspace:energy_pad>)
  .duration(500)
  .EUt(256)
  .buildAndRegister();

//Зарядная панель
assembler.recipeBuilder()
  .inputs(<ore:plateAluminium>*3, <gregtech:meta_item_1:32539>, <ore:circuitElite>, <gregtech:meta_item_1:32672>*2)
  .fluidInputs([<liquid:soldering_alloy> * 144])
  .outputs(<galaxyspace:gravitation_module>)
  .duration(500)
  .EUt(256)
  .buildAndRegister();

//Генератор поля
recipes.addShaped(<galaxyspace:radiation_stabiliser>,
[[<gregtech:wire_coil:1>, <gregtech:wire_coil:1>, <gregtech:wire_coil:1>],
 [<gtadditions:ga_field_gen_casing:1>, <gregtech:machine_casing:3>, <gtadditions:ga_field_gen_casing:1>],
 [<ore:cableGtDoublePlatinum>, <gtadditions:ga_meta_item2:1>, <ore:cableGtDoublePlatinum>]]);

//Солнечный парус
recipes.addShaped(<galaxyspace:solarwind_panel>,
[[<galaxyspace:gs_basic:2>, <galaxyspace:gs_basic:2>, <galaxyspace:gs_basic:2>],
 [<ore:stickLongAluminium>, <gregtech:machine:503>, <ore:stickLongAluminium>],
 [<ore:cableGtDoublePlatinum>, <ore:circuitExtreme>, <ore:cableGtDoublePlatinum>]]);

//Планитарный щит
recipes.addShaped(<galaxyspace:planet_shield>,
[[<gregtech:meta_item_1:32672>, <gregtech:meta_item_1:32693>, <gregtech:meta_item_1:32672>],
 [<gregtech:meta_item_1:32672>, <gregtech:machine:504>, <gregtech:meta_item_1:32672>],
 [<ore:cableGtDoubleIvSuperconductor>, <ore:cableGtDoubleIvSuperconductor>, <ore:cableGtDoubleIvSuperconductor>]]);

//Основание гидроподной фермы
assembler.recipeBuilder()
  .inputs(<gregtech:machine:503>, <gregtech:meta_item_1:32691>*2, <gregtech:meta_item_1:32651>*2, <ore:cableGtQuadrupleAnnealedCopper>*4)
  .fluidInputs([<liquid:soldering_alloy> * 144])
  .outputs(<galaxyspace:hydroponic_base>)
  .duration(260)
  .EUt(512)
  .buildAndRegister();

//Стеклянное основание гидроподной фермы
assembler.recipeBuilder()
  .inputs(<gtadditions:ga_transparent_casing:1>*6, <gregtech:machine:503>, <gregtech:machine:2210>, <gregtech:machine:814>)
  .fluidInputs([<liquid:soldering_alloy> * 144])
  .outputs(<galaxyspace:hydroponic_farm>)
  .duration(260)
  .EUt(512)
  .buildAndRegister();
