import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val RocketT3 as IItemStack[] = [
  <galacticraftplanets:rocket_t3>,
  <galacticraftplanets:rocket_t3:1>,
  <galacticraftplanets:rocket_t3:2>,
  <galacticraftplanets:rocket_t3:3>
];
val CrateT3 as IItemStack[] = [
  <metaitem:plateSteel>,
  <metaitem:crate.steel>,
  <metaitem:crate.aluminium>,
  <metaitem:crate.stainless_steel>
];
for i, RocketT3 in RocketT3 {
// Tier 3 - Ракета
assembly_line.recipeBuilder()
  .inputs(<galacticraftplanets:heavy_nose_cone>)
  .inputs(<galacticraftcore:heavy_plating> * 2)
  .inputs(<metaitem:rocket.body.tier.3> * 12)
  .inputs(<galacticraftplanets:item_basic_asteroids:2> * 4)
  .inputs(<galacticraftplanets:item_basic_asteroids:1>)
  .inputs(<galacticraftcore:engine:1> * 2)
  .inputs(<galacticraftcore:oil_canister_partial:1001> * 8)
  .inputs(<metaitem:lander.tier.3>)
  .inputs(<metaitem:electric.motor.iv> * 4)
  .inputs(<metaitem:emitter.iv> * 4)
  .inputs(<ore:circuitIv> * 8)
  .inputs(<metaitem:rocket.control.computer.tier.3>)
  .inputs(<galacticraftplanets:schematic>)
  .inputs([CrateT3[i] * 9])
  .fluidInputs([<liquid:soldering_alloy> * 9216])
  .fluidInputs([<liquid:desh> * 4608])
  .fluidInputs([<liquid:platinum> * 2608])
  .outputs([RocketT3])
  .duration(1200).EUt(7680).buildAndRegister();
}
// Ракетный компьютер
assembler.recipeBuilder()
  .circuit(3)
  .inputs([
    <opencomputers:case1>,
    <opencomputers:keyboard>,
    <opencomputers:screen1>,
    <metaitem:emitter.iv>,
    <metaitem:sensor.iv>,
    <galacticraftplanets:item_basic_asteroids:5>])
  .fluidInputs([<liquid:soldering_alloy> * 1152])
  .outputs(<metaitem:rocket.control.computer.tier.3>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(7680).buildAndRegister();
// Головоной обтекатель
assembler.recipeBuilder()
  .circuit(3)
  .inputs([
    <galacticraftcore:nose_cone>,
    <galacticraftplanets:item_basic_asteroids:5> * 4,
    <metaitem:sensor.iv> * 2,
    <ore:screwTitanium> * 4])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftplanets:heavy_nose_cone>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(7680).buildAndRegister();
// Корпус
assembler.recipeBuilder()
  .circuit(3)
  .inputs([
    <galacticraftplanets:item_basic_asteroids:5> * 2,
    <metaitem:voltage_coil.iv> * 2,
    <metaitem:field.generator.iv> * 3])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<metaitem:rocket.body.tier.3>)
  .property("cleanroom", "cleanroom")
  .duration(300).EUt(7680).buildAndRegister();
// Стабилизаторы
assembler.recipeBuilder()
  .circuit(3)
  .inputs([
    <galacticraftcore:heavy_plating> * 2,
    <galacticraftplanets:item_basic_asteroids:5> * 4,
    <ore:screwStainlessSteel> * 4])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftplanets:item_basic_asteroids:2>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(7680).buildAndRegister();
// Ракетные двигатели
assembler.recipeBuilder()
  .circuit(3)
  .inputs([
    <galacticraftplanets:item_basic_asteroids:5> * 5,
    <galacticraftcore:engine:1> * 2,
    <galacticraftcore:engine> * 2,
    <metaitem:electric.pump.iv> * 4,
    <ore:cableGtSingleAnnealedCopper> * 16])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftplanets:item_basic_asteroids:1>)
  .duration(600).EUt(7680).buildAndRegister();
// Сплав сверх-прочных пластин
assembler.recipeBuilder()
  .circuit(3)
  .inputs([
    <galacticraftplanets:item_basic_mars:3>,
    <ore:plateDenseDesh> * 4])
  .fluidInputs([<liquid:platinum> * 72])
  .outputs(<metaitem:alloy.ingot.tier.3>)
  .duration(600).EUt(7680).buildAndRegister();
// Сверх-прочные пластины
implosion_compressor.recipeBuilder()
	.inputs([<metaitem:alloy.ingot.tier.3>])
	.outputs(
      <galacticraftplanets:item_basic_asteroids:5>,
      <metaitem:dustTinyPlatinum> * 3)
	.property("explosives", <minecraft:tnt> * 18)
	.duration(20).EUt(30).buildAndRegister();
// Схема ракеты
laser_engraver.recipeBuilder()
	.inputs([<metaitem:schematic.blank>])
  .notConsumable([<metaitem:glass_lens.magenta>])
	.outputs(<galacticraftplanets:schematic>)
  .property("cleanroom", "cleanroom")
	.duration(9000).EUt(7680).buildAndRegister();