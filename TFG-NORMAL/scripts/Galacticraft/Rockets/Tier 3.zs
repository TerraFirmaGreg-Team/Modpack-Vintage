import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

// Tier 3 - Ракета
assembly_line.recipeBuilder()
  .inputs(<galacticraftplanets:heavy_nose_cone>)
  .inputs(<galacticraftcore:heavy_plating> * 2)
  .inputs(<contenttweaker:rocketbody_tier3> * 12)
  .inputs(<galacticraftplanets:item_basic_asteroids:2> * 4)
  .inputs(<galacticraftplanets:item_basic_asteroids:1>)
  .inputs(<galacticraftcore:engine:1> * 2)
  .inputs(<galacticraftcore:oil_canister_partial:1001> * 3)
  .inputs(<contenttweaker:lander_tier3>)
  .inputs(<metaitem:electric.motor.iv> * 4)
  .inputs(<metaitem:emitter.iv> * 4)
  .inputs(<ore:circuitIv> * 8)
  .inputs(<contenttweaker:rocketcontrolcomputer_tier3>)
  .inputs(<galacticraftplanets:schematic>)
  .fluidInputs([<liquid:soldering_alloy> * 9216])
  .fluidInputs([<liquid:desh> * 4608])
  .fluidInputs([<liquid:platinum> * 2608])
  .outputs(<galacticraftplanets:rocket_t3>)
  .duration(1200).EUt(6000).buildAndRegister();
// Ракетный компьютер
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <opencomputers:case1>,
    <opencomputers:keyboard>,
    <opencomputers:screen1>,
    <metaitem:emitter.iv>,
    <metaitem:sensor.iv>,
    <galacticraftplanets:item_basic_asteroids:5>])
  .fluidInputs([<liquid:soldering_alloy> * 1152])
  .outputs(<contenttweaker:rocketcontrolcomputer_tier3>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(7680).buildAndRegister();
// Головоной обтекатель
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <galacticraftcore:nose_cone>,
    <galacticraftplanets:item_basic_asteroids:5> * 4,
    <metaitem:sensor.iv> * 2,
    <ore:screwTitanium> * 4])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftplanets:heavy_nose_cone>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(480).buildAndRegister();

// Корпус
assembler.recipeBuilder()
  .circuit(1)
  .inputs([
    <galacticraftplanets:item_basic_asteroids:5> * 2,
    <metaitem:voltage_coil.mv> * 2,
    <metaitem:field.generator.iv> * 3])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<contenttweaker:rocketbody_tier3>)
  .property("cleanroom", "cleanroom")
  .duration(300).EUt(480).buildAndRegister();
// Стабилизаторы
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <galacticraftcore:heavy_plating> * 2,
    <galacticraftplanets:item_basic_asteroids:5> * 4,
    <ore:screwStainlessSteel> * 4])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftplanets:item_basic_asteroids:2>)
  .property("cleanroom", "cleanroom")
  .duration(600).EUt(480).buildAndRegister();
// Ракетные двигатели
assembler.recipeBuilder()
  .circuit(2)
  .inputs([
    <galacticraftplanets:item_basic_asteroids:5> * 5,
    <galacticraftcore:engine:1> * 2,
    <galacticraftcore:engine> * 2,
    <metaitem:electric.pump.ev> * 4,
    <ore:cableGtSingleAnnealedCopper> * 16])
  .fluidInputs([<liquid:soldering_alloy> * 288])
  .outputs(<galacticraftplanets:item_basic_asteroids:1>)
  .duration(600).EUt(480).buildAndRegister();