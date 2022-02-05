import crafttweaker.item.IItemStack;

//Удаление групп

//Удаление рецептов
val RemoveItemsFromJEI as IItemStack[] = [
	<chisel:chisel_iron>,
	<chisel:chisel_diamond>,
	<chisel:chisel_hitech>,
	<chiselsandbits:chisel_stone>,
	<chiselsandbits:chisel_iron>,
	<chiselsandbits:chisel_gold>,
	<chiselsandbits:chisel_diamond>,
	<chiselsandbits:bitsaw_diamond>,
	<chiselsandbits:bit_bag>,
	<chisel:tyrian>,
	<chisel:laboratory>,
	<chisel:temple>,
	<chisel:factory>,
	<chisel:brownstone>,
	//glass
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
for item in RemoveItemsFromJEI{
    recipes.remove(item);
}

//Создание рецептов
//Железная стамеска
recipes.addShaped(<chisel:chisel_iron>,
[[null, <ore:plateWroughtIron>, null],
 [null, <ore:chisel>, null],
 [null, <ore:stickWood>, null]]);

//Алмазная стамеска
recipes.addShaped(<chisel:chisel_diamond>,
[[null, <ore:plateDiamond>, null],
 [null, <ore:chisel>, null],
 [null, <ore:stickWood>, null]]);

//Современная стамеска
recipes.addShaped(<chisel:chisel_hitech>,
[[null, <ore:plateBlueSteel>, null],
 [null, <chisel:chisel_diamond>, null],
 [null, <ore:stickWood>, null]]);
 
//Стамеска каменная
recipes.addShaped(<chiselsandbits:chisel_stone>,
[[null, null, null],
 [null, <ore:stone>, null],
 [null, <ore:stickWood>, null]]);
 
//Стамеска железная
recipes.addShaped(<chiselsandbits:chisel_iron>,
[[null, null, null],
 [null, <ore:plateWroughtIron>, null],
 [null, <ore:stickWood>, null]]);
 
//Стамеска золотая
recipes.addShaped(<chiselsandbits:chisel_gold>,
[[null, null, null],
 [null, <ore:plateRoseGold>, null],
 [null, <ore:stickWood>, null]]);
 
//Стамеска алмазная
recipes.addShaped(<chiselsandbits:chisel_diamond>,
[[null, null, null],
 [null, <ore:gemExquisiteDiamond>, null],
 [null, <ore:stickWood>, null]]);
 
//Пила алмазная
recipes.addShaped(<chiselsandbits:bitsaw_diamond>,
[[null, null, null],
 [null, <ore:toolHeadSawDiamond>, null],
 [<ore:stickWood>, null, null]]);
 
//Мешок для данек
recipes.addShaped(<chiselsandbits:bit_bag>,
[[<ore:leather>, <ore:wool>, <ore:leather>],
 [<ore:wool>, null, <ore:wool>],
 [<ore:leather>, <ore:wool>, <ore:leather>]]);
 
//Лабораторный блок
recipes.addShaped(<chisel:laboratory>*8,
[[<ore:stone>, <ore:stone>, <ore:stone>],
 [<ore:stone>, <ore:gemCertusQuartz> | <ore:gemQuartzite> | <ore:gemNetherQuartz>, <ore:stone>],
 [<ore:stone>, <ore:stone>, <ore:stone>]]);
 
//Храмовый блок
recipes.addShaped(<chisel:temple>*8,
[[<ore:stone>, <ore:stone>, <ore:stone>],
 [<ore:stone>, <ore:dyeCyan>, <ore:stone>],
 [<ore:stone>, <ore:stone>, <ore:stone>]]);
 
//Тириан блок
recipes.addShaped(<chisel:tyrian>*8,
[[<ore:stone>, <ore:stone>, <ore:stone>],
 [<ore:stone>, <ore:plateIron> | <ore:plateWroughtIron>, <ore:stone>],
 [<ore:stone>, <ore:stone>, <ore:stone>]]);
 
//Фактори блок
recipes.addShaped(<chisel:factory>*8,
[[<ore:plateIron> | <ore:plateWroughtIron>, <ore:stone>, <ore:plateIron> | <ore:plateWroughtIron>],
 [<ore:stone>, null, <ore:stone>],
 [<ore:plateIron> | <ore:plateWroughtIron>, <ore:stone>, <ore:plateIron> | <ore:plateWroughtIron>]]);
 
//Бровн стоун
recipes.addShaped(<chisel:brownstone>*8,
[[<ore:sand>, <ore:sand>, <ore:sand>],
 [<ore:sand>, <minecraft:clay_ball>, <ore:sand>],
 [<ore:sand>, <ore:sand>, <ore:sand>]]);