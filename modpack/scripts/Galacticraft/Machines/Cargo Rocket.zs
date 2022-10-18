import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;


// --- Массивы

val Rocket as IItemStack[] = [
   <galacticraftplanets:rocket_t2:11>,
   <galacticraftplanets:rocket_t2:12>,
   <galacticraftplanets:rocket_t2:13>
];
val Crate as IItemStack[] = [
   <metaitem:crate.aluminium>,
   <metaitem:crate.stainless_steel>,
   <metaitem:crate.titanium>
];


// Вес и размер
ItemRegistry.registerItemSize(<galacticraftplanets:rocket_t2:*>, "HUGE", "VERY_HEAVY");


// --- Добавление рецептов

for i, Rocket in Rocket {
// Ракета
assembly_line.recipeBuilder()
   .inputs(<galacticraftcore:nose_cone>)
   .inputs(<metaitem:rocket.body.tier.2> * 8)
   .inputs(<galacticraftcore:rocket_fins> * 4)
   .inputs(<galacticraftcore:engine>)
   .inputs(<galacticraftcore:oil_canister_partial:1001> * 3)
   .inputs(<galacticraftplanets:schematic:1>)
   .inputs(<metaitem:cargo.rocket.computer>)
   .inputs([Crate[i] * 3])
   .fluidInputs([<liquid:black_steel> * 9216])
   .fluidInputs([<liquid:aluminium> * 4608])
   .fluidInputs([<liquid:bronze> * 4608])
   .outputs([Rocket])
   .duration(1200).EUt(1920).buildAndRegister();
}
// Ракетный компьютер
assembler.recipeBuilder()
   .circuit(2)
   .inputs([
      <opencomputers:case1>,
      <metaitem:wafer.glowstone>,
      <ore:circuitIv>,
      <metaitem:emitter.ev>,
      <metaitem:sensor.ev>,
      <galacticraftplanets:item_basic_mars:3>])
   .fluidInputs([<liquid:soldering_alloy> * 864])
   .outputs(<metaitem:cargo.rocket.computer>)
   .property("cleanroom", "cleanroom")
   .duration(600).EUt(1920).buildAndRegister();

// Схема
laser_engraver.recipeBuilder()
	.inputs([<metaitem:schematic.blank>])
   .notConsumable([<metaitem:glass_lens.green>])
	.outputs(<galacticraftplanets:schematic:1>)
   .property("cleanroom", "cleanroom")
	.duration(9000).EUt(1920).buildAndRegister();