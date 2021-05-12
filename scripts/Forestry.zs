import crafttweaker.item.IItemStack;

var platebrass = <ore:plateBrass>;
var platebronze = <ore:plateBronze>;
var ingotaluminium = <ore:ingotAluminium>;
var ingotgold = <ore:ingotGold>;
var screwsteel = <ore:screwSteel>;
var plank = <ore:plankWood>;
var rodsteel = <ore:stickSteel>;
var piston = <ore:craftingPiston>;
var clock = <minecraft:clock>;
var gearsteel = <ore:gearSteel>;
var glass = <ore:blockGlass>;

//Обычный корпус машины
recipes.remove(<forestry:sturdy_machine>);
recipes.addShaped(<forestry:sturdy_machine>, [
[platebronze,screwsteel,platebronze],
[screwsteel,null,screwsteel],
[platebronze,screwsteel,platebronze]]);
//Обычный корпус машины 2
recipes.addShaped(<forestry:sturdy_machine>, [
[platebrass,screwsteel,platebrass],
[screwsteel,null,screwsteel],
[platebrass,screwsteel,platebrass]]);
//Фабрикатор
recipes.addShaped(<forestry:fabricator>, [
[ingotgold,glass,ingotgold],
[glass,<forestry:sturdy_machine>,glass],
[ingotgold,ingotaluminium,ingotgold]]);
//Портативный анализатор
recipes.remove(<forestry:portable_alyzer>);
recipes.addShaped(<forestry:portable_alyzer>,
[[<ore:plateTin>, <ore:paneGlass>, <ore:plateTin>],
 [<ore:plateTin>, <ore:circuitBasic>, <ore:plateTin>],
 [<ore:dustRedstone>, <ore:gemDiamond>, <ore:dustRedstone>]]);
//Укрепленный корпус
recipes.addShaped(<forestry:hardened_machine>,
[[<ore:plateTin>, <ore:plateDiamond>, <ore:plateTin>],
 [<ore:plateDiamond>, <forestry:sturdy_machine>, <ore:plateDiamond>],
 [<ore:plateTin>, <ore:plateDiamond>, <ore:plateTin>]]);
//Секретер
recipes.addShaped(<forestry:escritoire>,
[[<ore:plankWood>, null, null],
 [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
 [<ore:plankWood>, <ore:circuitBasic>, <ore:plankWood>]]);
//Аналайзер
recipes.remove(<forestry:analyzer>);
recipes.addShaped(<forestry:analyzer>,
[[<ore:plateBronze>, <forestry:portable_alyzer>, <ore:plateBronze>],
 [<ore:paneGlass>, <forestry:sturdy_machine>, <ore:paneGlass>],
 [<ore:plateBronze>, null, <ore:plateBronze>]]);

//Farms
//К-Кирпич
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 0}));
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 0}),
[[null, null, null],
 [<ore:plateCopper>, <ore:brickStone>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
//Р-К-Кирпич
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 2}));
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 2}),
[[null, null, null],
 [<ore:plateCopper>, <ore:stoneCracked>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
//Кирпич
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 3}));
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 3}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:brick_block>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
//Незер кирпич
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 6}));
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 6}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:nether_brick>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
//Кварц 1
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 8}));
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 8}),
[[null, null, null],
 [<ore:plateCopper>, <ore:blockNetherQuartz>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
//Кварц 2
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 9}));
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 9}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:quartz_block:1>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
//Кварц 3
recipes.remove(<forestry:ffarm>.withTag({FarmBlock: 10}));
recipes.addShaped(<forestry:ffarm>.withTag({FarmBlock: 10}),
[[null, null, null],
 [<ore:plateCopper>, <minecraft:quartz_block:2>, <ore:plateCopper>],
 [<ore:slabWood>, <forestry:thermionic_tubes:1>, <ore:slabWood>]]);
//Обычные крафты
//
recipes.remove(<forestry:habitat_locator>);
recipes.addShaped(<forestry:habitat_locator>,
[[null, <ore:plateCopper>, null],
 [<ore:plateCopper>, <gregtech:meta_item_1:32691>, <ore:plateCopper>],
 [null, <ore:plateCopper>, null]]);
//
recipes.remove(<forestry:frame_untreated>);
recipes.addShaped(<forestry:frame_untreated>,
[[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],
 [<ore:stickWood>, <ore:string>, <ore:stickWood>],
 [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
//
recipes.remove(<forestry:frame_impregnated>);
recipes.addShaped(<forestry:frame_impregnated>,
[[<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>],
 [<forestry:oak_stick>, <ore:string>, <forestry:oak_stick>],
 [<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>]]);
//
recipes.remove(<forestry:crafting_material:3>);
recipes.addShaped(<forestry:crafting_material:3>,
[[<ore:clothHighQuality>, <ore:clothHighQuality>, <ore:clothHighQuality>],
 [<ore:clothHighQuality>, <ore:clothHighQuality>, <ore:clothHighQuality>],
 [null, null, null]]);
//
recipes.addShapeless (<forestry:crafting_material:2>*3, [<ore:string>]);
//
recipes.remove(<forestry:smoker>);
recipes.addShaped(<forestry:smoker>,
[[<ore:leather>, <ore:stickWood>, <ore:plateTin>],
 [<ore:leather>, <minecraft:flint_and_steel>, <ore:plateTin>],
 [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
//
recipes.remove(<forestry:habitat_screen>);
recipes.addShaped(<forestry:habitat_screen>,
[[null, <gregtech:meta_item_1:32690>, null],
 [<ore:plateTin>, <ore:circuitBasic>, <ore:plateTin>],
 [null, <ore:plateTin>, null]]);
//
recipes.remove(<forestry:raintank>);
recipes.addShaped(<forestry:raintank>,
[[<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>],
 [<ore:plateSteel>, <gregtech:machine:813>, <ore:plateSteel>],
 [<ore:plateSteel>, <ore:paneGlass>, <ore:plateSteel>]]);
//
recipes.remove(<forestry:habitat_former>);
recipes.addShaped(<forestry:habitat_former>,
[[<ore:paneGlass>, <ore:cableGtOctalRedAlloy>, <ore:paneGlass>],
 [<forestry:thermionic_tubes:6>, <forestry:sturdy_machine>, <forestry:thermionic_tubes:6>],
 [<ore:gearBronze>, <ore:circuitGood>, <ore:gearBronze>]]);
//
recipes.remove(<forestry:database>);
recipes.addShaped(<forestry:database>,
[[<ore:plateCopper>, <forestry:portable_alyzer>, <ore:plateCopper>],
 [<ore:ForestryChests>, <forestry:sturdy_machine>, <ore:ForestryChests>],
 [<ore:plankWood>, <forestry:royal_jelly>, <ore:plankWood>]]);
//
recipes.remove(<forestry:crafting_material:6>);
recipes.addShaped(<forestry:crafting_material:6>,
[[<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>],
 [<forestry:oak_stick>, <forestry:oak_stick>, <forestry:oak_stick>],
 [null, null, null]]);
//
recipes.remove(<forestry:alveary.hygro>);
recipes.addShaped(<forestry:alveary.hygro>,
[[<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>],
 [<ore:paneGlass>, <forestry:alveary.plain>, <ore:paneGlass>],
 [<ore:paneGlass>, <ore:plateSteel>, <ore:paneGlass>]]);
//
recipes.remove(<forestry:alveary.heater>);
recipes.addShaped(<forestry:alveary.heater>,
[[<forestry:thermionic_tubes:4>, <ore:plateSteel>, <forestry:thermionic_tubes:4>],
 [null, <forestry:alveary.plain>, null],
 [<ore:stone>, <ore:stone>, <ore:stone>]]);
//
recipes.remove(<forestry:alveary.fan>);
recipes.addShaped(<forestry:alveary.fan>,
[[<ore:plateSteel>, null, <ore:plateSteel>],
 [null, <forestry:alveary.plain>, null],
 [<ore:plateSteel>, <forestry:thermionic_tubes:4>, <ore:plateSteel>]]);
//
recipes.remove(<forestry:alveary.swarmer>);
recipes.addShaped(<forestry:alveary.swarmer>,
[[<forestry:thermionic_tubes:5>, <ore:plateGold>, <forestry:thermionic_tubes:5>],
 [null, <forestry:alveary.plain>, null],
 [<forestry:thermionic_tubes:5>, <ore:plateGold>, <forestry:thermionic_tubes:5>]]);
//
recipes.remove(<forestry:alveary.sieve>);
recipes.addShaped(<forestry:alveary.sieve>,
[[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
 [null, <forestry:alveary.plain>, null],
 [<forestry:crafting_material:3>, <forestry:crafting_material:3>, <forestry:crafting_material:3>]]);
//
recipes.remove(<forestry:genetic_filter>);
recipes.addShaped(<forestry:genetic_filter>,
[[<ore:plankWood>, <ore:circuitBasic>, <ore:plankWood>],
 [<forestry:propolis>, <ore:paneGlass>, <forestry:propolis>],
 [<ore:gearBronze>, <ore:gemDiamond>, <ore:gearBronze>]]);
//
recipes.remove(<forestry:naturalist_helmet>);
recipes.addShaped(<forestry:naturalist_helmet>,
[[null, <ore:plateCopper>, null],
 [<ore:ForestryPropolis>, null, <ore:ForestryPropolis>],
 [null, <ore:plateCopper>, null]]);
//