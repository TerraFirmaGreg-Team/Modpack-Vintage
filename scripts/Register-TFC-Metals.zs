import crafttweaker.item.IItemStack;
import mods.terrafirmacraft.ItemRegistry;

//Регистрация металлов для сундуков.
ItemRegistry.registerItemMetal(<gregtech:machine:802>,"BRONZE",400,true);
ItemRegistry.registerItemMetal(<gregtech:machine:803>,"STEEL",400,true);

//Регистрация металлов для палок GT
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:14026>, "GOLD", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:14033>, "WROUGHT_IRON", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:14184>, "STEEL", 50, true);

//Регистрация металлов для пластин GregTech
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12094>, "BRASS", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12095>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12018>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12026>, "GOLD", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12035>, "LEAD", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12044>, "NICKEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12228>, "ROSE_GOLD", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12062>, "SILVER", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12071>, "TIN", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12036>, "LITHIUM", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12230>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12229>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12126>, "INVAR", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12184>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12140>, "PIG_IRON", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12033>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12227>, "STERLING_SILVER", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12079>, "ZINC", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12017>, "COBALT", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12003>, "ANTIMONY", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12112>, "ELECTRUM", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12237>, "RED_ALLOY", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12232>, "RED_STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12233>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:12231>, "BLACK_STEEL", 200, true);

//Регистрация металлов для двойных пластин GregTech
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13094>, "BRASS", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13095>, "BRONZE", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13018>, "COPPER", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13026>, "GOLD", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13035>, "LEAD", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13044>, "NICKEL", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13228>, "ROSE_GOLD", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13062>, "SILVER", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13071>, "TIN", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13036>, "LITHIUM", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13230>, "BISMUTH_BRONZE", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13229>, "BLACK_BRONZE", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13126>, "INVAR", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13184>, "STEEL", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13140>, "PIG_IRON", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13197>, "WROUGHT_IRON", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13033>, "WROUGHT_IRON", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13227>, "STERLING_SILVER", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13079>, "ZINC", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13017>, "COBALT", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13003>, "ANTIMONY", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13112>, "ELECTRUM", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13237>, "RED_ALLOY", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13232>, "RED_STEEL", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13233>, "BLUE_STEEL", 900, true);
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:13231>, "BLACK_STEEL", 900, true);

//Молотки GT в единицы металла TFC
/*
//Медный молот
ItemRegistry.registerItemMetal(<contenttweaker:copper_hammer>, "COPPER", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "copper", MaxDurability: 600}}), "COPPER", 50, true);
ItemRegistry.registerItemSize(<contenttweaker:copper_hammer>, "NORMAL", "MEDIUM");
//Висмутный молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5230>, "BISMUTH_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "bismuth_bronze"}}), "BISMUTH_BRONZE", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5230>, "NORMAL", "MEDIUM");
//Черная бронза молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5229>, "BLACK_BRONZE", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "black_bronze"}}), "BLACK_BRONZE", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5229>, "NORMAL", "MEDIUM");
//Бронзовый молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5095>, "BRONZE", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "bronze"}}), "BRONZE", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5095>, "NORMAL", "MEDIUM");
//Железный молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5033>, "WROUGHT_IRON", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "iron"}}), "WROUGHT_IRON", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5033>, "NORMAL", "MEDIUM");
//Стальной молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5184>, "STEEL", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "steel"}}), "STEEL", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5184>, "NORMAL", "MEDIUM");
//Черная сталь молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5231>, "BLACK_STEEL", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "black_steel"}}), "BLACK_STEEL", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5231>, "NORMAL", "MEDIUM");
//Синяя сталь молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5233>, "BLUE_STEEL", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "blue_steel"}}), "BLUE_STEEL", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5233>, "NORMAL", "MEDIUM");
//Красная сталь молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5232>, "RED_STEEL", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "red_steel"}}), "RED_STEEL", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5232>, "NORMAL", "MEDIUM");
//Серебро стирлинга молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5227>, "STERLING_SILVER", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "sterling_silver"}}), "STERLING_SILVER", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5227>, "NORMAL", "MEDIUM");
//Кобальтовый молот
ItemRegistry.registerItemMetal(<gregtech:meta_item_2:5017>, "COBALT", 100, true);
ItemRegistry.registerItemMetal(<gregtech:meta_tool:6>.withTag({"GT.ToolStats": {Material: "cobalt"}}), "COBALT", 50, true);
ItemRegistry.registerItemSize(<gregtech:meta_item_2:5017>, "NORMAL", "MEDIUM");
*/

/////////////////////////////////////////Вариации Меди
//Медь грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3018>, "COPPER", 80, true);
//Регистрация кусочка меди 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2018>, "COPPER", 100, true);
//Регистрация кусочка меди 25units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1018>, "COPPER", 25, true);
//Регистрация кусочка меди 10units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:18>, "COPPER", 10, true);
//Борнит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3360>, "COPPER", 40, true);
//Регистрация кусочка борнита 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2360>, "COPPER", 50, true);
//Тетраэдрит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3188>, "COPPER", 30, true);
//Регистрация кусочка тетраэдрита 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2188>, "COPPER", 40, true);
//Куприт грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3359>, "COPPER", 60, true);
//Регистрация кусочка уцприта 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2359>, "COPPER", 70, true);
//Тенорит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3358>, "COPPER", 40, true);
//Регистрация кусочка тенорита 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2358>, "COPPER", 50, true);
//Халькопирит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3100>, "COPPER", 20, true);
//Регистрация кусочка халькопирита 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2100>, "COPPER", 30, true);
//Халькозин грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3361>, "COPPER", 60, true);
//Регистрация кусочка халькозина 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2361>, "COPPER", 70, true);
//Малахит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3282>, "COPPER", 10, true);
//Регистрация кусочка малахита 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2282>, "COPPER", 30, true);
//Энаргит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3362>, "COPPER", 15, true);
//Регистрация кусочка энаргита 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2362>, "COPPER", 35, true);

/////////////////////////////////////////Вариации Олова
//Олово грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3071>, "TIN", 80, true);
//Регистрация кусочка олово 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2071>, "TIN", 100, true);
//Регистрация кусочка олово 25units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1071>, "TIN", 25, true);
//Регистрация кусочка олово 10units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:71>, "TIN", 10, true);
//Каситерит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3098>, "TIN", 30, true);
//Регистрация кусочка касситерита 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2098>, "TIN", 40, true);
//Каситеритный песок грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3099>, "TIN", 25, true);
//Регистрация кусочка касситеритного песка 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2099>, "TIN", 35, true);

/////////////////////////////////////////Вариации Железа
//Железо грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3033>, "WROUGHT_IRON", 80, false);
//Регистрация кусочка железа 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2033>, "WROUGHT_IRON", 100, false);
//Регистрация кусочка железа 25units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1033>, "WROUGHT_IRON", 25, false);
//Регистрация кусочка железа 10units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:33>, "WROUGHT_IRON", 10, false);
//Пирит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3148>, "WROUGHT_IRON", 15, false);
//Пирит 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2148>, "WROUGHT_IRON", 15, false);
//Магнетит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3131>, "WROUGHT_IRON", 30, false);
//Магнетит 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2131>, "WROUGHT_IRON", 40, false);
//Желтый лимонит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3199>, "WROUGHT_IRON", 20, false);
//Желтый лимонит 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2199>, "WROUGHT_IRON", 30, false);
//Коричневый лимонит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3096>, "WROUGHT_IRON", 20, false);
//Коричневый лимонит 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2096>, "WROUGHT_IRON", 30, false);
//Рельсовое(кованое) железо грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3090>, "WROUGHT_IRON", 30, false);
//Рельсовое(кованое) железо 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2090>, "WROUGHT_IRON", 40, false);

/////////////////////////////////////////Вариации Никеля
//Никель грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3044>, "NICKEL", 80, true);
//Никель 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2044>, "NICKEL", 100, true);
//Гарниерит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3115>, "NICKEL", 40, true);
//Гарниерит 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2115>, "NICKEL", 50, true);
//Пентландит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3271>, "NICKEL", 30, true);
//Пентландит 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2271>, "NICKEL", 40, true);

/////////////////////////////////////////Вариации Кобальта
//Кобальт грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3017>, "COBALT", 80, true);
//Кобальт 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2017>, "COBALT", 100, true);
//Кобальтит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3107>, "COBALT", 70, true);
//Кобальтит 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2107>, "COBALT", 90, true);

/////////////////////////////////////////Вариации Цинка
//Цинк грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3079>, "ZINC", 80, true);
//Цинк 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2079>, "ZINC", 100, true);
//Сфалерит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3182>, "ZINC", 50, true);
//Сфалерит 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2182>, "ZINC", 60, true);

/////////////////////////////////////////Вариации Свинца
//Свинец грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3035>, "LEAD", 80, true);
//Свинец 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2035>, "LEAD", 100, true);
//Галенит грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3114>, "LEAD", 20, true);
//Галенит 100units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2114>, "LEAD", 40, true);

/////////////////////////////////////////Вариации золота
//Золото грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3026>, "GOLD", 80, true);
//Золото 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2026>, "GOLD", 100, true);
//Золото 25units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1026>, "GOLD", 25, true);
//Золото 10units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:26>, "GOLD", 10, true);

/////////////////////////////////////////Вариации висмута
//Висмут грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3008>, "Bismuth", 80, true);
//Висмут 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2008>, "Bismuth", 100, true);
//Висмут 25units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1008>, "Bismuth", 25, true);
//Висмут 10units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:8>, "Bismuth", 10, true);

/////////////////////////////////////////Вариации серебра
//Висмут грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3062>, "SILVER", 80, true);
//Висмут 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2008>, "SILVER", 100, true);
//Висмут 25units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1062>, "SILVER", 25, true);
//Висмут 10units
ItemRegistry.registerItemMetal(<gregtech:meta_item_1:62>, "SILVER", 10, true);

/////////////////////////////////////////Вариации алюминия
//Алюминий грязная кучка
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3001>, "Aluminium", 80, true);
//Алюминий 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2001>, "Aluminium", 100, true);
//Алюминий 25units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1001>, "Aluminium", 25, true);
//Алюминийя 10units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:1>, "Aluminium", 10, true);
//Боксит грязная кучка
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:3001>, "Aluminium", 40, true);
//Боксит 100units
//ItemRegistry.registerItemMetal(<gregtech:meta_item_1:2001>, "Aluminium", 50, true);
