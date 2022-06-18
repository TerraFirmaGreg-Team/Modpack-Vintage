# Changelog
## Version R3.3.5b-HotFix - 06/18/2022
#### [Lite, Huge]
### Modpack fixes
* AEAdditions changed back to ExtraCells, when loading the old world, on the server, causes a crash, reported to the developer
* Removed texture pack TFC Lite, saved RAM, but slowed down the launch of the game (you can optionally install)
* Fixed a bug in AE2 recipes

## Version 3.3.5 - 18.06.2022
#### [Lite, Huge]
### Modpack Fixes
* Added RFTools to the Lite version of the modpack.
* Pam's HarvestCraft has been replaced with the elaborate GregTech Food Option.
* Rewritten GregTech Food Option recipes 
(not all because there are too many of them, there is no need to report errors in the recipes of this mod, we already know about them).
* Little Tiles recipes have been rewritten.
* Fixed display error in TheOneProbe when hovering over items.
* Now recipes that used wrought iron or bare iron are merged, it makes sense that only those that can logically be interchangeable are made in both the workbench and GT machines.
* Disabled drop from mobs from the TombStone mod (in HEI some items of this mod are still displayed, for some reason HEI cannot hide them, so this cannot be fixed yet).
* Fixed display in HEI that 100mb of metal could be poured into the form of TFC or its addon, now 144 is displayed there.
* Fixed a bug where it was impossible to scrape the ring and gear parts for primitive gear crafting.
* TFC spear headband now has 144mb as intended.
* Fixed some metal values for TFC-Tech items.
* Fixed the metal value of the metal grate.
* Removed diamond and gold horse armor.
* Completely rewritten script Vanilla.zs.
* Hidden and removed HammerCore mod items.
* Hidden and removed items from the ForgeMicroblocksCBE mod.
* Fixed missing image when loading the game.
* Ore pieces now have 36 metal instead of 25.
* Complicated compass recipe.
* Disabled item color display in HEI.
* Changed bucket system. Previously, you could not make a bucket from ordinary iron, but why? That's what the TFC developers wanted. But we have our own modpack and our own recipes, from now on you can make a bucket that can carry any liquid except lava, for lava you still need a blue steel bucket that will not melt from lava.
* Fixed installation of a spout for latex on the Rubber Fig tree.
* Fixed all recipes related to wood (including fixing the recipe for chests made of planks and lumber), and added more recipes for TFC wooden items in assembler.
* All ores can now be processed into Dust, Horse Grindstone and Quern.
* Fixed funnel texture
* Changed the font.
* Adjustments to the Russian translation of GregTech.
* Fixed incredibly stupid recipes for wooden items from FirmaLife.
* All boat recipes have been complicated to look realistic.
* Added all types of wood for sawing in ChopperBlock from HorsePower.
* Fixed annoying non-crash error messages
* Increased the search distance for the item and liquid on the button from HEI
* Fixed ICE texture when activated.
* Now coking coal cannot be used in the TFC forge, but only in the TFC blast furnace, it also has an increased temperature to which it can heat the metal (1510).
* Crafting Aunis transport rings has become cheaper, commensurate with the benefits.
* You can craft PowerSuite armor, modules will be available in the next update.
* Craft ender tank and backpack has become more expensive.
* Correction of the description of quests.
* Russian language GTFO(part).
* Disabled ore generation in RFtools.
### Updating mods
* Fluid Craft for AE2
* Xaero's Minimap
* Xaeros World Map
* Fancy menu
* TFG mod
* LoliASM
* HadEnoughItems
### New mods
* Item Physics Lite
* RF Tools
* RFTools Control [Unofficial Maintance]
* mcjtylib
* GregTech Food Option
* Little Tiles
* AEAdditions
* DefaultOptions
### Removing Mods
* Chisel And Bits
* Unlimited Chiselworks (Reason: does not have TFC support).
* Unlimited Chiselworkstfc (Reason: although it adds partial support for TFC, but not full, so a little later we will present our own mod that will work with TFC, TFC-Florae and other addons).
* Supermartijn642configlib
* Supermartijn642corelib
* Movingelevators (Reason: there is an alternative in RFTools)
* ExtraCells (Reason: the mod has been replaced with Additions, the same fork, but updated, if you have cells above 64K (ExtraCells), I recommend pulling all of them before updating)
### Downgraded version
* Custom Skin Loader(up to Stable)
#### [Huge]
### Removing Mods
* Pam's HarvestCraft (The addon developer abandoned the mod, and we don't need dead weight).
* TFC + Pam's HarvestCraft addon.

## Version 3.3.4 - 09.06.2022
#### [Lite, Huge]
### Modpack Fixes
* Menu fixes.
* Correction of the bucket recipe with salt.
* Remelting of pieces of iron has been fixed.
* Correction of the white screen at the first start and entry into the world.
* The Phosphor version has been downgraded.
* Localization fixes.
* Quest fixes.
* Config correction
### Updating mods
* * Custom Skin Loader
### New mods
* * Phosphor
### Removing Mods
* Hesperus
* Performant

## Version 3.3.3 - 08.06.2022
#### [Lite, Huge]
### Modpack Fixes
* Fixed the translation of GregTech
* Fixed quests
* Added an Optifine installation button to the menu
* Fixed Gemstone File recipes
* Fixed recipes for double ingots
* Fixed iron bloom recipes
### Updating mods
* TFG-mod
* Supermartijn642configlib

## Version 3.3.2 - 06/07/2022
#### [Lite, Huge]
### Modpack Fixes
* Fixed a bug with chicken
* Temporarily disabled Powersuite Armor crafting
* Fixed a bug with displaying blocks in the world and the world itself
### Updating mods
* TFG-mod
### Removing Mods
* Removed Oxygen-players-list

## Version R3.3.1
#### [Lite, Huge]

### Modpack fixes
* Tweaked the alignment of GC energy with GT.
* Changed ME Drive model.
* Changed gui ae2wtlib .
* Changed the texture of the Tool belt.
* Changed Better p2p texture.
* Implemented sharpening GT items.
* Fixed liquid in firmalife, tfctech, tfcthings forms.
* Fixed tfcthings config.
* Optimization of the crafttweaker code by disabling recipes in TFC itself using our mod.
* Dust iron again has 144mb of metal.
* Iron spit now has 144mb of iron in itself and in its copies (up to 4 pieces), crafting is the same, in 144mb ​​processed.
* Complicated and fixed the Infinity Water Cover recipe.
* Fixed the description of the Forge Hammer quest (Getting lower output for plates is the norm, as this is the only way to automate the production of plates to LV).
* Fixed work of double plates in the anvil.
* Fixed possible crash due to AstralSorcery.
* Added a new multi-block, the Star Forge.
* Rewrote Aunis mod recipes (stargate), and Modular Powersuits (to be completed)
* Applied optimization of TFCFlorae models
* Changed the texture of pieces of ores
* Changed TFC door models
* Changed the textures of some logs and chests to fix a display bug
* Changed liquid terminal recipe
* Improved LuV quest line (thanks to TheGalax)
* Fixed sound for TFC armor
* Greenhouse recipes are slightly more expensive
* The description of the Forge Hammer quest has been corrected (Getting a lower output for plates is the norm, because this is the only way to automate the production of plates up to LV).
* Fixed the operation of double plates in the anvil.
* Fixed possible crash due to AstralSorcery.
* Added a new multiblock, Star Forge.
* Recipes of the Aunis (Stargate) mod and ModularPowersuits (will be rewritten)
* Optimization of TFCFlorae models has been applied.
* The texture of ore pieces has been changed.
* TFC door models have been changed.
* Changed the textures of some logs and chests to eliminate the display bug.
* The liquid terminal recipe has been changed.
* The LuV quest line has been finalized (thanks to TheGalax).
* Fixed sound for TFC armor.
* Recipes in the greenhouse have become slightly more expensive.
* Now all TFC addons now have a 144mb metal system.
* The recipe generation system for oreChunk has been rewritten and optimized.
* Removed the recipe for washing coal and diamonds.
* Implemented a system of dropping pieces of crystals (diamonds, emeralds), well, as in the usual TFK, only now there are no options.
* Coal in the form of Chunk can now be used as fuel in TFC.
* Some ExtraPlanets changes.
* Improved the menu on Huge (now shows that it is impossible to connect to the server of.server) and Lite.
* Added airs for planets that have them, as well as recipes for recycling and creation.
* Now the TFC-Tech liquid jug can be made from TFC-Florae jugs.
* Fixed the recipe for saw headbands (Thanks FDAapproved).
* Fixed a duplicate of diamonds from the enchant table (Thanks to FDAapproved).
* There are a lot of significant optimizations of TFG-Mod.
* Fixed salt recipe when drying (Thanks to FDAapproved).
* All TombStone items are hidden (Thanks to FDAapproved).
* Added descriptions of some more items that cannot be recycled in GT machines (Thanks to FDAapproved).
* Fixed tool belt recipes (Thanks to FDAapproved).
* Fixed bow recipe (Thanks to FDAapproved).
* Fixed seed oil recipes (Thanks to FDAapproved).
* Fixed recipe for inverted lamps from ProjectRed (Thanks AtelierAmber).
* Fixed dimension names in the GT config.
* Maybe something else that we forgot.
### Update mods
* Fluid Craft for AE2
* Corail Tombstone
* AE2 Unofficial Extended Life
* GregTech CE: Unofficial
* Betterp2p-extended_life
* Xaeros Minimap
* Xaeros World Map
* Sledgehammer
### Removing mods
* Phosphorus
* Portality
### New mods
* Hesperus
* Performant
* Aunis
* Modular Powersuits
* Numina
#### [Huge]

* Downgraded version of TFC Compatible
* Downgraded version of Rocksalt

## Version R3.3.0 - 26.05.2021
#### [Lite, Huge]

* Graphite powder is now visible in HEI.
* Ores, when dug up, drop pieces of ore that can be smelted into TFC metal, as well as processed in GT machines.
* Now you need 144mb ​​for a TFC ingot, as in GT, in connection with this, the amount of metal in the plates and others has been changed in accordance with this.
* Removed the broken recipe (Double Ingot -> Plate), now this recipe is replaced with (Ingot -> Plate) to match GT and eradicate billions of dups, bugs and inconsistencies.
* loading screen and new main menu + new textures and more.
* Localization for everything that is in TFG-Mod.
* A lot of changes related to tools, the list is very long, but in general, all recipes for tools have been fixed and the casting of some of them has been screwed more correctly, as happened with knives (by the way, they now have their own headbands).
* GT scythe now works correctly with TFC grass and foliage.
* Added craft solar panels, for all shooting ranges
* Reworked part of space age quests
* Reworked part of AE2 quests
* Changed crafts for the Fluid Crafting mod
* Changed craft Dense Energy Cell and Energy Cell from ae2
* Changed the crafting of the advanced and fluid storage hull from Extra Cells 2
* Fixed some translation errors
* Added craft for Nether Star
  * Mods updated:
  * Appliedenergistics2
  * loliasm
  * HadEnoughItems
  * Xaeros_Minimap
  * XaerosWorldMap
  * Gregtech
* Removed mods:
  * Volumetricflask
  * CustomMainMenu
  * CustomBackgrounds
* mods:
  * concrete
  * fancy menu
  * tfctowerheat

## Version R3.2.6 - 14.05.2022
#### [Lite, Huge]

* Updated AE2EL.
* Recipes for ores in the horse threshing machine have been returned.

## Version R3.2.5 - 13.05.2022
#### [Lite, Huge]

* Fixed ore processing.
* Fixed graphite dust recipe from TFC.
* Removed Steve's Carts (in the last update).
* Removed RebornCore (in the last update).
* Removed JEI-Utilities (in the last update).
* Updated textures of all planets in Galaxy Map.
* Updated textures from GT.

## Version R3.2.4 - 12.05.2022
#### [Lite, Huge]

* Added Oxygen: PlayerLists
* Added FindMe.
* Updated MovingElevators.
* Fixes for BetterFoliage and also for shaders (thanks to BayerHeroine).
* Fixed all dups of TFC metal by lowering the amount of metal when smelted into liquid.
* Fixed wood shape recipe from GT.
* Moved some recipes to other files.
* Fixed concrete crafting in TFC barrel.
* Now you can get latex from even more trees.
* Fixed coal drop from GT ore.
* Added many, many translations for mods (thanks to ABBADON).
* Now the GT miner does not generate vanilla cobblestone at the place where he dug the ore, but generates basalt cobblestone from TFC.
* Added black and red granite from GT to -ore- generation.
* Added ore generation files in Hell and End.
* Removed basalt and marble from GT (blocks).
* 95% refactoring of all scripts and moving the removal from JEI to a separate file.
* Updated LoliASM.
* Disabled beautiful sky and clouds from AsmodeusCore to support shaders.
* Reduced loot from urns from Florae.
* TFG*Mod files moved to client folder again.
* Fixed a bug with the sky from TFG-Mod.
* Updated GTCEu.
* Updated Gregality Multiblocks.
* Galacticraft merged into one mod.
* Other fixes we forgot about.
* Fixed recipe for gear pieces that wasted a whole chisel.
* Removed hiding for some items from TFC-Tech.
* Hidden and removed useless recipes in the drafting machine from TFC-Tech.
* Changed fireclay recipe (thanks to BayerHeroine).
* And something else that we forgot.
#### [Huge]

* Fixed AstralSorcery config.
* Fixed recipe with crystal and workbench from AstralSorcery (presumably).

## Version R3.2.3d - 05.05.2022
#### [Lite, Huge]

* ImmersiveRailroading was removed due to the lags and unloaded chunks that appeared because of it, as well as the colossal use of RAM (That's who knew that this piece of you know what is so not optimized).
* Added Steve's Carts 2 and rewritten recipes for it.
* Mouse Tweaks has been replaced with the Mouse Tweaks

## Version from GTA developers

* Urns with loot from Florae are included back and now drop excellent materials.
* A bunch of localization in Russian from Xikaro.
* Fixed metal dupe.
* Fixed multiple ore generation files on planets.
* The file with the names of the planets and their measurements has been completely sorted out.
* BetterP2P has been returned.
* Updated HEI.
* Updated LoliASM.
* Updated XaeroMinimap.

## Version R3.2.2 - 27.04.2022
#### [Lite, Huge]

* Removed duplicate recipes between TFC in the anvil.
* Added the latest ProjectRed recipes.
* Fixed a bug when it was impossible to put containers in the cellar.
* Fixed all recipes using tools.
* Fixed the recipe for magnetizing steel and other sticks, due to the issuance of TFC metal units to them (GTCEu bug).
* GT shovels can now create paths in TFC grass.
* Removed TFC shovels.
* GT hoes can now farm in TFC land.
* Removed TFC hoes.
* Returned CustomLoadingScreen, updated to 1.5.7, returned scripts, corrected the name of the logo file.
* Removed recipes for crafting into a block from chisel.
* Added localization to TFC Wrought Iron Ingot that it is unfinished.
* Fixed the display of recipes in JEI related to the forms from TFC, which were displayed slightly incorrectly.
* Updated LoliASM.

## Version R3.2.1 - 24.04.2022
#### [Lite, Huge]

* Recipes for the ProjectRed mod.
* Fixed crash when chopping a tree from Florae with a GTCEu axe.
* Fixed a bug where it was possible to put the instrument in the cabinet from the cellars and get a neutron instrument at the output.
* Removed some textures from TFG-Mod to reduce RAM usage.
* HEI

## Version reduced to 4.17.1

* Updated LoliASM.

## Version R3.2a - 23.04.2022
#### [Huge]

* Removed JEI.

## Version R3.2 - 23.04.2022
#### [Lite, Huge]

* mods:
  * GregicProbe.
  * Puddles.
  * Nether Portal Fix.
  * Htmltech.
  * ImmersiveRailroading.
* Updated mods:
  * loliasm.
  * Xaeros Minimap.
  * Xaeros World Map.
  * custom skin loader.
  * ae2-extended life.
  * gregtech.
  * devtech.
  * mechtech.
  * multiblocktweaker.
  * GregalityMultiblocks.
  * Sledgehammer.
* Removed mods:
  * Betterp2p.
  * Oxygen-daily-rewards.
* Quests:
  * Correction of quests of the first era, taking into account the addition of new types of clay.
  * Added a description for Steam age to describe how the machines work.
  * Completed work on MV, HV, EV.
  * Changed quests for liquids, they may have to be re-fulfilled.
* Fixes:
* Fixed all recipes between TFC and GT, we are talking about the remaining recipes that were shelved, but it's time to fix them.
* Removed a huge number of unused and not possible recipes from mods (but, which is logical not all, write about them in the discord channel).
* Now TFG uses its own mod, not the patched TFC.
  * The mod has all the same features that were added to the TFC

## Version (connection with GT)

* Fixed a bug when it was possible to put items on V in someone else's private.
* Added Puddles.
  * Fixed puddles from the Puddles mod appearing when the current average temperature is < -2.
  * Now you can drink from puddles, according to a more adequate algorithm.
* Fixed a bug when it was possible to put non-food in the refrigerator and get an item with crooked nbt tags.
* Included 3 more clay versions in TFC-Florae. They have also been rewritten to produce a GT ingot as output.
* In Hell, instead of regular gravel, now basalt gravel.
  * Hell is turned on, now you can go there and, let's say, get something.
* Achievement button replaced with quest button.
* Disabled OreDict bus
* Fixed a bug when coal did not drop from StoneType coal, but an ore block fell.
* Added texture gradient for some ores
* Fixed GT knife recipes
* Fixed a bug when boards of a different type were learned from a tree in a sawmill
* Added OreDict for loom
* Removed OreDict from TFC saws
* Fixed sealed cable recipes from GC
* Added translation for gcym, gregtech since it has not yet entered the official mod
* Added three-dimensional models for rails
* Carried out a revision in mod configs
* Fixed OreDict in all recipes where all types of processors and batteries were used.
* Fixed many bugs in TFC-Tech recipes
* Fixed OreDict for TFC and TFC-Tech
* Moved Arrays.zs to Arrays/Arrays.zs
* Removed TFC-Tech long rods and fixed names in Arrays.zs
* Correction of vanilla recipes, or rather the removal of a large number of unused recipes.
* Removed some recipes from TFC.
* Fixed all RockBreaker recipes.
* Fixed GT upgrade textures.
* Changed the textures of the planets on the GC map.
* And a lot more, which of course we forgot, since the update was being prepared for a month.
* Localized the dupe problem, it was fixed by disabling a couple of functions of the loliasm mod.
* Fixed an issue where it was impossible to make a cut on a tree so that latex would ooze out of it with a knife. Also fixed the execution of this action with a pickaxe (generally strange how this could happen).
* Fixed a bug due to which the command for generating trees from TFC was not registered.
* Added metal units for fine and medium dusts for materials that have GT machine refining but don't have metal units, as if they start having them, their GT refining will break. Therefore, such a loophole will help in the initial stages of the game, before GT is fixed.
* Added painting and crafting recipes for horizontal glass panels in GT machines.
* Corrections of quests and textures, localization.
* All resources (translations and textures) have been moved to our mod.

## Version R3.1.5 - 19.03.2021
#### [Lite, Huge]

* Fixed Fluix Dust recipe.

## Version R3.1.4 - 18.03.2021
#### [Lite, Huge]

* Corrected liquid and ordinary veins on the Moon:
  * Stone-ore veins:
    * Fixed a bug (again) when ore spawned above the surface.
  * Liquid veins:
    * A liquid vein with Helium-3 has been added to the Moon, judging by a bunch of documentation from NASA, there is a lot of Helium-3 there.
    * A liquid vein with fresh water has been added to the Moon (that is, from ice), it is indicated in some documents, I also did it in the modpack.
* Adjusted liquid and conventional veins on Mars:
  * Stone-ore veins:
    * Fixed a bug (again) when ore spawned above the surface.
  * Liquid veins:
    * A vein of medium oil has been added to Mars.
    * I lived on Mars with fresh water in a not bad quantity, but less than oil.
* Corrected liquid and conventional veins on Venus:
  * Stone-ore veins:
    * Fixed a bug (again) when ore spawned above the surface.
  * Liquid veins:
    * A vein with Lava has been added to Venus.
    * A vein with Carbon was added to Venus.
    * A vein with Oxygen was added to Venus.
* Adjusted liquid and conventional veins on Mercury:
  * Stone-ore veins:
    * Fixed a bug (again) when ore spawned above the surface.
  * Liquid veins:
    * A vein with Oxygen was added to Mercury.
    * A vein with Sodium was added to Mercury.
    * A vein with Hydrogen was added to Mercury.
    * A Helium vein was added to Mercury.
* Optimized GT greenhouse recipes.
* Fixed a bug that could potentially kill the world.
* Optimized the selection of items by the Charset mod.
* Removed Oxygen configs from the client as unnecessary.
* Configs have been cleared of unused configs.
* Updated CellarsAddon.
* Updated HadEnoughItems.
* Updated AE2EL.
* Removed Easy Breading TFC.
* Added ToolBelt.
* Added AE*Net*Vis-Tool.
* Added BetterP2P.
* Added Catwalks.
* Added VolumetricFlasks..
* Recipes have been rewritten for the added mods.
* All AE2 recipes have been rewritten.
* More stylization of the script code.
* Added and redesigned a large pack of quests.
* Added nether star dust recipe.
* Fixed cursed GUI texture in anvil.
* Added new textures for AE2WTLib.
* Added a fertilizer recipe from TFC.
* In addition to a custom greenhouse, a sawmill has been added, allowing you to get billions of wood.
* Fixed knife recipes. Now from the casting blade from TFC. You can make an adequate knife from GT.
#### [Huge]

* Added ThaumicJEI (the craft of the traveler's boots was, just not displayed).
* Added vanilla block recipes (for the first time, for Thaumcraft, since most likely you will have to rewrite the mod code in order for everything to work with TFC).
* Fixed a bug when the gutter could not be put on Rubber Fig.
* Fixed a lot of crafting related to thaumium ingots, plates and the like.

## Version R3.1.3 - 07.03.2022
#### [Lite, Huge]

* Added a feature -> GT ores take the texture of the stone in which they were generated, now it looks beautiful.
* Added ores to the Moon, Mars, Venus, Mercury.
* Fixed heights of ore generation on Moon.
* Fixed crafting of blue and red steel in GT cars.
* Inventory Tweaks configs are configured,
* Better Foliage and TFC compatibility is fixed.
* Dynamic Surrounds configs are configured.
* Lots of fixes in quests.
* The mode of a small amount of RAM for JEI is enabled. because of this, there is no indexing of items, which reduces the use of RAM and increases the speed of starting the build.
* Fixed the crafting of footpaths with a wire from GC.
* Added a greenhouse similar to GT with recipes for TFC (to replace Forestry farms).
* Minor fixes in the Arrays script.
* Removed Forestry and its add-ons (Why? Because 85% of the content from the mod does not work with TFC, we send the mod for recycling and in the future we will return it with adequate mechanics, but for now we are removing it).
* Added a recipe for hot water in the heater.
* Added a fertilizer recipe in the packer.
* The moon/Sun is now round.
* Added part of the connecting textures for multiblocks.
* The Drying Rack has been removed, and some of its recipes have been transferred to the Drying Mat from FirmaLife.
* And a lot more, but I forgot, and Xikaro forgot too.

## Version R3.1.2 - 22.02.2022
#### [Lite, Huge]

* Recipes have been created for rockets in the assembly line.
* Created/rewritten recipes for rocket components in assembler.
* The space age in quests has been moved after-iv shooting range.
* Fixed a bug when it was possible to craft a tfc hammer from copper.
* Added ore veins to -> Asteroids, Mars, Moon, Venus, Mercury.
* Fixed recipes for liquid terminal and AE2 chest.
* Changed the crafting of the book and hook, now any threads are used there.
* Fixed/changed crafting
  * Steam Export/Import Bus
  * Liquid terminal and AE2 chest.
  * Flaxy pearls
  * Annihilation Core/Formation Core
  * ME Fluid Formation Plane/ME Fluid Annihilation Plane
  * Quantum Ring
  * Quantum Bridge Camera
  * Parts of the portal from the mod Portality
* Added and adjusted translation from 2nd to 4th eras
* Added textures for ore
* Fixed a bug with transfers to tfc days -> hours
* Changed FTB/GT/AE2 textures
* Added a new texture for the anvil gui

## Version R3.1.1v2 - 13.02.2022
#### [Lite, Huge]

* Fixed CurseForge mod duplicate bug.

## Version R3.1.1 - 13.02.2022
#### [Lite, Huge]

* Fixed crafting blocks from some materials, mainly those that are duplicated between TFC and GT.
* Fixed some recipe errors in AE2 related to the non-existence of some items in the crafting grid due to a missing ore dictionary.
* Fixed a bug when TFC axe could not cut down the whole tree at once.
* Added crafting to primitive bricks.
* Fixed a bug when the foliage was not lush in TFC trees.
* Modified the TFC GUI to match the GT hammer in the slot.
* Added recipes for fresh and hot water, as well as their coloring.
* Removed recipes for charcoal in the stove, from the foresty tree.
* TFC has been updated to the latest
* Updated Devtech.
* Fixed bugs in tool-related quests.
* The recipe for silicon tools from GT is disabled again.
* Tombstone has been updated.
* Updated AE2.
* Updated XaeroMinimap/Worldmap.
* Updated Craft Tweaker.

## Version R3.1 - 09.02.2022
#### [Lite, Huge]

* Fixed energy consumption/duration when crafting brick blocks in assembler.
* Added a bunch of recipes to cutting_saw -> Logs to lumber (with a huge bonus to the exit of the tree).
* Added a bunch of recipes in assembler related to crafting different items from wood. For example, boards in steps/doors/buttons, etc.
* Renamed the OreDictionaryArrays script -> Arrays.
* Fixed the number of metal units in double plates that were written in the TFC script.
* Garbage and any commented-out code has been removed.
* Disabled the Puddles mod for a while (you can still use it by enabling it in mods).
* Disabled recipes for TFC swords, now they are replaced with GT swords (including forging).
* Disabled recipes for TFC picks, now they are replaced with GT picks (including forging).
* Disabled recipes for TFC axes, now they are replaced with GT axes (including forging).
* Strange concrete and cement recipes are disabled.
* Fixed the recipe for cement in a barrel.
* Added recipes for TFC items (stone, I have already written about wooden ones above) in GT cars, there are too many recipes, you can look in JEI (for example: steps, brick blocks).
* Since friendship actually won in the survey on the weight of items, I made changes by half, now only Heavy and Very Heavy have a limit on the number in the stack, while others have a default limit of 64.
* Fixed crushing of vanilla meat into meat dust, now tfc meat is used there.
* Fixed crash when chopping a TFC tree with an axe.
* Made a recipe for Ground Soybeans through millstones.
* Multiple recipe fixes using vanilla items.
* Other changes I forgot about.
* Fixed elevator screen recipe.
* Added Ambient Sounds mod.
* Added Sound Filters mod.
* DynamicSurr settings have been reset...
* Fixed a bug in quests with liquids when a quest was counted without the right liquid.
#### [Huge]

* Fixed the Astral Sorcery curve script.

## Version R3.0.10 - 06.02.2022
#### [Lite, Huge]

* Fixed iron dust processing in TFC blast furnace.
* Fixed forging of plates, double plates.
* Fixed some problems with ore dictionaries.
#### [Huge]

* Fixed crash due to incorrect mod

## Version R3.0.9 - 04.02.2022

* Fixed and lightened elevator crafting.
* Recipes have been added to Forge Hammer, for ingots made of high-carbon steels of all kinds, as well as for ingots of forged iron and cast iron to make less use of the TFC anvil. Available after receiving the steam hammer.
* Updated GT.
* Updated AE2TE.
* Updated GregicalityMultiblocks.
* Updated bansoukou.
* Updated CustomSkinLoader.
* Added the BetterChat mod.
* Fixed conditions for forging an ingot of forged iron from an unfinished ingot.
* Fixed and facilitated the crafting of the architectural workbench, now an iron blade is used for the place of the diamond blade.
* Lasso now has crafting now not only from jute, but also from leather, the recipe in assembler has also been updated.
* Fixed sticky resin recipe again.
* Fixed recipes related to sugar cane and sugar.
* Fixed recipes for hammers from TFCThings.
* The tag recipe has been finalized, now it can be made with any threads.
* Fixed the recipe for factory blocks from chisel.
* Fixed crash when connecting induction crucible from TFCTech to a power source from GT.
* Added a crafting recipe in assembler for TFC stone brick
* Added recipe for Quartz Fiber from AE2
* Added some changes to the textures of quests and GT
* The inventory sorter mod has been replaced with InvTweaks, since items disappeared when sorting in the inventory of GT cars.
* Now ingots, gears, plates can be stacked on the ground, in the likeness of TFC ingots, which can be stacked in heaps in the world.
* Fixed the recipe for bread with honey from Forestry.
* Finally hidden unnecessary blocks from Forestry, by the type of trees and other stuff that you will never need.
* Removed the code related to the processing of rocks from other planets. A more adequate (COOL) implementation of this will be in R3.1
* Fixed bread crafting, now you can use liquid from a wooden bucket when crafting dough.
* To fix all the dupes, the double ingot/plate/anvil and some other items now have 100/100/700 units of metal respectively.
* Some welding recipes can now be performed in alloy_smelter to get even further away from TFC forging.
* And other changes that I certainly forgot about.

## Version - R3.0.8
#### [Lite, Huge]

* Fixed many recipes in the build related to changing the id of GT items. Now they use unique names that are static.
* Added fishing -> added a fishing rod recipe + fixed the loss of vanilla fish, you can catch the TFC

## Version of the fish, fry and eat, it will be useful in winter

* AE2 has been replaced by AE2 from Prototype Troussers, finally!
#### [Huge]

* Fixed a strange loot in astral sorcery dungeon.

Important information: If the modpack does not start, delete the TerraFirmaCraft-MC1.12.2-1.7.21.179-patched(Just don't delete it in the name of which there is TFG*144) file in the mods folder, or TerraFirmaCraft*MC1.12.2*1.7.21.179. Because the CURSEFORGE does not know how to delete a file with a different name when changing the main mod. It is important. If nothing works for you anyway, delete the modpack completely and download it again.

## Version - R3.0.6
#### [Lite, Huge]

* Release 3.0.6 on Huge (not stable, report bugs) and Normal versions.
* Fixed recipe with climate station 5 lvl.

## Version - R3.0.5
#### [Lite, Huge]

* Fixed incorrect forging level of some materials.
* Removed the mod for voice chat, tk on 1.12.2, apparently people did not know how to make mods.
* Replaced the mod for graves so that they do not break when blocks collapse.
* Updated Xaeros Minimap/WorldMap, particuleculling mods.
* Updated and added new quests, as well as some localization to them.
* Fixed stone-types for lead spawn.
* Other changes I forgot about-_-.

## Version - R3.0.4
#### [Lite, Huge]
Fixed low FPS bug
Fixed high RAM consumption

## Version - R3.0.1
#### [Lite, Huge]
fix crash with Cellar addon
changed DiscordRP status

## Version - R3.0.0
#### [Lite, Huge]
There are too many changes to describe them here. Therefore, you can read them in the channel in my discord channel releases-ru

## Version - R2.9.1
#### [Lite, Huge]

* Farm blocks from Forestry are now crafted in Carpenter.
* Updated Xaeros Minimap / WorldMap.
* Updated SneedASM.
* Updated SledgeHammer,
* Updated ParticleCulling,
* Updated GregTech.
* Updated Greyness.
* Updated CraftTweaker,
* Updated Athenaeum.
* Fixed a recipe with a clay plate / vessel, when, when crafting, she / he was not picked up / picked up.

## Version - R2.9
#### [Lite, Huge]

* Meteoric iron can now be recycled into something useful.
* Fixed a bug when two doors dropped out of CellarsAddon when breaking a door.
* Emeralds have been unified.
* The salt is unified.
* The saltpeter has been unified.
* Fixed packer and unpucker recipe related to diamonds and their unification.
* Updated HorsePower mod (fixed bugs with recipes).

## Version - R2.8.9
#### [Lite, Huge]

* Unification diamonds. TFC diamonds are now used everywhere.
* Removed the deletion of recipes for Frost and Temperature resistant hulls, since in the new

## Version of Gregicality, new hulls are no longer needed

* Fixed various scripting issues to make everything work properly with Gregicality 0.23.
* Updated Gregicality (List of changes here: <https://www.curseforge.com/minecraft/mc*mods/gregicality/files/3449401>)
* Updated other mods.
* Removed bee recipes from PamsHarvestCraft.
* Fixed one of the AstralSorcery recipes.
* Fixed a bug when structures from AstralSorcery appeared crooked, on the same block, etc.
* Removed TFC-Paths mod, as not everyone liked it.
* Other fixes I forgot about.

## Version - R2.8.8
#### [Lite, Huge]

* Added Forestry quests.
* Added Gendustry quests.
* Fixed Forestry recipes(which you can see on Git).
* The possibility of obtaining vanilla bread has been removed.
* You can now evaporate only 1 piece of salt, not 3.
* The system for obtaining dist has been changed. water, it is made easier and more understandable to the user.
* XaerosWorldMap was returned.
* Fixed getting a sheaf of hay and coloring it into vanilla wheat.
* Changed the crafting of bread with honey(Forestry), and also added the nutritional value of tfc for it.
* Added a recipe for many things from GS.
* Removed useless items from GS.
* Updated GC recipes.
* GC food (canned food) now has the correct nutritional values.
* And OTHER fixes :D.

## Version R2.8.7v2 - 24.08.2021

Link: <https://www.curseforge.com/minecraft/mc-mods/xaeros-world-map/files/3405513>

* Removed XaerosWorldMap, because of it, it was impossible to download the modpack. As soon as the author of the mod fixes it, I will add it back. In the meantime, you can download the mod from here and put it in the Mods folder.
* The Normal and Huge versions were already released with this fix.

## Version - R2.8.7
#### [Lite, Huge]

* Correction of a million recipes related to Forestry.
* The progression with Forestry is complicated(because it was possible to get high-end materials from bees too quickly).
* Optimization and logical layout of scripts.
* All arrays for deleting items are now private and are not accessible from other scripts.
* Added mod ModTweaker, allowed tweaking Forestry machines.
* The carpenter from Forestry has been returned, now some recipes are made in it.
* A fairly large number of items from Forestry are hidden.
* Now you can use Beeswax from Forestry in FirmaLife recipes.
* The main menu has been changed, not completely yet, but it will be finalized in the future.
* Other fixes that you can look at on the git.

## Version - R2.8.6
#### [Lite, Huge]

* Fixed the crafting of the grill.
* Fixed crafting of iron bars.
* Fixed the crafting of the iron hatch.
* Fixed the vanilla oven replacement curve.
* Removed useless code related to the painting of cement, which can not be obtained in a vanilla way.
* TFC tools have been returned(Until GT developers add support).
* Created quests hinting at getting the first latex.
* Created quests hinting at the original receipt of coal.
* Created quests hinting at getting glass.
* The salt can now be dried. Just not in the Drying Rack, but in the Leaf Mat.
* GT tools have been replaced with TFC in quests.
* The name of the minecraft window has been changed.
* Work has begun on changing the main menu(The view is not finished, it will still change in the future).
* Probably broke something else :D
* There is now a changed status in the discord.

## Version - R2.8.5
#### [Lite, Huge]

* Replaced in most Iron recipes with WroughtIron.
* The recipe for drying salt has been removed(it does not work due to the curve of the Drying Rack mod).
* Configs were cleaned from duplicates and other garbage.
* Fixed the recipe for Coke Oven.
* Fixed the zero digging speed of the copper pickaxe.
* Updated CraftTweaker.
* Removed InGameInfoXML(useless, after updating XaeroMinimap).
* Other fixes that I forgot about, you can see them on the git.

## Version - R2.8.4
#### [Lite, Huge]

* Changed the crafting of GC and GS cylinders.
* Changed the crafting of the diamond sharpening tool.
* Fixed and added some quests.
* Changed the craft of the spacesuit.
* Removed old iron hammer recipes from default iron.

## Version - R2.8.3
#### [Lite, Huge]

* Multiple quest fixes.
* The AE2 quest line has been completely redesigned.
* Fixed crafting of forged hammer from GT
* A small fix of items from GS(Not necessary ones are hidden).
* Fix tools, now GT tools are in greater priority.
* It is now impossible to wash the ore in ordinary minecraft water, only in salt or fresh.
* Now you can wash diamond ore, but with a very small output, only for the first stages of the game.
* Fixed the name of the quest line with the periodic table.

## Version - R2.8.2
#### [Lite, Huge]

* Fixed the crafting of cheese from FirmaLife.
* Fixed the interface recipe from AE2.
* Lignite coal is now dropped when digging up lignite coal GT. But when digging with a hammer, dust still falls.
* Bituminous coal from TFC is now dropped when digging up ordinary GT coal. But when digging with a hammer, dust still falls.

## Version - R2.8.1
#### [Lite, Huge]

* Fixed most of the recipes of Wrought Iron.
* Fixed FirmaLife recipes.
* Fixed Cheese from FirmaLife.
* Fixed paper crafting.
* Fixing the strength of tools from GT(Not completely, we are waiting for the fix of GT tools from the developers, <https://github.com/GregTechCE/GregTech/pull/1706>).
* Correction of the AE2 recipe for charged quartz.
* Other fixes that I forgot about.
* Added smooth scrolling of lists.
* Added InGameInfoXML.
* Added Elevators.

## Version - R2.7.5
#### [Lite, Huge]

* Fix crusible craft.
* Fix bronze craft, SHIT AGAIN.

## Version - R2.7.4
#### [Lite, Huge]

* TFC update(Many bugfixes and optimization improvements).
* Improved quartz_vein (now appears in the Sedimentary stone type).
* Improvement of yellow_garnet(increased the chance of spawn by 3 times more).
* Deleted oregen on the planets(Will be added in the next update).
* Other changes.

## Version - R2.7.3
#### [Lite, Huge]

* Forestry improvements.
* Gendustry improvements.
* BiggerPacketsPls(Fix server NBT error)
* other tweaks

## Version - R2.7.2
#### [Lite, Huge]

* Fixes for some quests in the GC branch.
* Quest fixes in the Primitive branch.
* Fixed bronze crafting.
* Fixes of GC recipes.

## Version - R2.7.1hotfix
#### [Lite, Huge]

* fix all old bugs(recipes and etc)

## Version - R2.7.1
#### [Lite, Huge]

* all bugs with worldgen fixed, install from curseforge launcher.

## Version - R2.7
#### [Lite, Huge]

* COMPLETE deleting of WarpDrive. To be honest, I thought the mod would be quite interesting and, as the authors of the mod say, compatible with GC, but as we have already understood, all this does not really converge with reality. Therefore, it is better to build on a clean GC than with crutches from WarpDrive.
* Fixed a lot of GC recipes.
* Added AEAdditions (Extracells2fork).
* Rewritten AEAdditions recipes.
* Added recipes for EnderIO ME Conduits.
* Fixed some recipes from Thaumcraft.
* The entire line of GC quests has been redesigned.

## Version - R2.6.12
#### [Lite, Huge]

* Fixed warpdrive logging(+fps)
* Fixed ExtraPlanets Space Suit crafting
* Updated mods
* Deleted GregTech Energistics
* Rebuilded quests
* Some tweaks

## Version - R2.6.11
#### [Lite, Huge]

* Fixed remelting of iron dust into iron ingot(again).
* Fixed the recipes of the parser associated with the oven(can not be fixed, I looked in the documentation for access to the parser, but it is not there. Therefore, I will add a recipe that makes a stove block from the stove).
* Fix of invar cases.
* SneedASM is enabled again for the Normal

## Version(forgot to activate it just yet)

* Ore*related optimizations.
* Fixed Bronze Quest(HUGE ver)

## Version - R2.6.10
#### [Lite, Huge]

* Fixed some Thaumcraft recipes at the initial stage.
* Fixed the crafting of the greenhouse pot.
* Fixed the durability of GT items.
* Returned tools from the TFC until the GTX support is delivered.
* Minor fixes that I forgot about.
* Fixed a bug on remelting iron in a steam furnace.
* Updated FantasticLib.
* Updated ExtraPlanets.
* Updated MJRLegendsLib.
* CorailTombStone removed(Because it adds a bunch of garbage, even though the modpack only needs graves).
* Added GraveStoneMod.
* Fixed water localization for RU language.
* SneedASM returned.
* Fixed crash with SneedASM. (Thanks to Rongmario).
ew

## Version - R2.6.9
#### [Lite, Huge]

* Removed repetitions of items, such as red steel swords from GT and TFC, now only one is left.
* Now there are two options for creating a pickaxe or, for example, a shovel. Either you forge and suffer, or you spend 2*3 times more resources, but you do not forge, but you suffer.
* Cleaned the JEI from various garbage.
* According to numerous misunderstandings, now you can also make iron objects from TFC from GT forged iron (i.e.*Iron Ingot (TFC) **> Iron Tools, Wrapped Iron (GregTech) **> Iron Tools).
* Fixed the blue / Red steel pickaxe quest.
* Removed the crooked leather armor recipe.
* Fixed oil crafting from Forestry seeds.
* Ordinary water is renamed Processing water.
* Various fixes for Forestry recipes.

## Version - R2.6.8
#### [Lite, Huge]

* Updated 11 mods (sort of).
* Removed ASM (FIXED CRASH BUG).
* Fixed lv casing crafting.
* Fixed red and blue steel dust crafting.
* Now the tetrahedral dust has copper units again. -_-

## Version - R2.6.7
#### [Lite, Huge]

* Updated mods.
* Added EnderStorage.
* Added ParticleCulling with a special config. (+Optimization)
* Added MemoryCleaner. (+Optimization, -Modpack loading time, - RAM)
* Added SneedASM. (+Optimization, -Modpack loading time, - RAM)
* Changed the recommended parameters for starting the main on the TFG Wiki.
* Optimized scripts. (Thanks for the tip: S1dechko).
* Potentially fixed ladder crafting? Damn, it did not break, install the assembly adequately.
* Returned taumkraft quests for the Huge

## Version - R2.6.6
#### [Lite, Huge]

* Potentially fixed the bronze quest.
* Potentially fixed all crafting related to some bug that people had(A crooked recipe for blast furnaces and barrels).
* Updated mods.#### [Lite, Huge]
* Fixed Seed Oil
* Fixed paper quest

## Version implemented optimization mod for TC]

* Fixed GT and TFC scripts for GT.15 update.

* Fixed honey pile crafting.
* Some tweaks
* Updated GT, Gregicality, Xaero, and etc.

## Version - R2.6.4d
#### [Lite, Huge]

* Added EnderIO
* Added Blur
* Updated modtweaker
* Updated tombstone
* Updated waterflasks
* Updated warpdrive
* Updated MTLib
* EnderIO crafts fixed

## Version R2.6.3 - Released 15.05.2021

* Pig iron -> Steel recipe moved back to ForgeHammer.
* Pig iron plate recipe removed.
* Warp Drive dungeon loot settings finished.
* TFC iron localisation changes.
* Harvestcraft recipes changed to use GT knives.
* Lava and sun boiler quests merged with the coal one.
* Scripts refactored.
* Planet moons now have materials.
* Fixes for Astral Sorcery recipes.
* Some fixes in GC.zs.
* TFCtech fixes moved to a separate file.
* Files can now be forged.
* Some other changes I forgot (read about them on git).

## Version R2.6.2 - Released 10.05.2021 - The modpack will from now on be separated into two versions, one with thaumcraft, one without it. The versions with thaumcraft will be called release. Versions with thaumcraft will be called beta

* Approximately 32% faster launch.
* Warp Drive configs optimized.
* Updated GCM.
* Updated BetterFoliage.
* Updated GregTech.
* Updated Gregicality.
* Updated FirmaLife.
* Bloom -> Iron ingot recipe removed from Forge Hammer.
* Pig iron -> Steel recipe transferred to the Compressor.
* TFC iron localisation changed.
* You can now forge a copper hammer on a stone anvil.
* Star metal ore recipe changed to use less time and starlight.
* Removed WorldEdit.
* Removed Morpheus.

## Version R2.6.1 - 03.05.2021

* Improved oregen for planets.
* Warp Drive is now compatible with GC and GT internals.
* Quest localisation fixes
* Warp Drive quests in the GC tree.
* Constructing a space station with GC is now impossible. Use Warp Drive.
* Oregen for ores from TherFound disabled for GC planets.
* GT helium is used instead of GC.
* Last quests in the space era changed.
* FE energy converters for GTEU added again.
* Rockets above tier 4 disabled. Use Warp Drive.
* GT tanks can now be disassembled in an arc furnace.
* GC internals removed. Warp Drive replaces these.
* Recipes related to life support removed from GC. As above.
* GC crafting recipes now use an uncharged energy crystal.
* GC wires hidden in JEI. Use Thermal Dynamics.
* GC landing pad crafting recipe fixed.
* Updated CraftTweaker.
* Updated XaerosMinimap/Worldmap.
* Updated Gregicality(Lots of new content and fixes).
* Hidden about 70 useless blocks and items in JEI.
* Fixed planet display in discord.
* Chunkloaders from WarpDrive are back.

## Version 2.6 - Released 24.04.2021

YOU WILL NOT BE ABLE TO PLAY IN OLD WORLDS AFTER UPDATING.
JustEnoughIds broke biomes for Warp Drive so it was replaced with NotEnoughIds.

* Added Warp Drive.
* Added CC:Tweaked.
* Recipes changed for CC:Tweaked.
* Recipes changed for Warp Drive.
* Removed JustEnoughIds.
* Added NotEnoughIds.
* Added GCM. (GregTech addon)
* Added MechTech. (GregTech addon).
* Added gtce-inventorypipes. (GregTech addon).
* Assorted crafting recipe fixes.

## Version 2.5.13 - Released 22.04.2021

* Removed Logistics Pipes.
* Added Thermal Dynamic/Foundation/RedstoneFlux.
* Recipes changed for Thermal Dynamic.
* Hidden unused items from Thermal Dynamic/Foundation.
* Updated CraftTweaker.
* Pressure plate recipe from BlockCraftery fixed.
* Updated GregTech.
* Updated FirmaLife.
* Nether mob spawn fixed.
* Updated ThaumicAdditions.

## Version 2.5.12 - Released 16.04.2021

* Inventory tweaks removed because if screws with gregtech items.
* TFC Ambiental removed.
* It is now possible to craft copper knives and some other stuff.
* ModernLights crafting recipes fixed.
* Saw, knife and hammer quests fixed.
* Logistics Pipes update checking disabled.
* FirmaLife updated.
* XaerosMinimap/WorldMap updated.

## Version 2.5.11 - Released 11.04.2021

* FirmaLife Updated.
* Some scripts optimization.

## Version 2.5.10 hotfix - Released 10.04.2021

* Bronze quest fixed.
* AE era forming press quest fixed.
* GregTech updated.
* Crafttweaker updated.
* TerraFirmaCraft updated.
* Some settings for SledgeHammer changed.
* You can now clean rock salt and normal salt by throwing it in water.

## Version 2.5.9 - Released 06.04.2021

* The rock quest fixed.
* Pams Compat updated.
* Dynamic trees updated.
* FirmaLife updated.
* The recipe that uses the pot of ash fixed. (Thanks to Damodigy)
* Piston recipe fixed. (Thanks to zbr2001z)
* Copper hammer recipe changed. It can now be cast in a TFC mold.
* Copper saw recipe fixed.

## Version 2.5.8 - Released 31.03.2021

* Added mod Logistics Pipes(Thanks Irgendwer).
* Fix quest with certus quartz.
* FirmaLife Updated.
* Fixed slow loading minecraft. (Thanks stupid devs Crafttweaker).

## Version 2.5.7 - Released 28.03.2021

* Oregen for EP planets.
* Stone reworked on EP planets.
* Osmium vein added.
* Magnesium vein added.
* Amethyst vein added.
* Uranite vein added
* Uranium vein addded
* Opal vein added.
* Yellow garnet vein added.
* Redstone vein updated.
* Manganese vein updated.
* Salt vein updated.
* Naquadah vein updated.
* Olivine vein updated.
* Some more height and stone type changes for ore veins.
* Basically, all ores present in the game can now generate.
* Copper hammer crafting tier fixed.
* Copper hammer harvesting tier and speed fixed.
* Aquamarine smelting fixed.
* Translation for old materials fixed.
* Some mods updated.

## Version 2.5.6 - Released 25.03.2021

* GregTech updated.
* CraftTweaker updated.
* XaerosMinimap/WorldMap updated.
* Some quest translations fixed.
* Fixed tree leaves name.

## Version 2.5.5 - Released 23.03.2021

* Quest translation done.
* Wrought iron item names changed.
* Some mods updated.
* The One Probe panel appearance changed.
* Vanilla water recipe changed. You now need distilled water for boilers. The recipe can be found in JEI.
* Silver dust smelting fixed. (Thanks to andrew86510).
* Crafttweaker updated.
* Firmalife updated.

## Version 2.5.4 - Released 22.03.2021

* Magnetite vein readded to the overworld.
* Tungsten vein readded.
* Platinum vein readded.
* All ore veins removed from End.
* Some oregen settings tweaked.

## Version 2.5.3 - Released 21.03.2021

* Proper translation added for TFC quests.
* Updated Cellars addon.
* Lapis lazuli block craft fixed.
* Some quests removed.
* A few new ones added.
* Conditions for some quests changed.
* Quests optimised by using item list instead of item filter.
