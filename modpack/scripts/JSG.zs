import crafttweaker.item.IItemStack;


// --- Добавление рецептов

// Transportrings_block
star_forge.recipeBuilder()
  .circuit(1)
  .inputs(
    <metaitem:blockNaquadahAlloy> * 4, 
    <jsg:crystal_red>,
    <jsg:crystal_ender>,
    <jsg:crystal_yellow>,
    <jsg:crystal_blue>,
    <jsg:transportrings_ring_fragment> * 16,
    <jsg:circuit_control_naquadah> * 2)
  .fluidInputs([<liquid:naquadah_alloy> * 1000])
  .outputs(<jsg:transportrings_goauld_block>)
  .duration(200).EUt(2800).buildAndRegister();

// Transportrings_block
star_forge.recipeBuilder()
  .circuit(1)
  .inputs(
    <metaitem:blockTrinium> * 4, 
    <jsg:crystal_red>, 
    <jsg:crystal_ender>, 
    <jsg:crystal_yellow>, 
    <jsg:crystal_blue>, 
    <jsg:transportrings_ring_fragment> * 16, 
    <jsg:circuit_control_naquadah> * 2)
  .fluidInputs([<liquid:naquadah_alloy> * 1000])
  .outputs(<jsg:transportrings_ori_block>)
  .duration(200).EUt(2800).buildAndRegister();

// Transportrings_controller_block
star_forge.recipeBuilder()
  .circuit(2)
  .inputs(
    <metaitem:ingotNaquadahAlloy> * 6, 
    <jsg:crystal_ender>, 
    <jsg:circuit_control_naquadah>, 
    <projectred-illumination:light_button> * 9)
	.fluidInputs([<liquid:gold> * 2000])
  .outputs(<jsg:transportrings_controller_goauld_block>)
  .duration(200).EUt(980).buildAndRegister();

// Transportrings_ring_fragment>
star_forge.recipeBuilder()
  .circuit(3)
  .inputs(
    <metaitem:ingotNaquadahAlloy> * 2, 
    <jsg:crystal_ender>, 
    <jsg:crystal_blue>, 
    <jsg:circuit_control_naquadah>)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<jsg:transportrings_ring_fragment>)
  .duration(200).EUt(1880).buildAndRegister();
// Символьный кристалл наборного устройства
star_forge.recipeBuilder()
  .circuit(4)
  .inputs(
    <jsg:crystal_ender>, 
    <jsg:circuit_control_crystal>)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<jsg:crystal_glyph_dhd>)
  .duration(1000).EUt(15880).buildAndRegister();
// Символьный кристалл звездных врат
star_forge.recipeBuilder()
  .circuit(5)
  .inputs(
    <jsg:crystal_ender>, 
    <jsg:circuit_control_crystal>, 
    <jsg:crystal_blue>)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<jsg:crystal_glyph_stargate>)
  .duration(1000).EUt(15880).buildAndRegister();
// Символьный кристалл млечного пути
star_forge.recipeBuilder()
  .circuit(5)
  .inputs(
    <jsg:crystal_ender>, 
    <jsg:circuit_control_crystal>, 
    <jsg:crystal_red>, 
    <jsg:crystal_blue>)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<jsg:crystal_glyph_milkyway>)
  .duration(1000).EUt(15880).buildAndRegister();
// Символьный кристалл колец
star_forge.recipeBuilder()
  .circuit(6)
  .inputs(
    <jsg:crystal_yellow>, 
    <jsg:circuit_control_crystal>, 
    <jsg:crystal_red>, 
    <jsg:crystal_white>)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<jsg:crystal_glyph_goauld>)
  .duration(100).EUt(10880).buildAndRegister();

// Circuit_control_base
circuit_assembler.recipeBuilder()
  .circuit(1)
  .inputs(
    <jsg:crystal_ender>, 
    <jsg:crystal_red>, 
    <jsg:crystal_yellow>, 
    <jsg:crystal_blue>)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<jsg:circuit_control_base>)
  .duration(200).EUt(15880).buildAndRegister();

// Circuit_control_naquadah
circuit_assembler.recipeBuilder()
  .inputs(
    <jsg:circuit_control_base> * 2, 
    <jsg:crystal_ender>, 
    <jsg:crystal_red>, 
    <jsg:crystal_yellow>, 
    <jsg:crystal_blue>, 
    <ore:circuitLuv> * 4)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<jsg:circuit_control_naquadah>)
  .duration(250).EUt(22080).buildAndRegister();

// DHD
assembly_line.recipeBuilder()
  .inputs(
    <ore:batteryLuv> * 4,  
    <ore:circuitLuv> * 9,
		<projectred-illumination:light_button:14> * 19,
    <jsg:circuit_control_naquadah> * 4, 
    <jsg:dhd_brb>, 
    <jsg:crystal_ender> * 5, 
    <jsg:crystal_red> * 5, 
    <jsg:holder_crystal>, 
    <metaitem:plateDenseNaquadahAlloy> * 3, 
    <metaitem:plateDenseNaquadahAlloy> * 3)
  .fluidInputs(
    <liquid:molten.incoloy_ma_956> * 6864, 
    <liquid:molten.hssg> * 4432)
  .outputs(<jsg:dhd_block>)
  .duration(1800).EUt(183100).buildAndRegister();

// Holder_crystal
star_forge.recipeBuilder()
  .circuit(4)
  .inputs(
    <metaitem:ingotNaquadahAlloy> * 6, 
    <jsg:crystal_red> * 3)
  .outputs(<jsg:holder_crystal>)
  .duration(200).EUt(1880).buildAndRegister();

// Dhd_brb
star_forge.recipeBuilder()
  .circuit(5)
  .inputs(
    <metaitem:ingotNaquadahAlloy> * 6, 
    <ore:circuitLuv>, 
    <jsg:crystal_red> * 3)
	.fluidInputs([<liquid:glass> * 18000])
  .outputs(<jsg:dhd_brb>)
  .duration(300).EUt(1880).buildAndRegister();

// Смеси
// Эндер смесь
fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:americium> * 32])
 	.fluidOutputs(<liquid:silicon_molten_ender> * 32)
	.property("eu_to_start", 350000000)
  .duration(100).EUt(420290).buildAndRegister();
// Световая смесь
fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:glowstone> * 32])
 	.fluidOutputs(<liquid:silicon_molten_yellow> * 32)
	.property("eu_to_start", 350000000)
  .duration(100).EUt(420290).buildAndRegister();
// Телепортационная смесь
fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:blue_alloy> * 32])
 	.fluidOutputs(<liquid:silicon_molten_blue> * 32)
	.property("eu_to_start", 350000000)
  .duration(100).EUt(420290).buildAndRegister();
// Энергетическа смесь
fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:redstone> * 32])
 	.fluidOutputs(<liquid:silicon_molten_red> * 32)
	.property("eu_to_start", 350000000)
  .duration(100).EUt(420290).buildAndRegister();

// Семя кристалла
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:1200>])
  .fluidInputs([<liquid:silicon> * 2440])
 	.chancedOutput(<jsg:crystal_fragment> * 1, 7000, 500)
  .duration(1000).EUt(1090).buildAndRegister();

// Выращивание кристалов
autoclave.recipeBuilder()
  .inputs([<jsg:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_ender> * 2440])
 	.chancedOutput(<jsg:crystal_ender> * 1, 8000, 500)
  .duration(1000).EUt(13290).buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<jsg:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_yellow> * 2440])
 	.chancedOutput(<jsg:crystal_yellow> * 1, 8000, 500)
  .duration(1000).EUt(13290).buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<jsg:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_blue> * 2440])
 	.chancedOutput(<jsg:crystal_blue> * 1, 8000, 500)
  .duration(1000).EUt(13290).buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<jsg:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_red> * 2440])
 	.chancedOutput(<jsg:crystal_red> * 1, 8000, 500)
  .duration(1000).EUt(13290).buildAndRegister();
autoclave.recipeBuilder()
  .inputs([<jsg:crystal_fragment>])
  .fluidInputs([<liquid:molten.stellite_100> * 2440])
 	.chancedOutput(<jsg:crystal_white> * 1, 8000, 500)
  .duration(1000).EUt(13290).buildAndRegister();
// stargate_milkyway_base_block
star_forge.recipeBuilder()
  .circuit(6)
  .inputs(
    <metaitem:ingotNaquadahAlloy> * 6, 
    <jsg:stargate_ring_fragment> * 4, 
    <jsg:crystal_red>, <jsg:crystal_ender>, 
    <jsg:crystal_blue>, 
    <jsg:circuit_control_naquadah>)
  .outputs(<jsg:stargate_milkyway_base_block>)
  .duration(4000).EUt(130880).buildAndRegister();

star_forge.recipeBuilder()
  .circuit(7)
  .inputs(
    <metaitem:ingotNaquadahAlloy> * 2, 
    <jsg:stargate_ring_fragment> * 2, 
    <jsg:crystal_red>)
  .outputs(<jsg:stargate_milkyway_member_block:6>)
  .duration(2000).EUt(120880).buildAndRegister();

star_forge.recipeBuilder()
  .circuit(8)
  .inputs(
    <metaitem:ingotNaquadahAlloy> * 4, 
    <jsg:stargate_ring_fragment> * 2, 
    <jsg:crystal_ender>, 
    <jsg:crystal_yellow>, 
    <gregtech:transparent_casing> * 4)
  .outputs(<jsg:stargate_milkyway_member_block:14>)
  .duration(2000).EUt(130880).buildAndRegister();

// stargate_ring_fragment
star_forge.recipeBuilder()
  .circuit(9)
  .inputs(
    <metaitem:plateDenseNaquadahAlloy> * 9, 
    <ore:batteryUv>)
  .outputs(<jsg:stargate_ring_fragment> * 2)
  .duration(2000).EUt(121880).buildAndRegister();

// capacitor_block_empty
star_forge.recipeBuilder()
  .circuit(10)
  .inputs(
    <metaitem:plateDenseNaquadahAlloy> * 4, 
    <jsg:crystal_red> * 4, 
    <ore:batteryLuv> * 6)
  .outputs(<jsg:capacitor_block_empty>)
  .duration(2000).EUt(130880).buildAndRegister();

// capacitor_block
canner.recipeBuilder()
  .circuit(11)
  .inputs(<jsg:capacitor_block_empty>)
  .fluidInputs(<liquid:silicon_molten_red> * 6440)
 	.outputs(<jsg:capacitor_block> * 1)
  .duration(1000).EUt(12290).buildAndRegister();

// crystal_control_dhd
star_forge.recipeBuilder()
  .circuit(12)
  .inputs(<jsg:crystal_red> * 4, <ore:batteryLuv> * 2)
	.fluidInputs(<liquid:silicon_molten_red> * 144)
  .outputs(<jsg:crystal_control_dhd>)
  .duration(2000).EUt(130880).buildAndRegister();

// circuit_control_crystal>
star_forge.recipeBuilder()
  .circuit(13)
  .inputs(
    <metaitem:foilNaquadahAlloy> * 9, 
    <jsg:circuit_control_naquadah> * 4, 
    <jsg:crystal_ender>, 
    <jsg:crystal_yellow>, 
    <jsg:crystal_blue>)
  .fluidInputs([<liquid:molten.incoloy_ma_956> * 1000])
  .outputs(<jsg:circuit_control_crystal>)
  .duration(200).EUt(280000).buildAndRegister();

// beamer_block
star_forge.recipeBuilder()
  .circuit(14)
  .inputs(
    <metaitem:plateDenseNaquadahAlloy> * 2, 
    <jsg:circuit_control_naquadah>, 
    <jsg:crystal_red>, 
    <jsg:crystal_ender>, 
    <jsg:crystal_yellow>, 
    <jsg:crystal_blue>)
  .fluidInputs([<liquid:molten.incoloy_ma_956> * 1000])
  .outputs(<jsg:beamer_block>)
  .duration(200).EUt(282000).buildAndRegister();

// Портативное устройство древних
recipes.addShapeless("tfg/jsg/universe_dialer", <jsg:universe_dialer>, [<jsg:universe_dialer:1>, <galacticraftcore:space_glass_clear>]);
assembly_line.recipeBuilder()
  .inputs(
    <jsg:crystal_yellow>,  
    <ore:circuitLuv> * 9,
		<jsg:circuit_control_naquadah>,
    <galacticraftcore:space_glass_clear>,
    <metaitem:plateNaquadahAlloy> * 5)
  .fluidInputs(
    <liquid:molten.incoloy_ma_956> * 164, 
    <liquid:molten.hssg> * 432)
  .outputs(<jsg:universe_dialer>)
  .duration(1800).EUt(18100).buildAndRegister();

