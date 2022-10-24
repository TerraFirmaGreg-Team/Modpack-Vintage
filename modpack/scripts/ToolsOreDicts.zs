#priority 3
# ToolsOreDicts

print("Initializing 'ToolsOreDicts'...");


// Clean the Crafting Tool Oredicts
for item in <ore:craftingToolSaw>.items{
    <ore:craftingToolSawEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolHardHammer>.items{
    <ore:craftingToolHardHammerEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolScrewdriver>.items{
    <ore:craftingToolScrewdriverEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolWrench>.items{
    <ore:craftingToolWrenchEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolKnife>.items{
    <ore:craftingToolKnifeEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolSoftHammer>.items{
    <ore:craftingToolSoftHammerEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolFile>.items{
    <ore:craftingToolFileEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolScoop>.items{
    <ore:craftingToolScoopEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolMortar>.items{
    <ore:craftingToolMortarEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolPickaxe>.items{
    <ore:craftingToolPickaxeEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolShovel>.items{
    <ore:craftingToolShovelEmptyTag>.add(item.withEmptyTag());
}

for item in <ore:craftingToolAxe>.items{
    <ore:craftingToolAxeEmptyTag>.add(item.withEmptyTag());
}

<ore:oreNetherQuartz>.addAll(<ore:oreNetherrackNetherQuartz>);


print("Initialized 'ToolsOreDicts'...");
