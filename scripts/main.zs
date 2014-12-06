val iron = <minecraft:iron_ingot>;
val copper = <ore:ingotCopper>;
val tin = <ore:ingotTin>;
val gold = <minecraft:gold_ingot>;
val osmium = <Mekanism:Ingot:1>;
val obsidian = <Mekanism:Ingot>;
val redstone = <minecraft:redstone>;
val coal = <minecraft:coal>;
val diamond = <minecraft:diamond>;
val glass = <minecraft:glass>;
val cobblestone = <minecraft:cobblestone>;
val stone = <minecraft:stone>;
val aluminium = <ore:ingotAluminium>;
val obsidianBlock = <minecraft:obsidian>;
val steel = <ore:ingotSteel>;
val lead = <ore:ingotLead>;
val platinum = <ore:ingotPlatinum>;
val nickel = <ore:ingotNickel>;
val ardite = <ore:ingotArdite>;
val cobalt = <ore:ingotCobalt>;
val netherrack = <minecraft:netherrack>;
val gravel = <minecraft:gravel>;
val cyanite = <ore:ingotCyanite>;
val yellowrium = <ore:ingotYellorium>;
val steelBlock = <ore:blockSteel>;
val electrum = <ThermalFoundation:material:71>;
val enderium = <ThermalFoundation:material:76>;
val emerald = <minecraft:emerald>;
val laser = <BuildCraft|Silicon:laserBlock>;
val signalum = <ThermalFoundation:material:74>;
val glasspane = <minecraft:glass_pane>;
val silver = <ore:ingotSilver>;
val invar = <ore:ingotInvar>;

val redstoneChipset = <BuildCraft|Silicon:redstoneChipset>;
val ironChipset = <BuildCraft|Silicon:redstoneChipset:1>;
val goldChipset = <BuildCraft|Silicon:redstoneChipset:2>;
val diamondChipset = <BuildCraft|Silicon:redstoneChipset:3>;



val controlCircuit = <Mekanism:ControlCircuit>;
val advControlCircuit = <Mekanism:ControlCircuit:1>;
val eliteControlCircuit = <Mekanism:ControlCircuit:2>;
val ultControlCircuit = <Mekanism:ControlCircuit:3>;
val EnrichedAlloy = <Mekanism:EnrichedAlloy>;



val tinGear = <ThermalFoundation:material:129>;
val copperGear = <ThermalFoundation:material:128>;
val silverGear = <ThermalFoundation:material:130>;
val ironGear = <ThermalFoundation:material:12>;
val electrumGear = <ThermalFoundation:material:135>;
val signalumGear = <ThermalFoundation:material:138>;


//Will be used later
val furnace = <ore:furnace>;
furnace.add(<minecraft:furnace>);
furnace.add(<furnace3d:furnace>);


mods.mekanism.Infuser.removeRecipe(controlCircuit);
mods.mekanism.Infuser.addRecipe("REDSTONE", 20, redstoneChipset, controlCircuit);

recipes.removeShaped(<Metallurgy:metallurgy.bronze.helmet>);
recipes.removeShaped(<Metallurgy:metallurgy.bronze.chestplate>);
recipes.removeShaped(<Metallurgy:metallurgy.bronze.leggings>);
recipes.removeShaped(<Metallurgy:metallurgy.bronze.boots>);
recipes.removeShaped(<ThermalExpansion:Frame>);
recipes.removeShaped(<ThermalExpansion:Frame:1>);
recipes.removeShaped(<ThermalExpansion:Frame:2>);
recipes.removeShaped(<ThermalExpansion:Frame:3>);
recipes.removeShaped(<BuildCraft|Factory:machineBlock>);
recipes.remove(<Forestry:ingotBronze>);
recipes.remove(<Mekanism:BasicBlock:8>);
recipes.remove(<MekanismGenerators:Generator:6>);
recipes.remove(<Mekanism:Jetpack>);

//Recipes
//Laser (BuildCraft)
recipes.removeShaped(laser);
recipes.addShaped(laser,

[[null, redstone, null],
[null, redstone, null],
[steel, glass, steel]]);


//Assembly Table
recipes.removeShaped(<BuildCraft|Silicon:laserTableBlock>);
recipes.addShaped(<BuildCraft|Silicon:laserTableBlock>,

[[null, null, null],
[redstone, ironGear, redstone],
[steel, steel, steel]]);



//Laser Drill
recipes.removeShaped(<MineFactoryReloaded:tile.mfr.machine.2>);
recipes.addShaped(<MineFactoryReloaded:tile.mfr.machine.2>,

[[electrum, laser, electrum],
[enderium, glass, enderium],
[obsidian, diamond, obsidian]]);




//Laser Drill Precharger
recipes.removeShaped(<MineFactoryReloaded:tile.mfr.machine.2:1>);
recipes.addShaped(<MineFactoryReloaded:tile.mfr.machine.2:1>,

[[electrumGear, laser, electrumGear],
[obsidian, enderium, obsidian],
[obsidian, signalumGear, obsidian]]);




//Advanced Control Circuit
recipes.remove(advControlCircuit);
recipes.addShaped(advControlCircuit,

[[null, ironChipset, null],
[EnrichedAlloy, controlCircuit, EnrichedAlloy ],
[null, ironChipset, null]]);


//OpenBlocks Tank
recipes.removeShaped(<OpenBlocks:tank>);
recipes.addShaped(<OpenBlocks:tank> * 4,

[[iron, glasspane, iron],
[glasspane, glasspane, glasspane],
[iron, glasspane, iron]]);



//OpenBlocks Sprinkler
recipes.removeShaped(<OpenBlocks:sprinkler>);
recipes.addShaped(<OpenBlocks:sprinkler> * 2,

[[iron, glasspane, iron],
[glasspane, redstone , glasspane],
[iron, iron, iron]]);

//Basic Machine Frame
recipes.addShaped(<ThermalExpansion:Frame>,
[[iron, osmium, iron],
[osmium, tinGear , osmium],
[iron, controlCircuit, iron]]);

//Hardened Machine Frame
recipes.addShaped(<ThermalExpansion:Frame:1>,
[[silver, lead, silver],
[lead, <ThermalExpansion:Frame> , lead],
[silver, advControlCircuit, silver]]);

//Reinforced Machine Frame
recipes.addShaped(<ThermalExpansion:Frame:2>,
[[electrum, invar, electrum],
[invar, <ThermalExpansion:Frame:1> , invar],
[electrum, eliteControlCircuit, electrum]]);

//Resonant Machine Frame
recipes.addShaped(<ThermalExpansion:Frame:3>,
[[obsidian, enderium, obsidian],
[enderium, <ThermalExpansion:Frame:2> , enderium],
[obsidian, ultControlCircuit, obsidian]]);

//Steel Casing
recipes.addShaped(<Mekanism:BasicBlock:8>,
[[null, steel, null],
[steel, <ThermalExpansion:Frame> , steel],
[null, steel, null]]);

//Wind Turbine
recipes.addShaped(<MekanismGenerators:Generator:6>,
[[null, ironGear, null],
[steel, controlCircuit, steel],
[EnrichedAlloy, steel, EnrichedAlloy]]);

//Quarry
recipes.addShaped(<BuildCraft|Factory:machineBlock>,
[[signalumGear, ironGear, signalumGear],
[steel, eliteControlCircuit, steel],
[EnrichedAlloy, steel, EnrichedAlloy]]);
