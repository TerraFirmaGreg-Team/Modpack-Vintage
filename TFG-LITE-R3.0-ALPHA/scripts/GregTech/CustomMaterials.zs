#loader gregtech

import mods.gregtech.material.Material;

//Colored Colors
<material:salt_water>.setMaterialRGB(0x1F5099);

//Magnesium Gen Plates
<material:magnesium>.addFlags("generate_plate");

//Long Rods
<material:zinc>.addFlags("generate_long_rod");
<material:nickel>.addFlags("generate_long_rod");
<material:bismuth>.addFlags("generate_long_rod");
<material:platinum>.addFlags("generate_long_rod");

/*
new Metal(BISMUTH, TIER_I, true, 0.14f, 270, 0xFF486B72, null, null),
new Metal(BISMUTH_BRONZE, TIER_II, true, 0.35f, 985, 0xFF418E4F, ToolMaterialsTFC.BISMUTH_BRONZE, ArmorMaterialTFC.BISMUTH_BRONZE),
new Metal(BLACK_BRONZE, TIER_II, true, 0.35f, 1070, 0xFF3B2636, ToolMaterialsTFC.BLACK_BRONZE, ArmorMaterialTFC.BLACK_BRONZE),
new Metal(BRASS, TIER_I, true, 0.35f, 930, 0xFF96892E, null, null),
new Metal(BRONZE, TIER_II, true, 0.35f, 950, 0xFF7C5E33, ToolMaterialsTFC.BRONZE, ArmorMaterialTFC.BRONZE),
new Metal(COPPER, TIER_I, true, 0.35f, 1080, 0xFFB64027, ToolMaterialsTFC.COPPER, ArmorMaterialTFC.COPPER),
new Metal(GOLD, TIER_I, true, 0.6f, 1060, 0xFFDCBF1B, null, null),
new Metal(LEAD, TIER_I, true, 0.22f, 328, 0xFF40494D, null, null),
new Metal(NICKEL, TIER_I, true, 0.48f, 1453, 0xFF4E4E3C, null, null),
new Metal(ROSE_GOLD, TIER_I, true, 0.35f, 960, 0xFFEB7137, null, null),
new Metal(SILVER, TIER_I, true, 0.48f, 961, 0xFF949495, null, null),
new Metal(TIN, TIER_I, true, 0.14f, 230, 0xFF90A4BB, null, null),
new Metal(ZINC, TIER_I, true, 0.21f, 420, 0xFFBBB9C4, null, null),
new Metal(STERLING_SILVER, TIER_I, true, 0.35f, 900, 0xFFAC927B, null, null),
new Metal(WROUGHT_IRON, TIER_III, true, 0.35f, 1535, 0xFF989897, ToolMaterialsTFC.WROUGHT_IRON, ArmorMaterialTFC.WROUGHT_IRON),
new Metal(PIG_IRON, TIER_III, true, 0.35f, 1535, 0xFF6A595C, null, null),
new Metal(STEEL, TIER_IV, true, 0.35f, 1540, 0xFF5F5F5F, ToolMaterialsTFC.STEEL, ArmorMaterialTFC.STEEL),
new Metal(PLATINUM, TIER_V, true, 0.35f, 1730, 0xFF9DADC0, null, null),
 new Metal(BLACK_STEEL, TIER_V, true, 0.35f, 1485, 0xFF111111, ToolMaterialsTFC.BLACK_STEEL, ArmorMaterialTFC.BLACK_STEEL),
new Metal(BLUE_STEEL, TIER_VI, true, 0.35f, 1540, 0xFF2D5596, ToolMaterialsTFC.BLUE_STEEL, ArmorMaterialTFC.BLUE_STEEL),
new Metal(RED_STEEL, TIER_VI, true, 0.35f, 1540, 0xFF700503, ToolMaterialsTFC.RED_STEEL, ArmorMaterialTFC.RED_STEEL),
new Metal(WEAK_STEEL, TIER_IV, false, 0.35f, 1540, 0xFF111111, null, null),
new Metal(WEAK_BLUE_STEEL, TIER_V, false, 0.35f, 1540, 0xFF2D5596, null, null),
new Metal(WEAK_RED_STEEL, TIER_V, false, 0.35f, 1540, 0xFF700503, null, null),
new Metal(HIGH_CARBON_STEEL, TIER_III, false, 0.35f, 1540, 0xFF5F5F5F, null, null),
new Metal(HIGH_CARBON_BLUE_STEEL, TIER_V, false, 0.35f, 1540, 0xFF2D5596, null, null),
new Metal(HIGH_CARBON_RED_STEEL, TIER_V, false, 0.35f, 1540, 0xFF700503, null, null),
new Metal(HIGH_CARBON_BLACK_STEEL, TIER_IV, false, 0.35f, 1540, 0xFF111111, null, null),
new Metal(UNKNOWN, TIER_I, false, 0.5f, 1250, 0xFF2F2B27, null, null)
*/