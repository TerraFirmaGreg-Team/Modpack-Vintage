import classes.Array.arrayProjectRed

if (isLoaded("projectred-core")) {

    // --- Добавление
    
    ore('dustIlluminar').add(arrayProjectRed.illuminars)
    ore('lampBlockDeactivated').add(arrayProjectRed.deLamps)
    ore('lampBlockActivated').add(arrayProjectRed.aLamps)
    ore('lampButton').add(arrayProjectRed.buttonLamps)
    ore('lampButtonFeedback').add(arrayProjectRed.feedbackLamps)
    ore('lampLanternDeactivated').add(arrayProjectRed.deLanternLamps)
    ore('lampLanternActivated').add(arrayProjectRed.aLanternLamps)
    ore('lampFixtureDeactivated').add(arrayProjectRed.deFixtureLamps)
    ore('lampFixtureActivated').add(arrayProjectRed.aFixtureLamps)
    ore('lampFalloutDeactivated').add(arrayProjectRed.deFalloutLamps)
    ore('lampFalloutActivated').add(arrayProjectRed.aFalloutLamps)
    ore('lampCageDeactivated').add(arrayProjectRed.deCageLamps)
    ore('lampCageActivated').add(arrayProjectRed.aCageLamps)
    
    // --- Удаление
    
    ore('ingotCopper').remove(item('projectred-core:resource_item', 100))
    ore('ingotTin').remove(item('projectred-core:resource_item', 101))
    ore('ingotSilver').remove(item('projectred-core:resource_item', 102))
    ore('ingotRedAlloy').remove(item('projectred-core:resource_item', 103))
    ore('ingotElectrotineAlloy').remove(item('projectred-core:resource_item', 104))
    ore('gemRuby').remove(item('projectred-core:resource_item', 200))
    ore('gemSapphire').remove(item('projectred-core:resource_item', 201))
    ore('gemPeridot').remove(item('projectred-core:resource_item', 202))
    ore('dustElectrotine').remove(item('projectred-core:resource_item', 105))
}