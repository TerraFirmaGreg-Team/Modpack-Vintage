import crafttweaker.item.IItemStack;


// Удаление рецептов
recipes.removeByMod("aunis");

// --- Добавление рецептов

// Transportrings_block
star_forge.recipeBuilder()
  .circuit(1)
  .inputs(<ore:blockNaquadahAlloy> * 4, <aunis:crystal_red>, <aunis:crystal_ender>, <aunis:crystal_yellow>, <aunis:crystal_blue>, <aunis:transportrings_ring_fragment> * 16, <aunis:circuit_control_naquadah> * 2)
  .fluidInputs([<liquid:naquadah_alloy> * 1000])
  .outputs(<aunis:transportrings_goauld_block>)
  .duration(200).EUt(2800).buildAndRegister();

// Transportrings_block
star_forge.recipeBuilder()
  .circuit(1)
  .inputs(<ore:blockTrinium> * 4, <aunis:crystal_red>, <aunis:crystal_ender>, <aunis:crystal_yellow>, <aunis:crystal_blue>, <aunis:transportrings_ring_fragment> * 16, <aunis:circuit_control_naquadah> * 2)
  .fluidInputs([<liquid:naquadah_alloy> * 1000])
  .outputs(<aunis:transportrings_ori_block>)
  .duration(200).EUt(2800).buildAndRegister();

// Transportrings_controller_block
star_forge.recipeBuilder()
  .circuit(2)
  .inputs(<ore:ingotNaquadahAlloy> * 6, <aunis:crystal_ender>, <aunis:circuit_control_naquadah>, <projectred-illumination:light_button> * 9)
	.fluidInputs([<liquid:gold> * 2000])
  .outputs(<aunis:transportrings_controller_goauld_block>)
  .duration(200).EUt(980).buildAndRegister();

// Transportrings_ring_fragment>
star_forge.recipeBuilder()
  .circuit(3)
  .inputs(<ore:ingotNaquadahAlloy> * 2, <aunis:crystal_ender>, <aunis:crystal_blue>, <aunis:circuit_control_naquadah>)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<aunis:transportrings_ring_fragment>)
  .duration(200).EUt(1880).buildAndRegister();

// Circuit_control_base
circuit_assembler.recipeBuilder()
  .circuit(1)
  .inputs(<aunis:crystal_ender>, <aunis:crystal_red>, <aunis:crystal_yellow>, <aunis:crystal_blue>)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<aunis:circuit_control_base>)
  .duration(200).EUt(15880).buildAndRegister();

// Circuit_control_naquadah
circuit_assembler.recipeBuilder()
  .inputs(<aunis:circuit_control_base> * 2, <aunis:crystal_ender>, <aunis:crystal_red>, <aunis:crystal_yellow>, <aunis:crystal_blue>, <ore:circuitLuv> * 4)
	.fluidInputs([<liquid:glass> * 4000])
  .outputs(<aunis:circuit_control_naquadah>)
  .duration(250).EUt(22080).buildAndRegister();

// DHD
assembly_line.recipeBuilder()
  .inputs(
    <ore:batteryLuv> * 4,  
    <ore:circuitLuv> * 9,
		<projectred-illumination:light_button:14> * 19,
    <aunis:circuit_control_naquadah> * 4, 
    <aunis:dhd_brb>, 
    <aunis:crystal_ender> * 5, 
    <aunis:crystal_red> * 5, 
    <aunis:holder_crystal>, 
    <ore:plateDenseNaquadahAlloy> * 3, 
    <ore:plateDenseNaquadahAlloy> * 3)
  .fluidInputs(
    <liquid:molten.incoloy_ma_956> * 6864, 
    <liquid:molten.hssg> * 4432)
  .outputs(<aunis:dhd_block>)
  .duration(1800).EUt(83100).buildAndRegister();

// Holder_crystal
star_forge.recipeBuilder()
  .circuit(4)
  .inputs(<ore:ingotNaquadahAlloy> * 6, <aunis:crystal_red> * 3)
  .outputs(<aunis:holder_crystal>)
  .duration(200).EUt(1880).buildAndRegister();

// Dhd_brb
star_forge.recipeBuilder()
  .circuit(5)
  .inputs(<ore:ingotNaquadahAlloy> * 6, <ore:circuitLuv>, <aunis:crystal_red> * 3)
	.fluidInputs([<liquid:glass> * 18000])
  .outputs(<aunis:dhd_brb>)
  .duration(300).EUt(1880).buildAndRegister();

// Выращивание кристалов
autoclave.recipeBuilder()
  .inputs([<aunis:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_ender> * 2440])
 	.chancedOutput(<aunis:crystal_ender> * 1, 8000, 500)
  .duration(1000).EUt(13290).buildAndRegister();

autoclave.recipeBuilder()
  .inputs([<aunis:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_yellow> * 2440])
 	.chancedOutput(<aunis:crystal_yellow> * 1, 8000, 500)
  .duration(1000).EUt(13290).buildAndRegister();

autoclave.recipeBuilder()
  .inputs([<aunis:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_blue> * 2440])
 	.chancedOutput(<aunis:crystal_blue> * 1, 8000, 500)
  .duration(1000).EUt(13290).buildAndRegister();

autoclave.recipeBuilder()
  .inputs([<aunis:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_red> * 2440])
 	.chancedOutput(<aunis:crystal_red> * 1, 8000, 500)
  .duration(1000).EUt(13290).buildAndRegister();

// Crystal seed
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:1200>])
  .fluidInputs([<liquid:silicon> * 2440])
 	.chancedOutput(<aunis:crystal_fragment> * 1, 7000, 500)
  .duration(1000).EUt(1090).buildAndRegister();

// Blend
fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:americium> * 32])
 	.fluidOutputs(<liquid:silicon_molten_ender> * 32)
	.property("eu_to_start", 30000000)
  .duration(1000).EUt(4290).buildAndRegister();

fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:glowstone> * 32])
 	.fluidOutputs(<liquid:silicon_molten_yellow> * 32)
	.property("eu_to_start", 30000000)
  .duration(1000).EUt(4290).buildAndRegister();

fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:blue_alloy> * 32])
 	.fluidOutputs(<liquid:silicon_molten_blue> * 32)
	.property("eu_to_start", 30000000)
  .duration(1000).EUt(4290).buildAndRegister();

fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:redstone> * 32])
 	.fluidOutputs(<liquid:silicon_molten_red> * 32)
	.property("eu_to_start", 30000000)
  .duration(1000).EUt(4290).buildAndRegister();

// stargate_milkyway_base_block
star_forge.recipeBuilder()
  .circuit(6)
  .inputs(<ore:ingotNaquadahAlloy> * 6, <aunis:stargate_ring_fragment> * 4, <aunis:crystal_red>, <aunis:crystal_ender>, <aunis:crystal_blue>, <aunis:circuit_control_naquadah>)
  .outputs(<aunis:stargate_milkyway_base_block>)
  .duration(4000).EUt(130880).buildAndRegister();

star_forge.recipeBuilder()
  .circuit(7)
  .inputs(<ore:ingotNaquadahAlloy> * 2, <aunis:stargate_ring_fragment> * 2, <aunis:crystal_red>)
  .outputs(<aunis:stargate_milkyway_member_block:6>)
  .duration(2000).EUt(120880).buildAndRegister();

star_forge.recipeBuilder()
  .circuit(8)
  .inputs(<ore:ingotNaquadahAlloy> * 4, <aunis:stargate_ring_fragment> * 2, <aunis:crystal_ender>, <aunis:crystal_yellow>, <gregtech:transparent_casing> * 4)
  .outputs(<aunis:stargate_milkyway_member_block:14>)
  .duration(2000).EUt(130880).buildAndRegister();

// stargate_ring_fragment
star_forge.recipeBuilder()
  .circuit(9)
  .inputs(<ore:plateDenseNaquadahAlloy> * 9, <ore:batteryIv>)
  .outputs(<aunis:stargate_ring_fragment> * 2)
  .duration(2000).EUt(12880).buildAndRegister();

// capacitor_block_empty
star_forge.recipeBuilder()
  .circuit(10)
  .inputs(<ore:plateDenseNaquadahAlloy> * 4, <aunis:crystal_red> * 4, <ore:batteryLuv> * 6)
  .outputs(<aunis:capacitor_block_empty>)
  .duration(2000).EUt(130880).buildAndRegister();

// capacitor_block
canner.recipeBuilder()
  .circuit(11)
  .inputs(<aunis:capacitor_block_empty>)
  .fluidInputs(<liquid:silicon_molten_red> * 6440)
 	.outputs(<aunis:capacitor_block> * 1)
  .duration(1000).EUt(1290).buildAndRegister();

// crystal_control_dhd
star_forge.recipeBuilder()
  .circuit(12)
  .inputs(<aunis:crystal_red> * 4, <ore:batteryLuv> * 2)
	.fluidInputs(<liquid:silicon_molten_red> * 144)
  .outputs(<aunis:crystal_control_dhd>)
  .duration(2000).EUt(10880).buildAndRegister();

// circuit_control_crystal>
star_forge.recipeBuilder()
  .circuit(13)
  .inputs(<ore:foilNaquadahAlloy> * 9, <aunis:circuit_control_naquadah> * 4, <aunis:crystal_ender>, <aunis:crystal_yellow>, <aunis:crystal_blue>)
  .fluidInputs([<liquid:molten.incoloy_ma_956> * 1000])
  .outputs(<aunis:circuit_control_crystal>)
  .duration(200).EUt(280000).buildAndRegister();

// beamer_block
star_forge.recipeBuilder()
  .circuit(14)
  .inputs(<ore:plateDenseNaquadahAlloy> * 2, <aunis:circuit_control_naquadah>, <aunis:crystal_red>, <aunis:crystal_ender>, <aunis:crystal_yellow>, <aunis:crystal_blue>)
  .fluidInputs([<liquid:molten.incoloy_ma_956> * 1000])
  .outputs(<aunis:beamer_block>)
  .duration(200).EUt(282000).buildAndRegister();
