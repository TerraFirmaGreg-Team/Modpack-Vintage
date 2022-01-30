import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import mods.terrafirmacraft.ItemRegistry;
import mods.terrafirmacraft.Welding;
import mods.terrafirmacraft.Anvil;
import mods.terrafirmacraft.Quern;
import mods.terrafirmacraft.Heating;
import mods.terrafirmacraft.ClayKnapping;
import mods.terrafirmacraft.Barrel;
import mods.terrafirmacraft.LeatherKnapping;

//Удаление + скрытие
val RemoveItemsFromJEI as IItemStack[] = [
	//Small Ores
	<tfc:ore/native_copper:*>,
	<tfc:ore/native_gold:*>,
	<tfc:ore/native_platinum:*>,
	<tfc:ore/hematite:*>,
	<tfc:ore/native_silver:*>,
	<tfc:ore/cassiterite:*>,
	<tfc:ore/galena:*>,
	<tfc:ore/bismuthinite:*>,
	<tfc:ore/garnierite:*>,
	<tfc:ore/malachite:*>,
	<tfc:ore/magnetite:*>,
	<tfc:ore/limonite:*>,
	<tfc:ore/sphalerite:*>,
	<tfc:ore/tetrahedrite:*>,
	<tfc:ore/halite:*>,
	//Fake Rods
	<tfc:metal/rod/gold>,
	<tfc:metal/rod/wrought_iron>,
	<tfc:metal/rod/steel>,
	//Dusts
	<tfc:metal/dust/bismuth>,
	<tfc:metal/dust/bismuth_bronze>,
	<tfc:metal/dust/black_bronze>,
	<tfc:metal/dust/brass>,
	<tfc:metal/dust/bronze>,
	<tfc:metal/dust/copper>,
	<tfc:metal/dust/gold>,
	<tfc:metal/dust/lead>,
	<tfc:metal/dust/nickel>,
	<tfc:metal/dust/rose_gold>,
	<tfc:metal/dust/silver>,
	<tfc:metal/dust/tin>,
	<tfc:metal/dust/zinc>,
	<tfc:metal/dust/sterling_silver>,
	<tfc:metal/dust/pig_iron>,
	<tfc:metal/dust/steel>,
	<tfc:metal/dust/platinum>,
	<tfc:metal/dust/black_steel>,
	<tfc:metal/dust/blue_steel>,
	<tfc:metal/dust/red_steel>,
	<tfc:metal/dust/wrought_iron>,
	//Ingot
	<tfc:metal/ingot/bismuth>,
	<tfc:metal/ingot/bismuth_bronze>,
	<tfc:metal/ingot/black_bronze>,
	<tfc:metal/ingot/brass>,
	<tfc:metal/ingot/bronze>,
	<tfc:metal/ingot/copper>,
	<tfc:metal/ingot/gold>,
	<tfc:metal/ingot/lead>,
	<tfc:metal/ingot/nickel>,
	<tfc:metal/ingot/rose_gold>,
	<tfc:metal/ingot/silver>,
	<tfc:metal/ingot/tin>,
	<tfc:metal/ingot/zinc>,
	<tfc:metal/ingot/sterling_silver>,
	//<tfc:metal/ingot/pig_iron>,
	<tfc:metal/ingot/steel>,
	<tfc:metal/ingot/platinum>,
	<tfc:metal/ingot/black_steel>,
	<tfc:metal/ingot/blue_steel>,
	<tfc:metal/ingot/red_steel>,
	//<tfc:metal/ingot/wrought_iron>,
	//Plate
	<tfc:metal/sheet/bismuth>,
	<tfc:metal/sheet/bismuth_bronze>,
	<tfc:metal/sheet/black_bronze>,
	<tfc:metal/sheet/brass>,
	<tfc:metal/sheet/bronze>,
	<tfc:metal/sheet/copper>,
	<tfc:metal/sheet/gold>,
	<tfc:metal/sheet/lead>,
	<tfc:metal/sheet/nickel>,
	<tfc:metal/sheet/rose_gold>,
	<tfc:metal/sheet/silver>,
	<tfc:metal/sheet/tin>,
	<tfc:metal/sheet/zinc>,
	<tfc:metal/sheet/sterling_silver>,
	//<tfc:metal/sheet/pig_iron>,
	<tfc:metal/sheet/steel>,
	<tfc:metal/sheet/platinum>,
	<tfc:metal/sheet/black_steel>,
	<tfc:metal/sheet/blue_steel>,
	<tfc:metal/sheet/red_steel>,
	//<tfc:metal/sheet/wrought_iron>,
	//Double Plates
	<tfc:metal/double_sheet/bismuth>,
	<tfc:metal/double_sheet/bismuth_bronze>,
	<tfc:metal/double_sheet/black_bronze>,
	<tfc:metal/double_sheet/brass>,
	<tfc:metal/double_sheet/bronze>,
	<tfc:metal/double_sheet/copper>,
	<tfc:metal/double_sheet/gold>,
	<tfc:metal/double_sheet/lead>,
	<tfc:metal/double_sheet/nickel>,
	<tfc:metal/double_sheet/rose_gold>,
	<tfc:metal/double_sheet/silver>,
	<tfc:metal/double_sheet/tin>,
	<tfc:metal/double_sheet/zinc>,
	<tfc:metal/double_sheet/sterling_silver>,
	<tfc:metal/double_sheet/wrought_iron>,
	<tfc:metal/double_sheet/pig_iron>,
	<tfc:metal/double_sheet/platinum>,
	<tfc:metal/double_sheet/steel>,
	<tfc:metal/double_sheet/black_steel>,
	<tfc:metal/double_sheet/blue_steel>,
	<tfc:metal/double_sheet/red_steel>,
	//Nuggets
	<tfc:metal/nugget/bismuth>,
	<tfc:metal/nugget/bismuth_bronze>,
	<tfc:metal/nugget/black_bronze>,
	<tfc:metal/nugget/brass>,
	<tfc:metal/nugget/bronze>,
	<tfc:metal/nugget/copper>,
	<tfc:metal/nugget/gold>,
	<tfc:metal/nugget/lead>,
	<tfc:metal/nugget/nickel>,
	<tfc:metal/nugget/rose_gold>,
	<tfc:metal/nugget/silver>,
	<tfc:metal/nugget/tin>,
	<tfc:metal/nugget/zinc>,
	<tfc:metal/nugget/sterling_silver>,
	<tfc:metal/nugget/pig_iron>,
	<tfc:metal/nugget/steel>,
	<tfc:metal/nugget/platinum>,
	<tfc:metal/nugget/black_steel>,
	<tfc:metal/nugget/blue_steel>,
	<tfc:metal/nugget/red_steel>,
	<tfc:metal/nugget/wrought_iron>,
	//Hammers
	<tfc:metal/hammer/copper>,
	<tfc:metal/hammer/bismuth_bronze>,
	<tfc:metal/hammer/bronze>,
	<tfc:metal/hammer/black_bronze>,
	<tfc:metal/hammer/wrought_iron>,
	<tfc:metal/hammer/steel>,
	<tfc:metal/hammer/black_steel>,
	<tfc:metal/hammer/blue_steel>,
	<tfc:metal/hammer/red_steel>,
	//Hammers Heads
	<tfc:metal/hammer_head/copper>,
	<tfc:metal/hammer_head/red_steel>,
	<tfc:metal/hammer_head/blue_steel>,
	<tfc:metal/hammer_head/black_steel>,
	<tfc:metal/hammer_head/steel>,
	<tfc:metal/hammer_head/wrought_iron>,
	<tfc:metal/hammer_head/bronze>,
	<tfc:metal/hammer_head/black_bronze>,
	<tfc:metal/hammer_head/bismuth_bronze>,
	//Saw
	<tfc:metal/saw/copper>,
	<tfc:metal/saw/bismuth_bronze>,
	<tfc:metal/saw/bronze>,
	<tfc:metal/saw/black_bronze>,
	<tfc:metal/saw/wrought_iron>,
	<tfc:metal/saw/steel>,
	<tfc:metal/saw/black_steel>,
	<tfc:metal/saw/blue_steel>,
	<tfc:metal/saw/red_steel>,
	//Saw Heads
	<tfc:metal/saw_blade/copper>,
	<tfc:metal/saw_blade/bronze>,
	<tfc:metal/saw_blade/black_bronze>,
	<tfc:metal/saw_blade/bismuth_bronze>,
	<tfc:metal/saw_blade/red_steel>,
	<tfc:metal/saw_blade/blue_steel>,
	<tfc:metal/saw_blade/black_steel>,
	<tfc:metal/saw_blade/steel>,
	<tfc:metal/saw_blade/wrought_iron>,
	//Knife
	<tfc:metal/knife/copper>,
	<tfc:metal/knife/bismuth_bronze>,
	<tfc:metal/knife/bronze>,
	<tfc:metal/knife/black_bronze>,
	<tfc:metal/knife/wrought_iron>,
	<tfc:metal/knife/steel>,
	<tfc:metal/knife/black_steel>,
	<tfc:metal/knife/blue_steel>,
	<tfc:metal/knife/red_steel>,
	//Knife Heads
	<tfc:metal/knife_blade/copper>,
	<tfc:metal/knife_blade/red_steel>,
	<tfc:metal/knife_blade/blue_steel>,
	<tfc:metal/knife_blade/black_steel>,
	<tfc:metal/knife_blade/steel>,
	<tfc:metal/knife_blade/wrought_iron>,
	<tfc:metal/knife_blade/bronze>,
	<tfc:metal/knife_blade/black_bronze>,
	<tfc:metal/knife_blade/bismuth_bronze>,
	//Powder
	<tfc:powder/saltpeter>,
	<tfc:powder/salt>,
	<tfc:powder/graphite>,
	<tfc:powder/sulfur>,
	<tfc:powder/lapis_lazuli>,
	<tfc:powder/limonite>,
	<tfc:powder/malachite>,
	<tfc:powder/charcoal>,
	<tfc:powder/hematite>,
	//Other
	<tfc:ore/graphite>,
	<tfc:ore/bituminous_coal>,
	<tfc:ore/lignite>,
	<tfc:sluice>,
	<tfctech:powder/potash>
] as IItemStack[];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Quern - GT ore --> GT crushed ore
// Copper
Quern.addRecipe("GTOreToTFC_Copper", <gregtech:ore_copper_0>, <ore:crushedCopper>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Malachite", <gregtech:ore_malachite_0>, <ore:crushedMalachite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Tetrahedrite", <gregtech:ore_tetrahedrite_0>, <ore:crushedTetrahedrite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Bornite", <gregtech:ore_bornite_0>, <ore:crushedBornite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Chalcopyrite", <gregtech:ore_chalcopyrite_0>, <ore:crushedChalcopyrite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Chalcocite", <gregtech:ore_chalcocite_0>, <ore:crushedChalcocite>.firstItem * 2);
// - Tin
Quern.addRecipe("GTOreToTFC_Tin", <gregtech:ore_tin_0>, <ore:crushedTin>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Cassiterite", <gregtech:ore_cassiterite_0>, <ore:crushedCassiterite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_CassiteriteSand", <gregtech:ore_cassiterite_sand_0>, <ore:crushedCassiteriteSand>.firstItem * 2);
// - Iron
Quern.addRecipe("GTOreToTFC_Iron", <gregtech:ore_iron_0>, <ore:crushedIron>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Pyrite", <gregtech:ore_pyrite_0>, <ore:crushedPyrite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_YellowLimonite", <gregtech:ore_yellow_limonite_0>, <ore:crushedYellowLimonite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Magnetite", <gregtech:ore_magnetite_0>, <ore:crushedMagnetite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_BrownLimonite", <gregtech:ore_brown_limonite_0>, <ore:crushedBrownLimonite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_BandedIron", <gregtech:ore_banded_iron_0>, <ore:crushedBandedIron>.firstItem * 2);
// - Nickel
Quern.addRecipe("GTOreToTFC_Nickel", <gregtech:ore_nickel_0>, <ore:crushedNickel>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Garnierite", <gregtech:ore_garnierite_0>, <ore:crushedGarnierite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Pentlandite", <gregtech:ore_pentlandite_0>, <ore:crushedPentlandite>.firstItem * 2);
// - Galena
Quern.addRecipe("GTOreToTFC_Galena", <gregtech:ore_galena_0>, <ore:crushedGalena>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Lead", <gregtech:ore_lead_0>, <ore:crushedLead>.firstItem * 2);
// - Other
Quern.addRecipe("GTOreToTFC_Gold", <gregtech:ore_gold_0>, <ore:crushedGold>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Silver", <gregtech:ore_silver_0>, <ore:crushedSilver>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Sphalerite", <gregtech:ore_sphalerite_0>, <ore:crushedSphalerite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Sulfur", <gregtech:ore_sulfur_0>, <ore:crushedSulfur>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_RockSalt", <gregtech:ore_rock_salt_0>, <ore:crushedRockSalt>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Graphite", <gregtech:ore_graphite_0>, <ore:crushedGraphite>.firstItem * 2);
Quern.addRecipe("GTOreToTFC_Mica", <gregtech:ore_mica_0>, <ore:crushedMica>.firstItem * 2);

// --- Furnace recipes for TFC items
//Хавка
furnace.addRecipe(<tfc:food/cooked_beef>, <tfc:food/beef>);
furnace.addRecipe(<tfc:food/cooked_pork>, <tfc:food/pork>);
furnace.addRecipe(<tfc:food/cooked_chicken>, <tfc:food/chicken>);
furnace.addRecipe(<tfc:food/cooked_mutton>, <tfc:food/mutton>);
furnace.addRecipe(<tfc:food/cooked_fish>, <tfc:food/fish>);
furnace.addRecipe(<tfc:food/cooked_bear>, <tfc:food/bear>);
furnace.addRecipe(<tfc:food/cooked_calamari>, <tfc:food/calamari>);
furnace.addRecipe(<tfc:food/cooked_horse_meat>, <tfc:food/horse_meat>);
furnace.addRecipe(<tfc:food/cooked_pheasant>, <tfc:food/pheasant>);
furnace.addRecipe(<tfc:food/cooked_mongoose>, <tfc:food/mongoose>);
furnace.addRecipe(<tfc:food/cooked_gran_feline>, <tfc:food/gran_feline>);
furnace.addRecipe(<tfc:food/cooked_camelidae>, <tfc:food/camelidae>);
furnace.addRecipe(<tfc:food/cooked_rabbit>, <tfc:food/rabbit>);
furnace.addRecipe(<tfc:food/cooked_wolf>, <tfc:food/wolf>);
furnace.addRecipe(<tfc:food/cooked_venison>, <tfc:food/venison>);
//Керамика
furnace.addRecipe(<tfc:ceramics/fired/mold/hammer_head>, <tfc:ceramics/unfired/mold/hammer_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/knife_blade>, <tfc:ceramics/unfired/mold/knife_blade>);
furnace.addRecipe(<tfc:ceramics/fired/mold/scythe_blade>, <tfc:ceramics/unfired/mold/scythe_blade>);
furnace.addRecipe(<tfc:ceramics/fired/mold/ingot>, <tfc:ceramics/unfired/mold/ingot>);
furnace.addRecipe(<tfc:ceramics/fired/mold/pick_head>, <tfc:ceramics/unfired/mold/pick_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/shovel_head>, <tfc:ceramics/unfired/mold/shovel_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/axe_head>, <tfc:ceramics/unfired/mold/axe_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/hoe_head>, <tfc:ceramics/unfired/mold/hoe_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/chisel_head>, <tfc:ceramics/unfired/mold/chisel_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/sword_blade>, <tfc:ceramics/unfired/mold/sword_blade>);
furnace.addRecipe(<tfc:ceramics/fired/mold/mace_head>, <tfc:ceramics/unfired/mold/mace_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/saw_blade>, <tfc:ceramics/unfired/mold/saw_blade>);
furnace.addRecipe(<tfc:ceramics/fired/mold/javelin_head>, <tfc:ceramics/unfired/mold/javelin_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/hammer_head>, <tfc:ceramics/unfired/mold/hammer_head>);
furnace.addRecipe(<tfc:ceramics/fired/mold/propick_head>, <tfc:ceramics/unfired/mold/propick_head>);
furnace.addRecipe(<tfc:ceramics/fired/large_vessel>, <tfc:ceramics/unfired/large_vessel>);
furnace.addRecipe(<tfc:ceramics/fired/vessel>, <tfc:ceramics/unfired/vessel>);
furnace.addRecipe(<tfc:ceramics/fired/pot>, <tfc:ceramics/unfired/pot>);
furnace.addRecipe(<tfc:ceramics/fired/bowl>, <tfc:ceramics/unfired/bowl>);
furnace.addRecipe(<tfc:ceramics/fired/spindle>, <tfc:ceramics/unfired/spindle>);
furnace.addRecipe(<tfc:ceramics/fired/fire_brick>, <tfc:ceramics/unfired/fire_brick>);
furnace.addRecipe(<tfc:ceramics/fired/jug>, <tfc:ceramics/unfired/jug>);
furnace.addRecipe(<minecraft:brick>, <tfc:ceramics/unfired/clay_brick>);
furnace.addRecipe(<minecraft:flower_pot>, <tfc:ceramics/unfired/clay_flower_pot>);

//Цемент из тфк --> цемент разных цветов
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:white_dye> * 125]).outputs(<minecraft:concrete_powder> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:orange_dye> * 125]).outputs(<minecraft:concrete_powder:1> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:magenta_dye> * 125]).outputs(<minecraft:concrete_powder:2> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:light_blue_dye> * 125]).outputs(<minecraft:concrete_powder:3> * 4).duration(15).EUt(7).buildAndRegister();	
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:yellow_dye> * 125]).outputs(<minecraft:concrete_powder:4> * 4).duration(15).EUt(7).buildAndRegister();	
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:lime_dye> * 125]).outputs(<minecraft:concrete_powder:5> * 4).duration(15).EUt(7).buildAndRegister();	
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:pink_dye> * 125]).outputs(<minecraft:concrete_powder:6> * 4).duration(15).EUt(7).buildAndRegister();	
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:gray_dye> * 125]).outputs(<minecraft:concrete_powder:7> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:light_gray_dye> * 125]).outputs(<minecraft:concrete_powder:8> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:cyan_dye> * 125]).outputs(<minecraft:concrete_powder:9> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:purple_dye> * 125]).outputs(<minecraft:concrete_powder:1> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:blue_dye> * 125]).outputs(<minecraft:concrete_powder:11> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:brown_dye> * 125]).outputs(<minecraft:concrete_powder:12> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:green_dye> * 125]).outputs(<minecraft:concrete_powder:13> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:red_dye> * 125]).outputs(<minecraft:concrete_powder:14> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:black_dye> * 125]).outputs(<minecraft:concrete_powder:15> * 4).duration(15).EUt(7).buildAndRegister();

//Каменные блоки тфк - автоматизация
val bricks = [
<tfc:bricks/andesite> * 4,
<tfc:bricks/basalt> * 4, 
<tfc:bricks/breccia> * 4, 
<tfc:bricks/catlinite> * 4,
<tfc:bricks/chalk> * 4, 
<tfc:bricks/chert> * 4, 
<tfc:bricks/claystone> * 4,
<tfc:bricks/conglomerate> * 4,
<tfc:bricks/dacite> * 4, 
<tfc:bricks/diorite> * 4, 
<tfc:bricks/dolomite> * 4,
<tfc:bricks/gabbro> * 4, 
<tfc:bricks/gneiss> * 4, 
<tfc:bricks/granite> * 4, 
<tfc:bricks/komatiite> * 4,
<tfc:bricks/limestone> * 4,
<tfc:bricks/marble> * 4,
<tfc:bricks/mudstone> * 4,
<tfc:bricks/novaculite> * 4,
<tfc:bricks/peridotite> * 4,
<tfc:bricks/phyllite> * 4,
<tfc:bricks/porphyry> * 4,
<tfc:bricks/quartzite> * 4,
<tfc:bricks/rhyolite> * 4,
<tfc:bricks/rocksalt> * 4,
<tfc:bricks/sandstone> * 4,
<tfc:bricks/schist> * 4,
<tfc:bricks/shale> * 4,
<tfc:bricks/siltstone> * 4,
<tfc:bricks/slate> * 4,
<tfc:bricks/soapstone> * 4,
<tfcflorae:mud_bricks/andesite> * 4,
<tfcflorae:mud_bricks/basalt> * 4,
<tfcflorae:mud_bricks/breccia> * 4,
<tfcflorae:mud_bricks/catlinite> * 4, 
<tfcflorae:mud_bricks/chalk> * 4,
<tfcflorae:mud_bricks/chert> * 4,
<tfcflorae:mud_bricks/claystone> * 4,
<tfcflorae:mud_bricks/conglomerate> * 4,
<tfcflorae:mud_bricks/dacite> * 4,
<tfcflorae:mud_bricks/diorite> * 4,
<tfcflorae:mud_bricks/dolomite> * 4,
<tfcflorae:mud_bricks/gabbro> * 4,
<tfcflorae:mud_bricks/gneiss> * 4,
<tfcflorae:mud_bricks/granite> * 4,
<tfcflorae:mud_bricks/komatiite> * 4,
<tfcflorae:mud_bricks/limestone> * 4,
<tfcflorae:mud_bricks/marble> * 4,
<tfcflorae:mud_bricks/mudstone> * 4,
<tfcflorae:mud_bricks/novaculite> * 4,
<tfcflorae:mud_bricks/peridotite> * 4,
<tfcflorae:mud_bricks/phyllite> * 4,
<tfcflorae:mud_bricks/porphyry> * 4,
<tfcflorae:mud_bricks/quartzite> * 4,
<tfcflorae:mud_bricks/rhyolite> * 4,
<tfcflorae:mud_bricks/rocksalt> * 4,
<tfcflorae:mud_bricks/sandstone> * 4,
<tfcflorae:mud_bricks/schist> * 4,
<tfcflorae:mud_bricks/shale> * 4,
<tfcflorae:mud_bricks/siltstone> * 4,
<tfcflorae:mud_bricks/slate> * 4,
<tfcflorae:mud_bricks/soapstone> * 4
] as IItemStack[];

var brick = [
<tfc:brick/andesite> * 5,
<tfc:brick/basalt> * 5, 
<tfc:brick/breccia> * 5, 
<tfc:brick/catlinite> * 5,
<tfc:brick/chalk> * 5, 
<tfc:brick/chert> * 5, 
<tfc:brick/claystone> * 5,
<tfc:brick/conglomerate> * 5,
<tfc:brick/dacite> * 5, 
<tfc:brick/diorite> * 5, 
<tfc:brick/dolomite> * 5,
<tfc:brick/gabbro> * 5, 
<tfc:brick/gneiss> * 5, 
<tfc:brick/granite> * 5, 
<tfc:brick/komatiite> * 5,
<tfc:brick/limestone> * 5,
<tfc:brick/marble> * 5,
<tfc:brick/mudstone> * 5,
<tfc:brick/novaculite> * 5,
<tfc:brick/peridotite> * 5,
<tfc:brick/phyllite> * 5,
<tfc:brick/porphyry> * 5,
<tfc:brick/quartzite> * 5,
<tfc:brick/rhyolite> * 5,
<tfc:brick/rocksalt> * 5,
<tfc:brick/sandstone> * 5,
<tfc:brick/schist> * 5,
<tfc:brick/shale> * 5,
<tfc:brick/siltstone> * 5,
<tfc:brick/slate> * 5,
<tfc:brick/soapstone> * 5,
<tfcflorae:mud/fired/mud_brick/andesite> * 5,
<tfcflorae:mud/fired/mud_brick/basalt> * 5,
<tfcflorae:mud/fired/mud_brick/breccia> * 5,
<tfcflorae:mud/fired/mud_brick/catlinite> * 5,
<tfcflorae:mud/fired/mud_brick/chalk> * 5,
<tfcflorae:mud/fired/mud_brick/chert> * 5,
<tfcflorae:mud/fired/mud_brick/claystone> * 5,
<tfcflorae:mud/fired/mud_brick/conglomerate> * 5,
<tfcflorae:mud/fired/mud_brick/dacite> * 5,
<tfcflorae:mud/fired/mud_brick/diorite> * 5,
<tfcflorae:mud/fired/mud_brick/dolomite> * 5,
<tfcflorae:mud/fired/mud_brick/gabbro> * 5,
<tfcflorae:mud/fired/mud_brick/gneiss> * 5,
<tfcflorae:mud/fired/mud_brick/granite> * 5,
<tfcflorae:mud/fired/mud_brick/komatiite> * 5,
<tfcflorae:mud/fired/mud_brick/limestone> * 5,
<tfcflorae:mud/fired/mud_brick/marble> * 5,
<tfcflorae:mud/fired/mud_brick/mudstone> * 5,
<tfcflorae:mud/fired/mud_brick/novaculite> * 5,
<tfcflorae:mud/fired/mud_brick/peridotite> * 5,
<tfcflorae:mud/fired/mud_brick/phyllite> * 5,
<tfcflorae:mud/fired/mud_brick/porphyry> * 5,
<tfcflorae:mud/fired/mud_brick/quartzite> * 5,
<tfcflorae:mud/fired/mud_brick/rhyolite> * 5,
<tfcflorae:mud/fired/mud_brick/rocksalt> * 5,
<tfcflorae:mud/fired/mud_brick/sandstone> * 5,
<tfcflorae:mud/fired/mud_brick/schist> * 5,
<tfcflorae:mud/fired/mud_brick/shale> * 5,
<tfcflorae:mud/fired/mud_brick/siltstone> * 5,
<tfcflorae:mud/fired/mud_brick/slate> * 5,
<tfcflorae:mud/fired/mud_brick/soapstone> * 5
] as IItemStack[];

for i, bricks in bricks {
    assembler.recipeBuilder()
    .inputs([brick[i]])
		.fluidInputs([<liquid:concrete> * 300])
    .outputs(bricks)
    .duration(10)
    .EUt(35)
    .buildAndRegister();
}


//Переработка еды в метан
//Мясо
centrifuge.recipeBuilder().inputs(<ore:categoryMeat>).fluidOutputs(<liquid:methane>*72).duration(40).EUt(5).buildAndRegister();
centrifuge.recipeBuilder().inputs(<ore:categoryCookedMeat>).fluidOutputs(<liquid:methane>*144).duration(40).EUt(5).buildAndRegister();
//Фрукты
centrifuge.recipeBuilder().inputs(<ore:categoryFruit>).fluidOutputs(<liquid:methane>*48).duration(40).EUt(5).buildAndRegister();
//Овощи
centrifuge.recipeBuilder().inputs(<ore:categoryVegetable>).fluidOutputs(<liquid:methane>*62).duration(40).EUt(5).buildAndRegister();
//Крупы
centrifuge.recipeBuilder().inputs(<ore:categoryGrain>).fluidOutputs(<liquid:methane>*44).duration(40).EUt(5).buildAndRegister();
//Хлеб
centrifuge.recipeBuilder().inputs(<ore:categoryBread>).fluidOutputs(<liquid:methane>*26).duration(40).EUt(5).buildAndRegister();

//Переработка слитков
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>).outputs(<ore:ingotWroughtIron>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/pig_iron>).outputs(<tfc:metal/ingot/high_carbon_steel>).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/high_carbon_steel>).outputs(<ore:ingotSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/high_carbon_blue_steel>).outputs(<ore:ingotBlueSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/high_carbon_red_steel>).outputs(<ore:ingotRedSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/high_carbon_black_steel>).outputs(<ore:ingotBlackSteel>.firstItem).duration(100).EUt(2).buildAndRegister();

//Рецепты для льда
vacuum_freezer.recipeBuilder().fluidInputs(<liquid:fresh_water> * 1000).outputs(<minecraft:ice>).duration(1500).EUt(256).buildAndRegister();
vacuum_freezer.recipeBuilder().fluidInputs(<liquid:salt_water> * 1000).outputs(<tfc:sea_ice>).duration(1500).EUt(256).buildAndRegister();
vacuum_freezer.recipeBuilder().fluidInputs(<liquid:fresh_water> * 2000).outputs(<minecraft:packed_ice>).duration(1500).EUt(512).buildAndRegister();

//Различные крафты для лассо
LeatherKnapping.addRecipe("tfg:lead", <minecraft:lead>, "XXXXX", "X XXX", "X X X", "X   X", "XXXXX");
assembler.findRecipe(2, [<minecraft:string:0> * 4, <minecraft:slime_ball:0>], null).remove();
assembler.recipeBuilder()
	.inputs(<ore:string> * 2, <ore:leather>)
	.outputs(<minecraft:lead>)
	.duration(250).EUt(2).buildAndRegister();

//Крафт бронзового парового молотка
recipes.remove(<gregtech:machine:13>);
recipes.addShaped(<gregtech:machine:13>, 
[[<ore:pipeSmallFluidBronze>, <ore:craftingPiston>, <ore:pipeSmallFluidBronze>],
 [<ore:pipeSmallFluidBronze>, <gregtech:steam_casing>, <ore:pipeSmallFluidBronze>],
 [<ore:pipeSmallFluidBronze>, <tfc:metal/anvil/wrought_iron>, <ore:pipeSmallFluidBronze>]]);
 
//Крафт стального парового молотка
recipes.remove(<gregtech:machine:14>);
recipes.addShaped(<gregtech:machine:14>,
[[<ore:pipeSmallFluidSteel>, <ore:craftingPiston>, <ore:pipeSmallFluidSteel>],
 [<ore:pipeSmallFluidSteel>, <gregtech:steam_casing:2>, <ore:pipeSmallFluidSteel>],
 [<ore:pipeSmallFluidSteel>, <tfc:metal/anvil/steel>, <ore:pipeSmallFluidSteel>]]);

//Compressed coke clay
recipes.remove(<gregtech:meta_item_1:350>);
recipes.addShaped(<gregtech:meta_item_1:350> * 3,
[[<tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>, <tfc:ceramics/unfired/clay_brick>],
 [<ore:sand>, <gregtech:meta_item_1:348>, <ore:sand>],
 [<ore:sand>, <ore:sand>, <ore:sand>]]);

//Фикс крафта деревянной панельки
recipes.removeByRecipeName("gregtech:plank_to_wooden_shape");
recipes.addShaped(<gregtech:meta_item_1:347>,
[[null, <ore:lumber>, null],
 [null, <ore:lumber>, null],
 [<ore:craftingToolSaw>.firstItem.withEmptyTag(), <ore:lumber>, null]]);

//Исправление крафта бумаги
recipes.removeByRecipeName("tfc:paper");

//Новые рецепты для хлеба
Barrel.addRecipe("tfg:barley_dough", <firmalife:barley_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfc:food/barley_dough>, 4);
Barrel.addRecipe("tfg:corn_dough", <firmalife:corn_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfc:food/cornmeal_dough>, 4);
Barrel.addRecipe("tfg:oat_dough", <firmalife:oat_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfc:food/oat_dough> * 2, 4);
Barrel.addRecipe("tfg:rice_dough", <firmalife:rice_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfc:food/rice_dough> * 2, 4);
Barrel.addRecipe("tfg:rye_dough", <firmalife:rye_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfc:food/rye_dough> * 2, 4);
Barrel.addRecipe("tfg:wheat_dough", <firmalife:wheat_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfc:food/wheat_dough> * 2, 4);
Barrel.addRecipe("tfg:amaranth_dough", <tfcflorae:food/amaranth_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfcflorae:food/amaranth_dough>, 4);
Barrel.addRecipe("tfg:buckwheat_dough", <tfcflorae:food/buckwheat_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfcflorae:food/buckwheat_dough>, 4);
Barrel.addRecipe("tfg:fonio_dough", <tfcflorae:food/fonio_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfcflorae:food/fonio_dough>, 4);
Barrel.addRecipe("tfg:millet_dough", <tfcflorae:food/millet_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfcflorae:food/millet_dough>, 4);
Barrel.addRecipe("tfg:quinoa_dough", <tfcflorae:food/quinoa_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfcflorae:food/quinoa_dough>, 4);
Barrel.addRecipe("tfg:spelt_dough", <tfcflorae:food/spelt_flatbread_dough>, <liquid:yeast_starter> * 1000, <tfcflorae:food/spelt_dough>, 4);

//Sticky Resin
Barrel.addRecipe("tfg:sticky_resin", <tfctech:latex/rubber_mix>, <liquid:latex> * 250, <gregtech:meta_item_1:438>, 6);

//Rum Fix
Barrel.removeRecipe(<liquid:rum> * 500);
Barrel.addRecipe("tfg:rum", <minecraft:sugar>, <liquid:hot_water> * 500, <liquid:rum> * 500, 72);

//Гниль из Forestry в удобрение
Quern.addRecipe("forestry_mulch_to_fertilizer", <forestry:mulch>, <tfc:powder/fertilizer>);

//Фикс бронзовой пыли
recipes.removeByRecipeName("gregtech:dust_bronze");
recipes.addShapeless(<ore:dustBronze>.firstItem * 9, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

//Фикс палок из люмбера
recipes.addShapeless(<ore:stickWood>.firstItem * 6, [<ore:lumber>, <ore:craftingToolSaw>.firstItem.withEmptyTag()]);

//Фикс крафта ступка+кремний=гравий
recipes.removeByRecipeName("gregtech:gravel_to_flint");
recipes.addShapeless (<minecraft:flint>, [<ore:craftingToolMortar>.firstItem.withEmptyTag(), <ore:gravel>]);

//Фикс ведер
Anvil.removeRecipe(<tfc:metal/bucket/blue_steel>);
Anvil.removeRecipe(<tfc:metal/bucket/red_steel>);
Anvil.addRecipe("tfc:bucket/BlueSteelF", <ore:plateBlueSteel>, <tfc:metal/bucket/blue_steel>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfc:bucket/RedSteelF", <ore:plateRedSteel>, <tfc:metal/bucket/red_steel>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");

//Фикс гриля
Anvil.removeRecipe(<tfc:wrought_iron_grill>);
Anvil.addRecipe("tfc:grillF", <ore:plateDoubleWroughtIron>, <tfc:wrought_iron_grill>, 3, "general", "DRAW_ANY", "PUNCH_LAST", "PUNCH_NOT_LAST");

//Фикс двери
Anvil.removeRecipe(<minecraft:iron_door>);
Anvil.addRecipe("tfc:iron_doorF", <ore:plateDoubleWroughtIron>, <minecraft:iron_door>, 3, "general", "HIT_LAST", "DRAW_NOT_LAST", "PUNCH_NOT_LAST");

//Iron Bars x8
Anvil.removeRecipe(<minecraft:iron_bars> * 8);
Anvil.addRecipe("tfc:iron_barsF", <ore:plateWroughtIron>, <minecraft:iron_bars> * 8, 3, "general", "UPSET_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");

//Iron Bars x16
Anvil.removeRecipe(<minecraft:iron_bars> * 16);
Anvil.addRecipe("tfc:iron_bars2F", <ore:plateDoubleWroughtIron>, <minecraft:iron_bars> * 16, 3, "general", "UPSET_LAST", "PUNCH_SECOND_LAST", "PUNCH_THIRD_LAST");

//600iq fix SHIT FUCKING WROUGHT IRON
Anvil.addRecipe("tfc:nicefix", <tfc:metal/ingot/wrought_iron>, <ore:ingotWroughtIron>.firstItem, 2, "general", "HIT_LAST", "HIT_SECOND_LAST", "HIT_THIRD_LAST");

//Песок --> Диоксид кремния
electrolyzer.findRecipe(25, [<minecraft:sand> * 8], null).remove();
electrolyzer.recipeBuilder()
	.inputs(<ore:sand> * 8)
	.outputs(<ore:dustSiliconDioxide>.firstItem)
	.duration(150).EUt(26).buildAndRegister();

//Отключение крафтов всех пил TFC
Anvil.removeRecipe(<tfc:metal/saw_blade/red_steel>);
Anvil.removeRecipe(<tfc:metal/saw_blade/blue_steel>);
Anvil.removeRecipe(<tfc:metal/saw_blade/black_steel>);
Anvil.removeRecipe(<tfc:metal/saw_blade/steel>);
Anvil.removeRecipe(<tfc:metal/saw_blade/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/saw_blade/bronze>);
Anvil.removeRecipe(<tfc:metal/saw_blade/black_bronze>);
Anvil.removeRecipe(<tfc:metal/saw_blade/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/saw_blade/copper>);

//Отключение крафтов всех молотков TFC
Anvil.removeRecipe(<tfc:metal/hammer_head/red_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/blue_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/black_steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/steel>);
Anvil.removeRecipe(<tfc:metal/hammer_head/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/hammer_head/bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/black_bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/hammer_head/copper>);

//Отключение крафтов всех ножей TFC
Anvil.removeRecipe(<tfc:metal/knife_blade/red_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/blue_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/black_steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/steel>);
Anvil.removeRecipe(<tfc:metal/knife_blade/wrought_iron>);
Anvil.removeRecipe(<tfc:metal/knife_blade/bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/black_bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/bismuth_bronze>);
Anvil.removeRecipe(<tfc:metal/knife_blade/copper>);

//Новые рецепты ковки GT(TFC) пил
Anvil.addRecipe("tfc:saw_blade/CopperF", <ore:ingotCopper>, <ore:toolHeadSawCopper>.firstItem, 0, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/BismuthBronzeF", <ore:ingotBismuthBronze>, <ore:toolHeadHammerBismuthBronze>.firstItem, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/BlackBronzeF", <ore:ingotBlackBronze>, <ore:toolHeadHammerBlackBronze>.firstItem, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/BronzeF", <ore:ingotBronze>, <ore:toolHeadHammerBronze>.firstItem, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/WroughtIronF", <ore:ingotWroughtIron>, <ore:toolHeadHammerWroughtIron>.firstItem, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/SteelF", <ore:ingotSteel>, <ore:toolHeadHammerSteel>.firstItem, 4, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/BlackSteelF", <ore:ingotBlackSteel>, <ore:toolHeadHammerBlackSteel>.firstItem, 5, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/BlueSteelF", <ore:ingotBlueSteel>, <ore:toolHeadHammerBlueSteel>.firstItem, 6, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/RedSteelF", <ore:ingotRedSteel>, <ore:toolHeadHammerRedSteel>.firstItem, 6, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/CobaltF", <ore:ingotCobalt>, <ore:toolHeadHammerCobalt>.firstItem, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfc:saw_blade/InvarF", <ore:ingotInvar>, <ore:toolHeadHammerInvar>.firstItem, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST");

//Новые рецепты ковки GT(TFC) молотков
Anvil.addRecipe("tfc:hammer_head/CopperF", <ore:ingotCopper>, <tfc:metal/hammer_head/copper>, 0, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BismuthBronzeF", <ore:ingotBismuthBronze>, <ore:toolHeadHammerBismuthBronze>.firstItem, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackBronzeF", <ore:ingotBlackBronze>, <ore:toolHeadHammerBlackBronze>.firstItem, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BronzeF", <ore:ingotBronze>, <ore:toolHeadHammerBronze>.firstItem, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/WroughtIronF", <ore:ingotWroughtIron>, <ore:toolHeadHammerWroughtIron>.firstItem, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/SteelF", <ore:ingotSteel>, <ore:toolHeadHammerSteel>.firstItem, 4, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlackSteelF", <ore:ingotBlackSteel>, <ore:toolHeadHammerBlackSteel>.firstItem, 5, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/BlueSteelF", <ore:ingotBlueSteel>, <ore:toolHeadHammerBlueSteel>.firstItem, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/RedSteelF", <ore:ingotRedSteel>, <ore:toolHeadHammerRedSteel>.firstItem, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/CobaltF", <ore:ingotCobalt>, <ore:toolHeadHammerCobalt>.firstItem, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfc:hammer_head/InvarF", <ore:ingotInvar>, <ore:toolHeadHammerInvar>.firstItem, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");

//Крафт голов напильков из GT
Anvil.addRecipe("tfc:file_head/Bronze", <ore:ingotBronze>, <ore:toolHeadFileBronze>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BismuthBronze", <ore:ingotBismuthBronze>, <ore:toolHeadFileBismuthBronze>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlackBronze", <ore:ingotBlackBronze>, <ore:toolHeadFileBlackBronze>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlackSteel", <ore:ingotBlackSteel>, <ore:toolHeadFileBlackSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/RedSteel", <ore:ingotRedSteel>, <ore:toolHeadFileRedSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/BlueSteel", <ore:ingotBlueSteel>, <ore:toolHeadFileBlueSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Steel", <ore:ingotSteel>, <ore:toolHeadFileSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/SterlingSilver", <ore:ingotSterlingSilver>, <ore:toolHeadFileSterlingSilver>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/RoseGold", <ore:ingotRoseGold>, <ore:toolHeadFileRoseGold>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Brass", <ore:ingotBrass>, <ore:toolHeadFileBrass>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfc:file_head/Cobalt", <ore:ingotCobalt>, <ore:toolHeadFileCobalt>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");

//Исправление тростника
//Plant Ball * 1
compressor.findRecipe(2, [<minecraft:reeds:0> * 8], null).remove();
compressor.recipeBuilder()
	.inputs(<ore:sugarcane> * 8)
	.outputs(<metaitem:plant_ball>)
	.duration(300).EUt(2).buildAndRegister();
//Biomass * 20
brewery.findRecipe(3, [<minecraft:reeds:0>], [<liquid:water> * 20]).remove();
brewery.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.fluidInputs(<liquid:water> * 20)
	.fluidOutputs(<liquid:biomass> * 20)
	.duration(200).EUt(3).buildAndRegister();

//Sugar * 1
macerator.findRecipe(2, [<minecraft:reeds:0>], null).remove();
macerator.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.outputs(<minecraft:sugar>)
	.duration(300).EUt(2).buildAndRegister();
//Chad * 2
forge_hammer.findRecipe(4, [<minecraft:reeds:0> * 3], null).remove();
forge_hammer.recipeBuilder()
	.inputs(<ore:sugarcane> * 3)
	.outputs(<ore:dustPaper>.firstItem * 2)
	.duration(125).EUt(4).buildAndRegister();
//Paper * 1
chemical_bath.findRecipe(7, [<minecraft:reeds:0>], [<liquid:water> * 100]).remove();
chemical_bath.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.fluidInputs(<liquid:water> * 100)
	.outputs(<minecraft:paper>)
	.duration(100).EUt(7).buildAndRegister();
//Paper * 1
chemical_bath.findRecipe(7, [<minecraft:reeds:0>], [<liquid:distilled_water> * 100]).remove();
chemical_bath.recipeBuilder()
	.inputs(<ore:sugarcane>)
	.fluidInputs(<liquid:distilled_water> * 100)
	.outputs(<minecraft:paper>)
	.duration(100).EUt(7).buildAndRegister();