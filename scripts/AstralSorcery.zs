import mods.astralsorcery.LiquidInteraction;
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.Altar;

//Отключение крафтов
furnace.remove(<astralsorcery:itemcraftingcomponent>*3);
recipes.remove(<astralsorcery:blockblackmarble>);
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/enchantment_amulet_craft");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/nocturnalpowder");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/wand/aevitas");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/wand/vicio");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/vicio");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/aevitas");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/lucerna");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/octans");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/bootes");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/fornax");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/cape/att/pelotrio");
LightTransmutation.removeTransmutation(<astralsorcery:blockcustomore:1>, false);

//Крафт руды звездного металла
LightTransmutation.addTransmutation(<gregtech:ore_iron_0>, <astralsorcery:blockcustomore:1>, 10);

//Фикс переплавки в печке
furnace.addRecipe(<astralsorcery:itemcraftingcomponent>*3, <contenttweaker:aquamarine_andesite_sand>);

//Угольный мрамор
recipes.addShaped(<astralsorcery:blockblackmarble>*8,
[[<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>],
 [<ore:stoneMarble>, <ore:gemCoal>, <ore:stoneMarble>],
 [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>]]);
 
//Nocturnal powder
Altar.addDiscoveryAltarRecipe("nocturnal_dust", <astralsorcery:itemusabledust:1>*4, 200, 200, [
			null, <ore:dyeBlack>, null,
			<ore:gemCharcoal>, <astralsorcery:itemusabledust>, <ore:gemCharcoal>,
			null, <ore:gemLapis>, null]);
			
//Enchant Amulet
Altar.addConstellationAltarRecipe("enchant_amulet", <astralsorcery:itemenchantmentamulet>, 2000, 10, [
			<ore:ingotGold>, <ore:string>, <ore:ingotGold>,
			<ore:dustAstralStarmetal>, <astralsorcery:itemshiftingstar>, <ore:dustAstralStarmetal>,
			null, <ore:gemEnderEye>, null,
			null, null, null, 
			null, null, null,
			null, null,
			<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
			<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>]);

//Aevitas Wand		
Altar.addTraitAltarRecipe("aevitas_wand", <astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.aevitas"}}), 4500, 100, [
	null, <astralsorcery:itemusabledust>, null, 
	null, <astralsorcery:itemwand>.withTag({astralsorcery: {}}), null, 
	null, <astralsorcery:itemusabledust>, null, 
	null, null, null, 
	null, null, null,
	<tfc:food/sugarcane>, <tfc:food/sugarcane>, <tfc:food/sugarcane>, 
	<tfc:food/sugarcane>, null, null, 
	<appliedenergistics2:material:1>, <ore:treeSapling>, <ore:treeSapling>, <appliedenergistics2:material:1>,
	<ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>, <ore:treeSapling>], "astralsorcery.constellation.aevitas");
			
//Vicio Wand		
Altar.addTraitAltarRecipe("vicio_wand", <astralsorcery:itemwand>.withTag({astralsorcery: {AugmentName: "astralsorcery.constellation.vicio"}}), 4500, 100, [
	null, <tfc:food/sugarcane>, null, 
	null, <astralsorcery:itemwand>.withTag({astralsorcery: {}}), null, 
	null, <tfc:food/sugarcane>, null, 
	null, null, null, 
	null, null, null,
	<ore:gemAquamarine>, <ore:gemAquamarine>, <ore:gemAquamarine>, 
	<ore:gemAquamarine>, null, null, 
	<ore:arrow>, <ore:feather>, <ore:feather>, <ore:arrow>,
	<ore:feather>, <ore:feather>, <ore:feather>, <ore:feather>], "astralsorcery.constellation.vicio");			
			
//Vicio cape		
Altar.addTraitAltarRecipe("cape_vicio", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.vicio"}}), 4500, 100, [
	null, <ore:feather>, null, 
	<ore:feather>, <astralsorcery:itemcape>.withTag({astralsorcery: {}}), <ore:feather>, 
	null, <ore:feather>, null, 
	null, null, null, 
	null, null, null,
	null, null, null, 
	null, null, null, 
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:dustSugar>, <ore:feather>, <ore:categoryMeat>, <ore:string>], "astralsorcery.constellation.vicio");				

//Aevitas cape
Altar.addTraitAltarRecipe("cape_aevitas", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.aevitas"}}), 4500, 100, [
	null, <ore:treeSapling>, null, 
	<ore:treeSapling>, <astralsorcery:itemcape>.withTag({astralsorcery: {}}), <ore:treeSapling>, 
	null, <ore:treeSapling>, null, 
	null, null, null, 
	null, null, null,
	null, null, null, 
	null, null, null, 
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:dustAstralStarmetal>, <ore:treeSapling>, <tfc:food/sugarcane>, <ore:listAllseed>], "astralsorcery.constellation.aevitas");	

//Lucerna cape
Altar.addTraitAltarRecipe("cape_lucerna", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.lucerna"}}), 4500, 100, [
	null, <ore:dustGlowstone>, null, 
	<ore:dustGlowstone>, <astralsorcery:itemcape>.withTag({astralsorcery: {}}), <ore:dustGlowstone>, 
	null, <ore:dustGlowstone>, null, 
	null, null, null, 
	null, null, null,
	null, null, null, 
	null, null, null, 
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:torch>, <ore:dustRedstone>, <ore:gemCharcoal>, <ore:dustGlowstone>], "astralsorcery.constellation.lucerna");	

//Octans cape
Altar.addTraitAltarRecipe("cape_octans", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.octans"}}), 4500, 100, [
	null, <ore:categoryMeat>, null, 
	<ore:categoryMeat>, <astralsorcery:itemcape>.withTag({astralsorcery: {}}), <ore:categoryMeat>, 
	null, <ore:categoryMeat>, null, 
	null, null, null, 
	null, null, null,
	null, null, null, 
	null, null, null, 
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<minecraft:fishing_rod>, <ore:categoryMeat>, <ore:dyeBlue>, <ore:clay>], "astralsorcery.constellation.octans");	

//Bootes cape
Altar.addTraitAltarRecipe("cape_bootes", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.bootes"}}), 4500, 100, [
	null, <ore:categoryGrain>, null, 
	<ore:categoryGrain>, <astralsorcery:itemcape>.withTag({astralsorcery: {}}), <ore:categoryGrain>, 
	null, <ore:categoryGrain>, null, 
	null, null, null, 
	null, null, null,
	null, null, null, 
	null, null, null, 
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:categoryGrain>, <ore:apple>, <ore:bone>, <ore:leather>], "astralsorcery.constellation.bootes");	

//Fornax cape
Altar.addTraitAltarRecipe("fornax_cape", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.fornax"}}), 4500, 100, [
	null, <ore:gemCharcoal>, null, 
	<ore:gemCharcoal>, <astralsorcery:itemcape>.withTag({astralsorcery: {}}), <ore:gemCharcoal>, 
	null, <ore:gemCharcoal>, null, 
	null, null, null, 
	null, null, null,
	null, null, null, 
	null, null, null, 
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:gunpowder>, <ore:dustRedstone>, <ore:gemCharcoal>, <ore:ingotIron>], "astralsorcery.constellation.fornax");	

//Pelotrio cape
Altar.addTraitAltarRecipe("pelotrio_cape", <astralsorcery:itemcape>.withTag({astralsorcery: {constellationName: "astralsorcery.constellation.pelotrio"}}), 4500, 100, [
	null, <minecraft:rotten_flesh>, null, 
	<minecraft:rotten_flesh>, <astralsorcery:itemcape>.withTag({astralsorcery: {}}), <minecraft:rotten_flesh>, 
	null, <minecraft:rotten_flesh>, null, 
	null, null, null, 
	null, null, null,
	null, null, null, 
	null, null, null, 
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<minecraft:rotten_flesh>, <ore:listAllegg>, <ore:apple>, <ore:dustBlaze>], "astralsorcery.constellation.pelotrio");	
