//Поплавок
recipes.remove(<davincisvessels:floater>);
recipes.addShaped(<davincisvessels:floater>,
[[null, <ore:wool>, null],
 [<ore:wool>, <ore:logWood>, <ore:wool>],
 [null, <ore:wool>, null]]);
//Сиденье
recipes.remove(<davincisvessels:seat>);
recipes.addShaped(<davincisvessels:seat>,
[[<ore:wool>, null, null],
 [<ore:wool>, <ore:wool>, null],
 [<ore:fenceWood>, <ore:plankWood>, <ore:fenceWood>]]);
//Гаджеты 4х
recipes.remove(<davincisvessels:gauge:1>);
recipes.addShaped(<davincisvessels:gauge:1>,
[[null, <ore:plateGold>, null],
 [<ore:wireGtSingleRedAlloy>, <davincisvessels:gauge>, <ore:plateIron>],
 [null, <ore:plateGold>, null]]);
//Гаджеты 5х
recipes.remove(<davincisvessels:gauge>);
recipes.addShaped(<davincisvessels:gauge>,
[[null, <ore:plateGold>, null],
 [<gregtech:meta_item_2:32487>, <ore:wireGtSingleRedAlloy>, <ore:plateIron>],
 [null, <ore:plateGold>, null]]);
//Якорь
recipes.remove(<davincisvessels:anchorpoint>);
recipes.addShaped(<davincisvessels:anchorpoint>,
[[null, <tfc:metal/ingot/wrought_iron>, null],
 [<tfc:metal/ingot/wrought_iron>, <tfc:metal/ingot/wrought_iron>, <tfc:metal/ingot/wrought_iron>],
 [<ore:blockIron>, <ore:blockIron>, <ore:blockIron>]]);
//Паровой двигатель
recipes.remove(<davincisvessels:engine>);
recipes.addShaped(<davincisvessels:engine>,
[[null, <ore:plateIron>, null],
 [<ore:plateIron>, <gregtech:machine:2>, <ore:plateIron>],
 [null, <ore:plateIron>, null]]);
//Штурвал
recipes.remove(<davincisvessels:marker>);
recipes.addShaped(<davincisvessels:marker>,
[[null, <ore:stickWood>, null],
 [<ore:stickWood>, <ore:gearWroughtIron>, <ore:stickWood>],
 [<ore:plankWood>, <ore:stickWood>, <ore:plankWood>]]);
//Приватная кровать
recipes.remove(<davincisvessels:securedbed>);
recipes.addShaped(<davincisvessels:securedbed>,
[[null, <ore:plateWroughtIron>, null],
 [<ore:plateWroughtIron>, <ore:bed>, <ore:plateWroughtIron>],
 [null, <ore:plateWroughtIron>, null]]);