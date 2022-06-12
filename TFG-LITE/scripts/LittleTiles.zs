import crafttweaker.item.IItemStack;


// --- Removing Recipes

// Удаление рецептов
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
] as IItemStack[];
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// --- Adding Recipes

// Little Blueprint
recipes.addShaped(<littletiles:recipeadvanced>,
	[[<ore:paper>, <ore:paper>, <ore:paper>],
	[<ore:paper>, <metaitem:dye.blue>, <ore:paper>],
	[<ore:paper>, <ore:dustRedstone>, <ore:paper>]]);

// Little Saw
recipes.addShaped(<littletiles:saw>,
	[[null, null, <metaitem:stickLapis>],
	[null, <metaitem:toolHeadSawWroughtIron>, null],
	[<ore:stickWood>, null, null]]);

// Little Backpack
recipes.addShaped(<littletiles:container>,
	[[null, <ore:gemLapis>, null],
	[<ore:leather>, <ore:backpack>, <ore:leather>],
	[null, <ore:leather>, null]]);

// Little Wrench
recipes.addShaped(<littletiles:wrench>,
	[[<ore:gtce.tool.hard.hammers>, <ore:plateIronAny>, <ore:gtce.tool.files>],
	[null, <metaitem:stickLapis>, null],
	[null, <metaitem:stickLapis>, null]]);

// Little Hammer
recipes.addShaped(<littletiles:hammer>,
	[[<ore:plateIronAny>, <ore:plateIronAny>, <ore:plateIronAny>],
	[<ore:gtce.tool.hard.hammers>, <metaitem:stickLapis>, <ore:gtce.tool.files>],
	[null, <metaitem:stickLapis>, null]]);

// Little Chisel
recipes.addShaped(<littletiles:chisel>,
	[[<ore:gtce.tool.hard.hammers>, <ore:plateIronAny>, <ore:gtce.tool.files>],
	[null, <ore:plateIronAny>, null],
	[null, <metaitem:stickLapis>, null]]);

// Little ColorTube
recipes.addShaped(<littletiles:colortube>,
	[[<ore:clothHighQuality>, <ore:clothHighQuality>, <ore:clothHighQuality>],
	[null, <metaitem:stickLapis>, null],
	[null, <metaitem:stickLapis>, null]]);

// Little Gloves
recipes.addShaped(<littletiles:grabber>,
	[[null, <ore:leather>, null],
	[<ore:leather>, <metaitem:plateLapis>, <ore:leather>],
	[null, <ore:leather>, null]]);

// Little Exporter
recipes.addShaped(<littletiles:premade>.withTag({structure: {id: "exporter"}}),
	[[<ore:lumber>, <minecraft:iron_bars>, <ore:lumber>],
	[<ore:plateIronAny>, <littletiles:recipeadvanced>, <ore:plateIronAny>],
	[<ore:plateIronAny>, <metaitem:wireGtSingleRedAlloy>, <ore:plateIronAny>]]);

// Little Importer
recipes.addShaped(<littletiles:premade>.withTag({structure: {id: "importer"}}),
	[[<ore:lumber>, <ore:paneGlass>, <ore:lumber>],
	[<ore:plateIronAny>, <littletiles:recipeadvanced>, <ore:plateIronAny>],
	[<ore:plateIronAny>, <metaitem:wireGtSingleRedAlloy>, <ore:plateIronAny>]]);

// Little StructureBuilder
recipes.addShaped(<littletiles:premade>.withTag({structure: {id: "structure_builder"}}),
	[[<minecraft:concrete:15>, <minecraft:concrete:15>, <minecraft:concrete:15>],
	[<minecraft:concrete:15>, <metaitem:wireGtSingleRedAlloy>, <minecraft:concrete:15>],
	[<minecraft:concrete:15>, <ore:lumber>, <minecraft:concrete:15>]]);

// Little Blank-o-matic
recipes.addShaped(<littletiles:premade>.withTag({structure: {id: "blankomatic"}}),
	[[<ore:lumber>, <ore:plateIronAny>, <ore:lumber>],
	[<ore:lumber>, <littletiles:colortube>, <ore:lumber>],
	[<ore:lumber>, null, <ore:lumber>]]);

// Little Workbench
recipes.addShaped(<littletiles:premade>.withTag({structure: {id: "workbench"}}),
	[[<ore:lumber>, <ore:workbench>, <ore:lumber>],
	[<ore:lumber>, <littletiles:wrench>, <ore:lumber>],
	[<ore:lumber>, null, <ore:lumber>]]);

// Signal Converter
recipes.addShaped(<littletiles:signal_converter>,
	[[null, <ore:dustRedstone>, null],
	[null, <ore:cobblestone>, null],
	[null, null, null]]);

// Little Storage Block
recipes.addShaped(<littletiles:ltstorageblocktile>,
	[[null, null, null],
	[null, <ore:chestWood>, null],
	[null, null, null]]);