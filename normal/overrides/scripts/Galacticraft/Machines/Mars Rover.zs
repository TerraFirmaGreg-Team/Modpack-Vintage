import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;


// --- Массивы

val Rover as IItemStack[] = [
   <extraplanets:mars_rover>,
   <extraplanets:mars_rover:1>,
   <extraplanets:mars_rover:2>,
   <extraplanets:mars_rover:3>
];
val Crate as IItemStack[] = [
   <metaitem:plateSteel>,
   <metaitem:crate.aluminium>,
   <metaitem:crate.stainless_steel>,
   <metaitem:crate.titanium>
];


// Вес и размер
ItemRegistry.registerItemSize(<extraplanets:mars_rover:*>, "HUGE", "VERY_HEAVY");


// --- Добавление рецептов

for i, Rover in Rover {
// Ровер
assembly_line.recipeBuilder()
   .inputs(<extraplanets:electric_parts:2> * 6)
   .inputs(<galacticraftcore:buggymat:1>)
   .inputs(<galacticraftplanets:item_basic_mars:3> * 13)
   .inputs(<extraplanets:electric_parts> * 5)
   .inputs(<galacticraftcore:basic_item:19>)
   .inputs(<metaitem:screwStainlessSteel> * 8)
   .inputs(<metaitem:stickStainlessSteel> * 4)
   .inputs(<metaitem:electric.motor.iv> * 4)
   .inputs(<metaitem:mars.rover.computer>)
   .inputs(<extraplanets:schematic_mars_rover>)
   .inputs([Crate[i] * 2])
   .fluidInputs([<liquid:tungsten_steel> * 4608])
   .fluidInputs([<liquid:titanium> * 4608])
   .outputs([Rover])
   .duration(1200).EUt(1024).buildAndRegister();
}
// Ракетный компьютер
assembler.recipeBuilder()
   .circuit(2)
   .inputs([
      <opencomputers:case1>,
      <metaitem:wafer.glowstone>,
      <ore:circuitIv>,
      <metaitem:emitter.iv>,
      <metaitem:sensor.iv>,
      <galacticraftplanets:item_basic_mars:3>])
   .fluidInputs([<liquid:soldering_alloy> * 864])
   .outputs(<metaitem:mars.rover.computer>)
   .property("cleanroom", "cleanroom")
   .duration(600).EUt(1024).buildAndRegister();

// Колесо
assembler.recipeBuilder()
   .circuit(1)
   .inputs(
      <metaitem:plateDenseTitanium> * 2, 
      <metaitem:stickPlatinum> * 8)
   .fluidInputs(<liquid:styrene_butadiene_rubber> * 544)
   .outputs(<extraplanets:electric_parts:2>)
   .duration(200).EUt(1340).buildAndRegister();

// Батарея
assembler.recipeBuilder()
   .circuit(1)
   .inputs(
      <ore:batteryIv> * 3, 
      <galacticraftplanets:item_basic_mars:3> * 2)
   .outputs(<extraplanets:electric_parts>)
   .duration(200).EUt(8180).buildAndRegister();

// Схема
laser_engraver.recipeBuilder()
	.inputs([<metaitem:schematic.blank>])
   .notConsumable([<metaitem:glass_lens.red>])
	.outputs(<extraplanets:schematic_mars_rover>)
   .property("cleanroom", "cleanroom")
	.duration(9000).EUt(1024).buildAndRegister();