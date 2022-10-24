# Immersive Engineering Excavator

import mods.immersiveengineering.Excavator;

print("Initializing 'Immersive Engineering Excavator'...");


// Удаление ненужных месторождений
Excavator.removeMineral("Lapis");
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Nickel Ore");
Excavator.removeMineral("Platinum");
Excavator.removeMineral("Pyrite");
Excavator.removeMineral("Iron");
Excavator.removeMineral("Copper");
Excavator.removeMineral("Copper Ore");
Excavator.removeMineral("Cinnabar");
Excavator.removeMineral("Magnetite");
Excavator.removeMineral("Gold");
Excavator.removeMineral("Bauxite");
Excavator.removeMineral("Bauxite Ore");
Excavator.removeMineral("Coal");
Excavator.removeMineral("Galena");
Excavator.removeMineral("Silver");
Excavator.removeMineral("Silver Ore");
Excavator.removeMineral("Lead");
Excavator.removeMineral("Lead Ore");
Excavator.removeMineral("Uranium");
Excavator.removeMineral("Uranium Ore");
Excavator.removeMineral("Silt");
Excavator.removeMineral("Quartzite");
Excavator.removeMineral("Tin");
Excavator.removeMineral("Cassiterite");

// Боксит
Excavator.addMineral("Боксит (Обычное месторождение)", 12, 0.005, ["oreBauxite", "oreIlmenite", "oreAluminium"], [0.45, 0.45, 0.10]);

// Магнетит
Excavator.addMineral("Магнетит (Обычное месторождение)", 24, 0.005, ["oreMagnetite", "oreVanadiumMagnetite", "oreChromite", "oreGold"], [0.45, 0.30, 0.15, 0.10]);

// Наквада
Excavator.addMineral("Наквада (Обычное месторождение)", 6, 0.005, ["oreNaquadah", "orePlutonium"], [0.90, 0.10]);

// Уран
Excavator.addMineral("Уран (Обычное месторождение)", 8, 0.005, ["orePitchblende", "oreUraninite"], [0.75, 0.25]);

// Шеелит
Excavator.addMineral("Шеелит (Обычное месторождение)", 6, 0.005, ["oreScheelite", "oreTungstate", "oreLithium"], [0.75, 0.15, 0.10]);

// Шелдонит
Excavator.addMineral("Шелдонит (Обычное месторождение)", 8, 0.005, ["oreBornite", "oreCooperite", "orePlatinum", "orePalladium"], [0.45, 0.30, 0.15, 0.10]);

// Кованое железо
Excavator.addMineral("Кованое железо (Обычное месторождение)", 16, 0.005, ["oreBrownLimonite", "oreYellowLimonite", "oreBandedIron", "oreGold"], [0.45, 0.30, 0.15, 0.10]);

// Бериллий
Excavator.addMineral("Бериллий (Обычное месторождение)", 8, 0.005, ["oreBeryllium", "oreEmerald", "oreThorium"], [0.75, 0.15, 0.10]);

// Истинный кварц
Excavator.addMineral("Истинный кварц (Обычное месторождение)", 12, 0.005, ["oreQuartzite", "oreCertusQuartz", "oreBarite"], [0.45, 0.45, 0.10]);

// Марганец
Excavator.addMineral("Марганец (Обычное месторождение)", 6, 0.005, ["oreGrossular", "orePyrolusite", "orePyrochlore", "oreTantalite"], [0.45, 0.30, 0.15, 0.10]);

// Молибден
Excavator.addMineral("Молибден (Обычное месторождение)", 4, 0.005, ["oreWulfenite", "oreMolybdenite", "oreMolybdenum", "orePowellite"], [0.45, 0.30, 0.15, 0.10]);

// Монацит
Excavator.addMineral("Монацит (Обычное месторождение)", 8, 0.005, ["oreBastnasite", "oreMonazite", "oreNeodymium"], [0.75, 0.15, 0.10]);

// Незер кварц
Excavator.addMineral("Незер кварц (Обычное месторождение)", 24, 0.005, ["oreNetherQuartz", "oreQuartzite"], [0.90, 0.10]);

// Редстоун
Excavator.addMineral("Редстоун (Обычное месторождение)", 18, 0.005, ["oreRedstone", "oreRuby", "oreCinnabar"], [0.75, 0.15, 0.10]);

// Селитра
Excavator.addMineral("Селитра (Обычное месторождение)", 12, 0.005, ["oreSaltpeter", "oreDiatomite", "oreElectrotine", "oreAlunite"], [0.45, 0.30, 0.15, 0.10]);

// Сера
Excavator.addMineral("Сера (Обычное месторождение)", 30, 0.005, ["oreSulfur", "orePyrite", "oreSphalerite"], [0.75, 0.15, 0.10]);

// Тетраэдрит
Excavator.addMineral("Тетраэдрит (Обычное месторождение)", 20, 0.005, ["oreTetrahedrite", "oreCopper", "oreStibnite"], [0.75, 0.15, 0.10]);

// Топаз
Excavator.addMineral("Топаз (Обычное месторождение)", 12, 0.005, ["oreBlueTopaz", "oreTopaz", "oreChalcocite", "oreBornite"], [0.45, 0.30, 0.15, 0.10]);

// Апатит
Excavator.addMineral("Апатит (Обычное месторождение)", 12, 0.005, ["oreApatite", "oreTricalciumPhosphate", "orePyrochlore"], [0.75, 0.15, 0.10]);

// Касситерит
Excavator.addMineral("Касситерит (Обычное месторождение)", 24, 0.005, ["oreTin", "oreCassiterite"], [0.85, 0.15]);

// Уголь
Excavator.addMineral("Уголь (Обычное месторождение)", 24, 0.005, ["oreCoal"], [1.00]);

// Реальгар
Excavator.addMineral("Реальгар (Обычное месторождение)", 16, 0.005, ["oreChalcopyrite", "oreZeolite", "oreCassiterite", "oreRealgar"], [0.45, 0.30, 0.15, 0.10]);

// Медь
Excavator.addMineral("Медь (Обычное месторождение)", 24, 0.005, ["oreChalcopyrite", "oreIron", "orePyrite", "oreCopper"], [0.45, 0.30, 0.15, 0.10]);

// Алмаз
Excavator.addMineral("Алмаз (Обычное месторождение)", 12, 0.005, ["oreGraphite", "oreDiamond", "oreCoal"], [0.75, 0.15, 0.10]);

// Галена
Excavator.addMineral("Галена (Обычное месторождение)", 12, 0.005, ["oreGalena", "oreSilver", "oreLead"], [0.75, 0.15, 0.10]);

// Касситеритовый песок
Excavator.addMineral("Касситеритовый песок (Обычное месторождение)", 24, 0.005, ["oreCassiteriteSand", "oreGarnetSand", "oreAsbestos", "oreDiatomite"], [0.45, 0.30, 0.15, 0.10]);

// Гранат
Excavator.addMineral("Гранат (Обычное месторождение)", 12, 0.005, ["oreGarnetRed", "oreGarnetYellow", "oreAmethyst", "oreOpal"], [0.45, 0.30, 0.15, 0.10]);

// Железо
Excavator.addMineral("Железо (Обычное месторождение)", 36, 0.005, ["oreBrownLimonite", "oreYellowLimonite", "oreBandedIron", "oreMalachite"], [0.45, 0.30, 0.15, 0.10]);

// Лазурит
Excavator.addMineral("Лазурит (Обычное месторождение)", 12, 0.005, ["oreLazurite", "oreSodalite", "oreLapis", "oreCalcite"], [0.45, 0.30, 0.15, 0.10]);

// Тальк
Excavator.addMineral("Тальк (Обычное месторождение)", 12, 0.005, ["<ore:oreSoapstone>", "<ore:oreTalc>", "<ore:oreGlauconiteSand>", "<ore:orePentlandite>"], [0.45, 0.30, 0.15, 0.10]);

// Слюда
Excavator.addMineral("Слюда (Обычное месторождение)", 6, 0.005, ["oreKyanite", "oreMica", "oreBauxite", "orePollucite"], [0.45, 0.30, 0.15, 0.10]);

// Минеральный песок
Excavator.addMineral("Минеральный песок (Обычное месторождение)", 24, 0.005, ["oreBasalticMineralSand", "oreGraniticMineralSand", "oreFullersEarth", "oreGypsum"], [0.45, 0.30, 0.15, 0.10]);

// Никель
Excavator.addMineral("Никель (Обычное месторождение)", 12, 0.005, ["oreGarnierite", "oreNickel", "oreCobaltite", "orePentlandite"], [0.45, 0.30, 0.15, 0.10]);

// Нефтеносный песок
Excavator.addMineral("Нефтеносный песок (Обычное месторождение)", 12, 0.005, ["oreOilsands"], [1.00]);

// Оливин
Excavator.addMineral("Оливин (Обычное месторождение)", 6, 0.005, ["oreBentonite", "oreMagnesite", "oreOlivine", "oreGlauconiteSand"], [0.45, 0.30, 0.15, 0.10]);

// Соль
Excavator.addMineral("Соль (Обычное месторождение)", 16, 0.005, ["oreRockSalt", "oreSalt", "oreLepidolite", "oreSpodumene"], [0.45, 0.30, 0.15, 0.10]);

// Сапфир
Excavator.addMineral("Сапфир (Обычное месторождение)", 18, 0.005, ["oreAlmandine", "orePyrope", "oreSapphire", "oreGreenSapphire"], [0.45, 0.30, 0.15, 0.10]);

// Висмут
Excavator.addMineral("Висмут (Обычное месторождение)", 6, 0.005, ["oreBismuth", "oreSulfur", "oreLead"], [0.75, 0.15, 0.10]);

// Светящиеся камень
Excavator.addMineral("Светящиеся камень (Обычное месторождение)", 18, 0.005, ["oreGlowstone", "oreTricalciumPhosphate", "oreGlowstone", "oreRedstone"], [0.45, 0.30, 0.15, 0.10]);


print("Initialized 'Immersive Engineering Excavator'");