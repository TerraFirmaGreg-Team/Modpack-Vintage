import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;


// Вес и размер
ItemRegistry.registerItemSize(<galacticraftplanets:astro_miner>, "HUGE", "VERY_HEAVY");

// Майнер
assembly_line.recipeBuilder()
	.inputs(<galacticraftplanets:item_basic_mars:3> * 8)
	.inputs(<galacticraftplanets:item_basic_asteroids:5> * 3)
	.inputs(<galacticraftplanets:orion_drive> * 5)
	.inputs(<galacticraftcore:steel_pole> * 4)
	.inputs(<galacticraftplanets:item_basic_asteroids:8>)
	.inputs(<metaitem:wafer.glowstone> * 4)
	.inputs(<metaitem:crate.titanium> * 4)
	.inputs(<metaitem:electric.motor.ev> * 4)
	.inputs(<galacticraftplanets:beam_receiver>)
	.inputs(<metaitem:astro.miner.computer>)
	.fluidInputs([<liquid:black_steel> * 9216])
	.fluidInputs([<liquid:aluminium> * 4608])
	.fluidInputs([<liquid:bronze> * 4608])
	.outputs([<galacticraftplanets:astro_miner>])
	.duration(1200).EUt(4096).buildAndRegister();

// Ракетный компьютер
assembler.recipeBuilder()
	.circuit(3)
	.inputs([
		<opencomputers:case2>,
		<metaitem:wafer.glowstone>,
		<ore:circuitLuv>,
		<metaitem:emitter.iv>,
		<metaitem:sensor.iv>,
		<galacticraftplanets:item_basic_asteroids:5>])
	.fluidInputs([<liquid:soldering_alloy> * 1152])
	.outputs(<metaitem:astro.miner.computer>)
	.property("cleanroom", "cleanroom")
	.duration(600).EUt(7680).buildAndRegister();

// Основания астрономического шахтера
recipes.addShaped("tfg/gc/miner_base", <galacticraftplanets:miner_base>, [
   [<metaitem:plateDenseDesh>, <metaitem:crate.stainless_steel>, <metaitem:plateDenseDesh>],
   [<galacticraftplanets:item_basic_asteroids:8>, <metaitem:frameTungsten>, <galacticraftplanets:item_basic_asteroids:8>],
   [<metaitem:plateDenseDesh>, <metaitem:battery_buffer.luv.16>, <metaitem:plateDenseDesh>]]);

// Схема
laser_engraver.recipeBuilder()
	.inputs([<metaitem:schematic.blank>])
   .notConsumable([<metaitem:glass_lens.brown>])
	.outputs(<galacticraftplanets:schematic:2>)
   .property("cleanroom", "cleanroom")
	.duration(9000).EUt(1024).buildAndRegister();