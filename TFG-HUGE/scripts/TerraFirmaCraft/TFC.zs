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
	// Pickaxe
	<tfc:metal/pick/bismuth_bronze>,
	<tfc:metal/pick/black_bronze>,
	<tfc:metal/pick/bronze>,
	<tfc:metal/pick/copper>,
	<tfc:metal/pick/wrought_iron>,
	<tfc:metal/pick/steel>,
	<tfc:metal/pick/black_steel>,
	<tfc:metal/pick/blue_steel>,
	<tfc:metal/pick/red_steel>,
	// Pickaxe Heads
	<tfc:metal/pick_head/bismuth_bronze>,
	<tfc:metal/pick_head/black_bronze>,
	<tfc:metal/pick_head/bronze>,
	<tfc:metal/pick_head/copper>,
	<tfc:metal/pick_head/wrought_iron>,
	<tfc:metal/pick_head/steel>,
	<tfc:metal/pick_head/black_steel>,
	<tfc:metal/pick_head/blue_steel>,
	<tfc:metal/pick_head/red_steel>,
	// Axe
	<tfc:metal/axe/bismuth_bronze>,
	<tfc:metal/axe/black_bronze>,
	<tfc:metal/axe/bronze>,
	<tfc:metal/axe/copper>,
	<tfc:metal/axe/wrought_iron>,
	<tfc:metal/axe/steel>,
	<tfc:metal/axe/black_steel>,
	<tfc:metal/axe/blue_steel>,
	<tfc:metal/axe/red_steel>,
	// Axe Heads
	<tfc:metal/axe_head/bismuth_bronze>,
	<tfc:metal/axe_head/black_bronze>,
	<tfc:metal/axe_head/bronze>,
	<tfc:metal/axe_head/copper>,
	<tfc:metal/axe_head/wrought_iron>,
	<tfc:metal/axe_head/steel>,
	<tfc:metal/axe_head/black_steel>,
	<tfc:metal/axe_head/blue_steel>,
	<tfc:metal/axe_head/red_steel>,
	// Sword
	<tfc:metal/sword/bismuth_bronze>,
	<tfc:metal/sword/black_bronze>,
	<tfc:metal/sword/bronze>,
	<tfc:metal/sword/copper>,
	<tfc:metal/sword/wrought_iron>,
	<tfc:metal/sword/steel>,
	<tfc:metal/sword/black_steel>,
	<tfc:metal/sword/blue_steel>,
	<tfc:metal/sword/red_steel>,
	// Sword Blades
	<tfc:metal/sword_blade/bismuth_bronze>,
	<tfc:metal/sword_blade/black_bronze>,
	<tfc:metal/sword_blade/bronze>,
	<tfc:metal/sword_blade/copper>,
	<tfc:metal/sword_blade/wrought_iron>,
	<tfc:metal/sword_blade/steel>,
	<tfc:metal/sword_blade/black_steel>,
	<tfc:metal/sword_blade/blue_steel>,
	<tfc:metal/sword_blade/red_steel>,
	// Ingot
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
	// Small Ores
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
	// Fake Rods
	<tfc:metal/rod/gold>,
	<tfc:metal/rod/wrought_iron>,
	<tfc:metal/rod/steel>,
	// Dusts
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
	// Plate
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
	// Double Plates
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
	// Nuggets
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
	// Hammers
	<tfc:metal/hammer/copper>,
	<tfc:metal/hammer/bismuth_bronze>,
	<tfc:metal/hammer/bronze>,
	<tfc:metal/hammer/black_bronze>,
	<tfc:metal/hammer/wrought_iron>,
	<tfc:metal/hammer/steel>,
	<tfc:metal/hammer/black_steel>,
	<tfc:metal/hammer/blue_steel>,
	<tfc:metal/hammer/red_steel>,
	// Hammers Heads
	<tfc:metal/hammer_head/copper>,
	<tfc:metal/hammer_head/red_steel>,
	<tfc:metal/hammer_head/blue_steel>,
	<tfc:metal/hammer_head/black_steel>,
	<tfc:metal/hammer_head/steel>,
	<tfc:metal/hammer_head/wrought_iron>,
	<tfc:metal/hammer_head/bronze>,
	<tfc:metal/hammer_head/black_bronze>,
	<tfc:metal/hammer_head/bismuth_bronze>,
	// Saw
	<tfc:metal/saw/copper>,
	<tfc:metal/saw/bismuth_bronze>,
	<tfc:metal/saw/bronze>,
	<tfc:metal/saw/black_bronze>,
	<tfc:metal/saw/wrought_iron>,
	<tfc:metal/saw/steel>,
	<tfc:metal/saw/black_steel>,
	<tfc:metal/saw/blue_steel>,
	<tfc:metal/saw/red_steel>,
	// Saw Heads
	<tfc:metal/saw_blade/copper>,
	<tfc:metal/saw_blade/bronze>,
	<tfc:metal/saw_blade/black_bronze>,
	<tfc:metal/saw_blade/bismuth_bronze>,
	<tfc:metal/saw_blade/red_steel>,
	<tfc:metal/saw_blade/blue_steel>,
	<tfc:metal/saw_blade/black_steel>,
	<tfc:metal/saw_blade/steel>,
	<tfc:metal/saw_blade/wrought_iron>,
	// Knife
	<tfc:metal/knife/copper>,
	<tfc:metal/knife/bismuth_bronze>,
	<tfc:metal/knife/bronze>,
	<tfc:metal/knife/black_bronze>,
	<tfc:metal/knife/wrought_iron>,
	<tfc:metal/knife/steel>,
	<tfc:metal/knife/black_steel>,
	<tfc:metal/knife/blue_steel>,
	<tfc:metal/knife/red_steel>,
	// Knife Heads
	<tfc:metal/knife_blade/copper>,
	<tfc:metal/knife_blade/red_steel>,
	<tfc:metal/knife_blade/blue_steel>,
	<tfc:metal/knife_blade/black_steel>,
	<tfc:metal/knife_blade/steel>,
	<tfc:metal/knife_blade/wrought_iron>,
	<tfc:metal/knife_blade/bronze>,
	<tfc:metal/knife_blade/black_bronze>,
	<tfc:metal/knife_blade/bismuth_bronze>,
	// Powder
	<tfc:powder/saltpeter>,
	<tfc:powder/salt>,
	<tfc:powder/graphite>,
	<tfc:powder/sulfur>,
	<tfc:powder/lapis_lazuli>,
	<tfc:powder/limonite>,
	<tfc:powder/malachite>,
	<tfc:powder/charcoal>,
	<tfc:powder/hematite>,
	// Other
	<tfc:ore/graphite>,
	<tfc:ore/bituminous_coal>,
	<tfc:ore/lignite>,
	<tfc:sluice>
];
for item in RemoveItemsFromJEI{
    mods.jei.JEI.removeAndHide(item);
}

//Удаление рецептов
recipes.removeByRecipeName("tfc:vanilla/redstone/observer");
recipes.removeByRecipeName("tfc:vanilla/tnt");
recipes.removeByRecipeName("tfc:vanilla/flint_and_steel");
recipes.removeByRecipeName("tfc:vanilla/compass");
recipes.removeByRecipeName("tfc:vanilla/redstone/redstone_lamp");
recipes.removeByRecipeName("tfc:vanilla/redstone/flawless_daylight_detector");
recipes.removeByRecipeName("tfc:vanilla/redstone/exquisite_daylight_detector");
recipes.removeByRecipeName("tfc:vanilla/redstone/daylight_detector");
recipes.removeByRecipeName("tfc:vanilla/redstone/redstone_repeater");
recipes.removeByRecipeName("tfc:vanilla/redstone/redstone_comparator");
recipes.removeByRecipeName("tfc:vanilla/redstone/steel_hopper");
recipes.removeByRecipeName("tfc:vanilla/redstone/hopper");
recipes.removeByRecipeName("tfc:vanilla/pressure_plate/heavy_weighted_pressure_plate");
recipes.removeByRecipeName("tfc:vanilla/rail/steel_minecraft");
recipes.removeByRecipeName("tfc:vanilla/rail/minecraft");

// Сырой камень -> Булыжник
for i, TFC_Cobbles in TFC_Cobbles {
    forge_hammer.recipeBuilder()
    	.inputs([TFC_Raws[i]])
    	.outputs(TFC_Cobbles)
    	.duration(200).EUt(7).buildAndRegister();
}

// Сырой камень -> Гладкий
for i, TFC_Smooths in TFC_Smooths {
    laser_engraver.recipeBuilder()
    	.inputs([TFC_Raws[i]])
		.notConsumable(<ore:craftingLensGlass>)
    	.outputs(TFC_Smooths)
    	.duration(200).EUt(30).buildAndRegister();
}

// Булыжник -> Гравий
for i, TFC_Gravel in TFC_Gravel {
    forge_hammer.recipeBuilder()
    	.inputs([TFC_Cobbles[i]])
    	.outputs(TFC_Gravel)
    	.duration(200).EUt(7).buildAndRegister();
}

// Гравий -> Песок
for i, TFC_Sands in TFC_Sands {
    forge_hammer.recipeBuilder()
    	.inputs([TFC_Gravel[i]])
    	.outputs(TFC_Sands)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи -> Блоки кирпичей
for i, TFC_Bricks_Block in TFC_Bricks_Block {
    assembler.recipeBuilder()
    	.inputs([TFC_Bricks_Item[i] * 4])
		.circuit(4)
		.fluidInputs([<liquid:concrete> * 100])
    	.outputs(TFC_Bricks_Block * 4)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи из грязи -> Блоки кирпичей
for i, TFC_Mud_Bricks_Block in TFC_Mud_Bricks_Block {
    assembler.recipeBuilder()
    	.inputs([TFC_Mud_Bricks_Item[i] * 4])
		.circuit(4)
		.fluidInputs([<liquid:concrete> * 100])
    	.outputs(TFC_Mud_Bricks_Block * 4)
    	.duration(200).EUt(7).buildAndRegister();
}

// Булыжник -> Полублок
for i, TFC_Slabs_Cobble in TFC_Slabs_Cobble {
    cutter.recipeBuilder()
    	.inputs([TFC_Cobbles[i]])
    	.outputs(TFC_Slabs_Cobble * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

//Булыжник -> Ступенька
for i, TFC_Stairs_Cobble in TFC_Stairs_Cobble {
    assembler.recipeBuilder()
    	.inputs([TFC_Cobbles[i] * 6])
		.circuit(7)
    	.outputs(TFC_Stairs_Cobble * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи -> Полублок
for i, TFC_Slabs_Bricks in TFC_Slabs_Bricks {
    cutter.recipeBuilder()
    	.inputs([TFC_Bricks_Block[i]])
    	.outputs(TFC_Slabs_Bricks * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи -> Ступенька
for i, TFC_Stairs_Bricks in TFC_Stairs_Bricks {
    assembler.recipeBuilder()
    	.inputs([TFC_Bricks_Block[i] * 6])
		.circuit(7)
    	.outputs(TFC_Stairs_Bricks * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Гладкий блок -> Полублок
for i, TFC_Slabs_Smooth in TFC_Slabs_Smooth {
    cutter.recipeBuilder()
    	.inputs([TFC_Smooths[i]])
    	.outputs(TFC_Slabs_Smooth * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

//Гладкий блок -> Ступенька
for i, TFC_Stairs_Smooth in TFC_Stairs_Smooth {
    assembler.recipeBuilder()
    	.inputs([TFC_Smooths[i] * 6])
		.circuit(7)
    	.outputs(TFC_Stairs_Smooth * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Сырой блок -> Полублок
for i, TFC_Raw_Slabs in TFC_Raw_Slabs {
    cutter.recipeBuilder()
    	.inputs([TFC_Raws[i]])
    	.outputs(TFC_Raw_Slabs * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

//Сырой блок -> Ступенька
for i, TFC_Raw_Stairs in TFC_Raw_Stairs {
    assembler.recipeBuilder()
    	.inputs([TFC_Raws[i] * 6])
		.circuit(7)
    	.outputs(TFC_Raw_Stairs * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи из грязи -> Полублок
for i, TFC_Mud_Bricks_Slabs in TFC_Mud_Bricks_Slabs {
    cutter.recipeBuilder()
    	.inputs([TFC_Mud_Bricks_Block[i]])
    	.outputs(TFC_Mud_Bricks_Slabs * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Кирпичи из грязи -> Ступенька
for i, TFC_Mud_Bricks_Stairs in TFC_Mud_Bricks_Stairs {
    assembler.recipeBuilder()
    	.inputs([TFC_Mud_Bricks_Block[i] * 6])
		.circuit(7)
    	.outputs(TFC_Mud_Bricks_Stairs)
    	.duration(200).EUt(7).buildAndRegister();
}

// Сырой камень -> Нажимные каменные пластины
for i, TFC_Stone_Pressure_Plates in TFC_Stone_Pressure_Plates {
    assembler.recipeBuilder()
    	.inputs([TFC_Raws[i] * 2, <metaitem:springIron>])
    	.outputs(TFC_Stone_Pressure_Plates * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Нажимные каменные пластины -> Кнопки
for i, TFC_Stone_Buttons in TFC_Stone_Buttons {
    cutter.recipeBuilder()
    	.inputs([TFC_Stone_Pressure_Plates[i] * 6])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Stone_Buttons * 12)
    	.duration(200).EUt(7).buildAndRegister();
}

// Дерево -> Пиломатериалы
for i, TFC_Lumber in TFC_Lumber {
    cutter.recipeBuilder()
    	.inputs([TFC_Logs[i]])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Lumber * 16, <ore:dustWood>.firstItem * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Пиломатериалы -> Доски
for i, TFC_Planks in TFC_Planks {
    assembler.recipeBuilder()
    	.inputs([TFC_Lumber[i] * 3])
		.circuit(3)
    	.outputs(TFC_Planks)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Полу-блоки
for i, TFC_Slabs in TFC_Slabs {
    cutter.recipeBuilder()
    	.inputs([TFC_Planks[i]])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Slabs * 2, <ore:dustWood>.firstItem * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Ступеньки
for i, TFC_Stairs in TFC_Stairs {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 6])
		.circuit(7)
    	.outputs(TFC_Stairs * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Нажимные деревянные пластины
for i, TFC_Pressure_Plates in TFC_Pressure_Plates {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 2, <metaitem:springIron>])
    	.outputs(TFC_Pressure_Plates * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Нажимные деревянные пластины -> Кнопки
for i, TFC_Buttons in TFC_Buttons {
    cutter.recipeBuilder()
    	.inputs([TFC_Pressure_Plates[i] * 6])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Buttons * 12)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Забор
for i, TFC_Fences in TFC_Fences {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i]])
		.circuit(1)
    	.outputs(TFC_Fences * 4)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Калитка
for i, TFC_Fence_Gates in TFC_Fence_Gates {
    assembler.recipeBuilder()
    	.inputs([TFC_Planks[i] * 2, <minecraft:stick> * 2])
		.circuit(2)
    	.outputs(TFC_Fence_Gates * 2)
    	.duration(200).EUt(7).buildAndRegister();
}

// Доски -> Калитка из бревен
for i, TFC_Fence_Gates_Log in TFC_Fence_Gates_Log {
    assembler.recipeBuilder()
    	.inputs([TFC_Logs[i], <minecraft:stick> * 2])
		.circuit(2)
    	.outputs(TFC_Fence_Gates_Log * 8)
    	.duration(200).EUt(7).buildAndRegister();
}

// Бревна -> Опоры
for i, TFC_Supports in TFC_Supports {
    cutter.recipeBuilder()
    	.inputs([TFC_Logs[i] * 2])
		.fluidInputs([<liquid:lubricant> * 1])
    	.outputs(TFC_Supports * 16)
    	.duration(200).EUt(7).buildAndRegister();
}

// Quern - GT ore --> GT crushed ore
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

// Удаление рецептов цемента 4х песок + 4х гравий без словаря руд
// White Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_white> * 144]).remove();
// Orange Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_orange> * 144]).remove();
// Magenta Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_magenta> * 144]).remove();
// Light Blue Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_light_blue> * 144]).remove();
// Yellow Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_yellow> * 144]).remove();
// Lime Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_lime> * 144]).remove();
// Pink Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_pink> * 144]).remove();
// Gray Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_gray> * 144]).remove();
// Light Gray Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_light_gray> * 144]).remove();
// Cyan Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_cyan> * 144]).remove();
// Purple Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_purple> * 144]).remove();
// Blue Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_blue> * 144]).remove();
// Brown Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_brown> * 144]).remove();
// Green Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_green> * 144]).remove();
// Red Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_red> * 144]).remove();
// Black Concrete Powder * 8
mixer.findRecipe(7, [<minecraft:sand:0> * 4, <minecraft:gravel:0> * 4], [<liquid:dye_black> * 144]).remove();

//Цемент из тфк --> цемент разных цветов
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_white> * 144]).outputs(<minecraft:concrete_powder> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_orange> * 144]).outputs(<minecraft:concrete_powder:1> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_magenta> * 144]).outputs(<minecraft:concrete_powder:2> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_light_blue> * 144]).outputs(<minecraft:concrete_powder:3> * 4).duration(15).EUt(7).buildAndRegister();	
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_yellow> * 144]).outputs(<minecraft:concrete_powder:4> * 4).duration(15).EUt(7).buildAndRegister();	
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_lime> * 144]).outputs(<minecraft:concrete_powder:5> * 4).duration(15).EUt(7).buildAndRegister();	
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_pink> * 144]).outputs(<minecraft:concrete_powder:6> * 4).duration(15).EUt(7).buildAndRegister();	
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_gray> * 144]).outputs(<minecraft:concrete_powder:7> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_light_gray> * 144]).outputs(<minecraft:concrete_powder:8> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_cyan> * 144]).outputs(<minecraft:concrete_powder:9> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_purple> * 144]).outputs(<minecraft:concrete_powder:10> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_blue> * 144]).outputs(<minecraft:concrete_powder:11> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_brown> * 144]).outputs(<minecraft:concrete_powder:12> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_green> * 144]).outputs(<minecraft:concrete_powder:13> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_red> * 144]).outputs(<minecraft:concrete_powder:14> * 4).duration(15).EUt(7).buildAndRegister();
mixer.recipeBuilder().inputs(<tfc:aggregate> * 4).fluidInputs([<liquid:dye_black> * 144]).outputs(<minecraft:concrete_powder:15> * 4).duration(15).EUt(7).buildAndRegister();

//Переработка тфк еды в метан
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
//Первичная
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/wrought_iron>).outputs(<ore:ingotWroughtIron>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/pig_iron>).outputs(<ore:ingotUnfinishedHighCarbonSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/high_carbon_steel>).outputs(<ore:ingotSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/high_carbon_blue_steel>).outputs(<ore:ingotBlueSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/high_carbon_red_steel>).outputs(<ore:ingotRedSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
forge_hammer.recipeBuilder().inputs(<tfc:metal/ingot/high_carbon_black_steel>).outputs(<ore:ingotBlackSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
//Вторичная
alloy_smelter.recipeBuilder().inputs(<ore:ingotUnfinishedWeakBlueSteel>, <ore:ingotBlackSteel>).outputs(<ore:ingotUnfinishedHighCarbonBlueSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
alloy_smelter.recipeBuilder().inputs(<ore:ingotUnfinishedWeakRedSteel>, <ore:ingotBlackSteel>).outputs(<ore:ingotUnfinishedHighCarbonRedSteel>.firstItem).duration(100).EUt(2).buildAndRegister();
alloy_smelter.recipeBuilder().inputs(<ore:ingotUnfinishedWeakSteel>, <ore:ingotUnfinishedPigIron>).outputs(<ore:ingotUnfinishedHighCarbonBlackSteel>.firstItem).duration(100).EUt(2).buildAndRegister();

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

//Исправление рецептов ванильных блоков в автоген рецептах GT на тфк
// Cobblestone * 1
forge_hammer.findRecipe(16, [<chisel:stonebrick:0>], null).remove();

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
Anvil.addRecipe("tfg:bucket/BlueSteel", <ore:plateBlueSteel>, <tfc:metal/bucket/blue_steel>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:bucket/RedSteel", <ore:plateRedSteel>, <tfc:metal/bucket/red_steel>, 6, "general", "BEND_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");

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

//Новые рецепты ковки GT топор
Anvil.addRecipe("tfg:axe_head/Copper", <ore:ingotCopper>, <ore:toolHeadAxeCopper>.firstItem, 1, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg:axe_head/BismuthBronze", <ore:ingotBismuthBronze>, <ore:toolHeadAxeBismuthBronze>.firstItem, 2, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg:axe_head/BlackBronze", <ore:ingotBlackBronze>, <ore:toolHeadAxeBlackBronze>.firstItem, 2, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg:axe_head/Bronze", <ore:ingotBronze>, <ore:toolHeadAxeBronze>.firstItem, 2, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg:axe_head/WroughtIron", <ore:ingotWroughtIron>, <ore:toolHeadAxeWroughtIron>.firstItem, 3, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg:axe_head/Steel", <ore:ingotSteel>, <ore:toolHeadAxeSteel>.firstItem, 4, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg:axe_head/BlackSteel", <ore:ingotBlackSteel>, <ore:toolHeadAxeBlackSteel>.firstItem, 5, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg:axe_head/BlueSteel", <ore:ingotBlueSteel>, <ore:toolHeadAxeBlueSteel>.firstItem, 6, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg:axe_head/RedSteel", <ore:ingotRedSteel>, <ore:toolHeadAxeRedSteel>.firstItem, 6, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");
Anvil.addRecipe("tfg:axe_head/Cobalt", <ore:ingotCobalt>, <ore:toolHeadAxeCobalt>.firstItem, 3, "tools", "PUNCH_LAST", "HIT_SECOND_LAST", "UPSET_THIRD_LAST");

//Новые рецепты ковки GT кирок
Anvil.addRecipe("tfg:pick_head/Copper", <ore:ingotCopper>, <ore:toolHeadPickaxeCopper>.firstItem, 1, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:pick_head/BismuthBronze", <ore:ingotBismuthBronze>, <ore:toolHeadPickaxeBismuthBronze>.firstItem, 2, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:pick_head/BlackBronze", <ore:ingotBlackBronze>, <ore:toolHeadPickaxeBlackBronze>.firstItem, 2, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:pick_head/Bronze", <ore:ingotBronze>, <ore:toolHeadPickaxeBronze>.firstItem, 2, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:pick_head/WroughtIron", <ore:ingotWroughtIron>, <ore:toolHeadPickaxeWroughtIron>.firstItem, 3, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:pick_head/Steel", <ore:ingotSteel>, <ore:toolHeadPickaxeSteel>.firstItem, 4, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:pick_head/BlackSteel", <ore:ingotBlackSteel>, <ore:toolHeadPickaxeBlackSteel>.firstItem, 5, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:pick_head/BlueSteel", <ore:ingotBlueSteel>, <ore:toolHeadPickaxeBlueSteel>.firstItem, 6, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:pick_head/RedSteel", <ore:ingotRedSteel>, <ore:toolHeadPickaxeRedSteel>.firstItem, 6, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");
Anvil.addRecipe("tfg:pick_head/Cobalt", <ore:ingotCobalt>, <ore:toolHeadPickaxeCobalt>.firstItem, 3, "tools", "PUNCH_LAST", "BEND_NOT_LAST", "DRAW_NOT_LAST");

//Новые рецепты ковки GT мечей
Anvil.addRecipe("tfg:sword_blade/Copper", <ore:ingotDoubleCopper>, <ore:toolHeadSwordCopper>.firstItem, 1, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:sword_blade/BismuthBronze", <ore:ingotDoubleBismuthBronze>, <ore:toolHeadSwordBismuthBronze>.firstItem, 2, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:sword_blade/BlackBronze", <ore:ingotDoubleBlackBronze>, <ore:toolHeadSwordBlackBronze>.firstItem, 2, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:sword_blade/Bronze", <ore:ingotDoubleBronze>, <ore:toolHeadSwordBronze>.firstItem, 2, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:sword_blade/WroughtIron", <ore:ingotDoubleWroughtIron>, <ore:toolHeadSwordWroughtIron>.firstItem, 3, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:sword_blade/Steel", <ore:ingotDoubleSteel>, <ore:toolHeadSwordSteel>.firstItem, 4, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:sword_blade/BlackSteel", <ore:ingotDoubleBlackSteel>, <ore:toolHeadSwordBlackSteel>.firstItem, 5, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:sword_blade/BlueSteel", <ore:ingotDoubleBlueSteel>, <ore:toolHeadSwordBlueSteel>.firstItem, 6, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:sword_blade/RedSteel", <ore:ingotDoubleRedSteel>, <ore:toolHeadSwordRedSteel>.firstItem, 6, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");
Anvil.addRecipe("tfg:sword_blade/Cobalt", <ore:ingotDoubleCobalt>, <ore:toolHeadSwordCobalt>.firstItem, 3, "tools", "HIT_LAST", "BEND_SECOND_LAST", "BEND_THIRD_LAST");

//Новые рецепты ковки GT(TFC) пил
Anvil.addRecipe("tfg:saw_blade/Copper", <ore:ingotCopper>, <ore:toolHeadSawCopper>.firstItem, 1, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg:saw_blade/BismuthBronze", <ore:ingotBismuthBronze>, <ore:toolHeadHammerBismuthBronze>.firstItem, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg:saw_blade/BlackBronze", <ore:ingotBlackBronze>, <ore:toolHeadHammerBlackBronze>.firstItem, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg:saw_blade/Bronze", <ore:ingotBronze>, <ore:toolHeadHammerBronze>.firstItem, 2, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg:saw_blade/WroughtIron", <ore:ingotWroughtIron>, <ore:toolHeadHammerWroughtIron>.firstItem, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg:saw_blade/Steel", <ore:ingotSteel>, <ore:toolHeadHammerSteel>.firstItem, 4, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg:saw_blade/BlackSteel", <ore:ingotBlackSteel>, <ore:toolHeadHammerBlackSteel>.firstItem, 5, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg:saw_blade/BlueSteel", <ore:ingotBlueSteel>, <ore:toolHeadHammerBlueSteel>.firstItem, 6, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg:saw_blade/RedSteel", <ore:ingotRedSteel>, <ore:toolHeadHammerRedSteel>.firstItem, 6, "tools", "HIT_LAST", "HIT_SECOND_LAST");
Anvil.addRecipe("tfg:saw_blade/Cobalt", <ore:ingotCobalt>, <ore:toolHeadHammerCobalt>.firstItem, 3, "tools", "HIT_LAST", "HIT_SECOND_LAST");

//Новые рецепты ковки GT(TFC) молотков
Anvil.addRecipe("tfg:hammer_head/Copper", <ore:ingotCopper>, <tfc:metal/hammer_head/copper>, 1, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:hammer_head/BismuthBronze", <ore:ingotBismuthBronze>, <ore:toolHeadHammerBismuthBronze>.firstItem, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:hammer_head/BlackBronze", <ore:ingotBlackBronze>, <ore:toolHeadHammerBlackBronze>.firstItem, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:hammer_head/Bronze", <ore:ingotBronze>, <ore:toolHeadHammerBronze>.firstItem, 2, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:hammer_head/WroughtIron", <ore:ingotWroughtIron>, <ore:toolHeadHammerWroughtIron>.firstItem, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:hammer_head/Steel", <ore:ingotSteel>, <ore:toolHeadHammerSteel>.firstItem, 4, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:hammer_head/BlackSteel", <ore:ingotBlackSteel>, <ore:toolHeadHammerBlackSteel>.firstItem, 5, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:hammer_head/BlueSteel", <ore:ingotBlueSteel>, <ore:toolHeadHammerBlueSteel>.firstItem, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:hammer_head/RedSteel", <ore:ingotRedSteel>, <ore:toolHeadHammerRedSteel>.firstItem, 6, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:hammer_head/Cobalt", <ore:ingotCobalt>, <ore:toolHeadHammerCobalt>.firstItem, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");

//Крафт голов напильков из GT
Anvil.addRecipe("tfg:file_head/Copper", <ore:ingotCopper>, <ore:toolHeadFileCopper>.firstItem, 1, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg:file_head/Bronze", <ore:ingotBronze>, <ore:toolHeadFileBronze>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg:file_head/BismuthBronze", <ore:ingotBismuthBronze>, <ore:toolHeadFileBismuthBronze>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg:file_head/BlackBronze", <ore:ingotBlackBronze>, <ore:toolHeadFileBlackBronze>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg:file_head/BlackSteel", <ore:ingotBlackSteel>, <ore:toolHeadFileBlackSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg:file_head/RedSteel", <ore:ingotRedSteel>, <ore:toolHeadFileRedSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg:file_head/BlueSteel", <ore:ingotBlueSteel>, <ore:toolHeadFileBlueSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg:file_head/Steel", <ore:ingotSteel>, <ore:toolHeadFileSteel>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");
Anvil.addRecipe("tfg:file_head/WroughtIron", <ore:ingotWroughtIron>, <ore:toolHeadFileWroughtIron>.firstItem, 3, "tools", "PUNCH_LAST", "SHRINK_NOT_LAST");
Anvil.addRecipe("tfg:file_head/Cobalt", <ore:ingotCobalt>, <ore:toolHeadFileCobalt>.firstItem, 2, "tools", "SHRINK_NOT_LAST", "DRAW_NOT_LAST", "PUNCH_LAST");

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