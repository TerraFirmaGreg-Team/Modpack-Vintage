import crafttweaker.item.IItemStack;

import mods.chisel.Carving;

// --- Массивы

val AllQuartzTypes = <ore:gemCertusQuartz> | <ore:gemQuartzite> | <ore:gemNetherQuartz>;

val RemoveWorkbenchRecipes as IItemStack[] = [
	<chisel:auto_chisel>,
	<chisel:offsettool>,
	<chisel:chisel_iron>,
	<chisel:chisel_diamond>,
	<chisel:chisel_hitech>,
	<chisel:tyrian>,
	<chisel:laboratory>,
	<chisel:temple>,
	<chisel:factory>,
	<chisel:brownstone>,
	// Glass
	<chisel:glasspane>,
	<chisel:glasspane:1>,
	<chisel:glasspane:2>,
	<chisel:glasspane:3>,
	<chisel:glasspane:4>,
	<chisel:glasspane:6>,
	<chisel:glasspane:7>,
	<chisel:glasspane:8>,
	<chisel:glasspane:9>,
	<chisel:glasspane:10>,
	<chisel:glasspane:10>,
	<chisel:glasspane:11>,
	<chisel:glasspane:12>,
	<chisel:glasspane:13>,
	<chisel:glasspane:14>,
	<chisel:glasspane:15>,
	<chisel:glasspane1>,
	<chisel:glasspane1:1>,
	<chisel:glasspanedyedbrown:*>,
	<chisel:glasspanedyedcyan:*>,
	<chisel:glasspanedyedyellow:*>,
	<chisel:glasspanedyedlightblue:*>,
	<chisel:glasspanedyedblack:*>,
	<chisel:glasspanedyedblue:*>,
	<chisel:glasspanedyedgray:*>,
	<chisel:glasspanedyedwhite:*>,
	<chisel:glasspanedyedred:*>,
	<chisel:glasspanedyedlightgray:*>,
	<chisel:glasspanedyedpink:*>,
	<chisel:glasspanedyedorange:*>,
	<chisel:glasspanedyedgreen:*>,
	<chisel:glasspanedyedpurple:*>,
	<chisel:glasspanedyedlime:*>,
	<chisel:glasspanedyedmagenta:*>
] as IItemStack[];

val RemoveItemRecipesByName = [
    "chisel:uncraft_blockiron",
	"chisel:uncraft_blockgold",
	"chisel:emerald",
	"chisel:diamond",
	"chisel:redstone",
	"chisel:coal"
] as string[];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveWorkbenchRecipes {
    recipes.remove(item);
}

// Поименное удаление рецептов
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

// --- Добавление рецептов

// Авто Стамеска
recipes.addShaped("tfg/chisel/auto_chisel", <chisel:auto_chisel>, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<ore:blockGlass>, <metaitem:wireGtSingleRedAlloy>, <ore:blockGlass>],
	[<ore:plateIronAny>, <ore:plateIronAny>, <ore:plateIronAny>]]);

// Эндер палка смещения
recipes.addShaped("tfg/chisel/offsettool", <chisel:offsettool>, [
	[<metaitem:plateIron>, <ore:gemEnderEye>, <ore:gtce.tool.knife>],
	[<minecraft:stick>, <metaitem:plateIron>, null],
	[<ore:gtce.tool.hard.hammers>, null, null]]);

// Железная стамеска
recipes.addShaped("tfg/chisel/chisel_iron", <chisel:chisel_iron>, [
	[<ore:gtce.tool.hard.hammers>, <ore:plateWroughtIron>, <ore:gtce.tool.knife>],
	[null, <ore:chisel>, null],
	[null, <ore:stickWood>, null]]);

// Алмазная стамеска
recipes.addShaped("tfg/chisel/chisel_diamond", <chisel:chisel_diamond>, [
	[<ore:gtce.tool.hard.hammers>, <ore:plateDiamond>, <ore:gtce.tool.knife>],
	[null, <ore:chisel>, null],
	[null, <ore:stickWood>, null]]);

// Современная стамеска
recipes.addShaped("tfg/chisel/chisel_hitech", <chisel:chisel_hitech>, [
	[<ore:gtce.tool.hard.hammers>, <ore:plateBlueSteel>, <ore:gtce.tool.knife>],
	[null, <chisel:chisel_diamond>, null],
	[null, <ore:stickWood>, null]]);
 
// Лабораторный блок
recipes.addShaped("tfg/chisel/laboratory_block", <chisel:laboratory> * 8, [
	[<ore:stone>, <ore:stone>, <ore:stone>],
	[<ore:stone>, AllQuartzTypes, <ore:stone>],
	[<ore:stone>, <ore:stone>, <ore:stone>]]);
 
// Храмовый блок
recipes.addShaped("tfg/chisel/temple_block", <chisel:temple> * 8, [
	[<ore:stone>, <ore:stone>, <ore:stone>],
	[<ore:stone>, <ore:dyeCyan>, <ore:stone>],
	[<ore:stone>, <ore:stone>, <ore:stone>]]);
 
// Тириан блок
recipes.addShaped("tfg/chisel/tyrian_block", <chisel:tyrian> * 8, [
	[<ore:stone>, <ore:stone>, <ore:stone>],
	[<ore:stone>, <ore:plateIronAny>, <ore:stone>],
	[<ore:stone>, <ore:stone>, <ore:stone>]]);
 
// Заводской блок
recipes.addShaped("tfg/chisel/factory_block", <chisel:factory> * 8, [
	[<ore:plateIronAny>, <ore:stone>, <ore:plateIronAny>],
	[<ore:stone>, null, <ore:stone>],
	[<ore:plateIronAny>, <ore:stone>, <ore:plateIronAny>]]);
 
// Коричневый камень
recipes.addShaped("tfg/chisel/brownstone", <chisel:brownstone> * 8, [
	[<ore:sand>, <ore:sand>, <ore:sand>],
	[<ore:sand>, <minecraft:clay_ball>, <ore:sand>],
	[<ore:sand>, <ore:sand>, <ore:sand>]]);