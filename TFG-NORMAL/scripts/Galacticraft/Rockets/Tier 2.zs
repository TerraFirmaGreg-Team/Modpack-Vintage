import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

// Tier 2 - Ракета
assembly_line.recipeBuilder()
  .inputs(<galacticraftcore:nose_cone>)
  .inputs(<contenttweaker:rocketbody_tier2> * 10)
  .inputs(<galacticraftcore:rocket_fins> * 4)
  .inputs(<galacticraftcore:engine> * 2)
  .inputs(<galacticraftcore:engine:1> * 2)
  .inputs(<galacticraftcore:oil_canister_partial:1001> * 3)
  .inputs(<contenttweaker:lander_tier2>)
  .inputs(<metaitem:electric.motor.ev> * 4)
  .inputs(<metaitem:emitter.ev> * 4)
  .inputs(<ore:circuitIv> * 8)
  .inputs(<contenttweaker:rocketcontrolcomputer_tier2>)
  .inputs(<galacticraftcore:schematic:1>)
  .fluidInputs([<liquid:soldering_alloy> * 9216])
  .fluidInputs([<liquid:tungsten_steel> * 4608])
  .fluidInputs([<liquid:titanium> * 4608])
  .outputs(<galacticraftplanets:rocket_t2>)
  .duration(1200).EUt(6000).buildAndRegister();
// Ракетный компьютер
assembler.recipeBuilder()
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
  .circuit(1)
  .inputs([
    <galacticraftplanets:item_basic_mars:3> * 2,
    <metaitem:voltage_coil.lv> * 2,
    <metaitem:field.generator.ev> * 2])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<contenttweaker:rocketbody_tier2>)
  .property("cleanroom", "cleanroom")
  .duration(300).EUt(480).buildAndRegister();
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
  .duration(600).EUt(480).buildAndRegister();
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
  .duration(600).EUt(512).buildAndRegister();