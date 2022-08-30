import crafttweaker.item.IItemStack;


// --- Удаление рецептов

// Удаление рецептов
recipes.removeByMod("extraplanets");

// --- Добавление рецептов

// Тултипы для новых вещей
<contenttweaker:rocketbody_tier2>.addTooltip("Tier 2");
<contenttweaker:rocketbody_tier3>.addTooltip("Tier 3");
<contenttweaker:rocketbody_tier4>.addTooltip("Tier 4");
<contenttweaker:rocketbody_tier5>.addTooltip("Tier 5");
<contenttweaker:rocketbody_tier6>.addTooltip("Tier 6");
<contenttweaker:rocketbody_tier7>.addTooltip("Tier 7");
<contenttweaker:rocketbody_tier8>.addTooltip("Tier 8");
<contenttweaker:rocketbody_tier9>.addTooltip("Tier 9");
<contenttweaker:rocketbody_tier10>.addTooltip("Tier 10");

// Взлетная площадка 2 Tiers
assembler.recipeBuilder()
   .inputs(<galacticraftcore:landing_pad> * 3, <ore:plateDenseTitanium> * 6)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad> * 5)
   .duration(300).EUt(1000).buildAndRegister();

// Взлетная площадка 3 Tiers
assembler.recipeBuilder()
   .inputs(<extraplanets:advanced_launch_pad> * 3, <ore:plateDenseTungstenSteel> * 18, <ore:plateLead> * 2)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad:1> * 5)
   .duration(1000).EUt(1208).buildAndRegister();

// Взлетная площадка электрической ракеты
assembler.recipeBuilder()
   .inputs(<extraplanets:advanced_launch_pad:1> * 3, <ore:plateDensePlatinum> * 9 , <ore:plateLead> * 2, <metaitem:electric.pump.lv> * 2)
   .circuit(6)
   .outputs(<extraplanets:advanced_launch_pad:3> * 5)
   .duration(1000).EUt(30038).buildAndRegister();


