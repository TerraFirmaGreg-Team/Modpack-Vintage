#priority 960

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.terrafirmacraft.ItemRegistry;

// --- Регистрация веса и размера

// Руда
for item in GregtechOres {
        ItemRegistry.registerItemSize(item, "HUGE", "MEDIUM");
}

// Слитки
ItemRegistry.registerItemSize(<gregtech:meta_ingot:*>, "LARGE", "LIGHT");

// Пластины
ItemRegistry.registerItemSize(<gregtech:meta_plate:*>, "LARGE", "LIGHT");

// --- Регистрация брони
ItemRegistry.registerArmor(<minecraft:leather_helmet>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_chestplate>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_leggings>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_boots>, 3.0, 6.0, 4.5);

// --- Регистрация топлива
ItemRegistry.registerFuel(<metaitem:gemCoke>, 3200, 1510, false, true);
ItemRegistry.registerFuel(<minecraft:coal>, 1600, 1400, true, true);
ItemRegistry.registerFuel(<metaitem:oreChunkCoal>, 1400, 1400, true, true);
ItemRegistry.registerFuel(<tfc:peat>, 3200, 500, true, false);

// --- Регистрация инструментов
<ore:damageTypeSlashing>.addAll(<ore:craftingToolSword>);

// --- Регистрация металлов для палок GT
ItemRegistry.registerItemMetal(<metaitem:stickGold>, "GOLD", 72, true);
ItemRegistry.registerItemMetal(<metaitem:stickWroughtIron>, "WROUGHT_IRON", 72, true);
ItemRegistry.registerItemMetal(<metaitem:stickSteel>, "STEEL", 72, true);

// --- Регистрация металлов для двойных пластин GregTech
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBismuth>, "BISMUTH", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBrass>, "BRASS", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBronze>, "BRONZE", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleCopper>, "COPPER", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleGold>, "GOLD", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleLead>, "LEAD", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleNickel>, "NICKEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleRoseGold>, "ROSE_GOLD", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSilver>, "SILVER", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleTin>, "TIN", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBismuthBronze>, "BISMUTH_BRONZE", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlackBronze>, "BLACK_BRONZE", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSteel>, "STEEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleWroughtIron>, "WROUGHT_IRON", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleSterlingSilver>, "STERLING_SILVER", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleZinc>, "ZINC", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleRedSteel>, "RED_STEEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlueSteel>, "BLUE_STEEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoubleBlackSteel>, "BLACK_STEEL", 288, true);
ItemRegistry.registerItemMetal(<metaitem:plateDoublePlatinum>, "PLATINUM", 288, true);

// ---//--- Вариации Меди

// --- Чистая Медь

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkCopper>, "COPPER", 36, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureCopper>, "COPPER", 120, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallCopper>, "COPPER", 36, true);
//  Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyCopper>, "COPPER", 16, true);

// --- Борнит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkBornite>, "COPPER", 32, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustBornite>, "COPPER", 100, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureBornite>, "COPPER", 80, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallBornite>, "COPPER", 25, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyBornite>, "COPPER", 11, true);

// --- Тетраэдрит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkTetrahedrite>, "COPPER", 32, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTetrahedrite>, "COPPER", 100, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureTetrahedrite>, "COPPER", 80, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallTetrahedrite>, "COPPER", 25, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyTetrahedrite>, "COPPER", 11, true);

// --- Халькопирит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkChalcopyrite>, "COPPER", 30, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustChalcopyrite>, "COPPER", 80, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureChalcopyrite>, "COPPER", 70, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallChalcopyrite>, "COPPER", 20, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyChalcopyrite>, "COPPER", 8, true);

// --- Халькозин

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkChalcocite>, "COPPER", 28, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustChalcocite>, "COPPER", 70, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureChalcocite>, "COPPER", 60, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallChalcocite>, "COPPER", 17, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyChalcocite>, "COPPER", 7, true);

// --- Малахит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkMalachite>, "COPPER", 26, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustMalachite>, "COPPER", 60, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureMalachite>, "COPPER", 50, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallMalachite>, "COPPER", 15, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyMalachite>, "COPPER", 6, true);

// ---//--- Вариации Олова

// --- Чистое Олово

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkTin>, "TIN", 36, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureTin>, "TIN", 120, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallTin>, "TIN", 36, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyTin>, "TIN", 16, true);

// --- Касситерит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkCassiterite>, "TIN", 72, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustCassiterite>, "TIN", 244, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureCassiterite>, "TIN", 210, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallCassiterite>, "TIN", 61, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyCassiterite>, "TIN", 27, true);

// --- Касситеритный песок

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkCassiteriteSand>, "TIN", 26, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustCassiteriteSand>, "TIN", 60, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureCassiteriteSand>, "TIN", 50, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallCassiteriteSand>, "TIN", 15, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyCassiteriteSand>, "TIN", 6, true);


// ---//--- Вариации Железа

// --- Чистое железо

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkIron>, "WROUGHT_IRON", 26, false);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustIron>, "WROUGHT_IRON", 144, false);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureIron>, "WROUGHT_IRON", 120, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallIron>, "WROUGHT_IRON", 36, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyIron>, "WROUGHT_IRON", 16, false);

// --- Пирит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkPyrite>, "WROUGHT_IRON", 28, false);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustPyrite>, "WROUGHT_IRON", 70, false);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpurePyrite>, "WROUGHT_IRON", 60, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallPyrite>, "WROUGHT_IRON", 17, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyPyrite>, "WROUGHT_IRON", 7, false);

// --- Магнетит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkMagnetite>, "WROUGHT_IRON", 32, false);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustMagnetite>, "WROUGHT_IRON", 95, false);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureMagnetite>, "WROUGHT_IRON", 85, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallMagnetite>, "WROUGHT_IRON", 23, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyMagnetite>, "WROUGHT_IRON", 10, false);

// --- Коричневый лимонит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkBrownLimonite>, "WROUGHT_IRON", 32, false);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustBrownLimonite>, "WROUGHT_IRON", 90, false);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureBrownLimonite>, "WROUGHT_IRON", 80, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallBrownLimonite>, "WROUGHT_IRON", 22, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyBrownLimonite>, "WROUGHT_IRON", 9, false);

// --- Желтый лимонит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkYellowLimonite>, "WROUGHT_IRON", 32, false);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustYellowLimonite>, "WROUGHT_IRON", 85, false);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureYellowLimonite>, "WROUGHT_IRON", 75, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallYellowLimonite>, "WROUGHT_IRON", 21, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyYellowLimonite>, "WROUGHT_IRON", 9, false);

// --- Гематит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkBandedIron>, "WROUGHT_IRON", 34, false);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustBandedIron>, "WROUGHT_IRON", 124, false);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureBandedIron>, "WROUGHT_IRON", 114, false);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallBandedIron>, "WROUGHT_IRON", 31, false);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyBandedIron>, "WROUGHT_IRON", 13, false);


// ---//--- Вариации Никеля

// --- Чистый никель

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkNickel>, "NICKEL", 36, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureNickel>, "NICKEL", 120, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallNickel>, "NICKEL", 36, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyNickel>, "NICKEL", 16, true);

// --- Гарниерит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkGarnierite>, "NICKEL", 30, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustGarnierite>, "NICKEL", 80, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureGarnierite>, "NICKEL", 70, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallGarnierite>, "NICKEL", 20, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyGarnierite>, "NICKEL", 8, true);

// --- Пентландит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkPentlandite>, "NICKEL", 28, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustPentlandite>, "NICKEL", 70, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpurePentlandite>, "NICKEL", 60, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallPentlandite>, "NICKEL", 17, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyPentlandite>, "NICKEL", 7, true);

// ---//--- Вариации Цинка

// --- Чистый цинк

// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallZinc>, "ZINC", 36, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyZinc>, "ZINC", 16, true);

// --- Сфалерит

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkSphalerite>, "ZINC", 34, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSphalerite>, "ZINC", 120, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureSphalerite>, "ZINC", 110, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallSphalerite>, "ZINC", 30, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinySphalerite>, "ZINC", 13, true);

// ---//--- Вариации Свинца

// --- Чистый свинец

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkLead>, "LEAD", 36, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureLead>, "LEAD", 120, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallLead>, "LEAD", 36, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyLead>, "LEAD", 16, true);

// --- Галена

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkGalena>, "LEAD", 32, true);
// Чистая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustGalena>, "LEAD", 90, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureGalena>, "LEAD", 80, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallGalena>, "LEAD", 22, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyGalena>, "LEAD", 10, true);

// ---//--- Вариации золота

// --- Чистое золото

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkGold>, "GOLD", 36, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureGold>, "GOLD", 120, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallGold>, "GOLD", 36, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyGold>, "GOLD", 16, true);

// ---//--- Вариации висмута

// --- Чистый висмут

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkBismuth>, "BISMUTH", 36, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureBismuth>, "BISMUTH", 120, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallBismuth>, "BISMUTH", 36, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinyBismuth>, "BISMUTH", 16, true);

// ---//--- Вариации серебра

// --- Чистое серебро

// Кусок руды
ItemRegistry.registerItemMetal(<metaitem:oreChunkSilver>, "SILVER", 36, true);
// Грязная Кучка
ItemRegistry.registerItemMetal(<metaitem:dustImpureSilver>, "SILVER", 120, true);
// Средняя Кучка
ItemRegistry.registerItemMetal(<metaitem:dustSmallSilver>, "SILVER", 36, true);
// Маленькая Кучка
ItemRegistry.registerItemMetal(<metaitem:dustTinySilver>, "SILVER", 16, true);