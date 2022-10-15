import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;


// --- Массивы

val Buggy as IItemStack[] = [
   <galacticraftcore:buggy>,
   <galacticraftcore:buggy:1>,
   <galacticraftcore:buggy:2>,
   <galacticraftcore:buggy:3>
];
val Crate as IItemStack[] = [
   <metaitem:plateSteel>,
   <metaitem:crate.aluminium>,
   <metaitem:crate.stainless_steel>,
   <metaitem:crate.titanium>
];


// Вес и размер
ItemRegistry.registerItemSize(<galacticraftcore:buggy:*>, "HUGE", "VERY_HEAVY");


// --- Добавление рецептов

for i, Buggy in Buggy {
// Багги
assembly_line.recipeBuilder()
   .inputs(<galacticraftcore:buggymat> * 4)
   .inputs(<galacticraftcore:buggymat:1>)
   .inputs(<galacticraftcore:heavy_plating> * 10)
   .inputs(<metaitem:plateDenseMeteoricIron> * 5)
   .inputs(<galacticraftcore:basic_item:19>)
   .inputs(<metaitem:screwStainlessSteel> * 8)
   .inputs(<metaitem:stickStainlessSteel> * 4)
   .inputs(<metaitem:electric.motor.ev> * 4)
   .inputs(<metaitem:moon.buggy.computer>)
   .inputs(<galacticraftcore:schematic>)
   .inputs([Crate[i] * 2])
   .fluidInputs([<liquid:tungsten_steel> * 4608])
   .fluidInputs([<liquid:titanium> * 4608])
   .outputs([Buggy])
   .duration(1200).EUt(480).buildAndRegister();
}

// Ракетный компьютер
assembler.recipeBuilder()
   .circuit(1)
   .inputs([
      <opencomputers:case1>,
      <metaitem:wafer.glowstone>,
      <ore:circuitEv>,
      <metaitem:emitter.hv>,
      <metaitem:sensor.hv>,
      <galacticraftcore:heavy_plating>])
   .fluidInputs([<liquid:soldering_alloy> * 576])
   .outputs(<metaitem:moon.buggy.computer>)
   .property("cleanroom", "cleanroom")
   .duration(600).EUt(480).buildAndRegister();

// Багги сиденье
recipes.addShaped("tfg/gc/buggy_seat", <galacticraftcore:buggymat:1>, [
   [<metaitem:plateDenseSteel>, null, null],
   [<metaitem:plateDenseSteel>, <ore:leather>, null],
   [<metaitem:plateDenseSteel>, <metaitem:plateDenseSteel>, <metaitem:plateDenseSteel>]]);

// Контейнер багги
recipes.addShaped("tfg/gc/buggy_container", <galacticraftcore:buggymat:2>, [
   [<metaitem:plateDenseAluminium>, <metaitem:plateDenseStainlessSteel>, <metaitem:plateDenseAluminium>],
   [<metaitem:plateDenseAluminium>, <ore:chestWood>, <metaitem:plateDenseAluminium>],
   [<metaitem:plateDenseAluminium>, <metaitem:plateDenseStainlessSteel>, <metaitem:plateDenseAluminium>]]);

// Колесо багги
recipes.addShaped("tfg/gc/buggy_wheal", <galacticraftcore:buggymat>, [
   [<metaitem:plateDenseSteel>, <metaitem:plateStyreneButadieneRubber>, <metaitem:plateDenseSteel>],
   [<metaitem:plateStyreneButadieneRubber>, <metaitem:plateVanadiumSteel>, <metaitem:plateStyreneButadieneRubber>],
   [<metaitem:plateDenseSteel>, <metaitem:plateStyreneButadieneRubber>, <metaitem:plateDenseSteel>]]);

// Схема
laser_engraver.recipeBuilder()
	.inputs([<metaitem:schematic.blank>])
   .notConsumable([<metaitem:glass_lens.black>])
	.outputs(<galacticraftcore:schematic>)
   .property("cleanroom", "cleanroom")
	.duration(9000).EUt(1024).buildAndRegister();