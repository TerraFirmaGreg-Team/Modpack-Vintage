#priority 980

import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Quern;


// --- Массивы

val RemoveAndHide as IItemStack[] = [
	<tfcthings:pigvil>,
	<tfcthings:pigvil_black_steel>,
	<tfcthings:pigvil_blue_steel>,
	<tfcthings:pigvil_red_steel>,
	<tfcthings:pigvil_purple_steel>,
	<tfcthings:mold/unfired/prospectors_hammer_head>,
	<tfcthings:mold/prospectors_hammer_head>,
	<tfcthings:pig_iron_carrot>,
	<tfcthings:black_steel_carrot>,
	<tfcthings:blue_steel_carrot>,
	<tfcthings:red_steel_carrot>,
	// Crowns
	<tfcthings:crown/gold_beryl>,
	<tfcthings:crown/gold_agate>,
	<tfcthings:crown/gold_jade>,
	<tfcthings:crown/gold_jasper>,
	<tfcthings:crown/gold_tourmaline>,
	<tfcthings:crown/platinum_jasper>,
	<tfcthings:crown/platinum_jade>,
	<tfcthings:crown/platinum_agate>,
	<tfcthings:crown/platinum_beryl>,
	<tfcthings:crown/platinum_tourmaline>,
	// Затачивалки (Временно)
	<tfcthings:honing_steel>,
	<tfcthings:honing_steel_diamond>,
	<tfcthings:honing_steel_head>,
	<tfcthings:honing_steel_head_diamond>,
	<tfcthings:grindstone_quartz>,
	<tfcthings:grindstone_steel>,
	<tfcthings:grindstone_diamond>,
	<tfcthings:diamond_grit>,
	<tfcthings:grindstone_base>,
	<tfcthings:whetstone>
];

val ItemsToRemove as IItemStack[] = [
   // Платиновые короны
   <tfcthings:crown/platinum_opal>,
   <tfcthings:crown/platinum_jasper>,
   <tfcthings:crown/platinum_jade>,
   <tfcthings:crown/platinum_garnet>,
   <tfcthings:crown/platinum_emerald>,
   <tfcthings:crown/platinum_diamond>,
   <tfcthings:crown/platinum_beryl>,
   <tfcthings:crown/platinum_amethyst>,
   <tfcthings:crown/platinum_agate>,
   <tfcthings:crown/platinum_ruby>,
   <tfcthings:crown/platinum_sapphire>,
   <tfcthings:crown/platinum_topaz>,
   <tfcthings:crown/platinum_tourmaline>,
   // Золотые короны
   <tfcthings:crown/gold_jade>,
   <tfcthings:crown/gold_garnet>,
   <tfcthings:crown/gold_emerald>,
   <tfcthings:crown/gold_diamond>,
   <tfcthings:crown/gold_beryl>,
   <tfcthings:crown/gold_amethyst>,
   <tfcthings:crown/gold_agate>,
   <tfcthings:crown/gold_topaz>,
   <tfcthings:crown/gold_tourmaline>,
   <tfcthings:crown/gold_sapphire>,
   <tfcthings:crown/gold_ruby>,
   <tfcthings:crown/gold_opal>,
   <tfcthings:crown/gold_jasper>,
   //Other
   <tfcthings:sling_ammo_light>,
   <tfcthings:sling_ammo_spread>,
   <tfcthings:diamond_grit>
];


// --- Удаление рецептов

for item in RemoveAndHide {
	JEI.removeAndHide(item);
}

for item in ItemsToRemove{
   recipes.remove(item);
}

// Поименное удаление
recipes.removeByRecipeName("tfcthings:grindstone_base_steel");
recipes.removeByRecipeName("tfcthings:grindstone_base");

// Removing Prospect Hammer
ClayKnapping.removeRecipe(<tfcthings:mold/unfired/prospectors_hammer_head>);
Heating.removeRecipe(<tfcthings:mold/prospectors_hammer_head>);

// Remove carrots
Anvil.removeRecipe(<tfcthings:pig_iron_carrot>);
Anvil.removeRecipe(<tfcthings:black_steel_carrot>);
Anvil.removeRecipe(<tfcthings:blue_steel_carrot>);
Anvil.removeRecipe(<tfcthings:red_steel_carrot>);

// Bracing
Anvil.removeRecipe(<tfcthings:metal_bracing>);
Anvil.removeRecipe(<tfcthings:metal_bracing> * 2);

// Молотки
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/bismuth_bronze>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/black_bronze>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/bronze>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/copper>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/wrought_iron>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/steel>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/black_steel>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/blue_steel>);
Anvil.removeRecipe(<tfcthings:prospectors_hammer_head/red_steel>);

// Black Steel Grindstone
Welding.removeRecipe(<tfcthings:grindstone_steel>);

// Heavy Sling Ammo recipe
Anvil.removeRecipe(<tfcthings:sling_ammo> * 8);
Anvil.removeRecipe(<tfcthings:sling_ammo> * 16);

// Отключение затачивалок всех типов (Временно)
Welding.removeRecipe(<tfcthings:honing_steel_diamond>);
Welding.removeRecipe(<tfcthings:honing_steel_head_diamond>);
Anvil.removeRecipe(<tfcthings:honing_steel_head>);
Quern.removeRecipe(<tfcthings:whetstone>);