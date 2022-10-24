#priority 1
# TFCRegistrationMaterials

import mods.terrafirmacraft.ItemRegistry;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print("Initializing 'TFCRegistrationMaterials'...");


// Регистрация топлива
ItemRegistry.registerFuel(<metaitem:gemCoke>, 2400, 1500, true, true);
ItemRegistry.registerFuel(<minecraft:coal>, 1200, 1400, true, true);
ItemRegistry.registerFuel(<tfc:peat>, 1800, 500, true, false);

// Регистрация массы для слитков из грега (что бы стак был 32 шт)
ItemRegistry.registerItemSize(<gregtech:meta_ingot:*>, "LARGE", "LIGHT");

// Регистрация массы для пластин из грега (что бы стак был 32 шт)
ItemRegistry.registerItemSize(<gregtech:meta_plate:*>, "LARGE", "LIGHT");

// Регистрация кожаной брони
ItemRegistry.registerArmor(<minecraft:leather_helmet>, 3.0, 5.0, 5.0);
ItemRegistry.registerArmor(<minecraft:leather_chestplate>, 3.0, 5.0, 5.0);
ItemRegistry.registerArmor(<minecraft:leather_leggings>, 3.0, 5.0, 5.0);
ItemRegistry.registerArmor(<minecraft:leather_boots>, 3.0, 5.0, 5.0);

// Регистрация алмазной брони
ItemRegistry.registerArmor(<minecraft:diamond_helmet>, 65.0, 75.0, 75.0);
ItemRegistry.registerArmor(<minecraft:diamond_chestplate>, 65.0, 75.0, 75.0);
ItemRegistry.registerArmor(<minecraft:diamond_leggings>, 65.0, 75.0, 75.0);
ItemRegistry.registerArmor(<minecraft:diamond_boots>, 65.0, 75.0, 75.0);

// Изменение количества металла в пластинах из ТФК
ItemRegistry.registerItemMetal(<ore:sheetBismuth>, "BISMUTH", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetBismuthBronze>, "BISMUTH_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetBlackBronze>, "BLACK_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetBrass>, "BRASS", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetBronze>, "BRONZE", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetCopper>, "COPPER", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetGold>, "GOLD", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetLead>, "LEAD", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetNickel>, "NICKEL", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetRoseGold>, "ROSE_GOLD", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetSilver>, "SILVER", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetTin>, "TIN", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetZinc>, "ZINC", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetSterlingSilver>, "STERLING_SILVER", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetWroughtIron>, "WROUGHT_IRON", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetSteel>, "STEEL", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetPlatinum>, "PLATINUM", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetBlackSteel>, "BLACK_STEEL", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetBlueSteel>, "BLUE_STEEL", 100, true);
ItemRegistry.registerItemMetal(<ore:sheetRedSteel>, "RED_STEEL", 100, true);

// Изменение количества металла в двойных пластинах из ТФК
ItemRegistry.registerItemMetal(<ore:sheetDoubleBismuth>, "BISMUTH", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleBismuthBronze>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleBlackBronze>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleBrass>, "BRASS", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleBronze>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleCopper>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleGold>, "GOLD", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleLead>, "LEAD", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleNickel>, "NICKEL", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleRoseGold>, "ROSE_GOLD", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleSilver>, "SILVER", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleTin>, "TIN", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleZinc>, "ZINC", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleSterlingSilver>, "STERLING_SILVER", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleWroughtIron>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleSteel>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoublePlatinum>, "PLATINUM", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleBlackSteel>, "BLACK_STEEL", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleBlueSteel>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<ore:sheetDoubleRedSteel>, "RED_STEEL", 200, true);

// Изменение количества металла в прочих предметах из ТФК
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/bismuth_bronze>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/black_bronze>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/bronze>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/copper>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/wrought_iron>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/steel>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/black_steel>, "BLACK_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/blue_steel>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/tuyere/red_steel>, "RED_STEEL", 200, true);

// Изменение количества металла в броне из ТФК
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/bismuth_bronze>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/bismuth_bronze>, "BISMUTH_BRONZE", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/bismuth_bronze>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/bismuth_bronze>, "BISMUTH_BRONZE", 400, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/bismuth_bronze>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/bismuth_bronze>, "BISMUTH_BRONZE", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/bismuth_bronze>, "BISMUTH_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/bismuth_bronze>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/bismuth_bronze>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/black_bronze>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/black_bronze>, "BLACK_BRONZE", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/black_bronze>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/black_bronze>, "BLACK_BRONZE", 400, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/black_bronze>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/black_bronze>, "BLACK_BRONZE", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/black_bronze>, "BLACK_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/black_bronze>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/black_bronze>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/bronze>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/bronze>, "BRONZE", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/bronze>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/bronze>, "BRONZE", 400, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/bronze>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/bronze>, "BRONZE", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/bronze>, "BRONZE", 100, true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/bronze>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/bronze>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/copper>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/copper>, "COPPER", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/copper>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/copper>, "COPPER", 400, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/copper>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/copper>, "COPPER", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/copper>, "COPPER", 100, true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/copper>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/copper>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/wrought_iron>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/wrought_iron>, "WROUGHT_IRON", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/wrought_iron>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/wrought_iron>, "WROUGHT_IRON", 400, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/wrought_iron>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/wrought_iron>, "WROUGHT_IRON", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/wrought_iron>, "WROUGHT_IRON", 100, true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/wrought_iron>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/wrought_iron>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/steel>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/steel>, "STEEL", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/steel>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/steel>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/steel>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/steel>, "STEEL", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/steel>, "STEEL", 100, true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/steel>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/steel>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/black_steel>, "BLACK_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/black_steel>, "BLACK_STEEL", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/black_steel>, "BLACK_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/black_steel>, "BLACK_STEEL", 400, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/black_steel>, "BLACK_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/black_steel>, "BLACK_STEEL", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/black_steel>, "BLACK_STEEL", 100, true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/black_steel>, "BLACK_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/black_steel>, "BLACK_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/blue_steel>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/blue_steel>, "BLUE_STEEL", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/blue_steel>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/blue_steel>, "BLUE_STEEL", 400, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/blue_steel>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/blue_steel>, "BLUE_STEEL", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/blue_steel>, "BLUE_STEEL", 100, true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/blue_steel>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/blue_steel>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_helmet/red_steel>, "RED_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/helmet/red_steel>, "RED_STEEL", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_chestplate/red_steel>, "RED_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/chestplate/red_steel>, "RED_STEEL", 400, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_greaves/red_steel>, "RED_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/greaves/red_steel>, "RED_STEEL", 300, true);
ItemRegistry.registerItemMetal(<tfc:metal/unfinished_boots/red_steel>, "RED_STEEL", 100, true);
ItemRegistry.registerItemMetal(<tfc:metal/boots/red_steel>, "RED_STEEL", 200, true);
ItemRegistry.registerItemMetal(<tfc:metal/shield/red_steel>, "RED_STEEL", 200, true);

// Регистрация прочих материалов из грега
// Формы
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:11>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:14>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:15>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:16>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:17>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:18>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:19>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:20>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:21>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:22>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:23>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:24>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:31>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:32>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:33>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:34>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:35>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:36>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:37>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:38>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:39>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:40>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:41>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:42>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:43>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:44>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:45>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:46>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:47>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:48>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:49>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:50>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:51>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:52>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:53>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:54>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:55>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:56>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:57>, "STEEL", 400, true);

// Регистрация новых рудных пылек
// Разновидность меди
// Медь (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallCopper>, "COPPER", 25, true);
// Медь (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyCopper>, "COPPER", 10, true);

// Разновидность олова
// Олово (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallTin>, "TIN", 25, true);
// Олово (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyTin>, "TIN", 10, true);

// Разновидность железа
// Чистое Кованое железо (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallWroughtIron>, "WROUGHT_IRON", 25, true);
// Чситое Кованое железо (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyWroughtIron>, "WROUGHT_IRON", 10, true);

// Железо (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallIron>, "WROUGHT_IRON", 25, true);
// Железо (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyIron>, "WROUGHT_IRON", 10, true);

// Разновидность висмута
// Висмут (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallBismuth>, "BISMUTH", 25, true);
// Висмут (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyBismuth>, "BISMUTH", 10, true);

// Разновидность золота
// Золото (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallGold>, "GOLD", 25, true);
// Золото (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyGold>, "GOLD", 10, true);

// Разновидность платины
// Платина (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallPlatinum>, "PLATINUM", 25, true);
// Платина (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyPlatinum>, "PLATINUM", 10, true);

// Разновидность никеля
// Никель (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallNickel>, "NICKEL", 25, true);
// Никель (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyNickel>, "NICKEL", 10, true);

// Разновидность цинка
// Цинк (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallZinc>, "ZINC", 25, true);
// Цинк (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyZinc>, "ZINC", 10, true);

// Разновидность свинца
// Свинец (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallLead>, "LEAD", 25, true);
// Свинец (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinyLead>, "LEAD", 10, true);

// Разновидность серебра
// Серебро (Маленькая кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustSmallSilver>, "SILVER", 25, true);
// Серебро (Крохотная кучка пыли)
ItemRegistry.registerItemMetal(<metaitem:dustTinySilver>, "SILVER", 10, true);


print("Initialized 'TFCRegistrationMaterials'");