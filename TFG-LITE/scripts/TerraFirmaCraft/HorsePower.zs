import crafttweaker.item.IItemStack;
import mods.horsepower.Grindstone;

mods.jei.JEI.removeAndHide(<horsepower:flour>);
mods.jei.JEI.removeAndHide(<horsepower:dough>);

// GrindStone Removing
val RemoveItemsFromQuern as IItemStack[] = [
	<tfc:powder/flux> * 4,
    <minecraft:redstone> * 8,
    <tfc:powder/fertilizer> * 8,
    <minecraft:glowstone_dust> * 8
];
for item in RemoveItemsFromQuern{
    Grindstone.remove(item);
}

// GrindStone - GT ore --> GT small pile
// Copper
Grindstone.add(<ore:oreCopper>, <metaitem:dustImpureCopper> * 3, 10, false);
Grindstone.add(<ore:oreMalachite>, <metaitem:dustImpureMalachite> * 3, 10, false);
Grindstone.add(<ore:oreTetrahedrite>, <metaitem:dustImpureTetrahedrite> * 3, 10, false);
Grindstone.add(<ore:oreBornite>, <metaitem:dustImpureBornite> * 3, 10, false);
Grindstone.add(<ore:oreChalcopyrite>, <metaitem:dustImpureChalcopyrite> * 3, 10, false);
Grindstone.add(<ore:oreChalcocite>, <metaitem:dustImpureChalcocite> * 3, 10, false);
// Tin
Grindstone.add(<ore:oreTin>, <metaitem:dustImpureTin> * 3, 10, false);
Grindstone.add(<ore:oreCassiterite>, <metaitem:dustImpureCassiterite> * 3, 10, false);
Grindstone.add(<ore:oreCassiteriteSand>, <metaitem:dustImpureCassiteriteSand> * 3, 10, false);
// Iron
Grindstone.add(<ore:oreIron>, <metaitem:dustImpureIron> * 3, 10, false);
Grindstone.add(<ore:orePyrite>, <metaitem:dustImpurePyrite> * 3, 10, false);
Grindstone.add(<ore:oreYellowLimonite>, <metaitem:dustImpureYellowLimonite> * 3, 10, false);
Grindstone.add(<ore:oreMagnetite>, <metaitem:dustImpureMagnetite> * 3, 10, false);
Grindstone.add(<ore:oreBrownLimonite>, <metaitem:dustImpureBrownLimonite> * 3, 10, false);
Grindstone.add(<ore:oreBandedIron>, <metaitem:dustImpureBandedIron> * 3, 10, false);
// Nickel
Grindstone.add(<ore:oreNickel>, <metaitem:dustImpureNickel> * 3, 10, false);
Grindstone.add(<ore:oreGarnierite>, <metaitem:dustImpureGarnierite> * 3, 10, false);
Grindstone.add(<ore:orePentlandite>, <metaitem:dustImpurePentlandite> * 3, 10, false);
// Lead
Grindstone.add(<ore:oreGalena>, <metaitem:dustImpureGalena> * 3, 10, false);
Grindstone.add(<ore:oreLead>, <metaitem:dustImpureLead> * 3, 10, false);
// Other
Grindstone.add(<ore:oreGold>, <metaitem:dustImpureGold> * 3, 10, false);
Grindstone.add(<ore:oreSilver>, <metaitem:dustImpureSilver> * 3, 10, false);
Grindstone.add(<ore:oreSphalerite>, <metaitem:dustImpureSphalerite> * 3, 10, false);
Grindstone.add(<ore:oreSulfur>, <metaitem:dustImpureSulfur> * 3, 10, false);
Grindstone.add(<ore:oreRockSalt>, <metaitem:dustImpureRockSalt> * 3, 10, false);
Grindstone.add(<ore:oreGraphite>, <metaitem:dustImpureGraphite> * 3, 10, false);
Grindstone.add(<ore:oreMica>, <metaitem:dustImpureMica> * 3, 10, false);
Grindstone.add(<ore:oreBismuth>, <metaitem:dustImpureBismuth> * 3, 10, false);

// Other Recipes
Grindstone.add(<tfc:food/soybean>, <firmalife:ground_soybeans>, 10, false);
Grindstone.add(<ore:rockFlux>, <tfc:powder/flux> * 3, 5, false);
