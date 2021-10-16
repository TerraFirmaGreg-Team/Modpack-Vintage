import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.terrafirmacraft.ItemRegistry;

// - Регистрация брони
ItemRegistry.registerArmor(<minecraft:leather_helmet>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_chestplate>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_leggings>, 3.0, 6.0, 4.5);
ItemRegistry.registerArmor(<minecraft:leather_boots>, 3.0, 6.0, 4.5);

// - Регистрация топлива

ItemRegistry.registerFuel(<ore:fuelCoke>, 3200, 1450, true, true);
ItemRegistry.registerFuel(<ore:gemCoal>, 1600, 1400, true, true);
//ItemRegistry.registerFuel(<ore:gemLignite>, 1200, 1300, true, true);
ItemRegistry.registerFuel(<tfc:peat>, 3200, 500, true, false);

// - Регистрация инструментов
<ore:damageTypeSlashing>.addAll(<ore:craftingToolSword>);

// - Регистрация металлов
//Регистрация металлов для баков.
ItemRegistry.registerItemMetal(<gregtech:machine:1596>, "BRONZE", 400, true);
ItemRegistry.registerItemMetal(<gregtech:machine:1597>, "STEEL", 400, true);

//Регистрация металлов для палок GT
ItemRegistry.registerItemMetal(<gregtech:meta_stick:41>, "GOLD", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_stick:209>, "WROUGHT_IRON", 50, true);
ItemRegistry.registerItemMetal(<gregtech:meta_stick:198>, "STEEL", 50, true);

//Регистрация металлов для пластин GregTech
ItemRegistry.registerItemMetal(<gregtech:meta_plate:133>, "BRASS", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:134>, "BRONZE", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:25>, "COPPER", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:41>, "GOLD", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:55>, "LEAD", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:69>, "NICKEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:302>, "ROSE_GOLD", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:100>, "SILVER", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:112>, "TIN", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:304>, "BISMUTH_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:303>, "BLACK_BRONZE", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:198>, "STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:173>, "PIG_IRON", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:209>, "WROUGHT_IRON", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:301>, "STERLING_SILVER", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:122>, "ZINC", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:306>, "RED_STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:307>, "BLUE_STEEL", 200, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate:305>, "BLACK_STEEL", 200, true);

//Регистрация металлов для двойных пластин GregTech
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:259>, "BRASS", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:260>, "BRONZE", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:55>, "LEAD", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:301>, "ROSE_GOLD", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:303>, "BISMUTH_BRONZE", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:302>, "BLACK_BRONZE", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:324>, "STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:299>, "PIG_IRON", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:335>, "WROUGHT_IRON", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:300>, "STERLING_SILVER", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:2510>, "RED_STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:2511>, "BLUE_STEEL", 400, true);
ItemRegistry.registerItemMetal(<gregtech:meta_plate_double:2011>, "BLACK_STEEL", 400, true);

// --- Вариации Меди
//Медь --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:25>, "COPPER", 80, true);
//Медь --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:25>, "COPPER", 25, true);
//Медь --- Маленькая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:25>, "COPPER", 10, true);
//Борнит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:222>, "COPPER", 40, true);
//Борнит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:222>, "COPPER", 50, true);
//Тетраэдрит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:201>, "COPPER", 30, true);
//Тетраэдрит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:201>, "COPPER", 40, true);
//Куприт --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:221>, "COPPER", 60, true);
//Куприт --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:221>, "COPPER", 70, true);
//Тенорит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:220>, "COPPER", 40, true);
//Тенорит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:220>, "COPPER", 50, true);
//Халькопирит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:139>, "COPPER", 20, true);
//Халькопирит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:139>, "COPPER", 30, true);
//Халькозин --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:223>, "COPPER", 60, true);
//Халькозин --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:223>, "COPPER", 70, true);
//Малахит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:346>, "COPPER", 10, true);
//Малахит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:346>, "COPPER", 30, true);
//Энаргит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:224>, "COPPER", 15, true);
//Энаргит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:224>, "COPPER", 35, true);

// --- Вариации Олова
//Олово --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:112>, "TIN", 80, true);
//Олово --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:112>, "TIN", 25, true);
//Олово --- Маленькая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:112>, "TIN", 10, true);
//Касситерит --- Грязная кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:137>, "TIN", 145, true);
//Касситерит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:137>, "TIN", 200, true);
//Касситерит --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:137>, "TIN", 45, true);
//Касситерит --- Маленькая кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:137>, "TIN", 15, true);
//Каситеритный песок --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:138>, "TIN", 25, true);
//Касситеритный песок --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:138>, "TIN", 35, true);

// --- Вариации Железа
//Железо --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:51>, "WROUGHT_IRON", 80, false);
//Железо --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:51>, "WROUGHT_IRON", 100, false);
//Железо --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:51>, "WROUGHT_IRON", 25, false);
//Железо --- Маленькая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:51>, "WROUGHT_IRON", 10, false);
//Пирит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:180>, "WROUGHT_IRON", 15, false);
//Пирит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:180>, "WROUGHT_IRON", 15, false);
//Магнетит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:166>, "WROUGHT_IRON", 30, false);
//Магнетит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:166>, "WROUGHT_IRON", 40, false);
//Желтый лимонит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:211>, "WROUGHT_IRON", 20, false);
//Желтый лимонит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:211>, "WROUGHT_IRON", 30, false);
//Коричневый лимонит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:135>, "WROUGHT_IRON", 20, false);
//Коричневый лимонит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:135>, "WROUGHT_IRON", 30, false);
//Бандитовое железо --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:129>, "WROUGHT_IRON", 30, false);
//Бандитовое железо --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:129>, "WROUGHT_IRON", 40, false);

// --- Вариации Никеля
//Никель --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:69>, "NICKEL", 80, true);
//Никель --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:69>, "NICKEL", 25, true);
//Никель --- Маленькая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:69>, "NICKEL", 10, true);
//Гарниерит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:154>, "NICKEL", 40, true);
//Гарниерит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:154>, "NICKEL", 50, true);
//Пентландит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:335>, "NICKEL", 30, true);
//Пентландит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:335>, "NICKEL", 40, true);

// --- Вариации Цинка
//Цинк --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:122>, "ZINC", 80, true);
//Цинк --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:122>, "ZINC", 25, true);
//Цинк --- Маленькая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:122>, "ZINC", 10, true);
//Сфалерит --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:196>, "ZINC", 50, true);
//Сфалерит --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:196>, "ZINC", 60, true);

// --- Вариации Свинца
//Свинец --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:55>, "LEAD", 80, true);
//Свинец --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:55>, "LEAD", 25, true);
//Свинец --- Маленькая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:55>, "LEAD", 10, true);
//Галена --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:153>, "LEAD", 20, true);
//Галена --- Большая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust:153>, "LEAD", 40, true);

// --- Вариации золота
//Золото --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:41>, "GOLD", 80, true);
//Золото --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:41>, "GOLD", 25, true);
//Золото --- Маленькая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:41>, "GOLD", 10, true);

// --- Вариации висмута
//Висмут --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:11>, "Bismuth", 80, true);
//Висмут --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:11>, "Bismuth", 25, true);
//Висмут --- Маленькая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:11>, "Bismuth", 10, true);

// --- Вариации серебра
//Серебро --- Грязная Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_impure:100>, "SILVER", 80, true);
//Серебро --- Средняя Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_small:100>, "SILVER", 25, true);
//Серебро --- Маленькая Кучка
ItemRegistry.registerItemMetal(<gregtech:meta_dust_tiny:100>, "SILVER", 10, true);

//Регистрация предметов - Вес + Размер
// Ingots
ItemRegistry.registerItemSize(<gregtech:meta_ingot:*>, "LARGE", "LIGHT");

// - Регистрация блоков руд - Вес + Размер
var GregtechOres as IItemStack[] = [
	    <gregtech:ore_almandine_0>,
        <gregtech:ore_aluminium_0>,
        //<gregtech:ore_alunite_0>,
        <gregtech:ore_amethyst_0>,
        //<gregtech:ore_andradite_0>,
        <gregtech:ore_apatite_0>,
        //<gregtech:ore_asbestos_0>,
        <gregtech:ore_banded_iron_0>,
        <gregtech:ore_barite_0>,
        //<gregtech:ore_basaltic_mineral_sand_0>,
        <gregtech:ore_bastnasite_0>,
        <gregtech:ore_bauxite_0>,
        <gregtech:ore_bentonite_0>,
        <gregtech:ore_beryllium_0>,
        <gregtech:ore_bismuth_0>,
        <gregtech:ore_blue_topaz_0>,
        <gregtech:ore_bornite_0>,
        <gregtech:ore_brown_limonite_0>,
        <gregtech:ore_calcite_0>,
        <gregtech:ore_cassiterite_0>,
        <gregtech:ore_cassiterite_sand_0>,
        <gregtech:ore_certus_quartz_0>,
        <gregtech:ore_chalcocite_0>,
        <gregtech:ore_chalcopyrite_0>,
        <gregtech:ore_chromite_0>,
        <gregtech:ore_cinnabar_0>,
        <gregtech:ore_coal_0>,
        <gregtech:ore_cobalt_0>,
        <gregtech:ore_cobaltite_0>,
        <gregtech:ore_cooperite_0>,
        <gregtech:ore_copper_0>,
        <gregtech:ore_cuprite_0>,
        <gregtech:ore_diamond_0>,
        //<gregtech:ore_diatomite_0>,
        //<gregtech:ore_dolomite_0>,
        <gregtech:ore_emerald_0>,
        <gregtech:ore_enargite_0>,
        //<gregtech:ore_enriched_naquadric_compound_0>,
        //<gregtech:ore_fullers_earth_0>,
        <gregtech:ore_galena_0>,
        <gregtech:ore_garnet_red_0>,
        //<gregtech:ore_garnet_sand_0>,
        <gregtech:ore_garnet_yellow_0>,
        <gregtech:ore_garnierite_0>,
        <gregtech:ore_glauconite_0>,
        //<gregtech:ore_glauconite_sand_0>,
        <gregtech:ore_gold_0>,
        //<gregtech:ore_granitic_mineral_sand_0>,
        <gregtech:ore_graphite_0>,
        <gregtech:ore_green_sapphire_0>,
        <gregtech:ore_grossular_0>,
        //<gregtech:ore_gypsum_0>,
        <gregtech:ore_ilmenite_0>,
        <gregtech:ore_iridium_0>,
        //<gregtech:ore_iridium_metal_residue_0>,
        <gregtech:ore_iron_0>,
        <gregtech:ore_jasper_0>,
        //<gregtech:ore_kaolinite_0>,
        //<gregtech:ore_kyanite_0>,
        <gregtech:ore_lapis_0>,
        <gregtech:ore_lazurite_0>,
        <gregtech:ore_lead_0>,
        <gregtech:ore_lepidolite_0>,
        ////<gregtech:ore_lignite_0>,
        <gregtech:ore_lithium_0>,
        <gregtech:ore_magnesite_0>,
        <gregtech:ore_magnetite_0>,
        <gregtech:ore_malachite_0>,
        //<gregtech:ore_mica_0>,
        <gregtech:ore_molybdenite_0>,
        <gregtech:ore_molybdenum_0>,
        <gregtech:ore_monazite_0>,
        <gregtech:ore_naquadah_0>,
        <gregtech:ore_naquadah_enriched_0>,
        //<gregtech:ore_naquadriatic_compound_0>,
        //<gregtech:ore_naquadric_compound_0>,
        <gregtech:ore_neodymium_0>,
        <gregtech:ore_nether_quartz_0>,
        <gregtech:ore_nickel_0>,
        <gregtech:ore_niobium_0>,
        //<gregtech:ore_niter_0>,
        <gregtech:ore_oilsands_0>,
        <gregtech:ore_olivine_0>,
        <gregtech:ore_opal_0>,
        <gregtech:ore_osmium_0>,
        <gregtech:ore_palladium_0>,
        //<gregtech:ore_palladium_metallic_powder_0>,
        <gregtech:ore_pentlandite_0>,
        <gregtech:ore_phosphate_0>,
        //<gregtech:ore_phosphor_0>,
        <gregtech:ore_pitchblende_0>,
        <gregtech:ore_platinum_0>,
        //<gregtech:ore_platinum_metallic_powder_0>,
        //<gregtech:ore_pollucite_0>,
        <gregtech:ore_powellite_0>,
        //<gregtech:ore_prasiolite_0>,
        //<gregtech:ore_precious_metal_0>,
        <gregtech:ore_pyrite_0>,
        <gregtech:ore_pyrolusite_0>,
        <gregtech:ore_pyrope_0>,
        <gregtech:ore_quartzite_0>,
        //<gregtech:ore_rarest_metal_residue_0>,
        <gregtech:ore_redstone_0>,
        <gregtech:ore_rock_salt_0>,
        <gregtech:ore_ruby_0>,
        <gregtech:ore_rutile_0>,
        <gregtech:ore_salt_0>,
        <gregtech:ore_saltpeter_0>,
        <gregtech:ore_sapphire_0>,
        <gregtech:ore_scheelite_0>,
        <gregtech:ore_silver_0>,
        <gregtech:ore_soapstone_0>,
        <gregtech:ore_sodalite_0>,
        <gregtech:ore_spessartine_0>,
        <gregtech:ore_sphalerite_0>,
        <gregtech:ore_spodumene_0>,
        <gregtech:ore_stibnite_0>,
        <gregtech:ore_sulfur_0>,
        <gregtech:ore_talc_0>,
        <gregtech:ore_tantalite_0>,
        <gregtech:ore_tanzanite_0>,
        //<gregtech:ore_tellurium_0>,
        <gregtech:ore_tennantite_0>,
        <gregtech:ore_tenorite_0>,
        <gregtech:ore_tetrahedrite_0>,
        <gregtech:ore_thorium_0>,
        <gregtech:ore_tin_0>,
        <gregtech:ore_topaz_0>,
        //<gregtech:ore_trona_0>,
        <gregtech:ore_tungstate_0>,
        <gregtech:ore_uraninite_0>,
        <gregtech:ore_uranium235_0>,
        <gregtech:ore_uranium_0>,
        //<gregtech:ore_uranium_radioactive_0>,
        <gregtech:ore_vanadium_magnetite_0>,
        //<gregtech:ore_vermiculite_0>,
        <gregtech:ore_vinteum_0>,
        //<gregtech:ore_wollastonite_0>,
        <gregtech:ore_wulfenite_0>,
        <gregtech:ore_yellow_limonite_0>,
        //<gregtech:ore_zeolite_0>,
        <gregtech:ore_zinc_0>
        //<gregtech:ore_zirkelite_0>,
];

for item in GregtechOres {
	ItemRegistry.registerItemSize(item, "HUGE", "MEDIUM");
	}