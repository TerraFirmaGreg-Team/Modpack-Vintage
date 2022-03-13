import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;
import mods.thaumcraft.Infusion;

import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;

// Удаление рецептов ArcaneWorkBench
val RemoveItemsFromArcaneWorkBench as IItemStack[] = [
	<thaumcraft:goggles>,
    <thaumcraft:plate:3>,
    <thaumcraft:thaumometer>,
    <thaumcraft:vis_resonator>,
    <thaumcraft:caster_basic>,
    <thaumcraft:sanity_checker>,
    <thaumcraft:filter>,
    <thaumcraft:condenser_lattice>,
    <thaumcraft:tube>,
    <thaumcraft:mechanism_simple>,
    <thaumcraft:mechanism_complex>,
    <thaumcraft:recharge_pedestal>,
    <thaumcraft:arcane_workbench_charger>,
    <thaumcraft:potion_sprayer>,
    <thaumcraft:metal_alchemical>,
    <thaumcraft:spa>,
    <thaumcraft:jar_normal>,
    <thaumcraft:tube_buffer>,
    <thaumcraft:resonator>,
    <thaumcraft:metal_alchemical_advanced>,
    <thaumcraft:brain_box>,
    <thaumcraft:mind>,
    <thaumcraft:essentia_output>,
    <thaumcraft:essentia_input>,
    <thaumcraft:smelter_aux>,
    <thaumcraft:baubles:6>,
    <thaumcraft:baubles:2>,
    <thaumcraft:baubles>,
    <thaumcraft:baubles:1>,
    <thaumcraft:baubles:4>,
    <thaumcraft:baubles:5>,
    <thaumcraft:smelter_vent>,
    <thaumcraft:grapple_gun>,
    <thaumcraft:dioptra>,
    <thaumcraft:levitator>,
    <thaumcraft:bellows>,
    <thaumcraft:lamp_arcane>,
    <thaumcraft:arcane_ear>,
    <thaumcraft:turret>,
    <thaumcraft:turret:1>,
    <thaumcraft:inlay>,
    <thaumcraft:seal>,
    <thaumcraft:golem_bell>,
    <thaumcraft:focus_pouch>
];
for item in RemoveItemsFromArcaneWorkBench{
    ArcaneWorkbench.removeRecipe(item);
}

// Удаление рецептов Infusion
val RemoveItemsFromInfusion as IItemStack[] = [
	<thaumcraft:traveller_boots>,
    <thaumcraft:seal:7>,
    <thaumcraft:seal:12>,
    <thaumcraft:seal:8>,
    <thaumcraft:fortress_legs>,
    <thaumcraft:fortress_chest>,
    <thaumcraft:fortress_helm>,
    <thaumcraft:lamp_fertility>,
    <thaumcraft:lamp_growth>,
    <thaumcraft:hand_mirror>,
    <thaumcraft:curiosity_band>,
    <thaumcraft:turret:2>, 
    <thaumcraft:mirror_essentia>
];
for item in RemoveItemsFromInfusion{
    Infusion.removeRecipe(item);
}

// Удаление рецептов Crucible
val RemoveItemsFromCrucible as IItemStack[] = [
	<thaumcraft:amber> * 3,
    <minecraft:cactus>,
    <thaumicbases:rainbowcactus>,
];
for item in RemoveItemsFromCrucible{
    Crucible.removeRecipe(item);
}

// Удаление рецептов + скрытие
val RemoveItemRecipes as IItemStack[] = [
	<thaumcraft:salis_mundus>,
    <thaumcraft:baubles:6>,
    <thaumcraft:baubles:4>,
    <thaumcraft:baubles>,
    <thaumcraft:baubles:2>,
    <thaumcraft:golem_bell>,
    <thaumcraft:baubles:1>,
    <thaumcraft:baubles:5>,
    <thaumcraft:plate:1>,
    <thaumcraft:plate:2>,
    <thaumcraft:plate:3>,
    <thaumcraft:table_stone>,
    <thaumcraft:table_wood>,
    <thaumcraft:thaumium_helm>,
    <thaumcraft:thaumium_chest>,
    <thaumcraft:thaumium_legs>,
    <thaumcraft:thaumium_boots>,
    <thaumcraft:thaumium_sword>,
    <thaumcraft:thaumium_pick>,
    <thaumcraft:thaumium_axe>,
    <thaumcraft:thaumium_shovel>,
    <thaumcraft:thaumium_hoe>,
    <thaumcraft:void_helm>,
    <thaumcraft:void_chest>,
    <thaumcraft:void_legs>,
    <thaumcraft:void_boots>,
	
];
for item in RemoveItemRecipes{
    recipes.remove(item);
}

// Удаление рецептов
val RemoveItemRecipesByName = [
    "thaumicbases:goldenplanks",
    "thaumicbases:enderplanks",
    "thaumicbases:netherplanks",
    "thaumcraft:plankgreatwood",
    "thaumcraft:planksilverwood",
    "hammercore:thaumicadditions_recipestar.14",
    "thaumcraft:tinnuggetstoingot",
    "thaumcraft:coppernuggetstoingot",
    "thaumcraft:silvernuggetstoingot",
    "thaumcraft:leadnuggetstoingot",
    "thaumcraft:ironnuggetconvert",
    "thaumcraft:nuggetstobrass",
    "thaumcraft:coppertonuggets",
    "thaumcraft:tintonuggets",
    "thaumcraft:silvertonuggets",
    "thaumcraft:leadtonuggets",
    "thaumcraft:brasstonuggets"
] as string[];
for item in RemoveItemRecipesByName{
    recipes.removeByRecipeName(item);
}

furnace.remove(<thaumcraft:quicksilver>*2);
furnace.remove(<thaumcraft:quicksilver>);
furnace.remove(<thaumcraft:amber>);

val zalupa = <ore:plateWroughtIron>;

// Исправление рецептов досок с использованием пилы из GT
recipes.addShapeless(<thaumadditions:taintwood_planks> * 2, [<thaumcraft:taint_log>, <ore:craftingToolSaw>.firstItem.withEmptyTag()]);
recipes.addShapeless(<thaumcraft:plank_greatwood> * 2, [<thaumcraft:log_greatwood>, <ore:craftingToolSaw>.firstItem.withEmptyTag()]);
recipes.addShapeless(<thaumcraft:plank_silverwood>  * 2, [<thaumcraft:log_silverwood>, <ore:craftingToolSaw>.firstItem.withEmptyTag()]);
recipes.addShapeless(<thaumicbases:goldenplanks> * 2, [<thaumicbases:goldenlogs>, <ore:craftingToolSaw>.firstItem.withEmptyTag()]);
recipes.addShapeless(<thaumicbases:enderplanks> * 2, [<thaumicbases:enderlogs>, <ore:craftingToolSaw>.firstItem.withEmptyTag()]);
recipes.addShapeless(<thaumicbases:netherplanks> * 2, [<thaumicbases:netherlogs>, <ore:craftingToolSaw>.firstItem.withEmptyTag()]);

// Салис мундус
recipes.addShapeless(<thaumcraft:salis_mundus> * 2, [<thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <thaumcraft:crystal_essence>, <minecraft:redstone>, <ore:craftingToolMortar>.firstItem.withEmptyTag()]);

// --- Тигель

// Янтарь+Редкоземельный эелемент
Crucible.registerRecipe("thaumcraft:amberF0", "TB.EXCHANG", <thaumcraft:amber>, <tfc:wood/sapling/douglas_fir>, [<aspect:vinculum>*14]);
Crucible.registerRecipe("thaumcraft:amberF1", "TB.EXCHANG", <thaumcraft:amber>*3, <tfc:wood/sapling/spruce>, [<aspect:vinculum>*8]);
Crucible.registerRecipe("thaumcraft:rareearthF", "TB.EXCHANG", <thaumcraft:nugget:10>, <ore:dustSmallRareEarth>.firstItem, [<aspect:praecantatio>*10, <aspect:ordo>*5, <aspect:alienis>*2]);
// Варп камень из WS
Crucible.registerRecipe("thaumcraft:warpstoneF", "", <waystones:warp_stone>, <ore:gemExquisite>, [<aspect:praecantatio>*50]);
// Кактус TFC
Crucible.registerRecipe("thaumcraft:cactusF", "TB.EXCHANG", <tfc:plants/barrel_cactus>, <ore:dyeGreen>, [<aspect:victus>*2, <aspect:ordo>, <aspect:terra>]);
Crucible.registerRecipe("thaumcraft:rainbowcactusF", "TB.CACTUS", <thaumicbases:rainbowcactus>, <tfc:plants/barrel_cactus>, [<aspect:herba>*35, <aspect:praecantatio>*15]);

// --- Инфузия

// Синие сапоги путешественника
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:traveller_bootsF", "", <thaumcraft:traveller_boots>, 2, 
    [<aspect:motus> * 100, <aspect:volatus> * 100], <tfc:metal/boots/blue_steel>, 
    [<minecraft:fish>, <minecraft:feather>, <thaumcraft:fabric>, <thaumcraft:fabric>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]})]);

// Киние сапоги путешественника
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:traveller_bootsD", "", <thaumcraft:traveller_boots>, 2, 
    [<aspect:motus>*100, <aspect:volatus>*100], <tfc:metal/boots/red_steel>, 
    [<minecraft:fish>, <minecraft:feather>, <thaumcraft:fabric>, <thaumcraft:fabric>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]})]);

// Печать жатва
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:seal:7F", "", <thaumcraft:seal:7>, 1, 
    [<aspect:herba>*10, <aspect:sensus>*10, <aspect:humanus>*10], <thaumcraft:seal>, 
    [<tfc:crop/seeds/carrot>, <tfc:crop/seeds/jute>, <tfc:crop/seeds/wheat>, <tfc:crop/seeds/beet>, <tfc:crop/seeds/sugarcane>, <tfc:crop/seeds/potato>]);

// Печать разрушение блоков
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:seal:12F", "", <thaumcraft:seal:12>, 1, 
    [<aspect:instrumentum>*10, <aspect:perditio>*10, <aspect:humanus>*10], <thaumcraft:seal>, 
    [<tfc:metal/pick/blue_steel>, <tfc:metal/shovel/blue_steel>, <tfc:metal/axe/blue_steel>]);

// Печать забивание
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:seal:8F", "", <thaumcraft:seal:8>, 1, 
    [<aspect:bestia>*10, <aspect:sensus>*10, <aspect:humanus>*10], <thaumcraft:seal:9>, 
    [<minecraft:leather>, <ore:wool>, <tfc:hide/raw/small>, <tfc:hide/raw/medium>, <tfc:hide/raw/large>]);

// Штурмовые набедренники из таумиума
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:fortress_legsF", "", <thaumcraft:fortress_legs>, 2, 
    [<aspect:metallum>*50, <aspect:praemunio>*25, <aspect:potentia>*25], <thaumcraft:thaumium_legs>, 
    [<tfc:metal/ingot/gold>, <minecraft:leather>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]);

// Штурмовые латы из таумиума
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:fortress_chestF", "", <thaumcraft:fortress_chest>, 2, 
    [<aspect:metallum>*50, <aspect:praemunio>*30, <aspect:potentia>*25], <thaumcraft:thaumium_chest>, 
    [<tfc:metal/ingot/gold>, <minecraft:leather>, <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium>]);

// Штурмовой шлем
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:fortress_helmF", "", <thaumcraft:fortress_helm>, 2,
    [<aspect:metallum>*50, <aspect:praemunio>*20, <aspect:potentia>*25], <thaumcraft:thaumium_helm>, 
    [<tfc:metal/ingot/gold>, <tfc:metal/ingot/gold>, <tfc:gem/emerald:2>, <ore:plateThaumium>, <ore:plateThaumium>]);

// Светильник скрещивания
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:lamp_fertilityF", "", <thaumcraft:lamp_fertility>, 3, 
    [<aspect:bestia>*20,<aspect:lux>*15, <aspect:desiderium>*15, <aspect:victus>*15], <thaumcraft:lamp_arcane>, 
    [<tfc:crop/seeds/carrot>, <tfc:crop/seeds/wheat>, <tfc:metal/ingot/gold>, <tfc:metal/ingot/gold>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]})]);

// Светильник роста
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:lamp_growthF", "", <thaumcraft:lamp_growth>, 3, 
    [<aspect:herba>*20, <aspect:lux>*15, <aspect:victus>*15, <aspect:instrumentum>*15], <thaumcraft:lamp_arcane>, 
    [<tfc:metal/ingot/gold>, <tfc:metal/ingot/gold>, <minecraft:dye:15>, <minecraft:dye:15>, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}), <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]})]);

// Волшебное ручное зеркало
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:hand_mirrorF", "", <thaumcraft:hand_mirror>, 3, 
    [<aspect:instrumentum>*50, <aspect:motus>*50], <thaumcraft:mirror>, 
    [<tfc:glue>, <minecraft:stick>, <minecraft:paper>]);

// Повязка реликвий
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:curiosity_bandF", "", <thaumcraft:curiosity_band>, 4, 
    [<aspect:cognitio>*150, <aspect:vinculum>*150, <aspect:vacuos>*50], <thaumcraft:baubles:6>, 
    [<tfc:gem/emerald:2>, <minecraft:writable_book>, <tfc:gem/emerald:2>, <thaumcraft:primordial_pearl>]);

// Мистический бур
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:turret:2F", "", <thaumcraft:turret:2>, 4, 
    [<aspect:machina>*100, <aspect:potentia>*25, <aspect:terra>*25, <aspect:vacuos>*25, <aspect:motus>*25], <thaumcraft:turret>,
    [<gregtech:meta_item_1:12094>, <gregtech:meta_item_1:12094>,<thaumcraft:mechanism_complex>,<thaumcraft:plank_greatwood>,<thaumcraft:plank_greatwood>,<thaumcraft:nugget:10>, <thaumcraft:morphic_resonator>, <tfc:metal/pick/blue_steel>, <tfc:metal/shovel/blue_steel>]);

// Зеркало эссенсий
mods.thaumcraft.Infusion.registerRecipe("thaumcraft:mirror_essentiaF", "", <thaumcraft:mirror_essentia>, 2, 
    [<aspect:motus>*25, <aspect:aqua>*25, <aspect:permutatio>*25], <thaumcraft:mirrored_glass>,
    [<gregtech:meta_item_1:12197>, <gregtech:meta_item_1:12197>, <gregtech:meta_item_1:12197>, <minecraft:ender_pearl>]);


// --- Аркан Верстак

// Очки откровения
ArcaneWorkbench.registerShapedRecipe("thaumcraft:googlesF", "", 50, [<aspect:aer>, <aspect:ignis>, <aspect:terra>], <thaumcraft:goggles>, 
[[<ore:leather>, <ore:plateBrass>, <ore:leather>],
 [<ore:leather>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:leather>],
 [<thaumcraft:thaumometer>, <ore:plateBrass>, <thaumcraft:thaumometer>]]);

// Таумометр
ArcaneWorkbench.registerShapedRecipe("thaumcraft:thaumometerF", "", 20, [<aspect:aer>, <aspect:ignis>, <aspect:terra>,<aspect:ordo>,<aspect:aqua>,<aspect:perditio>], <thaumcraft:thaumometer>, 
[[<tfcthings:metal_bracing>, <ore:plateBrass>, <tfcthings:metal_bracing>],
 [<ore:plateBrass>, <minecraft:glass_pane>, <ore:plateBrass>],
 [<tfcthings:metal_bracing>, <ore:plateBrass>, <tfcthings:metal_bracing>]]);

// Деревянный стол
recipes.addShaped(<thaumcraft:table_wood>, 
[[null, null, null],
 [<ore:lumber>,<ore:lumber>, <ore:lumber>],
 [<ore:logWood>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:logWood>]]);
 
// Каменный стол
recipes.addShaped(<thaumcraft:table_stone>, 
[[null, null, null],
 [<ore:slabCobblestone>,<ore:slabCobblestone>, <ore:slabCobblestone>],
 [<ore:stone>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <ore:stone>]]);

// Вис резонатор
ArcaneWorkbench.registerShapedRecipe("thaumcraft:vis_resonatorF", "", 1, [<aspect:aer>, <aspect:aqua>], <thaumcraft:vis_resonator>, 
[[null, <ore:stickIron>, null],
 [<ore:stickIron>, <minecraft:glass_pane>, <ore:stickIron>],
 [null, <ore:stickIron>, null]]);

// Перчатка
ArcaneWorkbench.registerShapedRecipe("thaumcraft:caster_basicF", "", 99, [<aspect:aer>, <aspect:ignis>, <aspect:terra>,<aspect:ordo>,<aspect:aqua>,<aspect:perditio>], <thaumcraft:caster_basic>, 
[[<ore:stickIron>, <thaumcraft:thaumometer>, <ore:stickIron>],
 [zalupa, <thaumcraft:vis_resonator>, zalupa],
 [<minecraft:leather>, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), <minecraft:leather>]]);

// Счётчик рассудка
ArcaneWorkbench.registerShapedRecipe("thaumcraft:sanity_checkerF", "", 20, [<aspect:ordo>, <aspect:perditio>], <thaumcraft:sanity_checker>, 
[[<ore:plateBrass>, <ore:plateBrass>, null],
 [null, <thaumcraft:mirrored_glass>, <gregtech:meta_item_1:232>],
 [<ore:plateBrass>, <ore:plateBrass>, null]]);

// Зеркало
ArcaneWorkbench.registerShapedRecipe("thaumcraft:mirrored_glassF", "", 50, [<aspect:ordo>, <aspect:aqua>], <thaumcraft:mirrored_glass>, 
[[null, <thaumcraft:quicksilver>, null],
 [null, <minecraft:glass_pane>, null],
 [null, null, null]]);
 
// Фильтр эссенций
ArcaneWorkbench.registerShapedRecipe("thaumcraft:filterF", "", 50, [<aspect:aqua>], <thaumcraft:filter>, 
[[null, null, null],
 [<ore:plateGold>, <thaumcraft:plank_silverwood>, <ore:plateGold>],
 [null, null, null]]);
 
// Решётка конденсатора выбросов
ArcaneWorkbench.registerShapedRecipe("thaumcraft:condenser_latticeF", "", 100, [<aspect:aer>*3, <aspect:terra>*3], <thaumcraft:condenser_lattice>, 
[[zalupa, <thaumcraft:filter>, zalupa],
 [<thaumcraft:filter>, <ore:plateThaumium>, <thaumcraft:filter>],
 [zalupa, <thaumcraft:filter>, zalupa]]);

// Труба для эссенций
recipes.addShaped(<thaumcraft:tube>*2, 
[[zalupa, <ore:craftingToolHardHammer>.firstItem.withEmptyTag(), zalupa],
 [zalupa, zalupa, zalupa],
 [zalupa, <ore:craftingToolFile>.firstItem.withEmptyTag(), zalupa]]);
 
// Простой механизм
ArcaneWorkbench.registerShapedRecipe("thaumcraft:mechanism_simpleF", "", 10, [<aspect:terra>, <aspect:aer>], <thaumcraft:mechanism_simple>, 
[[null, <ore:plateBrass>, null],
 [<ore:plateBrass>, <ore:gearIron>, <ore:plateBrass>],
 [zalupa, <tfcthings:metal_bracing>, null]]);
 
// Сложный механизм
ArcaneWorkbench.registerShapedRecipe("thaumcraft:mechanism_complexF", "", 50, [<aspect:terra>*2, <aspect:aer>*2], <thaumcraft:mechanism_complex>, 
[[<ore:plateThaumium>, <tfcthings:metal_bracing>, <ore:plateThaumium>],
 [<ore:gearIron>, <thaumcraft:mechanism_simple>, <tfcthings:metal_bracing>],
 [<ore:plateThaumium>, <tfcthings:metal_bracing>, <ore:plateThaumium>]]);
 
// Пьедистал подзарядки
ArcaneWorkbench.registerShapedRecipe("thaumcraft:recharge_pedestalF", "", 111, [<aspect:ordo>*6, <aspect:aer>*2], <thaumcraft:recharge_pedestal>, 
[[<ore:plateGold>, <thaumcraft:vis_resonator>, <ore:plateGold>],
 [<tfc:gem/diamond:2>, <thaumcraft:stone_arcane>, <tfc:gem/diamond:2>],
 [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
 
// Заряжатель мистического верстака
ArcaneWorkbench.registerShapedRecipe("thaumcraft:arcane_workbench_chargerF", "", 50, [<aspect:ordo>, <aspect:aqua>], <thaumcraft:arcane_workbench_charger>, 
[[zalupa, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}), zalupa],
 [zalupa, null, zalupa],
 [<thaumcraft:plank_greatwood>, null, <thaumcraft:plank_greatwood>]]);
 
// Вис ячейка
ArcaneWorkbench.registerShapedRecipe("thaumcraft:vis_batteryF", "", 55, [<aspect:aer>*2, <aspect:ignis>*2, <aspect:terra>*2,<aspect:ordo>*2,<aspect:aqua>*2,<aspect:perditio>*2], <thaumcraft:vis_battery>, 
[[<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>],
 [<thaumcraft:stone_arcane>, <thaumcraft:vis_resonator>, <thaumcraft:stone_arcane>],
 [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
 
// Разбрызгиватель зелий
ArcaneWorkbench.registerShapedRecipe("thaumcraft:potion_sprayerF", "", 75, [<aspect:aer>,<aspect:aqua>], <thaumcraft:potion_sprayer>, 
[[<ore:plateBrass>,<gregtech:meta_item_1:61>, <ore:plateBrass>],
 [zalupa, <gregtech:machine:812>, zalupa],
 [zalupa, <thaumcraft:metal_alchemical>, zalupa]]);
  
// Алхимическая конструкция
ArcaneWorkbench.registerShapedRecipe("thaumcraft:metal_alchemicalF", "", 75, [<aspect:perditio>,<aspect:aqua>,<aspect:ordo>], <thaumcraft:metal_alchemical>, 
[[zalupa, <thaumcraft:tube_valve>, zalupa],
 [<thaumcraft:tube>, <gregtech:machine_casing:1>, <thaumcraft:tube>],
 [zalupa, <thaumcraft:filter>, zalupa]]);

// Ванна
ArcaneWorkbench.registerShapedRecipe("thaumcraft:spaF", "", 5, [<aspect:aqua>], <thaumcraft:spa>, 
[[<tfc:brick/quartzite>, <galacticraftcore:grating>, <tfc:brick/quartzite>],
 [<thaumcraft:stone_arcane>, <gregtech:metal_casing>, <thaumcraft:stone_arcane>],
 [<thaumcraft:stone_arcane>, <thaumcraft:mechanism_simple>, <thaumcraft:stone_arcane>]]);
  
// Банка
ArcaneWorkbench.registerShapedRecipe("thaumcraft:jar_normalF", "", 10, [<aspect:aer>], <thaumcraft:jar_normal>, 
[[<minecraft:glass_pane>, <ore:lumber>, <minecraft:glass_pane>],
 [<minecraft:glass_pane>, null, <minecraft:glass_pane>],
 [<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]]);  
  
// Буфер для эссенций
ArcaneWorkbench.registerShapedRecipe("thaumcraft:tube_bufferF", "", 25, [<aspect:aer>], <thaumcraft:tube_buffer>, 
[[<thaumcraft:phial>, <thaumcraft:tube_valve>, <thaumcraft:phial>],
 [<thaumcraft:tube>, <ore:plateBrass>, <thaumcraft:tube>],
 [<thaumcraft:phial>, <thaumcraft:tube_restrict>, <thaumcraft:phial>]]);
  
// Резонатор
ArcaneWorkbench.registerShapedRecipe("thaumcraft:resonatorF", "", 50, [<aspect:aer>], <thaumcraft:resonator>, 
[[zalupa, null, zalupa],
 [zalupa, <tfcthings:metal_bracing>, zalupa],
 [null, <minecraft:stick>, null]]);
  
// Продвинутая алхимическая конструкция	
ArcaneWorkbench.registerShapedRecipe("thaumcraft:metal_alchemical_advancedF", "", 222, [<aspect:terra>*2,<aspect:ignis>*2,<aspect:aqua>*2], <thaumcraft:metal_alchemical_advanced>, 
[[<thaumcraft:metal_alchemical>, <ore:plateVoid>, <thaumcraft:metal_alchemical>],
 [<ore:plateVoid>, <thaumcraft:primordial_pearl>, <ore:plateVoid>],
 [<thaumcraft:metal_alchemical>, <ore:plateVoid>, <thaumcraft:metal_alchemical>]]);
  
// Мнемоническая матрица
ArcaneWorkbench.registerShapedRecipe("thaumcraft:brain_boxF", "", 50, [<aspect:terra>,<aspect:ordo>], <thaumcraft:brain_box>, 
[[zalupa, <ore:plateBrass>, zalupa],
 [<ore:plateBrass>, <thaumcraft:mind>, <ore:plateBrass>],
 [zalupa, <ore:plateBrass>, zalupa]]);
  
// Часовой разум
ArcaneWorkbench.registerShapedRecipe("thaumcraft:mindF", "", 10, [<aspect:ordo>,<aspect:ignis>], <thaumcraft:mind>, 
[[null, <metaitem:pipeSmallFluidStainlessSteel>, null],
 [<ore:plateBrass>, <thaumcraft:mechanism_simple>, <ore:plateBrass>],
 [<ore:plateBrass>, <minecraft:glass_pane>,<ore:plateBrass>]]);
  
// Опусташающий передатчик эссенсий
ArcaneWorkbench.registerShapedRecipe("thaumcraft:essentia_outputF", "", 100, [<aspect:aer>,<aspect:aqua>], <thaumcraft:essentia_output>, 
[[null, null, null],
 [<ore:plateBrass>, <gregtech:meta_item_1:142>, <ore:plateBrass>],
 [zalupa, <thaumcraft:metal_alchemical>, zalupa]]);

// Наполняющий передатчик эссенсий
ArcaneWorkbench.registerShapedRecipe("thaumcraft:essentia_inputF", "", 100, [<aspect:aer>], <thaumcraft:essentia_input>, 
[[null, null, null],
 [<ore:plateBrass>, <thaumcraft:tube>, <ore:plateBrass>],
 [zalupa, <thaumcraft:metal_alchemical>, zalupa]]);

// Шикарный пояс	
ArcaneWorkbench.registerShapedRecipe("thaumcraft:baubles:6F", "", 1, [<aspect:terra>], <thaumcraft:baubles:6>, 
[[null, <minecraft:leather>, null],
 [<minecraft:leather>, <tfc:gem/diamond:2>, <minecraft:leather>],
 [null, <ore:plateGold>, null]]);
 
// Обычный пояс
ArcaneWorkbench.registerShapedRecipe("thaumcraft:baubles:2", "", 15, [<aspect:terra>], <thaumcraft:baubles:2>, 
[[null, <minecraft:leather>, null],
 [<minecraft:leather>, null, <minecraft:leather>],
 [null, <ore:plateGold>, null]]);
 
// Обычный амулет
ArcaneWorkbench.registerShapedRecipe("thaumcraft:baublesF", "", 15, [<aspect:terra>], <thaumcraft:baubles>, 
[[null, <tfc:animal/product/wool_yarn>, null],
 [<tfc:animal/product/wool_yarn>, null, <tfc:animal/product/wool_yarn>],
 [null, <ore:plateGold>, null]]);
 
// Обычное кольцо
ArcaneWorkbench.registerShapedRecipe("thaumcraft:baubles:1F", "", 15, [<aspect:terra>], <thaumcraft:baubles:1>, 
[[null, <ore:craftingToolFile>.firstItem.withEmptyTag(), null],
 [null, <ore:plateGold>, null],
 [null, null, null]]);
 
// Шикарный амулет
ArcaneWorkbench.registerShapedRecipe("thaumcraft:baubles:4F", "", 15, [<aspect:terra>], <thaumcraft:baubles:4>, 
[[null, <tfc:animal/product/wool_yarn>, null],
 [<tfc:animal/product/wool_yarn>, <tfc:gem/diamond:2>, <tfc:animal/product/wool_yarn>],
 [null, <ore:plateGold>, null]]);
 
// Шикарное кольцо	
ArcaneWorkbench.registerShapedRecipe("thaumcraft:baubles:5F", "", 15, [<aspect:terra>], <thaumcraft:baubles:5>, 
[[null, <tfc:gem/diamond:2>, null],
 [null, <ore:plateGold>, null],
 [null, <ore:craftingToolFile>.firstItem.withEmptyTag(), null]]);
 
// Вспомогательный вентиляционный порт	
ArcaneWorkbench.registerShapedRecipe("thaumcraft:smelter_ventF", "", 150, [<aspect:aer>], <thaumcraft:smelter_vent>, 
[[zalupa, <ore:plateBrass>, zalupa],
 [<thaumcraft:filter>, <thaumcraft:metal_alchemical>, <thaumcraft:filter>],
 [zalupa, <ore:plateBrass>, zalupa]]);
 
// Мистический хвататель	
ArcaneWorkbench.registerShapedRecipe("thaumcraft:grapple_gunF", "", 75, [<aspect:ignis>*5,<aspect:ignis>*3], <thaumcraft:grapple_gun>, 
[[null, null, <thaumcraft:grapple_gun_spool>],
 [<thaumcraft:grapple_gun_tip>, zalupa, zalupa],
 [null, <ore:plateBrass>, <tfc:wood/planks/douglas_fir>]]);
 
// Таумическая диоптрия	
ArcaneWorkbench.registerShapedRecipe("thaumcraft:dioptraF", "", 50, [<aspect:aer>,<aspect:aqua>], <thaumcraft:dioptra>, 
[[<thaumcraft:stone_arcane>, <thaumcraft:vis_resonator>, <thaumcraft:stone_arcane>],
 [zalupa, <thaumcraft:thaumometer>, zalupa],
 [<thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>, <thaumcraft:stone_arcane>]]);
 
// Левитатор
ArcaneWorkbench.registerShapedRecipe("thaumcraft:levitatorF", "", 35, [<aspect:aer>], <thaumcraft:levitator>, 
[[<thaumcraft:plank_greatwood>, <galacticraftcore:grating>, <thaumcraft:plank_greatwood>],
 [zalupa, <ore:plateGold>, zalupa],
 [<thaumcraft:plank_greatwood>, <thaumcraft:mechanism_complex>, <thaumcraft:plank_greatwood>]]);
 
// Меха
ArcaneWorkbench.registerShapedRecipe("thaumcraft:bellowsF", "", 25, [<aspect:aer>*3], <thaumcraft:bellows>, 
[[<minecraft:leather>, <ore:lumber>, <minecraft:leather>],
 [<ore:lumber>, null, <thaumcraft:tube>],
 [<minecraft:leather>, <ore:lumber>, <minecraft:leather>]]);
 
// Мистический светильник
ArcaneWorkbench.registerShapedRecipe("thaumcraft:lamp_arcaneF", "", 50, [<aspect:ignis>,<aspect:aer>], <thaumcraft:lamp_arcane>, 
[[null,zalupa, null],
 [zalupa, <minecraft:glowstone>, zalupa],
 [null, zalupa, null]]);

// Мистическое ухо
ArcaneWorkbench.registerShapedRecipe("thaumcraft:arcane_earF", "", 15, [<aspect:aer>], <thaumcraft:arcane_ear>, 
[[<ore:plateBrass>,null, <ore:plateBrass>],
 [null, <thaumcraft:mechanism_simple>, null],
 [<ore:lumber>, <minecraft:redstone>, <ore:lumber>]]);
 
// Турель
ArcaneWorkbench.registerShapedRecipe("thaumcraft:turretF", "", 100, [<aspect:aer>], <thaumcraft:turret>, 
[[<minecraft:bow>,<thaumcraft:mechanism_simple>, zalupa],
 [<thaumcraft:plank_greatwood>, <thaumcraft:mind>, <thaumcraft:plank_greatwood>],
 [<minecraft:stick>, null, <minecraft:stick>]]);
 
// Турель продвинутая
ArcaneWorkbench.registerShapedRecipe("thaumcraft:turret:1F", "", 150, [<aspect:aer>*2], <thaumcraft:turret:1>, 
[[zalupa,<thaumcraft:mind:1>, zalupa],
 [zalupa, <thaumcraft:turret>, zalupa],
 [null, null, null]]);
 
// Редстоун линия
ArcaneWorkbench.registerShapedRecipe("thaumcraft:inlayF", "", 25, [<aspect:aqua>*2], <thaumcraft:inlay>, 
[[null,<minecraft:redstone>, null],
 [null, <ore:plateGold>, null],
 [null, null, null]]);
 
// Пустая печать
ArcaneWorkbench.registerShapedRecipe("thaumcraft:sealF", "", 20, [<aspect:aer>], <thaumcraft:seal>, 
[[null,<minecraft:paper>, <minecraft:dye:1>],
 [null, <minecraft:feather>, null],
 [null, null, null]]);
 
// Колокольчик
ArcaneWorkbench.registerShapedRecipe("thaumcraft:golem_bellF", "", 30, [<aspect:aer>*2], <thaumcraft:golem_bell>, 
[[null,<minecraft:glass_pane>, null],
 [null, <minecraft:glass_pane>, <minecraft:glass_pane>],
 [<minecraft:stick>, null, null]]);

// Сумка
ArcaneWorkbench.registerShapedRecipe("thaumcraft:focus_pouchF", "", 25, [<aspect:aer>], <thaumcraft:focus_pouch>, 
[[<minecraft:leather>,<ore:plateGold>, <minecraft:leather>],
 [<minecraft:leather>, <thaumcraft:baubles:2>, <minecraft:leather>],
 [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]]);
 
//вспомогательный жидкостный насос
ArcaneWorkbench.registerShapedRecipe("thaumcraft:smelter_auxF", "", 100, [<aspect:terra>, <aspect:aer>], <thaumcraft:smelter_aux>,
[[<thaumcraft:plank_greatwood>, <gregtech:meta_item_1:32610>, <thaumcraft:plank_greatwood>],
 [<ore:plateBrass>, <thaumcraft:metal_alchemical>, <ore:plateBrass>],
 [zalupa, <thaumcraft:tube_filter>, zalupa]]);  

// --- Работа над словарями руд

// Thaumcraft Brass Plate
<ore:plateIron>.remove(<thaumcraft:plate:1>);
// Thaumcraft Iron Plate
<ore:plateBrass>.remove(<thaumcraft:plate>);
// Cinnabar Ore
<ore:oreCinnabar>.remove(<thaumcraft:ore_cinnabar>);
// Quartz Ore
<ore:oreQuartz>.remove(<thaumcraft:ore_quartz>);

// TFC + THAUMCRAFT
// Броня из таумиума
Welding.removeRecipe(<tfc:metal/helmet/thaumium>);
Welding.removeRecipe(<tfc:metal/chestplate/thaumium>);
Welding.removeRecipe(<tfc:metal/greaves/thaumium>);
Welding.removeRecipe(<tfc:metal/boots/thaumium>);
Welding.addRecipe("tfc:thaumcraftthaumiumhelmet", <tfc:metal/unfinished_helmet/thaumium>, <tfc:metal/sheet/thaumium>, <thaumcraft:thaumium_helm>, 3);
Welding.addRecipe("tfc:thaumcraftthaumiumchestplate", <tfc:metal/unfinished_chestplate/thaumium>, <tfc:metal/double_sheet/thaumium>, <thaumcraft:thaumium_chest>, 3);
Welding.addRecipe("tfc:thaumcraftthaumiumgreaves", <tfc:metal/unfinished_greaves/thaumium>, <tfc:metal/sheet/thaumium>, <thaumcraft:thaumium_legs>, 3);
Welding.addRecipe("tfc:thaumcraftthaumiumboots", <tfc:metal/unfinished_boots/thaumium>, <tfc:metal/sheet/thaumium>, <thaumcraft:thaumium_boots>, 3);

// Броня из пустотного металла
Anvil.addRecipe("tfc:thaumcraftvoidhelmet", <ore:plateVoidMetal>, <thaumcraft:void_helm>, 5, "armor", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfc:thaumcraftvoidchestplate", <tfc:metal/double_sheet/void_metal>, <thaumcraft:void_chest>, 5, "armor", "HIT_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfc:thaumcraftvoidgreaves", <ore:plateVoidMetal>, <thaumcraft:void_legs>, 5, "armor", "BEND_ANY", "DRAW_ANY", "HIT_ANY");
Anvil.addRecipe("tfc:thaumcraftvoidboots", <ore:plateVoidMetal>, <thaumcraft:void_boots>, 5, "armor", "BEND_LAST", "BEND_SECOND_LAST", "SHRINK_THIRD_LAST");

// Инструменты из таумиума
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

