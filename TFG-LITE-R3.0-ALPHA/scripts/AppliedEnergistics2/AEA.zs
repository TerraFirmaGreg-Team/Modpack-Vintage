//Удаление рецептов
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/256k");
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/1024k");
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/4096k");
recipes.removeByRecipeName("aeadditions:storagecells/item/owncasing/16384k");
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/256k");
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/1024k");
recipes.removeByRecipeName("aeadditions:storagecells/fluid/owncasing/4096k");
//recipes.remove(<aeadditions:part.base>);
//recipes.remove(<aeadditions:part.base:1>);
//recipes.remove(<aeadditions:part.base:3>);
//recipes.remove(<aeadditions:storage.physical:4>.withTag({upgrades: {}, config: {}, fuzzyMode: "IGNORE_ALL"}));
//recipes.remove(<aeadditions:pattern.fluid>);
recipes.remove(<aeadditions:storage.component>);
recipes.remove(<aeadditions:storage.component:1>);
recipes.remove(<aeadditions:storage.component:2>);
recipes.remove(<aeadditions:storage.component:3>);
recipes.remove(<aeadditions:storage.component:4>);
recipes.remove(<aeadditions:storage.component:5>);
recipes.remove(<aeadditions:storage.component:6>);
recipes.remove(<aeadditions:storage.casing>);
recipes.remove(<aeadditions:storage.casing:1>);
//recipes.remove(<aeadditions:storage.fluid.portable>.withTag({fuzzyMode: "IGNORE_ALL"}));
//recipes.remove(<aeadditions:fluidcrafter>);
//recipes.remove(<aeadditions:fluidfiller>);
//recipes.remove(<aeadditions:hardmedrive>);
mods.jei.JEI.removeAndHide(<aeadditions:terminal.fluid.wireless>.withTag({}));
mods.jei.JEI.removeAndHide(<aeadditions:terminal.universal.wireless>.withTag({type: 0 as byte, modules: 23 as byte}));
mods.jei.JEI.removeAndHide(<aeadditions:vibrantchamberfluid>);
mods.jei.JEI.removeAndHide(<aeadditions:certustank>);

//Жидкостный интерфейс 2
recipes.addShapeless(<aeadditions:part.base:2>, [<appliedenergistics2:fluid_interface>, <ore:circuitGood>, <ore:circuitGood>]);

//Fluid Storage Housing
assembler.recipeBuilder()
	.inputs(<ore:plateCertusQuartz>*2, <ore:gemQuartzite>*2, <ore:plateStainlessSteel>*2, <ore:plateAluminium>*2)
	.outputs(<aeadditions:storage.casing:1>)
	.duration(250).EUt(128).buildAndRegister();

//Advanced Storage Housing
assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:39>*2, <ore:gemQuartzite>*4, <ore:plateStainlessSteel>*4, <ore:plateAluminium>*4)
	.outputs(<aeadditions:storage.casing>)
	.duration(250).EUt(128).buildAndRegister();

//256k item storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_1:309>*8, <appliedenergistics2:material:23>*2, <ore:circuitElite>*2, <appliedenergistics2:material:38>*2).outputs(<aeadditions:storage.component>).duration(300).EUt(3000).buildAndRegister();
//1024k item storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_1:309>*16, <appliedenergistics2:material:23>*4, <ore:circuitMaster>*2, <aeadditions:storage.component>*2).outputs(<aeadditions:storage.component:1>).duration(300).EUt(5000).buildAndRegister();
//4096k item storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_1:309>*24, <appliedenergistics2:material:23>*6, <ore:circuitUltimate>*2, <aeadditions:storage.component:1>*2).outputs(<aeadditions:storage.component:2>).duration(300).EUt(7000).buildAndRegister();
//16384k item storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_1:309>*32, <appliedenergistics2:material:23>*8, <ore:circuitSuperconductor>*2, <aeadditions:storage.component:2>*2).outputs(<aeadditions:storage.component:3>).duration(300).EUt(9000).buildAndRegister();

//256k fluid storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_1:309>*8, <appliedenergistics2:material:24>*2, <ore:circuitElite>*2, <appliedenergistics2:material:57>*2).outputs(<aeadditions:storage.component:4>).duration(300).EUt(3000).buildAndRegister();
//1024k fluid storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_1:309>*16, <appliedenergistics2:material:24>*4, <ore:circuitMaster>*2, <aeadditions:storage.component:4>*2).outputs(<aeadditions:storage.component:5>).duration(300).EUt(5000).buildAndRegister();
//4096k fluid storage
assembler.recipeBuilder().inputs(<gregtech:meta_item_1:309>*24, <appliedenergistics2:material:24>*6, <ore:circuitUltimate>*2, <aeadditions:storage.component:5>*2).outputs(<aeadditions:storage.component:6>).duration(300).EUt(7000).buildAndRegister();