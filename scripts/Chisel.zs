//Удаление рецептов
recipes.remove(<chisel:chisel_iron>);
recipes.remove(<chisel:chisel_diamond>);
recipes.remove(<chisel:chisel_hitech>);
recipes.remove(<chiselsandbits:chisel_stone>);
recipes.remove(<chiselsandbits:chisel_iron>);
recipes.remove(<chiselsandbits:chisel_gold>);
recipes.remove(<chiselsandbits:chisel_diamond>);
recipes.remove(<chiselsandbits:bitsaw_diamond>);
recipes.remove(<chiselsandbits:bit_bag>);
recipes.remove(<chisel:tyrian>);
recipes.remove(<chisel:laboratory>);
recipes.remove(<chisel:temple>);
recipes.remove(<chisel:factory>);
recipes.remove(<chisel:brownstone>);

//Создание рецептов
//Железная стамеска
recipes.addShaped(<chisel:chisel_iron>,
[[null, <ore:plateIron>, null],
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
 [null, <ore:plateIron>, null],
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
 [null, <gregtech:meta_item_2:14111>, null],
 [<ore:stickWood>, null, null]]);
 
//Мешок для данек(Опа вторая пасхалка)
recipes.addShaped(<chiselsandbits:bit_bag>,
[[<ore:leather>, <ore:wool>, <ore:leather>],
 [<ore:wool>, null, <ore:wool>],
 [<ore:leather>, <ore:wool>, <ore:leather>]]);
 
//Лабораторный блок
recipes.addShaped(<chisel:laboratory>*8,
[[<ore:stone>, <ore:stone>, <ore:stone>],
 [<ore:stone>, <minecraft:quartz>, <ore:stone>],
 [<ore:stone>, <ore:stone>, <ore:stone>]]);
 
//Храмовый блок
recipes.addShaped(<chisel:temple>*8,
[[<ore:stone>, <ore:stone>, <ore:stone>],
 [<ore:stone>, <ore:dyeCyan>, <ore:stone>],
 [<ore:stone>, <ore:stone>, <ore:stone>]]);
 
//Тириан блок
recipes.addShaped(<chisel:tyrian>*8,
[[<ore:stone>, <ore:stone>, <ore:stone>],
 [<ore:stone>, <ore:ingotIron>, <ore:stone>],
 [<ore:stone>, <ore:stone>, <ore:stone>]]);
 
//Фактори блок
recipes.addShaped(<chisel:factory>*8,
[[<ore:ingotIron>, <ore:stone>, <ore:ingotIron>],
 [<ore:stone>, null, <ore:stone>],
 [<ore:ingotIron>, <ore:stone>, <ore:ingotIron>]]);
 
//Бровн стоун
recipes.addShaped(<chisel:brownstone>*8,
[[<ore:sand>, <ore:sand>, <ore:sand>],
 [<ore:sand>, <minecraft:clay_ball>, <ore:sand>],
 [<ore:sand>, <ore:sand>, <ore:sand>]]);