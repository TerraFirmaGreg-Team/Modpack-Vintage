#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;


// --- Массивы

val RemoveRecipe as IItemStack[] = [
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
];

val RemoveRecipesByName = [
   "chisel:uncraft_blockiron",
	"chisel:uncraft_blockgold",
	"chisel:emerald",
	"chisel:diamond",
	"chisel:redstone",
	"chisel:coal"
] as string[];

// --- Удаление рецептов

// Удаление рецептов
for item in RemoveRecipe {
   recipes.remove(item);
}

// Поименное удаление рецептов
for item in RemoveRecipesByName{
   recipes.removeByRecipeName(item);
}

// Black Concrete * 1
<recipemap:fluid_solidifier>.findRecipe(7, [<metaitem:shape.mold.block>], [<liquid:concrete> * 1296]).remove();