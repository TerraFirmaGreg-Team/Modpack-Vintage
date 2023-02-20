import crafttweaker.item.IItemStack;


// --- Добавление рецептов

// Авто Стамеска
recipes.addShaped("tfg/chisel/auto_chisel", <chisel:auto_chisel>, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<ore:blockGlass>, <chisel:chisel_iron> | <chisel:chisel_diamond> | <chisel:chisel_hitech>, <ore:blockGlass>],
	[<ore:plateIronAny>, <metaitem:wireGtSingleRedAlloy>, <ore:plateIronAny>]]);

// Эндер палка смещения
recipes.addShaped("tfg/chisel/offsettool", <chisel:offsettool>, [
	[<metaitem:plateIron>, <minecraft:ender_eye>, <ore:toolKnife>],
	[<minecraft:stick>, <metaitem:plateIron>, null],
	[<ore:toolHammer>, null, null]]);

// Железная стамеска
recipes.addShaped("tfg/chisel/chisel_iron", <chisel:chisel_iron>, [
	[<ore:toolFile>, <ore:plateIronAny>, <ore:plateIronAny>],
	[null, <metaitem:screwSteel>, <ore:plateIronAny>],
	[<metaitem:stickBronze>, null, <ore:toolHammer>]]);

// Алмазная стамеска
recipes.addShaped("tfg/chisel/chisel_diamond", <chisel:chisel_diamond>, [
	[<ore:toolFile>, <metaitem:plateDiamond>, <metaitem:plateDiamond>],
	[null, <chisel:chisel_iron>, <metaitem:plateDiamond>],
	[<metaitem:stickRoseGold>, null, <ore:toolHammer>]]);

// Современная стамеска
recipes.addShaped("tfg/chisel/chisel_hitech", <chisel:chisel_hitech>, [
	[<ore:toolFile>, <metaitem:plateDiamond>, <metaitem:plateDiamond>],
	[null, <chisel:chisel_diamond>, <metaitem:plateDiamond>],
	[<metaitem:stickStainlessSteel>, null, <ore:toolHammer>]]);

// Лабораторный блок
recipes.addShaped("tfg/chisel/laboratory_block", <chisel:laboratory> * 8, [
	[<ore:stone>, <ore:stone>, <ore:stone>],
	[<ore:stone>, <minecraft:quartz>, <ore:stone>],
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
	[<ore:sand>, <ore:clay>, <ore:sand>],
	[<ore:sand>, <ore:sand>, <ore:sand>]]);