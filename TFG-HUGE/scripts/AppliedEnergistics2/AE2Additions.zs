import crafttweaker.item.IItemStack;

// Удаление рецептов + скрытие
val ItemsToRemoveFromJEI as IItemStack[] = [
    <aeadditions:terminal.fluid.wireless>.withTag({}),
	<aeadditions:terminal.universal.wireless>.withTag({type: 0 as byte, modules: 23 as byte}),
	<aeadditions:vibrantchamberfluid>,
	<aeadditions:certustank>
];
for item in ItemsToRemoveFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

// Удаление рецептов
val ItemsToRemove as IItemStack[] = [
    <aeadditions:storage.component>,
	<aeadditions:storage.component:1>,
	<aeadditions:storage.component:2>,
	<aeadditions:storage.component:3>,
	<aeadditions:storage.component:4>,
	<aeadditions:storage.component:5>,
	<aeadditions:storage.component:6>,
	<aeadditions:storage.casing>,
	<aeadditions:storage.casing:1>
];
for item in ItemsToRemove{
    recipes.remove(item);
}

// Поименное удалние рецептов
val RemoveRecipesByRecipeName = [
    "aeadditions:storagecells/item/owncasing/256k",
	"aeadditions:storagecells/item/owncasing/1024k",
	"aeadditions:storagecells/item/owncasing/4096k",
	"aeadditions:storagecells/item/owncasing/16384k",
	"aeadditions:storagecells/fluid/owncasing/256k",
	"aeadditions:storagecells/fluid/owncasing/1024k",
	"aeadditions:storagecells/fluid/owncasing/4096k"
] as string[];
for item in RemoveRecipesByRecipeName{
    recipes.removeByRecipeName(item);
}

// --- Рецепты

// Жидкостный интерфейс 2
recipes.addShapeless(<aeadditions:part.base:2>, [<appliedenergistics2:fluid_interface>, <ore:circuitGood>, <ore:circuitGood>]);

// Fluid Storage Housing
assembler.recipeBuilder()
	.inputs(<ore:plateCertusQuartz> * 2, <ore:gemQuartzite> * 2, <ore:plateStainlessSteel> * 2, <ore:plateAluminium> * 2)
	.outputs(<aeadditions:storage.casing:1>)
	.duration(250).EUt(128).buildAndRegister();

// Advanced Storage Housing
assembler.recipeBuilder()
	.inputs(<appliedenergistics2:material:39> * 2, <ore:gemQuartzite> * 4, <ore:plateStainlessSteel> * 4, <ore:plateAluminium> * 4)
	.outputs(<aeadditions:storage.casing>)
	.duration(250).EUt(128).buildAndRegister();

// 256k item storage
assembler.recipeBuilder()
	.inputs(<metaitem:cover.shutter> * 8, <appliedenergistics2:material:23> * 2, <ore:circuitElite> * 2, <appliedenergistics2:material:38> * 2)
	.outputs(<aeadditions:storage.component>)
	.duration(300).EUt(3000).buildAndRegister();
// 1024k item storage
assembler.recipeBuilder()
	.inputs(<metaitem:cover.shutter> * 16, <appliedenergistics2:material:23> * 4, <ore:circuitMaster> * 2, <aeadditions:storage.component> * 2)
	.outputs(<aeadditions:storage.component:1>)
	.duration(300).EUt(5000).buildAndRegister();
// 4096k item storage
assembler.recipeBuilder()
	.inputs(<metaitem:cover.shutter> * 24, <appliedenergistics2:material:23> * 6, <ore:circuitUltimate> * 2, <aeadditions:storage.component:1> * 2)
	.outputs(<aeadditions:storage.component:2>)
	.duration(300).EUt(7000).buildAndRegister();
// 16384k item storage
assembler.recipeBuilder()
	.inputs(<metaitem:cover.shutter> * 32, <appliedenergistics2:material:23> * 8, <ore:circuitSuperconductor> * 2, <aeadditions:storage.component:2> * 2)
	.outputs(<aeadditions:storage.component:3>)
	.duration(300).EUt(9000).buildAndRegister();

// 256k fluid storage
assembler.recipeBuilder()
	.inputs(<metaitem:cover.shutter> * 8, <appliedenergistics2:material:24> * 2, <ore:circuitElite> * 2, <appliedenergistics2:material:57> * 2)
	.outputs(<aeadditions:storage.component:4>)
	.duration(300).EUt(3000).buildAndRegister();
// 1024k fluid storage
assembler.recipeBuilder()
	.inputs(<metaitem:cover.shutter> * 16, <appliedenergistics2:material:24> * 4, <ore:circuitMaster> * 2, <aeadditions:storage.component:4> * 2)
	.outputs(<aeadditions:storage.component:5>)
	.duration(300).EUt(5000).buildAndRegister();
// 4096k fluid storage
assembler.recipeBuilder()
	.inputs(<metaitem:cover.shutter> * 24, <appliedenergistics2:material:24> * 6, <ore:circuitUltimate> * 2, <aeadditions:storage.component:5> * 2)
	.outputs(<aeadditions:storage.component:6>)
	.duration(300).EUt(7000).buildAndRegister();