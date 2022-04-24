import crafttweaker.item.IItemStack;

// --- Removing Recipes

// Удаление и скрытие предметов
val ItemsToRemove as IItemStack[] = [
	<projectred-core:resource_item:100>,
    <projectred-core:resource_item:101>,
    <projectred-core:resource_item:102>,
    <projectred-core:resource_item:251>,
    <projectred-core:resource_item:410>,
    <projectred-core:resource_item:342>,
    <projectred-core:resource_item:320>,
    <projectred-core:resource_item:341>,
    <projectred-core:resource_item:300>,
    <projectred-core:resource_item:312>,
    <projectred-core:resource_item:310>,
    <projectred-core:resource_item:311>,
    <projectred-core:resource_item:301>,
    <projectred-core:resource_item:200>,
    <projectred-core:resource_item:201>,
    <projectred-core:resource_item:202>,
    <projectred-core:resource_item:105>,
    <projectred-core:resource_item:252>,
    <projectred-core:resource_item:250>,
    <projectred-core:resource_item:400>,
    <projectred-core:resource_item:401>,
    <projectred-core:resource_item:402>,
    <projectred-core:resource_item:103>,
    <projectred-core:resource_item:104>,
    <projectred-core:drawplate>,
    <projectred-fabrication:ic_chip:1>
] as IItemStack[];
for item in ItemsToRemove{
    mods.jei.JEI.removeAndHide(item);
}

// Удаление рецептов иллюмаров
for item in Illuminars_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных ламп
for item in Deactivated_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных ламп
for item in Activated_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов кнопко-ламп
for item in Button_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов кнопок с фидбеком
for item in Feedback_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных фонарей
for item in Deactivated_Lantern_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных фонарей
for item in Activated_Lantern_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных фикстур ламп
for item in Deactivated_Fixture_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных фикстур ламп
for item in Activated_Fixture_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных фаллоут ламп
for item in Deactivated_Fallout_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных фаллоут ламп
for item in Activated_Fallout_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов деактивированных кейдж ламп
for item in Deactivated_Cage_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов активированных кейдж ламп
for item in Activated_Cage_Lamps_Array {
    recipes.remove(item);
}

// Удаление рецептов печки
val RecipesToRemoveFromFurnace as IItemStack[] = [
	<projectred-core:resource_item> * 2,
    <projectred-core:resource_item:103>,
    <projectred-core:resource_item:342>,
    <projectred-core:resource_item:320>,
    <projectred-core:resource_item:341>,
    <projectred-core:resource_item:300>,
    <projectred-core:resource_item:104>
] as IItemStack[];
for item in RecipesToRemoveFromFurnace {
    furnace.remove(item);
}

// --- Adding Recipes

// Circuit Plate
furnace.addRecipe(<projectred-core:resource_item> * 2, <ore:RawIgneousExtrusive>);

// Illuminar dusts
for i, Illuminars_Array in Illuminars_Array {
    mixer.recipeBuilder()
    	.inputs(<ore:dustGlowstone>)
        .circuit(24)
        .fluidInputs([All_Liquid_Dyes[i] * 18])
    	.outputs(Illuminars_Array)
    	.duration(20).EUt(7).buildAndRegister();
}

// Deactivated Lamps
for i, Deactivated_Lamps_Array in Deactivated_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(<metaitem:wireGtSingleRedAlloy>, <ore:paneGlass> * 6, <metaitem:stickSteel> * 12, Illuminars_Array[i] * 2)
        .circuit(12)
    	.outputs(Deactivated_Lamps_Array)
    	.duration(180).EUt(32).buildAndRegister();
}

// Activated Lamps
for i, Activated_Lamps_Array in Activated_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(Deactivated_Lamps_Array[i], <ore:redstoneTorch>)
        .circuit(13)
    	.outputs(Activated_Lamps_Array)
    	.duration(16).EUt(2).buildAndRegister();
}

// Button Lamps
for i, Button_Lamps_Array in Button_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(<ore:buttonStone>, Illuminars_Array[i] * 2)
        .circuit(14)
    	.outputs(Button_Lamps_Array)
    	.duration(180).EUt(32).buildAndRegister();
}

// Feedback Lamps
for i, Feedback_Lamps_Array in Feedback_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(<ore:redstoneTorch>, Button_Lamps_Array[i] * 2)
        .circuit(15)
    	.outputs(Feedback_Lamps_Array)
    	.duration(180).EUt(32).buildAndRegister();
}

// All Deactivated Lantern Lamps
for i, Deactivated_Lantern_Lamps_Array in Deactivated_Lantern_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(<metaitem:wireGtSingleRedAlloy>, <ore:paneGlass> * 2, <metaitem:stickSteel> * 3, <ore:plateIron> * 4, Illuminars_Array[i])
        .circuit(16)
    	.outputs(Deactivated_Lantern_Lamps_Array)
    	.duration(180).EUt(32).buildAndRegister();
}

// Activated Lantern Lamps
for i, Activated_Lantern_Lamps_Array in Activated_Lantern_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(Deactivated_Lamps_Array[i], <ore:redstoneTorch>)
        .circuit(17)
    	.outputs(Activated_Lantern_Lamps_Array)
    	.duration(16).EUt(2).buildAndRegister();
}

// Deactivated Fixture Lamps
for i, Deactivated_Fixture_Lamps_Array in Deactivated_Fixture_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(<projectred-core:resource_item:1>, <metaitem:stickSteel> * 6, <ore:plateIron> * 4, <ore:paneGlass> * 5, Illuminars_Array[i] * 2)
        .circuit(18)
    	.outputs(Deactivated_Fixture_Lamps_Array)
    	.duration(180).EUt(32).buildAndRegister();
}

// Activated Fixture Lamps
for i, Activated_Fixture_Lamps_Array in Activated_Fixture_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(Deactivated_Fixture_Lamps_Array[i], <ore:redstoneTorch>)
        .circuit(19)
    	.outputs(Activated_Fixture_Lamps_Array)
    	.duration(16).EUt(2).buildAndRegister();
}

// Deactivated Fallout Lamps
for i, Deactivated_Fallout_Lamps_Array in Deactivated_Fallout_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(<projectred-core:resource_item:1>, <metaitem:stickSteel> * 6, <ore:plateIron> * 2, <ore:barsIron> * 6, Illuminars_Array[i] * 2)
        .circuit(20)
    	.outputs(Deactivated_Fallout_Lamps_Array)
    	.duration(180).EUt(32).buildAndRegister();
}

// Activated Fallout Lamps
for i,Activated_Fallout_Lamps_Array in Activated_Fallout_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(Deactivated_Fallout_Lamps_Array[i], <ore:redstoneTorch>)
        .circuit(21)
    	.outputs(Activated_Fallout_Lamps_Array)
    	.duration(16).EUt(2).buildAndRegister();
}

// Deactivated Cage Lamps
for i, Deactivated_Cage_Lamps_Array in Deactivated_Cage_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(<projectred-core:resource_item:1>, <metaitem:stickSteel> * 2, <ore:barsIron> * 4, Illuminars_Array[i])
        .circuit(22)
    	.outputs(Deactivated_Cage_Lamps_Array)
    	.duration(180).EUt(32).buildAndRegister();
}

// Activated Cage Lamps
for i,Activated_Cage_Lamps_Array in Activated_Cage_Lamps_Array {
    assembler.recipeBuilder()
    	.inputs(Deactivated_Cage_Lamps_Array[i], <ore:redstoneTorch>)
        .circuit(23)
    	.outputs(Activated_Cage_Lamps_Array)
    	.duration(16).EUt(2).buildAndRegister();
}