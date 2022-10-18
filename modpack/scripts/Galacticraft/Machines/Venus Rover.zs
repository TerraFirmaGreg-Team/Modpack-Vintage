import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;



// --- Массивы

val Rover as IItemStack[] = [
   <extraplanets:venus_rover>,
   <extraplanets:venus_rover:1>,
   <extraplanets:venus_rover:2>,
   <extraplanets:venus_rover:3>
];
val Crate as IItemStack[] = [
   <metaitem:plateSteel>,
   <metaitem:crate.aluminium>,
   <metaitem:crate.stainless_steel>,
   <metaitem:crate.titanium>
];


// Вес и размер
ItemRegistry.registerItemSize(<extraplanets:venus_rover:*>, "HUGE", "VERY_HEAVY");


// --- Добавление рецептов

for i, Rover in Rover {
// Ровер
assembly_line.recipeBuilder()
   .inputs(<extraplanets:electric_parts:3> * 4)
   .inputs(<galacticraftcore:buggymat:1>)
   .inputs(<galacticraftplanets:item_basic_asteroids:5> * 14)
   .inputs(<extraplanets:electric_parts:1> * 2)
   .inputs(<metaitem:screwStainlessSteel> * 8)
   .inputs(<metaitem:stickStainlessSteel> * 4)
   .inputs(<metaitem:electric.motor.luv> * 4)
   .inputs(<metaitem:venus.rover.computer>)
   .inputs(<extraplanets:schematic_venus_rover>)
   .inputs([Crate[i] * 2])
   .fluidInputs([<liquid:tungsten_steel> * 4608])
   .fluidInputs([<liquid:titanium> * 4608])
   .outputs([Rover])
   .duration(1200).EUt(4096).buildAndRegister();
}

// Ракетный компьютер
assembler.recipeBuilder()
   .circuit(3)
   .inputs([
      <opencomputers:case1>,
      <metaitem:wafer.glowstone>,
      <ore:circuitLuv>,
      <metaitem:emitter.iv>,
      <metaitem:sensor.iv>,
      <galacticraftplanets:item_basic_asteroids:5>])
   .fluidInputs([<liquid:soldering_alloy> * 1152])
   .outputs(<metaitem:venus.rover.computer>)
   .property("cleanroom", "cleanroom")
   .duration(600).EUt(4096).buildAndRegister();

// Колесо
assembler.recipeBuilder()
   .circuit(1)
   .inputs(
      <metaitem:plateDenseTungstenSteel> * 2, 
      <metaitem:stickPolytetrafluoroethylene> * 8)
   .fluidInputs(<liquid:styrene_butadiene_rubber> * 544)
   .outputs(<extraplanets:electric_parts:3>)
   .duration(200).EUt(1340).buildAndRegister();

// Батарея
assembler.recipeBuilder()
   .circuit(2)
   .inputs(
      <ore:batteryLuv> * 3, 
      <galacticraftplanets:item_basic_mars:3> * 3)
   .outputs(<extraplanets:electric_parts:1>)
   .duration(200).EUt(12680).buildAndRegister();

// Схема
laser_engraver.recipeBuilder()
	.inputs([<metaitem:schematic.blank>])
   .notConsumable([<metaitem:glass_lens.purple>])
	.outputs(<extraplanets:schematic_venus_rover>)
   .property("cleanroom", "cleanroom")
	.duration(9000).EUt(4096).buildAndRegister();