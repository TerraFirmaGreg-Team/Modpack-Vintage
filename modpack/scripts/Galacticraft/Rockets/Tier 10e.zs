import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;

ItemRegistry.registerItemSize(<extraplanets:item_tier10_rocket:*>, "HUGE", "VERY_HEAVY");

val RocketT11 as IItemStack[] = [
  <extraplanets:item_tier10_electric_rocket>,
  <extraplanets:item_tier10_electric_rocket:1>,
  <extraplanets:item_tier10_electric_rocket:2>,
  <extraplanets:item_tier10_electric_rocket:3>,
];
val CrateT11 as IItemStack[] = [
  <metaitem:plateAluminium>,
  <metaitem:crate.aluminium>,
  <metaitem:crate.stainless_steel>,
  <metaitem:crate.titanium>
];
for i, RocketT11 in RocketT11 {
// Tier 4 - Ракета
assembly_line.recipeBuilder()
  .inputs(<extraplanets:nose_cone_tier10>) // Обтекатель
  .inputs(<metaitem:rocket.body.tier.11> * 12) // Корпус
  .inputs(<extraplanets:tier10_items:2> * 8)  // Стабилизаторы
  .inputs(<extraplanets:tier10_items:1> * 6) // Ускорители
  .inputs(<extraplanets:tier10_items> * 5) // Двигатели
  .inputs(<extraplanets:item_tier10_rocket>)
  .inputs(<extraplanets:item_tier10_rocket>)
  .inputs(<extraplanets:electric_parts:1>)
  .inputs(<extraplanets:electric_parts:1>)
  .inputs(<metaitem:electric.motor.opv> * 4)
  .inputs(<metaitem:emitter.opv> * 4)
  .inputs(<ore:circuitUhv> * 8)
  .inputs([CrateT11[i] * 18])
  .inputs(<metaitem:rocket.control.computer.tier.11>)
  .inputs(<extraplanets:schematic_tier10_electric_rocket>)
  .fluidInputs([<liquid:naquadria> * 9216])
  .fluidInputs([<liquid:soldering_alloy> * 4608])
  .fluidInputs([<liquid:tritanium> * 4608])
  .outputs([RocketT11])
  .duration(1200).EUt(268435456).buildAndRegister();
}
// Ракетный компьютер
assembler.recipeBuilder()
  .circuit(6)
  .inputs([
    <opencomputers:case2>,
    <opencomputers:keyboard>,
    <opencomputers:screen2>,
    <metaitem:emitter.opv>,
    <metaitem:sensor.opv>,
    <extraplanets:tier10_items:3>])
  .fluidInputs([<liquid:soldering_alloy> * 3456])
  .outputs(<metaitem:rocket.control.computer.tier.11>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(268435456).buildAndRegister();
// Сплав сверх-прочных пластин
// assembly_line.recipeBuilder()
//   .inputs([
//     <extraplanets:tier9_items:3>,
//     <metaitem:plateDenseNaquadria> * 4,
//     <metaitem:plateDenseNaquadria> * 4,
//     <metaitem:boltTritanium> * 8])
//   .fluidInputs([<liquid:soldering_alloy> * 144])
//   .outputs(<metaitem:alloy.ingot.tier.11>)
//   .duration(300).EUt(268435456).buildAndRegister();
// Сверх-прочные пластины
implosion_compressor.recipeBuilder()
	.inputs([<metaitem:alloy.ingot.tier.11>])
	.outputs(
      <extraplanets:tier10_items:3>,
      <metaitem:dustTinyTritanium> * 6)
	.property("explosives", 36)
	.duration(20).EUt(30).buildAndRegister();
// Схема ракеты
laser_engraver.recipeBuilder()
	.inputs([<metaitem:schematic.blank>])
  .notConsumable([<metaitem:glass_lens.purple>])
	.outputs(<extraplanets:schematic_tier10_electric_rocket>)
  .property("cleanroom", "cleanroom")
	.duration(9000).EUt(268435456).buildAndRegister();