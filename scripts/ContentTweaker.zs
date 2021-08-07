#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

//Аквамариновый песок - андезит
var aquamarine_andesite_sand = VanillaFactory.createBlock("aquamarine_andesite_sand", <blockmaterial:sand>);
aquamarine_andesite_sand.setBlockHardness(1.0);
aquamarine_andesite_sand.setBlockResistance(1.0);
aquamarine_andesite_sand.setBlockSoundType(<soundtype:sand>);
aquamarine_andesite_sand.register();

//Печной блок
var furnaceblock = VanillaFactory.createBlock("furnaceblock", <blockmaterial:rock>);
furnaceblock.setBlockHardness(1.0);
furnaceblock.setBlockResistance(1.0);
furnaceblock.setBlockSoundType(<soundtype:stone>);
furnaceblock.register();

//ПЛАНЕТЫ
//Марс
VanillaFactory.createItem("marsturf").register();
VanillaFactory.createItem("marssoil").register();
VanillaFactory.createItem("marsstone").register();
//Венера
VanillaFactory.createItem("venusturf").register();
VanillaFactory.createItem("venussoil").register();
//Меркурий
VanillaFactory.createItem("mercuryturf").register();
VanillaFactory.createItem("mercurysoil").register();
VanillaFactory.createItem("mercurystone").register();
//Астероиды
VanillaFactory.createItem("asteroidstone1").register();
VanillaFactory.createItem("asteroidstone2").register();
VanillaFactory.createItem("asteroidstone3").register();

//СПУТНИКИ
//Луна
VanillaFactory.createItem("moonturf").register();
VanillaFactory.createItem("moonsoil").register();
VanillaFactory.createItem("moonstone").register();
