import crafttweaker.item.IItemStack;

// --- Массивы

val RemoveWorkbenchRecipes as IItemStack[] = [
	<littletiles:recipeadvanced>,
	<littletiles:saw>,
	<littletiles:container>,
	<littletiles:hammer>,
	<littletiles:wrench>,
	<littletiles:chisel>,
	<littletiles:colortube>,
	<littletiles:grabber>,
	<littletiles:premade>.withTag({structure: {id: "exporter"}}),
	<littletiles:premade>.withTag({structure: {id: "importer"}}),
	<littletiles:premade>.withTag({structure: {id: "structure_builder"}}),
	<littletiles:premade>.withTag({structure: {id: "blankomatic"}}),
	<littletiles:premade>.withTag({structure: {id: "workbench"}}),
	<littletiles:signal_converter>,
	<littletiles:lttransparentcoloredblock:5>,
	<littletiles:ltcoloredblock:12>,
	<littletiles:ltstorageblocktile>
];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// --- Добавление рецептов

// Little Blueprint
recipes.addShaped("tfg/littletiles/recipe_advanced", <littletiles:recipeadvanced>, [
	[<ore:paper>, <ore:paper>, <ore:paper>],
	[<ore:paper>, <ore:dyeBlue>, <ore:paper>],
	[<ore:paper>, <minecraft:redstone>, <ore:paper>]]);

// Little Saw
recipes.addShaped("tfg/littletiles/saw", <littletiles:saw>, [
	[null, null, <metaitem:stickLapis>],
	[null, <metaitem:toolHeadSawWroughtIron>, null],
	[<minecraft:stick>, null, null]]);

// Little Backpack
recipes.addShaped("tfg/littletiles/container", <littletiles:container>, [
	[null, <minecraft:dye:4>, null],
	[<ore:leather>, <travelersbackpack:travelers_backpack>, <ore:leather>],
	[null, <ore:leather>, null]]);

// Little Wrench
recipes.addShaped("tfg/littletiles/wrench", <littletiles:wrench>, [
	[<ore:craftingToolHardHammer>, <ore:plateIronAny>, <ore:craftingToolFile>],
	[null, <metaitem:stickLapis>, null],
	[null, <metaitem:stickLapis>, null]]);

// Little Hammer
recipes.addShaped("tfg/littletiles/hammer", <littletiles:hammer>, [
	[<ore:plateIronAny>, <ore:plateIronAny>, <ore:plateIronAny>],
	[<ore:craftingToolHardHammer>, <metaitem:stickLapis>, <ore:craftingToolFile>],
	[null, <metaitem:stickLapis>, null]]);

// Little Chisel
recipes.addShaped("tfg/littletiles/chisel", <littletiles:chisel>, [
	[<ore:craftingToolHardHammer>, <ore:plateIronAny>, <ore:craftingToolFile>],
	[null, <ore:plateIronAny>, null],
	[null, <metaitem:stickLapis>, null]]);

// Little ColorTube
recipes.addShaped("tfg/littletiles/colortube", <littletiles:colortube>, [
	[<ore:clothHighQuality>, <ore:clothHighQuality>, <ore:clothHighQuality>],
	[null, <metaitem:stickLapis>, null],
	[null, <metaitem:stickLapis>, null]]);

// Little Gloves
recipes.addShaped("tfg/littletiles/grabber", <littletiles:grabber>, [
	[null, <ore:leather>, null],
	[<ore:leather>, <metaitem:plateLapis>, <ore:leather>],
	[null, <ore:leather>, null]]);

// Little Exporter
recipes.addShaped("tfg/littletiles/premade/exporter", <littletiles:premade>.withTag({structure: {id: "exporter"}}), [
	[<ore:lumber>, <galacticraftcore:grating>, <ore:lumber>],
	[<ore:plateIronAny>, <littletiles:recipeadvanced>, <ore:plateIronAny>],
	[<ore:plateIronAny>, <metaitem:wireGtSingleRedAlloy>, <ore:plateIronAny>]]);

// Little Importer
recipes.addShaped("tfg/littletiles/premade/importer", <littletiles:premade>.withTag({structure: {id: "importer"}}), [
	[<ore:lumber>, <ore:paneGlass>, <ore:lumber>],
	[<ore:plateIronAny>, <littletiles:recipeadvanced>, <ore:plateIronAny>],
	[<ore:plateIronAny>, <metaitem:wireGtSingleRedAlloy>, <ore:plateIronAny>]]);

// Little StructureBuilder
recipes.addShaped("tfg/littletiles/premade/structure_builder", <littletiles:premade>.withTag({structure: {id: "structure_builder"}}), [
	[<minecraft:concrete:15>, <minecraft:concrete:15>, <minecraft:concrete:15>],
	[<minecraft:concrete:15>, <metaitem:wireGtSingleRedAlloy>, <minecraft:concrete:15>],
	[<minecraft:concrete:15>, <ore:lumber>, <minecraft:concrete:15>]]);

// Little Blank-o-matic
recipes.addShaped("tfg/littletiles/premade/blankomatic", <littletiles:premade>.withTag({structure: {id: "blankomatic"}}), [
	[<ore:lumber>, <ore:plateIronAny>, <ore:lumber>],
	[<ore:lumber>, <littletiles:colortube>, <ore:lumber>],
	[<ore:lumber>, null, <ore:lumber>]]);

// Little Workbench
recipes.addShaped("tfg/littletiles/premade/workbench", <littletiles:premade>.withTag({structure: {id: "workbench"}}), [
	[<ore:lumber>, <ore:workbench>, <ore:lumber>],
	[<ore:lumber>, <littletiles:wrench>, <ore:lumber>],
	[<ore:lumber>, null, <ore:lumber>]]);

// Signal Converter
recipes.addShaped("tfg/littletiles/premade/signal_converter", <littletiles:signal_converter>, [
	[null, <minecraft:redstone>, null],
	[null, <ore:cobblestone>, null],
	[null, null, null]]);