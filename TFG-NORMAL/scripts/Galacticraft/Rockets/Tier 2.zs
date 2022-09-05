import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

val RocketT2 as IItemStack[] = [
  <galacticraftplanets:rocket_t2>,
  <galacticraftplanets:rocket_t2:1>,
  <galacticraftplanets:rocket_t2:2>,
  <galacticraftplanets:rocket_t2:3>
];
val CrateT2 as IItemStack[] = [
  <metaitem:plateSteel>,
  <metaitem:crate.steel>,
  <metaitem:crate.aluminium>,
  <metaitem:crate.stainless_steel>
];
for i, RocketT2 in RocketT2 {
// Tier 2 - Ракета
assembly_line.recipeBuilder()
  .inputs(<galacticraftcore:nose_cone>)
  .inputs(<contenttweaker:rocketbody_tier2> * 10)
  .inputs(<galacticraftcore:rocket_fins> * 4)
  .inputs(<galacticraftcore:engine> * 2)
  .inputs(<galacticraftcore:engine:1> * 2)
  .inputs(<galacticraftcore:oil_canister_partial:1001> * 4)
  .inputs(<contenttweaker:lander_tier2>)
  .inputs(<metaitem:electric.motor.ev> * 4)
  .inputs(<metaitem:emitter.ev> * 4)
  .inputs(<ore:circuitEv> * 8)
  .inputs(<contenttweaker:rocketcontrolcomputer_tier2>)
  .inputs(<galacticraftcore:schematic:1>)
  .inputs([CrateT2[i] * 6])
  .fluidInputs([<liquid:soldering_alloy> * 9216])
  .fluidInputs([<liquid:tungsten_steel> * 4608])
  .fluidInputs([<liquid:titanium> * 4608])
  .outputs([RocketT2])
  .duration(1200).EUt(1920).buildAndRegister();
}
// Ракетный компьютер
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <opencomputers:case1>,
    <opencomputers:keyboard>,
    <opencomputers:screen1>,
    <metaitem:emitter.ev>,
    <metaitem:sensor.ev>,
    <galacticraftplanets:item_basic_mars:3>])
  .fluidInputs([<liquid:soldering_alloy> * 864])
  .outputs(<contenttweaker:rocketcontrolcomputer_tier2>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(1920).buildAndRegister();
// Корпус
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <galacticraftplanets:item_basic_mars:3> * 2,
    <metaitem:voltage_coil.ev> * 2,
    <metaitem:field.generator.ev> * 2])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<contenttweaker:rocketbody_tier2>)
  .property("cleanroom", "cleanroom")
  .duration(300).EUt(1920).buildAndRegister();
// Стабилизаторы
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <galacticraftcore:heavy_plating> * 4,
    <ore:plateDenseSteel> * 2,
    <ore:screwStainlessSteel> * 4])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftcore:rocket_fins>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(1920).buildAndRegister();
// Ускорители
assembler.recipeBuilder()// метеоритоное железо
  .circuit(2)
  .inputs([
    <galacticraftplanets:item_basic_mars:3> * 2,
    <galacticraftcore:fuel_canister_partial:1>,
    <galacticraftcore:heavy_plating> * 4,
    <metaitem:electric.pump.ev> * 4,
    <ore:cableGtSingleAnnealedCopper> * 16,
    <ore:pipeSmallFluidStainlessSteel> * 16,
    <galacticraftcore:air_vent> * 2])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftcore:engine:1>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(1920).buildAndRegister();