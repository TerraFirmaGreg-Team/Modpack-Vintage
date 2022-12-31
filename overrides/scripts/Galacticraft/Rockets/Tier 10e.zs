import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;


// --- Массивы

val Rocket as IItemStack[] = [
	<extraplanets:item_tier10_electric_rocket>,
	<extraplanets:item_tier10_electric_rocket:1>,
	<extraplanets:item_tier10_electric_rocket:2>,
	<extraplanets:item_tier10_electric_rocket:3>,
];
val Crate as IItemStack[] = [
	<metaitem:plateAluminium>,
	<metaitem:crate.aluminium>,
	<metaitem:crate.stainless_steel>,
	<metaitem:crate.titanium>
];


// Вес и размер
ItemRegistry.registerItemSize(<extraplanets:item_tier10_electric_rocket:*>, "HUGE", "VERY_HEAVY");


// --- Добавление рецептов

for i, Rocket in Rocket {
// Ракета
assembly_line.recipeBuilder()
	.inputs(<extraplanets:nose_cone_tier10>)
	.inputs(<extraplanets:tier10_items:2> * 8)
	.inputs(<extraplanets:tier10_items:1> * 6)
	.inputs(<extraplanets:tier10_items> * 5)
	.inputs(<extraplanets:item_tier10_rocket>)
	.inputs(<extraplanets:item_tier10_rocket>)
	.inputs(<extraplanets:electric_parts:1>)
	.inputs(<extraplanets:electric_parts:1>)
	.inputs(<metaitem:electric.motor.opv> * 4)
	.inputs(<metaitem:emitter.opv> * 4)
	.inputs(<ore:circuitUhv> * 8)
	.inputs([Crate[i] * 18])
	.inputs(<metaitem:rocket.control.computer.tier.11>)
	.inputs(<extraplanets:schematic_tier10_electric_rocket>)
	.fluidInputs([<liquid:naquadria> * 9216])
	.fluidInputs([<liquid:soldering_alloy> * 4608])
	.fluidInputs([<liquid:tritanium> * 4608])
	.outputs([Rocket])
	.duration(1200).EUt(268435456).buildAndRegister();
}
// Ракетный компьютер
assembler.recipeBuilder()
	.circuit(11)
	.inputs([
		<opencomputers:case3>,
		<opencomputers:keyboard>,
		<opencomputers:screen3>,
		<metaitem:emitter.opv>,
		<metaitem:sensor.opv>,
		<extraplanets:tier10_items:3>])
	.fluidInputs([<liquid:soldering_alloy> * 12312])
	.outputs(<metaitem:rocket.control.computer.tier.11>)
	.property("cleanroom", "cleanroom")
	.duration(600).EUt(268435456).buildAndRegister();
// Схема ракеты
laser_engraver.recipeBuilder()
	.inputs([<metaitem:schematic.blank>])
	.notConsumable([<metaitem:lensNetherStar>])
	.outputs(<extraplanets:schematic_tier10_electric_rocket>)
	.property("cleanroom", "cleanroom")
	.duration(9000).EUt(268435456).buildAndRegister();