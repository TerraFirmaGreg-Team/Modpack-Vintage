# GregicalityMultiblocks

import crafttweaker.item.IItemStack;

print("Initializing 'GregicalityMultiblocks'...");


// Исправление крафта большого сборщика схем
recipes.remove(<gregtech:machine:2028>);
recipes.addShaped(<gregtech:machine:2028>, 
	[[<gregtech:meta_item_1:192>, <gregtech:meta_item_1:222>, <gregtech:meta_item_1:192>], 
	[<ore:circuitLuv>, <gregtech:machine:640>, <ore:circuitLuv>], 
	[<ore:cableGtSingleNiobiumNitride>, <gregtech:meta_item_1:162>, <ore:cableGtSingleNiobiumNitride>]]);

// Исправление крафта большой доменной печки
recipes.remove(<gregtech:machine:2025>);
recipes.addShaped(<gregtech:machine:2025>, 
	[[<ore:springNaquadahAlloy>, <ore:circuitZpm>, <ore:springNaquadahAlloy>], 
	[<gregtech:meta_item_1:208>, <gregtech:machine:1001>, <gregtech:meta_item_1:208>], 
	[<ore:plateDenseNaquadahAlloy>, <ore:wireGtQuadrupleUraniumRhodiumDinaquadide>, <ore:plateDenseNaquadahAlloy>]]);

// Исправление крафта большого вакуумного морозильника
recipes.remove(<gregtech:machine:2026>);
recipes.addShaped(<gregtech:machine:2026>, 
	[[<ore:pipeNormalFluidNaquadah>, <ore:circuitZpm>, <ore:pipeNormalFluidNaquadah>], 
	[<gregtech:meta_item_1:208>, <gregtech:machine:1002>, <gregtech:meta_item_1:208>], 
	[<ore:plateDenseNaquadahAlloy>, <ore:wireGtQuadrupleUraniumRhodiumDinaquadide>, <ore:plateDenseNaquadahAlloy>]]);


print("Initialized 'GregicalityMultiblocks'");