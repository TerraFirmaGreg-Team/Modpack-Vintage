import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;

//Thaumcraft Brass Plate
<ore:plateIron>.remove(<thaumcraft:plate:1>);
//Thaumcraft Iron Plate
<ore:plateBrass>.remove(<thaumcraft:plate>);

mods.jei.JEI.removeAndHide(<dynamictreestc:greatwoodseed>);
mods.jei.JEI.removeAndHide(<dynamictreestc:silverwoodseed>);
mods.jei.JEI.removeAndHide(<dynamictreesthaumicbases:goldenoakseed>);

//TFC+THAUMCRAFT
//Броня из таумиума
Welding.removeRecipe(<tfc:metal/helmet/thaumium>);
Welding.removeRecipe(<tfc:metal/chestplate/thaumium>);
Welding.removeRecipe(<tfc:metal/greaves/thaumium>);
Welding.removeRecipe(<tfc:metal/boots/thaumium>);
Welding.addRecipe("tfc:thaumcraftthaumiumhelmet", <tfc:metal/unfinished_helmet/thaumium>, <tfc:metal/sheet/thaumium>, <thaumcraft:thaumium_helm>, 3);
Welding.addRecipe("tfc:thaumcraftthaumiumchestplate", <tfc:metal/unfinished_chestplate/thaumium>, <tfc:metal/double_sheet/thaumium>, <thaumcraft:thaumium_chest>, 3);
Welding.addRecipe("tfc:thaumcraftthaumiumgreaves", <tfc:metal/unfinished_greaves/thaumium>, <tfc:metal/sheet/thaumium>, <thaumcraft:thaumium_legs>, 3);
Welding.addRecipe("tfc:thaumcraftthaumiumboots", <tfc:metal/unfinished_boots/thaumium>, <tfc:metal/sheet/thaumium>, <thaumcraft:thaumium_boots>, 3);

//Броня из пустотного металла
Anvil.addRecipe("tfc:thaumcraftvoidhelmet", <ore:plateVoidMetal>, <thaumcraft:void_helm>, 5, "armor", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfc:thaumcraftvoidchestplate", <tfc:metal/double_sheet/void_metal>, <thaumcraft:void_chest>, 5, "armor", "HIT_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfc:thaumcraftvoidgreaves", <ore:plateVoidMetal>, <thaumcraft:void_legs>, 5, "armor", "BEND_ANY", "DRAW_ANY", "HIT_ANY");
Anvil.addRecipe("tfc:thaumcraftvoidboots", <ore:plateVoidMetal>, <thaumcraft:void_boots>, 5, "armor", "BEND_LAST", "BEND_SECOND_LAST", "SHRINK_THIRD_LAST");

//Инструменты из таумиума
recipes.addShapeless(<tfc:metal/sword/thaumium>, [<tfc:metal/sword_blade/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/pick/thaumium>, [<tfc:metal/pick_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/axe/thaumium>, [<tfc:metal/axe_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/shovel/thaumium>, [<tfc:metal/shovel_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/hoe/thaumium>, [<tfc:metal/hoe_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/chisel/thaumium>, [<tfc:metal/chisel_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/javelin/thaumium>, [<tfc:metal/javelin_head/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/scythe/thaumium>, [<tfc:metal/scythe_blade/thaumium>, <ore:stickWood>]);
recipes.addShapeless(<tfc:metal/mace/thaumium>, [<tfc:metal/mace_head/thaumium>, <ore:stickWood>]);

//Инструменты из таумиума
Anvil.removeRecipe(<tfc:metal/propick_head/thaumium>);
Anvil.removeRecipe(<tfc:metal/hammer_head/thaumium>);
Anvil.removeRecipe(<tfc:metal/saw_blade/thaumium>);
Anvil.removeRecipe(<tfc:metal/knife_blade/thaumium>);
Anvil.removeRecipe(<tfctech:metal/thaumium_blowpipe>);