import crafttweaker.item.IItemStack;
import mods.gregtech.recipe.RecipeMap;

val assembler as RecipeMap = RecipeMap.getByName("assembler");
val autoclave as RecipeMap = RecipeMap.getByName("autoclave");

//Удаление рецептов

//Удаление рецептов
global ItemsToRemoveWP as IItemStack[] = [
	<warpdrive:wrench>,
	<warpdrive:component>,
	<warpdrive:component:4>,
	<warpdrive:component:3>,
	<warpdrive:component:2>,
	<warpdrive:component:1>,
	<warpdrive:component:5>,
	<warpdrive:warp_armor.basic.helmet>,
	<warpdrive:warp_armor.basic.chestplate>,
	<warpdrive:warp_armor.basic.leggings>,
	<warpdrive:warp_armor.basic.boots>,
	<warpdrive:warp_armor.advanced.helmet>,
	<warpdrive:warp_armor.advanced.chestplate>,
	<warpdrive:warp_armor.advanced.leggings>,
	<warpdrive:warp_armor.advanced.boots>,
	<warpdrive:warp_armor.superior.helmet>,
	<warpdrive:warp_armor.superior.chestplate>,
	<warpdrive:warp_armor.superior.leggings>,
	<warpdrive:warp_armor.superior.boots>,
	<warpdrive:capacitor.basic>,
	<warpdrive:capacitor.advanced>,
	<warpdrive:capacitor.superior>,
	<warpdrive:component:32>,
	<warpdrive:component:27>,
	<warpdrive:component:31>,
	<warpdrive:cloaking_core>,
	<warpdrive:mining_laser>,
	<warpdrive:laser_tree_farm>,
	<warpdrive:force_field_upgrade:2>
] as IItemStack[];
for item in ItemsToRemoveWP{
    recipes.remove(item);
}

//Ключ
recipes.addShaped(<warpdrive:wrench>,
[[<ore:nuggetIron>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:nuggetIron>],
 [<ore:nuggetIron>, <ore:plateIron>, <ore:nuggetIron>],
 [null, <ore:foilRubber>, null]]);

//Броня 1лвл
/*
recipes.addShaped(<warpdrive:warp_armor.basic.helmet>,
[[<ore:plateRubber>, <ore:plateRubber>, <ore:plateRubber>],
 [<ore:plateRubber>, <ore:blockHull1_glass>, <ore:plateRubber>],
 [<ore:circuitAdvanced>, <warpdrive:component:11>, <ore:circuitAdvanced>]]);
recipes.addShaped(<warpdrive:warp_armor.basic.chestplate>,
[[<ore:plateDenseLead>, null, <ore:plateDenseLead>],
 [<ore:plateRubber>, <ore:plateDenseLead>, <ore:plateRubber>],
 [<ore:plateRubber>, <ore:plateRubber>, <ore:plateRubber>]]);
recipes.addShaped(<warpdrive:warp_armor.basic.leggings>,
[[<ore:plateDenseLead>, <ore:plateRubber>, <ore:plateDenseLead>],
 [<ore:plateRubber>, null, <ore:plateRubber>],
 [<ore:plateRubber>, null, <ore:plateRubber>]]);
recipes.addShaped(<warpdrive:warp_armor.basic.boots>,
[[<ore:plateDenseLead>, null, <ore:plateDenseLead>],
 [<ore:plateRubber>, null, <ore:plateRubber>]]);

//Броня 2лвл
recipes.addShaped(<warpdrive:warp_armor.advanced.helmet>,
[[<ore:plateReinforcedEpoxyResin>, <ore:itemCeramic>, <ore:plateReinforcedEpoxyResin>],
 [<ore:itemCeramic>, <warpdrive:warp_armor.basic.helmet>, <ore:itemCeramic>]]);
recipes.addShaped(<warpdrive:warp_armor.advanced.chestplate>,
[[<ore:itemCeramic>, null, <ore:itemCeramic>],
 [<ore:plateReinforcedEpoxyResin>, <warpdrive:warp_armor.basic.chestplate>, <ore:plateReinforcedEpoxyResin>],
 [<ore:plateReinforcedEpoxyResin>, <ore:itemCeramic>, <ore:plateReinforcedEpoxyResin>]]);
recipes.addShaped(<warpdrive:warp_armor.advanced.leggings>,
[[<ore:itemCeramic>, <warpdrive:warp_armor.basic.leggings>, <ore:itemCeramic>],
 [<ore:plateReinforcedEpoxyResin>, null, <ore:plateReinforcedEpoxyResin>],
 [<ore:plateReinforcedEpoxyResin>, null, <ore:plateReinforcedEpoxyResin>]]);
recipes.addShaped(<warpdrive:warp_armor.advanced.boots>,
[[<ore:plateReinforcedEpoxyResin>, <warpdrive:warp_armor.basic.boots>, <ore:plateReinforcedEpoxyResin>],
 [<ore:plateReinforcedEpoxyResin>, null, <ore:plateReinforcedEpoxyResin>]]);

//Броня 3лвл
recipes.addShaped(<warpdrive:warp_armor.superior.helmet>,
[[<gregtech:meta_item_2:32506>, <gregtech:meta_item_2:32506>, <gregtech:meta_item_2:32506>],
 [<gregtech:meta_item_2:32506>, <warpdrive:warp_armor.advanced.helmet>, <gregtech:meta_item_2:32506>]]);
recipes.addShaped(<warpdrive:warp_armor.superior.chestplate>,
[[<gregtech:meta_item_2:32506>, <warpdrive:warp_armor.advanced.chestplate>, <gregtech:meta_item_2:32506>],
 [<gregtech:meta_item_2:32506>, <gregtech:meta_item_1:32615>, <gregtech:meta_item_2:32506>],
 [<gregtech:meta_item_2:32506>, <warpdrive:component:11>, <gregtech:meta_item_2:32506>]]);
recipes.addShaped(<warpdrive:warp_armor.superior.leggings>,
[[<gregtech:meta_item_2:32506>, <warpdrive:warp_armor.advanced.leggings>, <gregtech:meta_item_2:32506>],
 [<gregtech:meta_item_2:32506>, null, <gregtech:meta_item_2:32506>],
 [<gregtech:meta_item_2:32506>, null, <gregtech:meta_item_2:32506>]]);
recipes.addShaped(<warpdrive:warp_armor.superior.boots>,
[[<gregtech:meta_item_2:32506>, <warpdrive:warp_armor.advanced.boots>, <gregtech:meta_item_2:32506>],
 [<gregtech:meta_item_2:32506>, null, <gregtech:meta_item_2:32506>]]);
*/

//ЧанкЛоадеры
recipes.addShaped(<warpdrive:chunk_loader.basic>,
[[<ore:cableGtDoubleGold>, <minecraft:ender_eye>, <ore:cableGtDoubleGold>],
 [<ore:circuitAdvanced>, <gregtech:machine_casing:2>, <gregtech:meta_item_1:32691>],
 [<ore:cableGtDoubleGold>, <minecraft:ender_eye>, <ore:cableGtDoubleGold>]]);
recipes.addShaped(<warpdrive:chunk_loader.advanced>,
[[<ore:cableGtDoubleGold>, <rftools:infused_enderpearl>, <ore:cableGtDoubleGold>],
 [<ore:circuitExtreme>, <gregtech:machine_casing:3>, <gregtech:meta_item_1:32692>],
 [<ore:cableGtDoubleGold>, <rftools:infused_enderpearl>, <ore:cableGtDoubleGold>]]);
recipes.addShaped(<warpdrive:chunk_loader.superior>,
[[<ore:cableGtDoubleGold>, <gregtech:meta_item_1:32724>, <ore:cableGtDoubleGold>],
 [<ore:circuitMaster>, <gregtech:machine_casing:4>, <gregtech:meta_item_1:32693>],
 [<ore:cableGtDoubleGold>, <gregtech:meta_item_1:32724>, <ore:cableGtDoubleGold>]]);

//Капаситры
recipes.addShaped(<warpdrive:capacitor.basic>,
[[<ore:stickVanadiumGallium>, <gregtech:meta_item_2:32479>, <ore:stickVanadiumGallium>],
 [<ore:plateReinforcedEpoxyResin>, <warpdrive:component:4>, <ore:plateReinforcedEpoxyResin>],
 [<ore:stickVanadiumGallium>, <ore:plateReinforcedEpoxyResin>, <ore:stickVanadiumGallium>]]);
recipes.addShaped(<warpdrive:capacitor.advanced>,
[[<ore:plateRubber>, <ore:circuitUltimate>, <ore:plateRubber>],
 [<warpdrive:component:2>, <warpdrive:component:10>, <warpdrive:component:2>],
 [<ore:plateRubber>, <ore:cableGtSingleEvSuperconductorBase>, <ore:plateRubber>]]);
recipes.addShaped(<warpdrive:capacitor.superior>,
[[<gregtech:meta_item_2:32506>, <ore:cableGtDoubleUvSuperconductorBase>, <gregtech:meta_item_2:32506>],
 [<ore:plateRubber>, <gtadditions:ga_meta_item:32486>, <ore:plateRubber>],
 [<gregtech:meta_item_2:32506>, <ore:cableGtDoubleUvSuperconductorBase>, <gregtech:meta_item_2:32506>]]);

//Ядро клоаки
recipes.addShaped(<warpdrive:cloaking_core>,
[[<ore:plateOsmiridium>, <warpdrive:cloaking_coil>, <ore:plateOsmiridium>],
 [<warpdrive:cloaking_coil>, <warpdrive:ship_controller.superior>, <warpdrive:cloaking_coil>],
 [<ore:plateOsmiridium>, <ore:cableGtSingleSuperconductor>, <ore:plateOsmiridium>]]);
 
//Mining laser
recipes.addShaped(<warpdrive:mining_laser>,
[[null, <gregtech:machine_casing:3>, <gregtech:meta_tool:1>.withTag({"GT.ToolStats": {Material: "diamond"}})],
 [<gregtech:meta_item_1:32602>, <gtadditions:ga_meta_item:32532>, <gregtech:meta_item_1:32602>],
 [<ore:paneGlass>, <warpdrive:component:17>, <ore:paneGlass>]]);
 
//Laser tree farm
recipes.addShaped(<warpdrive:laser_tree_farm>,
[[<ore:paneGlass>, <warpdrive:component:17>, <ore:paneGlass>],
 [<gregtech:meta_item_1:32601>, <warpdrive:component:17>, <gregtech:meta_item_1:32601>],
 [null, <gregtech:machine_casing:2>, <gregtech:meta_tool:3>.withTag({"GT.ToolStats": {Material: "diamond"}})]]);
 
//Block breaker upgrade
recipes.addShaped(<warpdrive:force_field_upgrade:2>,
[[<warpdrive:component:7>, <warpdrive:component:7>, <warpdrive:component:7>],
 [<gregtech:meta_tool:1>.withTag({"GT.ToolStats": {Material: "diamond"}}), <gregtech:meta_tool:3>.withTag({"GT.ToolStats": {Material: "diamond"}}), <gregtech:meta_tool:2>.withTag({"GT.ToolStats": {Material: "diamond"}})],
 [<warpdrive:component:7>, <warpdrive:component:7>, <warpdrive:component:7>]]);

//Сырые кристаллы
autoclave.recipeBuilder().inputs(<ore:gemExquisiteGarnetYellow>).fluidInputs([<liquid:platinum>*7]).outputs(<warpdrive:component>).duration(4000).EUt(690).buildAndRegister();
autoclave.recipeBuilder().inputs(<ore:gemExquisiteEmerald>).fluidInputs([<liquid:platinum>*7]).outputs(<warpdrive:component:3>).duration(4000).EUt(690).buildAndRegister();
autoclave.recipeBuilder().inputs(<ore:gemExquisiteRuby>).fluidInputs([<liquid:platinum>*7]).outputs(<warpdrive:component:4>).duration(4000).EUt(690).buildAndRegister();
autoclave.recipeBuilder().inputs(<ore:gemExquisiteDiamond>).fluidInputs([<liquid:platinum>*7]).outputs(<warpdrive:component:2>).duration(4000).EUt(690).buildAndRegister();
//Выращенные кристаллы
autoclave.recipeBuilder().inputs(<warpdrive:component>).fluidInputs([<liquid:platinum>*7]).outputs(<warpdrive:component:1>).duration(500).EUt(990).buildAndRegister();
autoclave.recipeBuilder().inputs(<warpdrive:component:4>).fluidInputs([<liquid:platinum>*7]).outputs(<warpdrive:component:5>).duration(500).EUt(990).buildAndRegister();
