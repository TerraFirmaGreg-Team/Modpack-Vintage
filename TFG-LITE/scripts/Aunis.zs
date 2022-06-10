import mods.inworldcrafting.FluidToItem;
import crafttweaker.item.IItemStack;

// Удаление рецептов
val ItemsToRemove as IItemStack[] = [
<aunis:beamer_block>,
<aunis:beamer_crystal_fluid>,
<aunis:beamer_crystal_items>,
<aunis:beamer_crystal_power>,
<aunis:capacitor_block>,
<aunis:capacitor_block_empty>,
<aunis:circuit_control_base>,
<aunis:circuit_control_crystal>,
<aunis:circuit_control_naquadah>,
<aunis:crystal_blue>,
<aunis:crystal_blue_pegasus>,
<aunis:crystal_control_dhd>,
<aunis:crystal_control_pegasus_dhd>,
<aunis:crystal_ender>,
<aunis:crystal_fragment>,
<aunis:crystal_glyph_dhd>,
<aunis:crystal_glyph_goauld>,
<aunis:crystal_glyph_milkyway>,
<aunis:crystal_glyph_ori>,
<aunis:crystal_glyph_pegasus>,
<aunis:crystal_glyph_stargate>,
<aunis:crystal_glyph_universe>,
<aunis:crystal_red>,
<aunis:crystal_white>,
<aunis:crystal_yellow>,
<aunis:dhd_bbb>,
<aunis:dhd_block>,
<aunis:dhd_brb>,
<aunis:dhd_pegasus_block>,
<aunis:gdo>.withTag({mode: 0 as byte, saved: [], selected: 0 as byte}),
<aunis:holder_crystal>,
<aunis:holder_crystal_pegasus>,
<aunis:invisible_block>,
<aunis:iris_blade>,
<aunis:iris_blade_trinium>,
<aunis:iris_block>,
<aunis:naquadah_alloy>,
<aunis:naquadah_alloy_raw>,
<aunis:naquadah_block>,
<aunis:naquadah_block_raw>,
<aunis:naquadah_ore>,
<aunis:naquadah_ore_stone>,
<aunis:naquadah_shard>,
<aunis:notebook>,
<aunis:page_mysterious>,
<aunis:page_notebook>,
<aunis:quad_iris_blade>,
<aunis:quad_iris_blade_trinium>,
<aunis:raw_pegasus_dhd_crystal>,
<aunis:shield_emitter>,
<aunis:stargate_milkyway_base_block>,
<aunis:stargate_milkyway_member_block:6>,
<aunis:stargate_milkyway_member_block:14>,
<aunis:stargate_orlin_base_block>.withTag({openCount: 0}),
<aunis:stargate_orlin_member_block>.withTag({openCount: 0}),
<aunis:stargate_pegasus_base_block>,
<aunis:stargate_pegasus_member_block:6>,
<aunis:stargate_pegasus_member_block:14>,
<aunis:stargate_ring_fragment>,
<aunis:stargate_universe_base_block>,
<aunis:stargate_universe_member_block:6>,
<aunis:stargate_universe_member_block:14>,
<aunis:titanium_block>,
<aunis:titanium_ingot>,
<aunis:titanium_ore>,
<aunis:transportrings_controller_goauld_block>,
<aunis:transportrings_goauld_block>,
<aunis:transportrings_ori_block>,
<aunis:transportrings_ring_fragment>,
<aunis:trinium_block>,
<aunis:trinium_ingot>,
<aunis:trinium_ore>,
<aunis:universe_dialer>.withTag({mode: 0 as byte, saved: [], selected: 0 as byte}),
<aunis:universe_ring_fragment>,
<aunis:upgrade_iris>.withTag({damage: 0}),
<aunis:upgrade_iris_trinium>.withTag({damage: 0}),
<aunis:upgrade_shield>
];
for item in ItemsToRemove{
    recipes.remove(item);
}

// Транспортные кольца Гоа’улды
starforge.recipeBuilder()
      .inputs(<ore:frameGtNaquadahAlloy> * 4, <aunis:crystal_red> * 12, <aunis:crystal_ender> * 12, <aunis:crystal_yellow> * 12, <aunis:crystal_blue> * 12, <aunis:transportrings_ring_fragment> * 16, <aunis:circuit_control_naquadah> * 2)
      .fluidInputs([<liquid:naquadah_alloy> * 1000])
      .outputs(<aunis:transportrings_goauld_block>)
      .duration(200)
      .EUt(2800)
      .buildAndRegister();
// Транспортные кольца Ори
starforge.recipeBuilder()
      .inputs(<ore:frameGtTrinium> * 4, <aunis:crystal_red> * 12, <aunis:crystal_ender> * 12, <aunis:crystal_yellow> * 12, <aunis:crystal_blue> * 12, <aunis:transportrings_ring_fragment> * 16, <aunis:circuit_control_naquadah> * 2)
      .fluidInputs([<liquid:naquadah_alloy> * 1000])
      .outputs(<aunis:transportrings_ori_block>)
      .duration(200)
      .EUt(2800)
      .buildAndRegister();
// Транспортные контролер
starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 6, <aunis:crystal_ender>, <aunis:circuit_control_naquadah>, <projectred-illumination:light_button> * 9)
		.fluidInputs([<liquid:gold> * 2000])
    .outputs(<aunis:transportrings_controller_goauld_block>)
    .duration(200).EUt(980).buildAndRegister();

// Transportrings_ring_fragment>
starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 2, <aunis:crystal_ender>, <aunis:crystal_blue>, <aunis:circuit_control_naquadah>)
		.fluidInputs([<liquid:glass> * 4000])
    .outputs(<aunis:transportrings_ring_fragment>)
    .duration(200).EUt(1880).buildAndRegister();

// Circuit_control_base
circuit_assembler.recipeBuilder()
    .inputs(<aunis:crystal_ender>, <aunis:crystal_red>, <aunis:crystal_yellow>, <aunis:crystal_blue>)
		.fluidInputs([<liquid:glass> * 4000])
    .outputs(<aunis:circuit_control_base>)
    .duration(200).EUt(1880).buildAndRegister();

// Circuit_control_naquadah
circuit_assembler.recipeBuilder()
    .inputs(<aunis:circuit_control_base> * 2, <aunis:crystal_ender>, <aunis:crystal_red>, <aunis:crystal_yellow>, <aunis:crystal_blue>, <ore:circuitLuv> * 4)
		.fluidInputs([<liquid:glass> * 4000])
    .outputs(<aunis:circuit_control_naquadah>)
    .duration(250).EUt(2080).buildAndRegister();

// Выращивание кристалов
autoclave.recipeBuilder()
  .inputs([<aunis:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_ender> * 2440])
 	.chancedOutput(<aunis:crystal_ender> * 1, 8000, 500)
  .duration(1000)
  .EUt(1290)
  .buildAndRegister();

autoclave.recipeBuilder()
  .inputs([<aunis:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_yellow> * 2440])
 	.chancedOutput(<aunis:crystal_yellow> * 1, 8000, 500)
  .duration(1000)
  .EUt(1290)
  .buildAndRegister();

autoclave.recipeBuilder()
  .inputs([<aunis:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_blue> * 2440])
 	.chancedOutput(<aunis:crystal_blue> * 1, 8000, 500)
  .duration(1000)
  .EUt(1290)
  .buildAndRegister();

autoclave.recipeBuilder()
  .inputs([<aunis:crystal_fragment>])
  .fluidInputs([<liquid:silicon_molten_red> * 2440])
 	.chancedOutput(<aunis:crystal_red> * 1, 8000, 500)
  .duration(1000)
  .EUt(1290)
  .buildAndRegister();

// Семя кристалла
autoclave.recipeBuilder()
  .inputs([<appliedenergistics2:crystal_seed:1200>])
  .fluidInputs([<liquid:silicon> * 2440])
 	.chancedOutput(<aunis:crystal_fragment> * 1, 7000, 500)
  .duration(1000)
  .EUt(1090)
  .buildAndRegister();

// Смеси
fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:americium> * 32])
 	.fluidOutputs(<liquid:silicon_molten_ender> * 32)
	.property("eu_to_start", 30000000)
  .duration(1000)
  .EUt(4290)
  .buildAndRegister();

fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:glowstone> * 32])
 	.fluidOutputs(<liquid:silicon_molten_yellow> * 32)
	.property("eu_to_start", 30000000)
  .duration(1000)
  .EUt(4290)
  .buildAndRegister();

fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:blue_alloy> * 32])
 	.fluidOutputs(<liquid:silicon_molten_blue> * 32)
	.property("eu_to_start", 30000000)
  .duration(1000)
  .EUt(4290)
  .buildAndRegister();

fusion_reactor.recipeBuilder()
  .fluidInputs([<liquid:silicon> * 32])
	.fluidInputs([<liquid:redstone> * 32])
 	.fluidOutputs(<liquid:silicon_molten_red> * 32)
	.property("eu_to_start", 30000000)
  .duration(1000)
  .EUt(4290)
  .buildAndRegister();

// Звездные врата (Млечный путь)
starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 6, <aunis:stargate_ring_fragment> * 4, <aunis:crystal_red>, <aunis:crystal_ender>, <aunis:crystal_blue>, <aunis:circuit_control_naquadah>)
    .outputs(<aunis:stargate_milkyway_base_block>)
    .duration(4000).EUt(130880).buildAndRegister();

starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 2, <aunis:stargate_ring_fragment> * 2, <aunis:crystal_red>)
    .outputs(<aunis:stargate_milkyway_member_block:6>)
    .duration(2000).EUt(120880).buildAndRegister();

starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 4, <aunis:stargate_ring_fragment> * 2, <aunis:crystal_ender>, <aunis:crystal_yellow>, <gregtech:transparent_casing> * 4)
    .outputs(<aunis:stargate_milkyway_member_block:14>)
    .duration(2000).EUt(130880).buildAndRegister();

// Звездные врата (Пегас)
starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 6, <aunis:stargate_ring_fragment> * 4, <aunis:crystal_red>, <aunis:crystal_ender>, <aunis:crystal_blue>, <aunis:circuit_control_naquadah>)
    .outputs(<aunis:stargate_pegasus_base_block>)
    .duration(4000).EUt(130880).buildAndRegister();

starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 2, <aunis:stargate_ring_fragment> * 2, <aunis:crystal_red>)
    .outputs(<aunis:stargate_pegasus_member_block:6>)
    .duration(2000).EUt(120880).buildAndRegister();

starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 4, <aunis:stargate_ring_fragment> * 2, <aunis:crystal_ender>, <aunis:crystal_yellow>, <gregtech:transparent_casing> * 4)
    .outputs(<aunis:stargate_pegasus_member_block:14>)
    .duration(2000).EUt(130880).buildAndRegister();

// Звездные врата (Вселенная)
starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 6, <aunis:stargate_ring_fragment> * 4, <aunis:crystal_red>, <aunis:crystal_ender>, <aunis:crystal_blue>, <aunis:circuit_control_naquadah>)
    .outputs(<aunis:stargate_universe_base_block>)
    .duration(4000).EUt(130880).buildAndRegister();

starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 2, <aunis:stargate_ring_fragment> * 2, <aunis:crystal_red>)
    .outputs(<aunis:stargate_universe_member_block:6>)
    .duration(2000).EUt(120880).buildAndRegister();

starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 4, <aunis:stargate_ring_fragment> * 2, <aunis:crystal_ender>, <aunis:crystal_yellow>, <gregtech:transparent_casing> * 4)
    .outputs(<aunis:stargate_universe_member_block:14>)
    .duration(2000).EUt(130880).buildAndRegister();

// Звездные врата (Орлин)
assembler.recipeBuilder()
    .inputs(<ore:blockObsidian> * 6, <ore:enderpearl> , <ore:circuitHv> * 2, <ore:plateIron> * 2, <ore:wireGtSingleCopper> * 6)
    .outputs(<aunis:stargate_orlin_base_block>.withTag({openCount: 0}))
    .duration(200).EUt(500).buildAndRegister();

assembler.recipeBuilder()
    .inputs(<ore:blockObsidian> * 6, <ore:enderpearl> * 2, <ore:circuitHv> * 2, <ore:plateIron> * 2, <ore:wireGtSingleCopper> * 6)
    .fluidInputs(<liquid:redstone> * 1000)
    .outputs(<aunis:stargate_orlin_member_block>.withTag({openCount: 0}))
    .duration(200).EUt(500).buildAndRegister();

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
      <liquid:molten.titanium_carbide> * 6864, 
      <liquid:molten.hssg> * 4432)
    .outputs(<aunis:dhd_block>)
    .duration(1800).EUt(8100).buildAndRegister();

// DHD Пегас
assembly_line.recipeBuilder()
    .inputs(
      <ore:batteryLuv> * 4,  
      <ore:circuitLuv> * 9,
			<projectred-illumination:light_button:14> * 19,
      <aunis:circuit_control_naquadah> * 4, 
      <aunis:dhd_bbb>, 
      <aunis:crystal_ender> * 5, 
      <aunis:crystal_red> * 5, 
      <aunis:holder_crystal_pegasus>, 
      <ore:plateDenseNaquadahAlloy> * 3, 
      <ore:plateDenseNaquadahAlloy> * 3)
    .fluidInputs(
      <liquid:molten.titanium_carbide> * 6864, 
      <liquid:molten.hssg> * 4432)
    .outputs(<aunis:dhd_pegasus_block>)
    .duration(1800).EUt(150100).buildAndRegister();

// Universe dialer
assembly_line.recipeBuilder()
    .inputs(
      <ore:batteryLuv> * 4,  
      <ore:circuitLuv> * 9,
			<projectred-illumination:light_button:14> * 19,
      <aunis:circuit_control_naquadah> * 4, 
      <aunis:dhd_bbb>, 
      <aunis:crystal_ender> * 5, 
      <aunis:crystal_red> * 5)
    .fluidInputs(
      <liquid:molten.titanium_carbide> * 6864, 
      <liquid:molten.hssg> * 4432)
    .outputs(<aunis:universe_dialer>)
    .duration(1500).EUt(150100).buildAndRegister();

// Держатель кристалла
starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 6, <aunis:crystal_red> * 3)
    .outputs(<aunis:holder_crystal>)
    .duration(200).EUt(1880).buildAndRegister();

// Dhd красная кнопка
starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 6, <ore:circuitLuv>, <aunis:crystal_red> * 3)
		.fluidInputs([<liquid:glass> * 18000])
    .outputs(<aunis:dhd_brb>)
    .duration(300).EUt(1880).buildAndRegister();

// Держатель кристалла(Пегас)
starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 6, <aunis:crystal_red> * 3)
    .outputs(<aunis:holder_crystal_pegasus>)
    .duration(200).EUt(1880).buildAndRegister();

// Dhd синяя кнопка
starforge.recipeBuilder()
    .inputs(<ore:ingotNaquadahAlloy> * 6, <ore:circuitLuv>, <aunis:crystal_red> * 3)
		.fluidInputs([<liquid:glass> * 18000])
    .outputs(<aunis:dhd_bbb>)
    .duration(300).EUt(1880).buildAndRegister();

// stargate_ring_fragment
starforge.recipeBuilder()
    .inputs(<ore:plateDenseNaquadahAlloy> * 9, <ore:batteryIv>)
    .outputs(<aunis:stargate_ring_fragment> * 2)
    .duration(2000).EUt(130000).buildAndRegister();

// universe_ring_fragment
starforge.recipeBuilder()
    .inputs(<ore:plateDenseNaquadahAlloy> * 9, <ore:batteryIv>)
    .outputs(<aunis:universe_ring_fragment> * 2)
    .duration(2000).EUt(130000).buildAndRegister();

// capacitor_block_empty
starforge.recipeBuilder()
    .inputs(<ore:plateDenseNaquadahAlloy> * 4, <aunis:crystal_red> * 4, <ore:batteryLuv> * 6)
    .outputs(<aunis:capacitor_block_empty>)
    .duration(2000).EUt(130880).buildAndRegister();

// capacitor_block
canner.recipeBuilder()
  .inputs(<aunis:capacitor_block_empty>)
  .fluidInputs(<liquid:silicon_molten_red> * 6440)
 	.outputs(<aunis:capacitor_block> * 1)
  .duration(1000)
  .EUt(1290)
  .buildAndRegister();

// crystal_control_dhd
starforge.recipeBuilder()
    .inputs(<aunis:crystal_red> * 4, <ore:batteryLuv> * 2)
		.fluidInputs(<liquid:silicon_molten_red> * 144)
    .outputs(<aunis:crystal_control_dhd>)
    .duration(2000).EUt(10880).buildAndRegister();

// GDO
assembler.recipeBuilder()
    .inputs(<aunis:crystal_red>, <ore:plateIron> * 2, <ore:circuitev> * 2, <ore:plateIron> * 2, <ore:wireGtSingleSamariumIronArsenicOxide> * 6)
    .fluidInputs(<liquid:redstone> * 1000)
    .outputs(<aunis:gdo>)
    .duration(200).EUt(500).buildAndRegister();
