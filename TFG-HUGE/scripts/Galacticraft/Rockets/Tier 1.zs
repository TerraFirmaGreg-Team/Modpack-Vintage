import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

// Tier 1 - Ракета
assembly_line.recipeBuilder()
  .inputs(<galacticraftcore:nose_cone>)
  .inputs(<contenttweaker:rocketbody_tier1> * 8)
  .inputs(<galacticraftcore:rocket_fins> * 4)
  .inputs(<galacticraftcore:engine>)
  .inputs(<galacticraftcore:oil_canister_partial:1001> * 2)
  .inputs(<contenttweaker:lander_tier1>)
  .inputs(<metaitem:electric.motor.hv> * 4)
  .inputs(<metaitem:emitter.hv> * 4)
  .inputs(<ore:circuitEv> * 8)
  .inputs(<contenttweaker:rocketcontrolcomputer_tier1>)
  .fluidInputs([<liquid:black_steel> * 9216])
  .fluidInputs([<liquid:aluminium> * 4608])
  .fluidInputs([<liquid:bronze> * 4608])
  .outputs(<galacticraftcore:rocket_t1>)
  .duration(1200).EUt(6000).buildAndRegister();
// Ракетный компьютер
assembler.recipeBuilder()
  .inputs([
    <opencomputers:case1>,
    <opencomputers:keyboard>,
    <opencomputers:screen1>,
    <metaitem:emitter.hv>,
    <metaitem:sensor.hv>,
    <galacticraftcore:heavy_plating>])
  .fluidInputs([<liquid:soldering_alloy> * 576])
  .outputs(<contenttweaker:rocketcontrolcomputer_tier1>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(480).buildAndRegister();
// Головоной обтекатель
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <galacticraftcore:heavy_plating> * 4,
    <projectred-illumination:inverted_cage_lamp:14>,
    <metaitem:sensor.ev> * 2,
    <ore:screwStainlessSteel> * 4])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftcore:nose_cone>)
  .property("cleanroom", "cleanroom")
  .duration(300).EUt(480).buildAndRegister();

// Корпус
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <galacticraftcore:heavy_plating> * 2,
    <metaitem:voltage_coil.lv> * 2,
    <metaitem:field.generator.hv>])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<contenttweaker:rocketbody_tier1>)
  .property("cleanroom", "cleanroom")
  .duration(300).EUt(480).buildAndRegister();
// Стабилизаторы
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <galacticraftcore:heavy_plating> * 4,
    <ore:plateDenseSteel> * 2,
    <ore:screwStainlessSteel> * 4])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftcore:rocket_fins>)
  .property("cleanroom", "cleanroom")
  .duration(300).EUt(480).buildAndRegister();
// Ракетные двигатели
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <galacticraftcore:heavy_plating> * 6,
    <galacticraftcore:oil_canister_partial:1001>,
    <metaitem:cover.activity.detector>,
    <metaitem:electric.pump.ev> * 4,
    <ore:cableGtSingleAnnealedCopper> * 16,
    <gregtech:boiler_firebox_casing:1>])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftcore:engine>)
  .duration(300).EUt(480).buildAndRegister();