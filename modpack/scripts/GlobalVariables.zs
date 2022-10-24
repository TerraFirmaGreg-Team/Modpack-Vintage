#priority 2
# Global Variables

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.gregtech.recipe.RecipeMap;


print("Initializing 'Global Variables'...");

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~  Machine Recipe Builders  ~~~~~~~~~~~~~~~~~~~~~~~~~~ */
global assembler as RecipeMap  = RecipeMap.getByName("assembler");
global chemical_reactor as RecipeMap = RecipeMap.getByName("chemical_reactor");
global bender as RecipeMap = RecipeMap.getByName("bender");
global extractor as RecipeMap = RecipeMap.getByName("extractor");
global electric_blast_furnace as RecipeMap = RecipeMap.getByName("electric_blast_furnace");
global centrifuge as RecipeMap = RecipeMap.getByName("centrifuge");
global mixer as RecipeMap = RecipeMap.getByName("mixer");
global macerator as RecipeMap = RecipeMap.getByName("macerator");
global compressor as RecipeMap = RecipeMap.getByName("compressor");
global extruder as RecipeMap = RecipeMap.getByName("extruder");
global alloy_smelter as RecipeMap = RecipeMap.getByName("alloy_smelter");
global autoclave as RecipeMap = RecipeMap.getByName("autoclave");
global electromagnetic_separator as RecipeMap = RecipeMap.getByName("electromagnetic_separator");
global implosion_compressor as RecipeMap = RecipeMap.getByName("implosion_compressor");
global fluid_solidifier as RecipeMap = RecipeMap.getByName("fluid_solidifier");
global cutter as RecipeMap = RecipeMap.getByName("cutter");
global sifter as RecipeMap = RecipeMap.getByName("sifter");
global assembly_line as RecipeMap = RecipeMap.getByName("assembly_line");
global electrolyzer as RecipeMap = RecipeMap.getByName("electrolyzer");
global fluid_canner as RecipeMap = RecipeMap.getByName("fluid_canner");
global lathe as RecipeMap = RecipeMap.getByName("lathe");
global large_chemical_reactor as RecipeMap = RecipeMap.getByName("large_chemical_reactor");
global chemical_plant as RecipeMap = RecipeMap.getByName("chemical_plant");
global arc_furnace as RecipeMap = RecipeMap.getByName("arc_furnace");
global forge_hammer as RecipeMap = RecipeMap.getByName("forge_hammer");
global laser_engraver as RecipeMap = RecipeMap.getByName("laser_engraver");
global chemical_bath as RecipeMap = RecipeMap.getByName("chemical_bath");
global fermenter as RecipeMap = RecipeMap.getByName("fermenter");
global fluid_heater as RecipeMap = RecipeMap.getByName("fluid_heater");
global vacuum_freezer as RecipeMap = RecipeMap.getByName("vacuum_freezer");
global brewery as RecipeMap = RecipeMap.getByName("brewery");
global primitive_blast_furnace as RecipeMap = RecipeMap.getByName("primitive_blast_furnace");
global forming_press as RecipeMap = RecipeMap.getByName("forming_press");
global pyrolyse_oven as RecipeMap = RecipeMap.getByName("pyrolyse_oven");
global gas_collector as RecipeMap = RecipeMap.getByName("gas_collector");
global circuit_assembler as RecipeMap  = RecipeMap.getByName("circuit_assembler");
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  Crafting Tools  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
global hammer as IIngredient = <ore:craftingToolHardHammerEmptyTag>;
global wrench as IIngredient = <ore:craftingToolWrenchEmptyTag>;
global file as IIngredient = <ore:craftingToolFileEmptyTag>;
/* ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  ~~~~~~~~~  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */

print("Initialized 'Global Variables'");