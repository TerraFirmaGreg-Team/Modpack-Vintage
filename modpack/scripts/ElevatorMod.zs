# ElevatorMod

import crafttweaker.item.IItemStack;

print("Initializing 'ElevatorMod'...");

var elevators = [<elevatorid:elevator_white>, <elevatorid:elevator_orange>, <elevatorid:elevator_magenta>, <elevatorid:elevator_light_blue>, <elevatorid:elevator_yellow>, <elevatorid:elevator_lime>, <elevatorid:elevator_pink>, <elevatorid:elevator_gray>, <elevatorid:elevator_silver>, <elevatorid:elevator_cyan>, <elevatorid:elevator_purple>, <elevatorid:elevator_blue>, <elevatorid:elevator_brown>, <elevatorid:elevator_green>, <elevatorid:elevator_red>, <elevatorid:elevator_black>] as IItemStack[];

for i, elevator in elevators {
    recipes.remove(elevator);
    recipes.addShapeless(elevator, [<ore:blockElevator>, <minecraft:dye:*>.definition.makeStack(15 - i)]);
    assembler.recipeBuilder()
        .inputs(<minecraft:wool:*>.definition.makeStack(i), <ore:plateEnderPearl> * 6, <ore:foilTin> * 12)
        .outputs(elevator)
        .duration(10 * 20)
        .EUt(32)
        .buildAndRegister();
}


print("Initialized 'ElevatorMod'");