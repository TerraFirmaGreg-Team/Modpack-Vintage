#priority 996

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.terrafirmacraft.ItemRegistry;

// - Регистрация брони
ItemRegistry.registerArmor(<minecraft:leather_helmet>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_chestplate>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_leggings>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_boots>, 3.0, 6.0, 4.5);

// - Регистрация топлива
ItemRegistry.registerFuel(<metaitem:gemCoke>, 3200, 1450, true, true);
ItemRegistry.registerFuel(<minecraft:coal>, 1600, 1400, true, true);
ItemRegistry.registerFuel(<tfc:peat>, 3200, 500, true, false);

// - Регистрация инструментов
<ore:damageTypeSlashing>.addAll(<ore:craftingToolSword>);

//Регистрация металлов для палок GT
ItemRegistry.registerItemMetal(<metaitem:stickGold>, "GOLD", 50, true);
ItemRegistry.registerItemMetal(<metaitem:stickWroughtIron>, "WROUGHT_IRON", 50, true);
ItemRegistry.registerItemMetal(<metaitem:stickSteel>, "STEEL", 50, true);

//Регистрация металлов для двойных пластин GregTech
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBismuth>, "BISMUTH", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBrass>, "BRASS", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBronze>, "BRONZE", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleCopper>, "COPPER", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleGold>, "GOLD", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleLead>, "LEAD", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleNickel>, "NICKEL", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleRoseGold>, "ROSE_GOLD", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSilver>, "SILVER", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleTin>, "TIN", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBismuthBronze>, "BISMUTH_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlackBronze>, "BLACK_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSteel>, "STEEL", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleWroughtIron>, "WROUGHT_IRON", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSterlingSilver>, "STERLING_SILVER", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleZinc>, "ZINC", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleRedSteel>, "RED_STEEL", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlueSteel>, "BLUE_STEEL", 100, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlackSteel>, "BLACK_STEEL", 100, true);

// --- Вариации Меди
//Медь --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureCopper>, "COPPER", 80, true);
//Медь --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallCopper>, "COPPER", 25, true);
//Медь --- Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyCopper>, "COPPER", 10, true);
//Борнит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureBornite>, "COPPER", 40, true);
//Борнит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustBornite>, "COPPER", 50, true);
//Тетраэдрит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureTetrahedrite>, "COPPER", 30, true);
//Тетраэдрит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustTetrahedrite>, "COPPER", 40, true);
//Халькопирит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureChalcopyrite>, "COPPER", 20, true);
//Халькопирит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustChalcopyrite>, "COPPER", 30, true);
//Халькозин --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureChalcocite>, "COPPER", 60, true);
//Халькозин --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustChalcocite>, "COPPER", 70, true);
//Малахит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureMalachite>, "COPPER", 10, true);
//Малахит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustMalachite>, "COPPER", 30, true);

// --- Вариации Олова
//Олово --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureTin>, "TIN", 80, true);
//Олово --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallTin>, "TIN", 25, true);
//Олово --- Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyTin>, "TIN", 10, true);
//Касситерит --- Грязная кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureCassiterite>, "TIN", 145, true);
//Касситерит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustCassiterite>, "TIN", 200, true);
//Касситерит --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallCassiterite>, "TIN", 45, true);
//Касситерит --- Маленькая кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyCassiterite>, "TIN", 15, true);
//Каситеритный песок --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureCassiteriteSand>, "TIN", 25, true);
//Касситеритный песок --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustCassiteriteSand>, "TIN", 35, true);

// --- Вариации Железа
//Железо --- Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureIron>, "WROUGHT_IRON", 80, false);
//Железо --- Большая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustIron>, "WROUGHT_IRON", 100, false);
//Железо --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallIron>, "WROUGHT_IRON", 25, false);
//Железо --- Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyIron>, "WROUGHT_IRON", 10, false);
//Пирит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpurePyrite>, "WROUGHT_IRON", 15, false);
//Пирит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustPyrite>, "WROUGHT_IRON", 15, false);
//Магнетит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureMagnetite>, "WROUGHT_IRON", 30, false);
//Магнетит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustMagnetite>, "WROUGHT_IRON", 40, false);
//Желтый лимонит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureBrownLimonite>, "WROUGHT_IRON", 20, false);
//Желтый лимонит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustBrownLimonite>, "WROUGHT_IRON", 30, false);
//Коричневый лимонит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureYellowLimonite>, "WROUGHT_IRON", 20, false);
//Коричневый лимонит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustYellowLimonite>, "WROUGHT_IRON", 30, false);
//Бандитовое железо --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureBandedIron>, "WROUGHT_IRON", 30, false);
//Бандитовое железо --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustBandedIron>, "WROUGHT_IRON", 40, false);

// --- Вариации Никеля
//Никель --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureNickel>, "NICKEL", 80, true);
//Никель --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallNickel>, "NICKEL", 25, true);
//Никель --- Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyNickel>, "NICKEL", 10, true);
//Гарниерит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureGarnierite>, "NICKEL", 40, true);
//Гарниерит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustGarnierite>, "NICKEL", 50, true);
//Пентландит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpurePentlandite>, "NICKEL", 30, true);
//Пентландит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustPentlandite>, "NICKEL", 40, true);

// --- Вариации Цинка
//Цинк --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallZinc>, "ZINC", 25, true);
//Цинк --- Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyZinc>, "ZINC", 10, true);
//Сфалерит --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureSphalerite>, "ZINC", 50, true);
//Сфалерит --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustSphalerite>, "ZINC", 60, true);

// --- Вариации Свинца
//Свинец --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureLead>, "LEAD", 80, true);
//Свинец --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallLead>, "LEAD", 25, true);
//Свинец --- Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyLead>, "LEAD", 10, true);
//Галена --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureGalena>, "LEAD", 20, true);
//Галена --- Большая Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustGalena>, "LEAD", 40, true);

// --- Вариации золота
//Золото --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureGold>, "GOLD", 80, true);
//Золото --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallGold>, "GOLD", 25, true);
//Золото --- Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyGold>, "GOLD", 10, true);

// --- Вариации висмута
//Висмут --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallBismuth>, "Bismuth", 25, true);
//Висмут --- Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyBismuth>, "Bismuth", 10, true);

// --- Вариации серебра
//Серебро --- Грязная Кучка
//ItemRegistry.registerItemMetal(<metaitem:dustImpureSilver>, "SILVER", 80, true);
//Серебро --- Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallSilver>, "SILVER", 25, true);
//Серебро --- Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinySilver>, "SILVER", 10, true);

//Регистрация предметов - Вес + Размер
// Ingots
ItemRegistry.registerItemSize(<gregtech:meta_ingot:*>, "LARGE", "LIGHT");
// Plates
ItemRegistry.registerItemSize(<gregtech:meta_plate:*>, "LARGE", "LIGHT");

// - Регистрация блоков руд - Вес + Размер
var GregtechOres as IOreDictEntry[] = [
        <ore:oreAluminium>,
        <ore:oreBeryllium>,
        <ore:oreCobalt>,
        <ore:oreCopper>,
        <ore:oreGold>,
        <ore:oreIron>,
        <ore:oreLead>,
        <ore:oreLithium>,
        <ore:oreMolybdenum>,
        <ore:oreNeodymium>,
        <ore:oreNickel>,
        <ore:orePalladium>,
        <ore:orePlatinum>,
        <ore:orePlutonium>,
        <ore:oreSilver>,
        <ore:oreSulfur>,
        <ore:oreThorium>,
        <ore:oreTin>,
        <ore:oreNaquadah>,
        <ore:oreCertusQuartz>,
        <ore:oreAlmandine>,
        <ore:oreAsbestos>,
        <ore:oreBanded_iron>,
        <ore:oreBlueTopaz>,
        <ore:oreBrownLimonite>,
        <ore:oreCalcite>,
        <ore:oreCassiterite>,
        <ore:oreCassiterite_sand>,
        <ore:oreChalcopyrite>,
        <ore:oreChromite>,
        <ore:oreCinnabar>,
        <ore:oreCoal>,
        <ore:oreCobaltite>,
        <ore:oreCooperite>,
        <ore:oreDiamond>,
        <ore:oreEmerald>,
        <ore:oreGalena>,
        <ore:oreGarnierite>,
        <ore:oreGreen_sapphire>,
        <ore:oreGrossular>,
        <ore:oreIlmenite>,
        <ore:oreBauxite>,
        <ore:oreLazurite>,
        <ore:oreMagnesite>,
        <ore:oreMagnetite>,
        <ore:oreMolybdenite>,
        <ore:orePowellite>,
        <ore:orePyrite>,
        <ore:orePyrolusite>,
        <ore:orePyrope>,
        <ore:oreRock_salt>,
        <ore:oreRuby>,
        <ore:oreSalt>,
        <ore:oreSaltpeter>,
        <ore:oreSapphire>,
        <ore:oreScheelite>,
        <ore:oreSodalite>,
        <ore:oreTantalite>,
        <ore:oreSpessartine>,
        <ore:oreSphalerite>,
        <ore:oreStibnite>,
        <ore:oreTetrahedrite>,
        <ore:oreTopaz>,
        <ore:oreTungstate>,
        <ore:oreUraninite>,
        <ore:oreWulfenite>,
        <ore:oreYellowLimonite>,
        <ore:oreNetherQuartz>,
        <ore:oreQuartzite>,
        <ore:oreGraphite>,
        <ore:oreBornite>,
        <ore:oreChalcocite>,
        <ore:oreRealgar>,
        <ore:oreBastnasite>,
        <ore:orePentlandite>,
        <ore:oreSpodumene>,
        <ore:oreLepidolite>,
        <ore:oreGlauconite_sand>,
        <ore:oreMalachite>,
        <ore:oreMica>,
        <ore:oreBarite>,
        <ore:oreAlunite>,
        <ore:oreTalc>,
        <ore:oreSoapstone>,
        <ore:oreKyanite>,
        <ore:orePyrochlore>,
        <ore:oreOilsands>,
        <ore:oreOlivine>,
        <ore:oreOpal>,
        <ore:oreAmethyst>,
        <ore:oreLapis>,
        <ore:oreApatite>,
        <ore:oreTricalciumPhosphate>,
        <ore:oreGarnetRed>,
        <ore:oreGarnetYellow>,
        <ore:oreVanadiumMagnetite>,
        <ore:orePollucite>,
        <ore:oreBentonite>,
        <ore:oreFullersEarth>,
        <ore:orePitchblende>,
        <ore:oreMonazite>,
        <ore:oreTrona>,
        <ore:oreGypsum>,
        <ore:oreZeolite>,
        <ore:oreRedstone>,
        <ore:oreElectrotine>,
        <ore:oreDiatomite>,
        <ore:oreGraniticMineralSand>,
        <ore:oreGarnetSand>,
        <ore:oreBasalticMineralSand>,
        //Added Later
        <ore:oreBismuth>,
        <ore:oreGlowstone>
];
for item in GregtechOres 
{
        ItemRegistry.registerItemSize(item, "HUGE", "MEDIUM");
}