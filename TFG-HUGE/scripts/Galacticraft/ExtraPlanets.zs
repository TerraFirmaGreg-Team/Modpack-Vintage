import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveItemRecipe as IItemStack[] = [
	<extraplanets:advanced_launch_pad>,
	<extraplanets:advanced_launch_pad:1>,
	<extraplanets:advanced_launch_pad:3>,
	<extraplanets:tier4_items:3>,
	<extraplanets:tier5_items:3>,
	<extraplanets:tier6_items:3>,
	<extraplanets:tier7_items:3>,
	<extraplanets:tier8_items:3>,
	<extraplanets:tier9_items:3>,
	<extraplanets:tier10_items:3>,
	<extraplanets:nose_cone_tier4>,
	<extraplanets:nose_cone_tier5>,
	<extraplanets:nose_cone_tier6>,
	<extraplanets:nose_cone_tier7>,
	<extraplanets:nose_cone_tier8>,
	<extraplanets:nose_cone_tier9>,
	<extraplanets:nose_cone_tier10>,
	<extraplanets:tier4_items:1>,
	<extraplanets:tier5_items:1>,
	<extraplanets:tier6_items:1>,
	<extraplanets:tier7_items:1>,
	<extraplanets:tier8_items:1>,
	<extraplanets:tier9_items:1>,
	<extraplanets:tier10_items:1>,
	<extraplanets:tier4_items>,
	<extraplanets:tier5_items>,
	<extraplanets:tier6_items>,
	<extraplanets:tier7_items>,
	<extraplanets:tier8_items>,
	<extraplanets:tier9_items>,
	<extraplanets:tier10_items>,
	<extraplanets:tier4_items:2>,
	<extraplanets:tier5_items:2>,
	<extraplanets:tier6_items:2>,
	<extraplanets:tier7_items:2>,
	<extraplanets:tier8_items:2>,
	<extraplanets:tier9_items:2>,
	<extraplanets:tier10_items:2>,
] as IItemStack[];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveItemRecipe{
	recipes.remove(item);
}

// --- Adding Recipes

// Тултипы для новых вещей
<contenttweaker:rocketparts_tier7>.addTooltip("Tier 7");
<contenttweaker:rocketparts_tier8>.addTooltip("Tier 8");
<contenttweaker:rocketparts_tier9>.addTooltip("Tier 9");
<contenttweaker:rocketparts_tier10>.addTooltip("Tier 10");

// Взлетная площадка 2 Tiers
assembler.recipeBuilder()
   .inputs(<galacticraftcore:landing_pad> * 3, <ore:plateDenseTitanium> * 6)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad> * 5)
   .duration(300).EUt(1000).buildAndRegister();

// Взлетная площадка 3 Tiers
assembler.recipeBuilder()
   .inputs(<extraplanets:advanced_launch_pad> * 3, <ore:plateDenseTungstenSteel> * 18, <ore:plateLead> * 2)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad:1> * 5)
   .duration(1000).EUt(1208).buildAndRegister();

// Взлетная площадка электрической ракеты
assembler.recipeBuilder()
   .inputs(<extraplanets:advanced_launch_pad:1> * 3, <ore:plateDensePlatinum> * 9 , <ore:plateLead> * 2, <metaitem:electric.pump.lv> * 2)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad:3> * 5)
   .duration(1000).EUt(30038).buildAndRegister();


// Сверх прочные пластины 4-10 Tiers

// Tier 4
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateDenseTitanium>.firstItem * 3, <ore:plateDenseTungstenSteel>.firstItem * 2, <galacticraftplanets:item_basic_asteroids:5> * 2])
   .fluidInputs([<liquid:osmiridium> * 800])
	.outputs(<extraplanets:tier4_items:3> * 3)
	.property("temperature", 7100)
	.duration(1000)
	.EUt(810)
	.buildAndRegister();

// Tier 5
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateDenseTungstenSteel>.firstItem * 3, <ore:plateDenseOsmiridium>.firstItem * 2, <extraplanets:tier4_items:3> * 2])
   .fluidInputs([<liquid:hsss> * 800])
	.outputs(<extraplanets:tier5_items:3> * 3)
	.property("temperature", 8750)
	.duration(1000)
	.EUt(910)
	.buildAndRegister();

// Tier 6
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateDenseOsmiridium>.firstItem * 3, <ore:plateDenseHsss>.firstItem * 2, <extraplanets:tier5_items:3> * 2])
   .fluidInputs([<liquid:naquadria> * 800])
	.outputs(<extraplanets:tier6_items:3> * 3)
	.property("temperature", 10777)
	.duration(1000)
	.EUt(1010)
	.buildAndRegister();

// Tier 7
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateDenseTitanium>.firstItem * 3, <ore:plateDenseTungstenSteel>.firstItem * 2, <extraplanets:tier6_items:3> * 2])
   .fluidInputs([<liquid:osmiridium> * 800])
	.outputs(<extraplanets:tier7_items:3> * 3)
	.property("temperature", 7100)
	.duration(1000)
	.EUt(1110)
	.buildAndRegister();

// Tier 8
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateDenseTungstenSteel>.firstItem * 3, <ore:plateDenseOsmiridium>.firstItem * 2, <extraplanets:tier7_items:3> * 2])
   .fluidInputs([<liquid:hsss> * 800])
	.outputs(<extraplanets:tier8_items:3> * 3)
	.property("temperature", 8750)
	.duration(1000)
	.EUt(1210)
	.buildAndRegister();

// Tier 9
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateDenseOsmiridium>.firstItem * 3, <ore:plateDenseHsss>.firstItem * 2, <extraplanets:tier8_items:3> * 2])
   .fluidInputs([<liquid:naquadria> * 800])
	.outputs(<extraplanets:tier9_items:3> * 3)
	.property("temperature", 10777)
	.duration(1000)
	.EUt(1310)
	.buildAndRegister();

// Tier 10
electric_blast_furnace.recipeBuilder()
	.inputs([<ore:plateDenseTungstenSteel>.firstItem * 3, <ore:plateDenseOsmiridium>.firstItem * 2, <extraplanets:tier9_items:3> * 2])
   .fluidInputs([<liquid:hsss> * 800])
	.outputs(<extraplanets:tier10_items:3> * 3)
	.property("temperature", 8750)
	.duration(1000)
	.EUt(1410)
	.buildAndRegister();

// Головоной обтекатель 4-10 Tiers

// Tier 4
assembler.recipeBuilder()
  .inputs(<extraplanets:tier4_items:3> * 11)
	.inputs(<galacticraftcore:engine> * 2)
	.inputs(<galacticraftcore:enclosed:14> * 2)
	.inputs(<galacticraftcore:air_vent> * 2)
	.inputs(<galacticraftcore:oxygen_tank_heavy_full>)
	.inputs(<galaxyspace:futureglass_none> * 2)
	.inputs(<galacticraftcore:view_screen> * 1)
	.inputs(<galacticraftcore:buggymat:1> * 1)
	.inputs(<metaitem:sensor.iv> * 2)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<extraplanets:nose_cone_tier4>)
	.duration(600)
	.EUt(820)
	.buildAndRegister();

// Tier 5
assembler.recipeBuilder()
	.inputs(<extraplanets:tier5_items:3> * 4)
	.inputs(<galacticraftcore:engine> * 2)
	.inputs(<galacticraftcore:enclosed:14> * 2)
	.inputs(<galacticraftcore:air_vent> * 2)
	.inputs(<galacticraftcore:oxygen_tank_heavy_full>)
	.inputs(<galaxyspace:futureglass_none> * 2)
	.inputs(<galacticraftcore:view_screen> * 1)
	.inputs(<galacticraftcore:buggymat:1> * 1)
	.inputs(<metaitem:sensor.iv> * 2)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<extraplanets:nose_cone_tier5>)
	.duration(600)
	.EUt(920)
	.buildAndRegister();

// Tier 6
assembler.recipeBuilder()
	.inputs(<extraplanets:tier6_items:3> * 4)
	.inputs(<galacticraftcore:engine> * 2)
	.inputs(<galacticraftcore:enclosed:14> * 2)
	.inputs(<galacticraftcore:air_vent> * 2)
	.inputs(<galacticraftcore:oxygen_tank_heavy_full>)
	.inputs(<galaxyspace:futureglass_none> * 2)
	.inputs(<galacticraftcore:view_screen> * 1)
	.inputs(<galacticraftcore:buggymat:1> * 1)
	.inputs(<metaitem:sensor.luv> * 2)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<extraplanets:nose_cone_tier6>)
	.duration(600)
	.EUt(1020)
	.buildAndRegister();

// Tier 7
assembler.recipeBuilder()
  .inputs(<extraplanets:tier7_items:3> * 4)
	.inputs(<galacticraftcore:engine> * 2)
	.inputs(<galacticraftcore:enclosed:14> * 2)
	.inputs(<galacticraftcore:air_vent> * 2)
	.inputs(<galacticraftcore:oxygen_tank_heavy_full>)
	.inputs(<galaxyspace:futureglass_none> * 2)
	.inputs(<galacticraftcore:view_screen> * 1)
	.inputs(<galacticraftcore:buggymat:1> * 1)
	.inputs(<metaitem:sensor.luv> * 2)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<extraplanets:nose_cone_tier7>)
	.duration(600)
	.EUt(1120)
	.buildAndRegister();

// Tier 8
assembler.recipeBuilder()
	.inputs(<extraplanets:tier8_items:3> * 4)
	.inputs(<galacticraftcore:engine> * 2)
	.inputs(<galacticraftcore:enclosed:14> * 2)
	.inputs(<galacticraftcore:air_vent> * 2)
	.inputs(<galacticraftcore:oxygen_tank_heavy_full>)
	.inputs(<galaxyspace:futureglass_none> * 2)
	.inputs(<galacticraftcore:view_screen> * 1)
	.inputs(<galacticraftcore:buggymat:1> * 1)
	.inputs(<metaitem:sensor.luv> * 2)
	.fluidInputs([<liquid:soldering_alloy> * 288])
	.outputs(<extraplanets:nose_cone_tier8>)
	.duration(600)
	.EUt(1220)
	.buildAndRegister();

// Tier 9
assembler.recipeBuilder()
   .inputs(<extraplanets:tier9_items:3> * 4)
	.inputs(<galacticraftcore:engine> * 2)
	.inputs(<galacticraftcore:enclosed:14> * 2)
	.inputs(<galacticraftcore:air_vent> * 2)
	.inputs(<galacticraftcore:oxygen_tank_heavy_full>)
	.inputs(<galaxyspace:futureglass_none> * 2)
	.inputs(<galacticraftcore:view_screen> * 1)
	.inputs(<galacticraftcore:buggymat:1> * 1)
   .inputs(<metaitem:sensor.zpm> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:nose_cone_tier9>)
   .duration(600)
   .EUt(1320)
   .buildAndRegister();

// Tier 10
assembler.recipeBuilder()
   .inputs(<extraplanets:tier10_items:3> * 4)
	.inputs(<galacticraftcore:engine> * 2)
	.inputs(<galacticraftcore:enclosed:14> * 2)
	.inputs(<galacticraftcore:air_vent> * 2)
	.inputs(<galacticraftcore:oxygen_tank_heavy_full>)
	.inputs(<galaxyspace:futureglass_none> * 2)
	.inputs(<galacticraftcore:view_screen> * 1)
	.inputs(<galacticraftcore:buggymat:1> * 1)
   .inputs(<metaitem:sensor.zpm> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:nose_cone_tier10>)
   .duration(600)
   .EUt(1420)
   .buildAndRegister();

// Ракетный корпус 4-10 Tiers

// Tier 4
assembler.recipeBuilder()
   .inputs(<extraplanets:tier4_items:3> * 12)
	.inputs(<metaitem:wafer.glowstone> * 2)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
	.inputs(<galacticraftcore:basic_item:20> * 1)
	.inputs(<galacticraftcore:basic_item:19> * 1)
	.inputs(<galacticraftcore:oxygen_concentrator> * 1)
   .inputs(<galacticraftcore:spin_thruster> * 2)
	.inputs(<galaxyspace:rocket_modules:3> * 4)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:6>)
   .duration(600)
   .EUt(830)
   .buildAndRegister();

// Tier 5
assembler.recipeBuilder()
   .inputs(<extraplanets:tier5_items:3> * 12)
	.inputs(<metaitem:wafer.glowstone> * 2)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
	.inputs(<galacticraftcore:basic_item:20> * 1)
	.inputs(<galacticraftcore:basic_item:19> * 1)
	.inputs(<galacticraftcore:oxygen_concentrator> * 1)
   .inputs(<galacticraftcore:spin_thruster> * 2)
	.inputs(<galaxyspace:rocket_modules:3> * 4)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:11>)
   .duration(600)
   .EUt(930)
   .buildAndRegister();

// Tier 6
assembler.recipeBuilder()
   .inputs(<extraplanets:tier6_items:3> * 12)
	.inputs(<metaitem:wafer.glowstone> * 2)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
	.inputs(<galacticraftcore:basic_item:20> * 1)
	.inputs(<galacticraftcore:basic_item:19> * 1)
	.inputs(<galacticraftcore:oxygen_concentrator> * 1)
   .inputs(<galacticraftcore:spin_thruster> * 2)
	.inputs(<galaxyspace:rocket_modules:3> * 4)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<galaxyspace:rocket_parts:16>)
   .duration(600)
   .EUt(1030)
   .buildAndRegister();

// Tier 7
assembler.recipeBuilder()
   .inputs(<extraplanets:tier7_items:3> * 12)
	.inputs(<metaitem:wafer.glowstone> * 2)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
	.inputs(<galacticraftcore:basic_item:20> * 1)
	.inputs(<galacticraftcore:basic_item:19> * 1)
	.inputs(<galacticraftcore:oxygen_concentrator> * 1)
   .inputs(<galacticraftcore:spin_thruster> * 2)
	.inputs(<galaxyspace:rocket_modules:3> * 4)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<contenttweaker:rocketparts_tier7>)
   .duration(600)
   .EUt(1130)
   .buildAndRegister();

// Tier 8
assembler.recipeBuilder()
   .inputs(<extraplanets:tier8_items:3> * 12)
	.inputs(<metaitem:wafer.glowstone> * 2)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
	.inputs(<galacticraftcore:basic_item:20> * 1)
	.inputs(<galacticraftcore:basic_item:19> * 1)
	.inputs(<galacticraftcore:oxygen_concentrator> * 1)
   .inputs(<galacticraftcore:spin_thruster> * 2)
	.inputs(<galaxyspace:rocket_modules:3> * 4)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<contenttweaker:rocketparts_tier8>)
   .duration(600)
   .EUt(1230)
   .buildAndRegister();

// Tier 9
assembler.recipeBuilder()
   .inputs(<extraplanets:tier9_items:3> * 12)
	.inputs(<metaitem:wafer.glowstone> * 2)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
	.inputs(<galacticraftcore:basic_item:20> * 1)
	.inputs(<galacticraftcore:basic_item:19> * 1)
	.inputs(<galacticraftcore:oxygen_concentrator> * 1)
   .inputs(<galacticraftcore:spin_thruster> * 2)
	.inputs(<galaxyspace:rocket_modules:3> * 4)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<contenttweaker:rocketparts_tier9>)
   .duration(600)
   .EUt(1330)
   .buildAndRegister();

// Tier 10
assembler.recipeBuilder()
   .inputs(<extraplanets:tier10_items:3> * 12)
	.inputs(<metaitem:wafer.glowstone> * 2)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
	.inputs(<galacticraftcore:basic_item:20> * 1)
	.inputs(<galacticraftcore:basic_item:19> * 1)
	.inputs(<galacticraftcore:oxygen_concentrator> * 1)
   .inputs(<galacticraftcore:spin_thruster> * 2)
	.inputs(<galaxyspace:rocket_modules:3> * 4)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<contenttweaker:rocketparts_tier10>)
   .duration(600)
   .EUt(1430)
   .buildAndRegister();

// Ускорители 4-10 Tiers

// Tier 4
assembler.recipeBuilder()
   .inputs(<extraplanets:tier4_items:3> * 7)	
   .inputs(<galacticraftplanets:item_basic_asteroids:1> * 1)
   .inputs(<galacticraftcore:fuel_canister_partial:1> * 2)
   .inputs(<metaitem:electric.motor.ev> * 8)
   .inputs(<metaitem:electric.pump.ev> * 4)
   .inputs(<ore:circuitHv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier4_items:1>)
   .duration(580)
   .EUt(840)
   .buildAndRegister();

// Tier 5
assembler.recipeBuilder()
   .inputs(<extraplanets:tier5_items:3> * 7)	
   .inputs(<galacticraftplanets:item_basic_asteroids:1> * 1)
   .inputs(<galacticraftcore:fuel_canister_partial:1> * 2)
   .inputs(<metaitem:electric.motor.ev> * 8)
   .inputs(<metaitem:electric.pump.ev> * 4)
   .inputs(<ore:circuitHv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier5_items:1>)
   .duration(580)
   .EUt(940)
   .buildAndRegister();

// Tier 6
assembler.recipeBuilder()
   .inputs(<extraplanets:tier6_items:3> * 7)	
   .inputs(<galacticraftplanets:item_basic_asteroids:1> * 1)
   .inputs(<galacticraftcore:fuel_canister_partial:1> * 2)
   .inputs(<metaitem:electric.motor.ev> * 8)
   .inputs(<metaitem:electric.pump.ev> * 4)
   .inputs(<ore:circuitHv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier6_items:1>)
   .duration(580)
   .EUt(1040)
   .buildAndRegister();

// Tier 7
assembler.recipeBuilder()
   .inputs(<extraplanets:tier7_items:3> * 7)	
   .inputs(<galacticraftplanets:item_basic_asteroids:1> * 1)
   .inputs(<galacticraftcore:fuel_canister_partial:1> * 2)
   .inputs(<metaitem:electric.motor.ev> * 8)
   .inputs(<metaitem:electric.pump.ev> * 4)
   .inputs(<ore:circuitHv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier7_items:1>)
   .duration(580)
   .EUt(1140)
   .buildAndRegister();

// Tier 8
assembler.recipeBuilder()
   .inputs(<extraplanets:tier8_items:3> * 7)	
   .inputs(<galacticraftplanets:item_basic_asteroids:1> * 1)
   .inputs(<galacticraftcore:fuel_canister_partial:1> * 2)
   .inputs(<metaitem:electric.motor.ev> * 8)
   .inputs(<metaitem:electric.pump.ev> * 4)
   .inputs(<ore:circuitHv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier8_items:1>)
   .duration(580)
   .EUt(1250)
   .buildAndRegister();

// Tier 9
assembler.recipeBuilder()
   .inputs(<extraplanets:tier9_items:3> * 7)	
   .inputs(<galacticraftplanets:item_basic_asteroids:1> * 1)
   .inputs(<galacticraftcore:fuel_canister_partial:1> * 2)
   .inputs(<metaitem:electric.motor.ev> * 8)
   .inputs(<metaitem:electric.pump.ev> * 4)
   .inputs(<ore:circuitHv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier9_items:1>)
   .duration(580)
   .EUt(1340)
   .buildAndRegister();

// Tier 10
assembler.recipeBuilder()
   .inputs(<extraplanets:tier10_items:3> * 7)	
   .inputs(<galacticraftplanets:item_basic_asteroids:1> * 1)
   .inputs(<galacticraftcore:fuel_canister_partial:1> * 2)
   .inputs(<metaitem:electric.motor.ev> * 8)
   .inputs(<metaitem:electric.pump.ev> * 4)
   .inputs(<ore:circuitHv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 16)
   .inputs(<galacticraftcore:air_vent> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier10_items:1>)
   .duration(580)
   .EUt(1440)
   .buildAndRegister();

// Ракетные двигатели 4-10 Tiers

// Tier 4
assembler.recipeBuilder()
   .inputs(<extraplanets:tier4_items:3> * 7)
   .inputs(<extraplanets:tier4_items:1> * 4)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
   .inputs(<metaitem:electric.pump.iv> * 8)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitIv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing> * 2)
   .inputs(<gcym:unique_casing:3> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier4_items>)
   .duration(600)
   .EUt(850)
   .buildAndRegister();

// Tier 5
assembler.recipeBuilder()
   .inputs(<extraplanets:tier5_items:3> * 7)
   .inputs(<extraplanets:tier5_items:1> * 4)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
   .inputs(<metaitem:electric.pump.iv> * 8)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitIv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing> * 2)
   .inputs(<gcym:unique_casing:3> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier5_items>)
   .duration(600)
   .EUt(950)
   .buildAndRegister();

// Tier 6
assembler.recipeBuilder()
   .inputs(<extraplanets:tier6_items:3> * 7)
   .inputs(<extraplanets:tier6_items:1> * 4)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
   .inputs(<metaitem:electric.pump.iv> * 8)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitIv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing> * 2)
   .inputs(<gcym:unique_casing:3> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier6_items>)
   .duration(600)
   .EUt(1050)
   .buildAndRegister();

// Tier 7
assembler.recipeBuilder()
   .inputs(<extraplanets:tier7_items:3> * 7)
   .inputs(<extraplanets:tier7_items:1> * 4)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
   .inputs(<metaitem:electric.pump.iv> * 8)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitIv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing> * 2)
   .inputs(<gcym:unique_casing:3> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier7_items>)
   .duration(600)
   .EUt(1150)
   .buildAndRegister();

// Tier 8
assembler.recipeBuilder()
   .inputs(<extraplanets:tier8_items:3> * 7)
   .inputs(<extraplanets:tier8_items:1> * 4)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
   .inputs(<metaitem:electric.pump.iv> * 8)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitIv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing> * 2)
   .inputs(<gcym:unique_casing:3> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier8_items>)
   .duration(600)
   .EUt(1250)
   .buildAndRegister();

// Tier 9
assembler.recipeBuilder()
   .inputs(<extraplanets:tier9_items:3> * 7)
   .inputs(<extraplanets:tier9_items:1> * 4)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
   .inputs(<metaitem:electric.pump.iv> * 8)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitIv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing> * 2)
   .inputs(<gcym:unique_casing:3> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier9_items>)
   .duration(600)
   .EUt(1350)
   .buildAndRegister();

// Tier 10
assembler.recipeBuilder()
   .inputs(<extraplanets:tier10_items:3> * 7)
   .inputs(<extraplanets:tier10_items:1> * 4)
	.inputs(<galacticraftplanets:item_basic_asteroids:1> * 2)
   .inputs(<metaitem:electric.pump.iv> * 8)
   .inputs(<ore:cableGtSingleAnnealedCopper> * 48)
   .inputs(<ore:circuitIv> * 4)
   .inputs(<ore:pipeSmallFluidStainlessSteel> * 32)
   .inputs(<gregtech:multiblock_casing> * 2)
   .inputs(<gcym:unique_casing:3> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier10_items>)
   .duration(600)
   .EUt(1450)
   .buildAndRegister();

// Ракетные стабилизаторы 4-10 Tiers

// Tier 4
assembler.recipeBuilder()
   .inputs(<extraplanets:tier4_items:3> * 12)
   .inputs(<ore:screwAluminium> * 64)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier4_items:2>)
   .duration(600)
   .EUt(560)
   .buildAndRegister();

// Tier 5
assembler.recipeBuilder()
   .inputs(<extraplanets:tier5_items:3> * 12)
   .inputs(<ore:screwAluminium> * 64)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier5_items:2>)
   .duration(600)
   .EUt(660)
   .buildAndRegister();

// Tier 6
assembler.recipeBuilder()
   .inputs(<extraplanets:tier6_items:3> * 12)
   .inputs(<ore:screwAluminium> * 64)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier6_items:2>)
   .duration(600)
   .EUt(760)
   .buildAndRegister();

// Tier 7
assembler.recipeBuilder()
   .inputs(<extraplanets:tier7_items:3> * 12)
   .inputs(<ore:screwAluminium> * 64)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier7_items:2>)
   .duration(600)
   .EUt(860)
   .buildAndRegister();

// Tier 8
assembler.recipeBuilder()
   .inputs(<extraplanets:tier8_items:3> * 12)
   .inputs(<ore:screwAluminium> * 64)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier8_items:2>)
   .duration(600)
   .EUt(960)
   .buildAndRegister();

// Tier 9
assembler.recipeBuilder()
   .inputs(<extraplanets:tier9_items:3> * 12)
   .inputs(<ore:screwAluminium> * 64)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier9_items:2>)
   .duration(600)
   .EUt(1060)
   .buildAndRegister();

// Tier 10
assembler.recipeBuilder()
   .inputs(<extraplanets:tier10_items:3> * 12)
   .inputs(<ore:screwAluminium> * 64)
   .fluidInputs([<liquid:soldering_alloy> * 288])
   .outputs(<extraplanets:tier10_items:2>)
   .duration(600)
   .EUt(1160)
   .buildAndRegister();

// Rockets 4-10 Tiers 

// Tier 4 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier4>)
   .inputs(<galaxyspace:rocket_parts:6> * 16)
   .inputs(<extraplanets:tier4_items:2> * 4)
   .inputs(<extraplanets:tier4_items:1> * 4)
   .inputs(<extraplanets:tier4_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleUraniumRhodiumDinaquadide> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.zpm> * 4)
   .inputs(<metaitem:emitter.zpm> * 4)
   .inputs(<ore:circuitZpm> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier4_rocket>)
   .duration(1200)
   .EUt(15000)
   .buildAndRegister();

// Tier 4 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier4>)
   .inputs(<galaxyspace:rocket_parts:6> * 16)
   .inputs(<extraplanets:tier4_items:2> * 4)
   .inputs(<extraplanets:tier4_items:1> * 4)
   .inputs(<extraplanets:tier4_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleUraniumRhodiumDinaquadide> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.zpm> * 4)
   .inputs(<metaitem:emitter.zpm> * 4)
   .inputs(<ore:circuitZpm> * 16)
   .inputs(<metaitem:crate.aluminium>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier4_rocket:1>)
   .duration(1200)
   .EUt(15000)
   .buildAndRegister();

// Tier 4 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier4>)
   .inputs(<galaxyspace:rocket_parts:6> * 16)
   .inputs(<extraplanets:tier4_items:2> * 4)
   .inputs(<extraplanets:tier4_items:1> * 4)
   .inputs(<extraplanets:tier4_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleUraniumRhodiumDinaquadide> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.zpm> * 4)
   .inputs(<metaitem:emitter.zpm> * 4)
   .inputs(<ore:circuitZpm> * 16)
   .inputs(<metaitem:crate.stainless_steel> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier4_rocket:2>)
   .duration(1200)
   .EUt(15000)
   .buildAndRegister();

// Tier 4 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier4>)
   .inputs(<galaxyspace:rocket_parts:6> * 16)
   .inputs(<extraplanets:tier4_items:2> * 4)
   .inputs(<extraplanets:tier4_items:1> * 4)
   .inputs(<extraplanets:tier4_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleUraniumRhodiumDinaquadide> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.zpm> * 4)
   .inputs(<metaitem:emitter.zpm> * 4)
   .inputs(<ore:circuitZpm> * 16)
   .inputs(<metaitem:crate.titanium> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier4_rocket:3>)
   .duration(1200)
   .EUt(15000)
   .buildAndRegister();


// Tier 5 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier5>)
   .inputs(<galaxyspace:rocket_parts:11> * 16)
   .inputs(<extraplanets:tier5_items:2> * 4)
   .inputs(<extraplanets:tier5_items:1> * 4)
   .inputs(<extraplanets:tier5_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 4)
   .inputs(<metaitem:emitter.uv> * 4)
   .inputs(<ore:circuitUv> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier5_rocket>)
   .duration(1200)
   .EUt(18000)
   .buildAndRegister();

// Tier 5 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier5>)
   .inputs(<galaxyspace:rocket_parts:11> * 16)
   .inputs(<extraplanets:tier5_items:2> * 4)
   .inputs(<extraplanets:tier5_items:1> * 4)
   .inputs(<extraplanets:tier5_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 4)
   .inputs(<metaitem:emitter.uv> * 4)
   .inputs(<ore:circuitUv> * 16)
   .inputs(<metaitem:crate.aluminium>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier5_rocket:1>)
   .duration(1200)
   .EUt(18000)
   .buildAndRegister();

// Tier 5 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier5>)
   .inputs(<galaxyspace:rocket_parts:11> * 16)
   .inputs(<extraplanets:tier5_items:2> * 4)
   .inputs(<extraplanets:tier5_items:1> * 4)
   .inputs(<extraplanets:tier5_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 4)
   .inputs(<metaitem:emitter.uv> * 4)
   .inputs(<ore:circuitUv> * 16)
   .inputs(<metaitem:crate.stainless_steel> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier5_rocket:2>)
   .duration(1200)
   .EUt(18000)
   .buildAndRegister();

// Tier 5 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier5>)
   .inputs(<galaxyspace:rocket_parts:11> * 16)
   .inputs(<extraplanets:tier5_items:2> * 4)
   .inputs(<extraplanets:tier5_items:1> * 4)
   .inputs(<extraplanets:tier5_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleEnrichedNaquadahTriniumEuropiumDuranide> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 4)
   .inputs(<metaitem:emitter.uv> * 4)
   .inputs(<ore:circuitUv> * 16)
   .inputs(<metaitem:crate.titanium> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier5_rocket:3>)
   .duration(1200)
   .EUt(18000)
   .buildAndRegister();

// Tier 6 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier6>)
   .inputs(<galaxyspace:rocket_parts:16> * 16)
   .inputs(<extraplanets:tier6_items:2> * 4)
   .inputs(<extraplanets:tier6_items:1> * 4)
   .inputs(<extraplanets:tier6_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier6_rocket>)
   .duration(1200)
   .EUt(21000)
   .buildAndRegister();

// Tier 6 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier6>)
   .inputs(<galaxyspace:rocket_parts:16> * 16)
   .inputs(<extraplanets:tier6_items:2> * 4)
   .inputs(<extraplanets:tier6_items:1> * 4)
   .inputs(<extraplanets:tier6_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.aluminium>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier6_rocket:1>)
   .duration(1200)
   .EUt(21000)
   .buildAndRegister();

// Tier 6 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier6>)
   .inputs(<galaxyspace:rocket_parts:16> * 16)
   .inputs(<extraplanets:tier6_items:2> * 4)
   .inputs(<extraplanets:tier6_items:1> * 4)
   .inputs(<extraplanets:tier6_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.stainless_steel> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier6_rocket:2>)
   .duration(1200)
   .EUt(21000)
   .buildAndRegister();

// Tier 6 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier6>)
   .inputs(<galaxyspace:rocket_parts:16> * 16)
   .inputs(<extraplanets:tier6_items:2> * 4)
   .inputs(<extraplanets:tier6_items:1> * 4)
   .inputs(<extraplanets:tier6_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.titanium> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier6_rocket:3>)
   .duration(1200)
   .EUt(21000)
   .buildAndRegister();

// Tier 7 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier7>)
   .inputs(<contenttweaker:rocketparts_tier7> * 16)
   .inputs(<extraplanets:tier7_items:2> * 4)
   .inputs(<extraplanets:tier7_items:1> * 4)
   .inputs(<extraplanets:tier7_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier7_rocket>)
   .duration(1200)
   .EUt(26000)
   .buildAndRegister();

// Tier 7 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier6>)
   .inputs(<contenttweaker:rocketparts_tier7> * 16)
   .inputs(<extraplanets:tier7_items:2> * 4)
   .inputs(<extraplanets:tier7_items:1> * 4)
   .inputs(<extraplanets:tier7_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.aluminium>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier7_rocket:1>)
   .duration(1200)
   .EUt(26000)
   .buildAndRegister();

// Tier 7 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier7>)
   .inputs(<contenttweaker:rocketparts_tier7> * 16)
   .inputs(<extraplanets:tier7_items:2> * 4)
   .inputs(<extraplanets:tier7_items:1> * 4)
   .inputs(<extraplanets:tier7_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.stainless_steel> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier7_rocket:2>)
   .duration(1200)
   .EUt(26000)
   .buildAndRegister();

// Tier 7 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier7>)
   .inputs(<contenttweaker:rocketparts_tier7> * 16)
   .inputs(<extraplanets:tier7_items:2> * 4)
   .inputs(<extraplanets:tier7_items:1> * 4)
   .inputs(<extraplanets:tier7_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.titanium> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier7_rocket:3>)
   .duration(1200)
   .EUt(26000)
   .buildAndRegister();

// Tier 8 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier8>)
   .inputs(<contenttweaker:rocketparts_tier8> * 16)
   .inputs(<extraplanets:tier8_items:2> * 4)
   .inputs(<extraplanets:tier8_items:1> * 4)
   .inputs(<extraplanets:tier8_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier8_rocket>)
   .duration(1200)
   .EUt(42000)
   .buildAndRegister();

// Tier 8 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier6>)
   .inputs(<contenttweaker:rocketparts_tier8> * 16)
   .inputs(<extraplanets:tier8_items:2> * 4)
   .inputs(<extraplanets:tier8_items:1> * 4)
   .inputs(<extraplanets:tier8_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.aluminium>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier8_rocket:1>)
   .duration(1200)
   .EUt(42000)
   .buildAndRegister();

// Tier 8 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier8>)
   .inputs(<contenttweaker:rocketparts_tier8> * 16)
   .inputs(<extraplanets:tier8_items:2> * 4)
   .inputs(<extraplanets:tier8_items:1> * 4)
   .inputs(<extraplanets:tier8_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.stainless_steel> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier8_rocket:2>)
   .duration(1200)
   .EUt(42000)
   .buildAndRegister();

// Tier 8 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier8>)
   .inputs(<contenttweaker:rocketparts_tier8> * 16)
   .inputs(<extraplanets:tier8_items:2> * 4)
   .inputs(<extraplanets:tier8_items:1> * 4)
   .inputs(<extraplanets:tier8_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.titanium> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier8_rocket:3>)
   .duration(1200)
   .EUt(42000)
   .buildAndRegister();

// Tier 9 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier9>)
   .inputs(<contenttweaker:rocketparts_tier9> * 16)
   .inputs(<extraplanets:tier9_items:2> * 4)
   .inputs(<extraplanets:tier9_items:1> * 4)
   .inputs(<extraplanets:tier9_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier9_rocket>)
   .duration(1200)
   .EUt(51000)
   .buildAndRegister();

// Tier 9 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier6>)
   .inputs(<contenttweaker:rocketparts_tier9> * 16)
   .inputs(<extraplanets:tier9_items:2> * 4)
   .inputs(<extraplanets:tier9_items:1> * 4)
   .inputs(<extraplanets:tier9_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.aluminium>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier9_rocket:1>)
   .duration(1200)
   .EUt(51000)
   .buildAndRegister();

// Tier 9 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier9>)
   .inputs(<contenttweaker:rocketparts_tier9> * 16)
   .inputs(<extraplanets:tier9_items:2> * 4)
   .inputs(<extraplanets:tier9_items:1> * 4)
   .inputs(<extraplanets:tier9_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.stainless_steel> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier9_rocket:2>)
   .duration(1200)
   .EUt(51000)
   .buildAndRegister();

// Tier 9 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier9>)
   .inputs(<contenttweaker:rocketparts_tier9> * 16)
   .inputs(<extraplanets:tier9_items:2> * 4)
   .inputs(<extraplanets:tier9_items:1> * 4)
   .inputs(<extraplanets:tier9_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.titanium> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier9_rocket:3>)
   .duration(1200)
   .EUt(51000)
   .buildAndRegister();

// Tier 10 - Without Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier10>)
   .inputs(<contenttweaker:rocketparts_tier10> * 16)
   .inputs(<extraplanets:tier10_items:2> * 4)
   .inputs(<extraplanets:tier10_items:1> * 4)
   .inputs(<extraplanets:tier10_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier10_rocket>)
   .duration(1200)
   .EUt(91000)
   .buildAndRegister();

// Tier 10 - With 1 Chest
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier6>)
   .inputs(<contenttweaker:rocketparts_tier10> * 16)
   .inputs(<extraplanets:tier10_items:2> * 4)
   .inputs(<extraplanets:tier10_items:1> * 4)
   .inputs(<extraplanets:tier10_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.aluminium>)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier10_rocket:1>)
   .duration(1200)
   .EUt(91000)
   .buildAndRegister();

// Tier 10 - With 2 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier10>)
   .inputs(<contenttweaker:rocketparts_tier10> * 16)
   .inputs(<extraplanets:tier10_items:2> * 4)
   .inputs(<extraplanets:tier10_items:1> * 4)
   .inputs(<extraplanets:tier10_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.stainless_steel> * 2)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier10_rocket:2>)
   .duration(1200)
   .EUt(91000)
   .buildAndRegister();

// Tier 10 - With 3 Chests
assembly_line.recipeBuilder()
   .inputs(<extraplanets:nose_cone_tier10>)
   .inputs(<contenttweaker:rocketparts_tier10> * 16)
   .inputs(<extraplanets:tier10_items:2> * 4)
   .inputs(<extraplanets:tier10_items:1> * 4)
   .inputs(<extraplanets:tier10_items>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<ore:wireGtSingleRutheniumTriniumAmericiumNeutronate> * 16)
   .inputs(<ore:batteryIv>)
   .inputs(<galaxyspace:rocket_modules:2>)
   .inputs(<metaitem:electric.motor.uv> * 6)
   .inputs(<metaitem:emitter.uv> * 6)
   .inputs(<ore:circuitUhv> * 16)
   .inputs(<metaitem:crate.titanium> * 3)
   .fluidInputs([<liquid:soldering_alloy> * 9216])
   .fluidInputs([<liquid:lead> * 4608])
   .fluidInputs([<liquid:copper> * 4608])
   .outputs(<extraplanets:item_tier10_rocket:3>)
   .duration(1200)
   .EUt(91000)
   .buildAndRegister();