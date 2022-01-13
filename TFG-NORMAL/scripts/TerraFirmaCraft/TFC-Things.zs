import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;

//Удаление мусора
val RemoveItemsFromJEI as IItemStack[] = [
    <tfcthings:pigvil>,
    <tfcthings:pigvil_black_steel>,
    <tfcthings:pigvil_blue_steel>,
    <tfcthings:pigvil_red_steel>,
    <tfcthings:pigvil_purple_steel>,
    <tfcthings:mold/unfired/prospectors_hammer_head>,
    <tfcthings:mold/prospectors_hammer_head>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Платиновые короны
recipes.remove(<tfcthings:crown/platinum_opal>);
recipes.remove(<tfcthings:crown/platinum_jasper>);
recipes.remove(<tfcthings:crown/platinum_jade>);
recipes.remove(<tfcthings:crown/platinum_garnet>);
recipes.remove(<tfcthings:crown/platinum_emerald>);
recipes.remove(<tfcthings:crown/platinum_diamond>);
recipes.remove(<tfcthings:crown/platinum_beryl>);
recipes.remove(<tfcthings:crown/platinum_amethyst>);
recipes.remove(<tfcthings:crown/platinum_agate>);
recipes.remove(<tfcthings:crown/platinum_ruby>);
recipes.remove(<tfcthings:crown/platinum_sapphire>);
recipes.remove(<tfcthings:crown/platinum_topaz>);
recipes.remove(<tfcthings:crown/platinum_tourmaline>);
//Золотые короны
recipes.remove(<tfcthings:crown/gold_jade>);
recipes.remove(<tfcthings:crown/gold_garnet>);
recipes.remove(<tfcthings:crown/gold_emerald>);
recipes.remove(<tfcthings:crown/gold_diamond>);
recipes.remove(<tfcthings:crown/gold_beryl>);
recipes.remove(<tfcthings:crown/gold_amethyst>);
recipes.remove(<tfcthings:crown/gold_agate>);
recipes.remove(<tfcthings:crown/gold_topaz>);
recipes.remove(<tfcthings:crown/gold_tourmaline>);
recipes.remove(<tfcthings:crown/gold_sapphire>);
recipes.remove(<tfcthings:crown/gold_ruby>);
recipes.remove(<tfcthings:crown/gold_opal>);
recipes.remove(<tfcthings:crown/gold_jasper>);

//Серебрянные короны
recipes.addShapeless(<tfcthings:crown/platinum_garnet>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteGarnet>]);
recipes.addShapeless(<tfcthings:crown/platinum_emerald>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless(<tfcthings:crown/platinum_diamond>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless(<tfcthings:crown/platinum_beryl>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteBeryl>]);
recipes.addShapeless(<tfcthings:crown/platinum_amethyst>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless(<tfcthings:crown/platinum_agate>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteAgate>]);
recipes.addShapeless(<tfcthings:crown/platinum_sapphire>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless(<tfcthings:crown/platinum_topaz>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless(<tfcthings:crown/platinum_tourmaline>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteTourmaline>]);
recipes.addShapeless(<tfcthings:crown/platinum_ruby>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless(<tfcthings:crown/platinum_opal>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteOpal>]);
recipes.addShapeless(<tfcthings:crown/platinum_jasper>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteJasper>]);
recipes.addShapeless(<tfcthings:crown/platinum_jade>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/platinum_empty>, <ore:gemExquisiteJade>]);
//Золотые короны
recipes.addShapeless(<tfcthings:crown/gold_garnet>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteGarnet>]);
recipes.addShapeless(<tfcthings:crown/gold_emerald>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteEmerald>]);
recipes.addShapeless(<tfcthings:crown/gold_diamond>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteDiamond>]);
recipes.addShapeless(<tfcthings:crown/gold_beryl>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteBeryl>]);
recipes.addShapeless(<tfcthings:crown/gold_amethyst>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteAmethyst>]);
recipes.addShapeless(<tfcthings:crown/gold_agate>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteAgate>]);
recipes.addShapeless(<tfcthings:crown/gold_sapphire>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteSapphire>]);
recipes.addShapeless(<tfcthings:crown/gold_topaz>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteTopaz>]);
recipes.addShapeless(<tfcthings:crown/gold_tourmaline>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteTourmaline>]);
recipes.addShapeless(<tfcthings:crown/gold_ruby>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteRuby>]);
recipes.addShapeless(<tfcthings:crown/gold_opal>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteOpal>]);
recipes.addShapeless(<tfcthings:crown/gold_jasper>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteJasper>]);
recipes.addShapeless(<tfcthings:crown/gold_jade>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:crown/gold_empty>, <ore:gemExquisiteJade>]);

//Removing Prospect Hammer
ClayKnapping.removeRecipe(<tfcthings:mold/unfired/prospectors_hammer_head>);
Heating.removeRecipe(<tfcthings:mold/prospectors_hammer_head>);

//TFC-Things Sling Ammo с помощью GT молота
//Sling Ammo Spread
recipes.remove(<tfcthings:sling_ammo_spread>);
recipes.addShapeless(<tfcthings:sling_ammo_spread>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:sling_ammo>]);
//Sling Ammo Light
recipes.remove(<tfcthings:sling_ammo_light>);
recipes.addShapeless(<tfcthings:sling_ammo_light>, [<ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <tfcthings:sling_ammo>, <ore:craftingToolFile>.firstItem.withEmptyTag()]);

//Алмазная пыль --> крошка TFC
recipes.remove(<tfcthings:diamond_grit>);
Quern.addRecipe("tfc:Fdiamond_grit", <ore:dustDiamond>, <tfcthings:diamond_grit>);

//Минус точильный камень
recipes.removeByRecipeName("tfcthings:grindstone_base_steel");
recipes.removeByRecipeName("tfcthings:grindstone_base");
recipes.addShaped(<tfcthings:grindstone_base>,
[[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],
 [<ore:lumber>, null, <ore:lumber>]]);