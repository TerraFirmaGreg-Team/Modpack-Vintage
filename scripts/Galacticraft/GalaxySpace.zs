
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
   <galaxyspace:barnarda_c_ores:11>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
val RemoveItemRecipe as IItemStack[] = [
   <galaxyspace:oxygen_tank_4:3500>,
   <galaxyspace:oxygen_tank_5:4000>,
   <galaxyspace:oxygen_tank_6:4500>
] as IItemStack[];
for item in RemoveItemRecipe{
    recipes.remove(item);
}

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
