#loader gregtech

#priority 1

# GregTechCustomMaterials

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.Material;
import mods.gregtech.ore.OrePrefix;
import mods.gregtech.StoneType;

print("Initializing 'GregTechCustomMaterials'...");


// Изменение цвета соленой воды в мире
<material:salt_water>.setMaterialRGB(0xFF1F5099);

// Добавление руды висмута
<material:bismuth>.addOre();

// Добавление пластины висмута
<material:bismuth>.addFlags("generate_plate");

// Добавление болтов и винтов из черной стали
<material:black_steel>.addFlags("generate_bolt_screw");

// Добавление руды свинца
<material:lead>.addOre();

// Добавление стержня для черной стали
<material:black_steel>.addFlags("generate_long_rod");

// Добавление руды светящегося камня
<material:glowstone>.addOre(1, 1, true);

// Добавление шестерен для некоторых материалов
<material:copper>.addFlags("generate_gear");
<material:tin>.addFlags("generate_gear");

// Регистрация новых типов камней для руд и пылек к ним
// Мрамор
StoneType.create(16, "tfc_marble", "oreMarble", <material:marble>, "tfc:raw/marble");

// Базальт
StoneType.create(17, "tfc_basalt", "oreBasalt", <material:basalt>, "tfc:raw/basalt");

// Андезит
StoneType.create(18, "tfc_andesite", "oreAndesite", <material:andesite>, "tfc:raw/andesite");

// Диорит
StoneType.create(19, "tfc_diorite", "oreDiorite", <material:diorite>, "tfc:raw/diorite");

// Гранит
StoneType.create(20, "tfc_granite", "oreGranite", <material:granite>, "tfc:raw/granite");

// Кварцит
StoneType.create(21, "tfc_quartzite", "oreQuartzite", <material:quartzite>, "tfc:raw/quartzite");

// Каменная соль
StoneType.create(22, "tfc_rocksalt", "oreRocksalt", <material:rock_salt>, "tfc:raw/rocksalt");

// Мел
MaterialBuilder(3101, "chalk").dust().color(0xA4A39F).components([<material:calcite> * 1]).build();
val oreChalk as OrePrefix = OrePrefix.registerOrePrefix("oreChalk", 1);
oreChalk.addSecondaryMaterial(<material:chalk>, 1);
StoneType.create(23, "tfc_chalk", "oreChalk", <material:chalk>, "tfc:raw/chalk");

// Кремнистый известняк
MaterialBuilder(3102, "chert").dust().color(0x7A6756).components([<material:silicon_dioxide> * 2, <material:calcite> * 1]).build();
val oreChert as OrePrefix = OrePrefix.registerOrePrefix("oreChert", 1);
oreChert.addSecondaryMaterial(<material:chert>, 1);
StoneType.create(24, "tfc_chert", "oreChert", <material:chert>, "tfc:raw/chert");

// Аргиллит
MaterialBuilder(3103, "claystone").dust().color(0xAF9377).components([<material:magnesium> * 2, <material:silicon_dioxide> * 3, <material:water> * 2]).build();
val oreClaystone as OrePrefix = OrePrefix.registerOrePrefix("oreClaystone", 1);
oreClaystone.addSecondaryMaterial(<material:claystone>, 1);
StoneType.create(25, "tfc_claystone", "oreClaystone", <material:claystone>, "tfc:raw/claystone");

// Конгломерат
MaterialBuilder(3104, "conglomerate").dust().color(0xA3977F).components([<material:silicon_dioxide> * 5, <material:calcite> * 3, <material:banded_iron> * 1]).build();
val oreConglomerate as OrePrefix = OrePrefix.registerOrePrefix("oreConglomerate", 1);
oreConglomerate.addSecondaryMaterial(<material:conglomerate>, 1);
StoneType.create(26, "tfc_conglomerate", "oreConglomerate", <material:conglomerate>, "tfc:raw/conglomerate");

// Дацит
MaterialBuilder(3105, "dacite").dust().color(0x979797).components([<material:silicon_dioxide> * 21, <material:bauxite> * 6, <material:banded_iron> * 1, <material:magnesia> * 1, <material:potash> * 1]).build();
val oreDacite as OrePrefix = OrePrefix.registerOrePrefix("oreDacite", 1);
oreDacite.addSecondaryMaterial(<material:dacite>, 1);
StoneType.create(27, "tfc_dacite", "oreDacite", <material:dacite>, "tfc:raw/dacite");

// Доломит
MaterialBuilder(3106, "dolomite").dust().color(0x515155).components([<material:calcite> * 1, <material:magnesite> * 1]).build();
val oreDolomite as OrePrefix = OrePrefix.registerOrePrefix("oreDolomite", 1);
oreDolomite.addSecondaryMaterial(<material:dolomite>, 1);
StoneType.create(28, "tfc_dolomite", "oreDolomite", <material:dolomite>, "tfc:raw/dolomite");

// Габбро
MaterialBuilder(3107, "gabbro").dust().color(0x7F8081).components([<material:silicon_dioxide> * 17, <material:bauxite> * 7, <material:banded_iron> * 3, <material:magnesia> * 3]).build();
val oreGabbro as OrePrefix = OrePrefix.registerOrePrefix("oreGabbro", 1);
oreGabbro.addSecondaryMaterial(<material:gabbro>, 1);
StoneType.create(29, "tfc_gabbro", "oreGabbro", <material:gabbro>, "tfc:raw/gabbro");

// Гнейс
MaterialBuilder(3108, "gneiss").dust().color(0x6A6D60).components([<material:silicon_dioxide> * 20, <material:bauxite> * 5, <material:sodium> * 2, <material:oxygen> * 1, <material:banded_iron> * 2]).build();
val oreGneiss as OrePrefix = OrePrefix.registerOrePrefix("oreGneiss", 1);
oreGneiss.addSecondaryMaterial(<material:gneiss>, 1);
StoneType.create(30, "tfc_gneiss", "oreGneiss", <material:gneiss>, "tfc:raw/gneiss");

// Известняк
MaterialBuilder(3109, "limestone").dust().color(0xA09885).components([<material:calcite> * 1]).build();
val oreLimestone as OrePrefix = OrePrefix.registerOrePrefix("oreLimestone", 1);
oreLimestone.addSecondaryMaterial(<material:limestone>, 1);
StoneType.create(31, "tfc_limestone", "oreLimestone", <material:limestone>, "tfc:raw/limestone");

// Филлит
MaterialBuilder(3110, "phyllite").dust().color(0x706B69).components([<material:silicon_dioxide> * 10, <material:biotite> * 3, <material:calcite> * 1, <material:magnesite> * 1]).build();
val orePhyllite as OrePrefix = OrePrefix.registerOrePrefix("orePhyllite", 1);
orePhyllite.addSecondaryMaterial(<material:phyllite>, 1);
StoneType.create(32, "tfc_phyllite", "orePhyllite", <material:phyllite>, "tfc:raw/phyllite");

// Риолит
MaterialBuilder(3111, "rhyolite").dust().color(0x726D69).components([<material:silicon_dioxide> * 22, <material:bauxite> * 5, <material:banded_iron> * 1, <material:magnesia> * 1, <material:potash> * 1]).build();
val oreRhyolite as OrePrefix = OrePrefix.registerOrePrefix("oreRhyolite", 1);
oreRhyolite.addSecondaryMaterial(<material:rhyolite>, 1);
StoneType.create(33, "tfc_rhyolite", "oreRhyolite", <material:rhyolite>, "tfc:raw/rhyolite");

// Аспидный сланец
MaterialBuilder(3112, "schist").dust().color(0x6E735C).components([<material:silicon_dioxide> * 16, <material:mica> * 12, <material:banded_iron> * 2]).build();
val oreSchist as OrePrefix = OrePrefix.registerOrePrefix("oreSchist", 1);
oreSchist.addSecondaryMaterial(<material:schist>, 1);
StoneType.create(34, "tfc_schist", "oreSchist", <material:schist>, "tfc:raw/schist");

// Сланец
MaterialBuilder(3113, "shale").dust().color(0x686567).components([<material:asbestos> * 21, <material:bauxite> * 8, <material:banded_iron> * 1]).build();
val oreShale as OrePrefix = OrePrefix.registerOrePrefix("oreShale", 1);
oreShale.addSecondaryMaterial(<material:shale>, 1);
StoneType.create(35, "tfc_shale", "oreShale", <material:shale>, "tfc:raw/shale");

// Шифер
MaterialBuilder(3114, "slate").dust().color(0x989287).components([<material:asbestos> * 17, <material:bauxite> * 6, <material:banded_iron> * 4, <material:calcium> * 1, <material:oxygen> * 1, <material:sodium_sulfide> * 1]).build();
val oreSlate as OrePrefix = OrePrefix.registerOrePrefix("oreSlate", 1);
oreSlate.addSecondaryMaterial(<material:slate>, 1);
StoneType.create(36, "tfc_slate", "oreSlate", <material:slate>, "tfc:raw/slate");

// Регистрация новых пылек для драгоценных типов камней для руд из ТФК
// Агат
MaterialBuilder(3115, "agate").dust().color(0xc45541).iconSet("shiny").components([<material:silicon_dioxide> * 1]).build();
val oreAgate as OrePrefix = OrePrefix.registerOrePrefix("oreAgate", 1);

// Берилл
MaterialBuilder(3116, "beryl").dust().color(0x99ccff).iconSet("shiny").components([<material:aluminium> * 2, <material:beryllium> * 3, <material:silicon> * 6, <material:oxygen> * 18]).build();

// Нефрит
MaterialBuilder(3117, "jade").dust().color(0x669966).iconSet("shiny").components([<material:calcium> * 2, <material:magnesium> * 5, <material:iron> * 5, <material:silicon> * 8, <material:oxygen> * 24, <material:hydrogen> * 2]).build();
val oreJade as OrePrefix = OrePrefix.registerOrePrefix("oreJade", 1);

// Яшма
MaterialBuilder(3118, "jasper").dust().color(0x9999ff).iconSet("shiny").components([<material:silicon_dioxide> * 8, <material:bauxite> * 1, <material:banded_iron> * 1]).build();
val oreJasper as OrePrefix = OrePrefix.registerOrePrefix("oreJasper", 1);

// Турмалин
MaterialBuilder(3119, "tourmaline").dust().color(0x99cccc).iconSet("shiny").components([<material:sodium> * 1, <material:spodumene> * 2, <material:aluminium> * 6, <material:boron> * 3, <material:oxygen> * 11, <material:hydrogen> * 4]).build();
val oreTourmaline as OrePrefix = OrePrefix.registerOrePrefix("oreTourmaline", 1);

// Каолинит
MaterialBuilder(3120, "kaolinite").dust().color(0xeeb9ad).components([<material:bauxite> * 2, <material:silicon_dioxide> * 2, <material:water> * 1]).build();
val oreKaolinite as OrePrefix = OrePrefix.registerOrePrefix("oreKaolinite", 1);


print("Initialized 'GregTechCustomMaterials'");











