import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;

//CategoryKey
mods.botania.Lexicon.addCategory("botania.category.buildcraft");
game.setLocalization("botania.category.buildcraft", "Artificial Mechanisms");
mods.botania.Lexicon.setCategoryIcon("botania.category.buildcraft", "bog:textures/gears.png");
mods.botania.Lexicon.setCategoryPriority("botania.category.buildcraft", 0);

function addEntry(category as string, entry as string, item as IItemStack) {
	mods.botania.Lexicon.addEntry("botania.entry." + entry, "botania.category." + category, item);
}

function addTextPage(entry as string, page as string, ipage as int) {
	mods.botania.Lexicon.addTextPage("botania.page." + page,"botania.entry." + entry, ipage);
}

function addCraftingPageNoMapping(entry as string, page as string, ipage as int, item as IItemStack, recipe as IIngredient[][]) {
	mods.botania.Lexicon.addCraftingPage("botania.page." + page, "botania.entry." + entry, ipage, [item], [recipe]);
}

function addCraftingPage(entry as string, page as string, ipage as int, item as IItemStack, recipe as IIngredient[][]) {
	mods.botania.Lexicon.addCraftingPage("botania.page." + page, "botania.entry." + entry, ipage, [item], [recipe]);
	mods.botania.Lexicon.addRecipeMapping(item, "botania.entry." + entry, ipage);
}

function addImagePage(entry as string, page as string, ipage as int, texture as string) {
	mods.botania.Lexicon.addImagePage("botania.page." + page, "botania.entry." + entry, ipage, "bog:textures/lexica/" + texture);
}


#mods.botania.Lexicon.removePage("botania.entry.flowers", 8);
#addTextPage("flowers", "flowersX0", 13);


# Aether
addEntry("alfhomancy", "aether", <aether_legacy:lore_book>);

addTextPage("aether", "aether0", 0);

addCraftingPage("aether", "aether1", 1, <aether_legacy:skyroot_bucket>, [[null, <minecraft:blaze_powder>, null], [<Botania:livingwood:1>, <minecraft:feather>, <Botania:livingwood:1>], [null, <Botania:livingwood:1>, null]]);


# Nature Compass
addEntry("tools", "natcompass", <naturescompass:NaturesCompass>);

addTextPage("natcompass", "natcompass0", 0);
addCraftingPage("natcompass", "natcompass1", 1, <naturescompass:NaturesCompass>, [[<ore:treeLeaves>, <ore:runeEarthB>, <ore:treeLeaves>], [<minecraft:log>, <minecraft:compass>, <minecraft:log>], [<ore:treeLeaves>, <ore:logWood>, <ore:treeLeaves>]]);

mods.botania.Lexicon.setEntryKnowledgeType("botania.entry.natcompass", "runic");


# Portal Gun
addEntry("ender", "portalgun", <PortalGun:PortalGunBlue>);

addTextPage("portalgun", "portalgun0", 0);
addCraftingPage("portalgun", "portalgun1", 1, <PortalGun:PortalGunBlue>, [[<minecraft:obsidian>, <minecraft:quartz>, null], [<minecraft:quartz>, <minecraft:nether_star>, <Botania:manaResource:15>], [null, <ore:bEnderAirBottle>, <ore:gemQuartz>]]);
addCraftingPage("portalgun", "portalgun2", 2, <PortalGun:PortalPotato>, [[<minecraft:redstone:*>, <minecraft:repeater:*>, <minecraft:dye:11>], [<minecraft:repeater:*>, <minecraft:jukebox:*>, <minecraft:redstone_torch:*>], [<minecraft:stone_button:*>, <minecraft:redstone_torch:*>, <minecraft:potato:*>]]);
addCraftingPage("portalgun", "portalgun3", 3, <PortalGun:PortalGunOrange:4>, [[<PortalGun:PortalGunOrange>, <PortalGun:PortalPotato>]]);

addCraftingPage("portalgun", "portalgun4", 4, <PortalGun:PortalGunBlue:1>, [[<PortalGun:PortalGunBlue>, <minecraft:dye:12>]]);
addCraftingPage("portalgun", "portalgun5", 5, <PortalGun:PortalGunOrange:2>, [[<PortalGun:PortalGunOrange>, <minecraft:dye:11>]]);



# Pipes
addEntry("buildcraft", "pipes", <BuildCraft|Transport:item.buildcraftPipe.pipeitemswood>);

addTextPage("pipes", "pipes0", 0);

addCraftingPage("pipes", "pipes1", 1, <BuildCraft|Transport:item.buildcraftPipe.pipeitemswood>, [[<ore:plankWood>, <ore:blockGlassColorless>, <ore:plankWood>]]);

addCraftingPage("pipes", "pipes2", 2, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsstone>, [[<ore:stone>,<ore:blockGlassColorless>,<ore:stone>]]);

addCraftingPage("pipes", "pipes3", 3, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsquartz>, [[<ore:gemQuartz>,<ore:blockGlassColorless>,<ore:gemQuartz>]]);

addCraftingPage("pipes", "pipes4", 4, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsgold>, [[<ore:ingotGold>,<ore:blockGlassColorless>, <ore:ingotGold>]]);

addCraftingPage("pipes", "pipes5", 5, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond>, [[<ore:gemDiamond>, <ore:blockGlassColorless>, <ore:gemDiamond>]]);

addCraftingPage("pipes", "pipes6", 6, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsiron>, [[<ore:ingotIron>, <ore:blockGlassColorless>, <ore:ingotIron>]]);

addCraftingPage("pipes", "pipes7", 7, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsemerald>, [[<ore:gemEmerald>, <ore:blockGlassColorless>, <ore:gemEmerald>]]);

addCraftingPage("pipes", "pipes8", 8, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay>, [[<minecraft:clay>, <ore:blockGlassColorless>, <minecraft:clay>]]);

addCraftingPage("pipes", "pipes9", 9, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsobsidian>, [[<minecraft:obsidian>, <ore:blockGlassColorless>, <minecraft:obsidian>]]);

addTextPage("pipes", "pipes9", 10);

addCraftingPage("pipes", "pipes11", 11, <BuildCraft|Transport:item.buildcraftPipe.pipeitemslapis>, [[<ore:blockLapis>, <ore:blockGlassColorless>, <ore:blockLapis>]]);
addCraftingPage("pipes", "pipes12", 12, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdaizuli>, [[<ore:blockLapis>, <ore:blockGlassColorless>, <ore:gemDiamond>]]);
addCraftingPage("pipes", "pipes13", 13, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsemzuli>, [[<ore:blockLapis>, <ore:blockGlassColorless>, <ore:gemEmerald>]]);

addTextPage("pipes", "pipesC", 14);

addCraftingPage("pipes", "pipesF", 15, <BuildCraft|Transport:item.buildcraftPipe.pipefluidswood>, [[<ore:dyeGreen>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemswood>]]);

addCraftingPage("pipes", "pipesK", 16, <BuildCraft|Transport:item.buildcraftPipe.pipepowerwood>, [[<ore:dustRedstone>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemswood>]]);


# Additional Pipes
addEntry("buildcraft", "apipes", <additionalpipes:item.buildcraftPipe.pipeitemsdistributor>);

addTextPage("apipes", "apipes0", 0);
addTextPage("apipes", "apipes1", 1);
addCraftingPage("apipes", "apipes2", 2, <additionalpipes:item.buildcraftPipe.pipeitemsaddition>, [[null, <ore:dustRedstone>, null], [<ore:dustRedstone>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay>, <ore:dustRedstone>], [null, <ore:dustRedstone>, null]]);
addCraftingPage("apipes", "apipes3", 3, <additionalpipes:item.buildcraftPipe.pipeliquidsobsidian>, [[<BuildCraft|Transport:item.buildcraftPipe.pipeitemsobsidian>, <ore:dyeGreen>]]);

addCraftingPage("apipes", "apipes4", 4, <additionalpipes:item.buildcraftPipe.pipeitemsdistributor>, [[null, <ore:dustRedstone>, null], [<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>]]);
addCraftingPage("apipes", "apipes5", 5, <additionalpipes:item.buildcraftPipe.pipeitemspriorityinsertion>, [[<additionalpipes:item.buildcraftPipe.pipeitemsdistributor>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsclay>]]);
addCraftingPage("apipes", "apipes6", 6, <additionalpipes:item.buildcraftPipe.pipeitemsgravityfeed>, [[null, null, null], [<ore:ingotIron>, <ore:blockGlass>, <ore:ingotIron>], [null, <ore:ingotIron>, null]]);
addCraftingPage("apipes", "apipes7", 7, <additionalpipes:item.buildcraftPipe.pipeswitchitems>, [[<ore:gearGold>, <ore:blockGlass>, <ore:gearIron>]]);
addCraftingPage("apipes", "apipes8", 8, <additionalpipes:item.buildcraftPipe.pipeitemsclosed>, [[<BuildCraft|Transport:item.buildcraftPipe.pipeitemswood>, <BuildCraft|Transport:item.buildcraftPipe.pipestructurecobblestone>]]);
addCraftingPage("apipes", "apipes9", 9, <additionalpipes:item.buildcraftPipe.pipeitemsjeweled>, [[null, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond:*>, null], [<BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond:*>, <ore:gearGold>, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond:*>], [null, <BuildCraft|Transport:item.buildcraftPipe.pipeitemsdiamond:*>, null]]);


# Engines
addEntry("buildcraft", "engines", <BuildCraft|Core:engineBlock>);

mods.botania.Lexicon.addTextPage("botania.page.engines0","botania.entry.engines",0);

mods.botania.Lexicon.addTextPage("botania.page.engines1","botania.entry.engines",1);

mods.botania.Lexicon.addTextPage("botania.page.engines3","botania.entry.engines",2);

mods.botania.Lexicon.addCraftingPage("botania.page.engines2","botania.entry.engines",3, [<BuildCraft|Core:engineBlock>], [[[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [null, <ore:blockGlass>, null], [<ore:gearWood>, <minecraft:piston:*>, <ore:gearWood>]]]);

mods.botania.Lexicon.addCraftingPage("botania.page.engines4","botania.entry.engines",4, [<BuildCraft|Core:engineBlock:1>], [[[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [null, <ore:blockGlass>, null], [<ore:gearStone>, <minecraft:piston:*>, <ore:gearStone>]]]);

mods.botania.Lexicon.addCraftingPage("botania.page.engines5","botania.entry.engines",5, [<BuildCraft|Core:engineBlock:2>], [[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [null, <ore:blockGlass>, null], [<ore:gearIron>, <minecraft:piston:*>, <ore:gearIron>]]]);


# Oil, Fuel, Tanks
addEntry("buildcraft", "oil", <BuildCraft|Energy:bucketOil>);

mods.botania.Lexicon.addTextPage("botania.page.oil","botania.entry.oil",0);

mods.botania.Lexicon.addCraftingPage("botania.page.oil2","botania.entry.oil",1, [<BuildCraft|Factory:refineryBlock>], [[[<minecraft:redstone_torch:*>, <BuildCraft|Factory:tankBlock:*>], [<minecraft:redstone_torch:*>, <BuildCraft|Factory:tankBlock:*>], [<ore:gearDiamond>, <BuildCraft|Factory:tankBlock:*>]]]);


# Tank
addEntry("buildcraft", "tank", <BuildCraft|Factory:tankBlock>);

addTextPage("tank", "tank0", 0);
addCraftingPage("tank", "tank1", 1, <BuildCraft|Factory:tankBlock>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockGlass>, null, <ore:blockGlass>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);

addTextPage("tank", "tank2", 2);
addCraftingPage("tank", "tank3", 3, <BuildCraft|Factory:pumpBlock>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [<ore:ingotIron>, <ore:gearIron>, <ore:ingotIron>], [<BuildCraft|Factory:tankBlock:*>, <minecraft:bucket:*>, <BuildCraft|Factory:tankBlock:*>]]);

addTextPage("tank", "tank4", 4);
addCraftingPage("tank", "tank5", 5, <BuildCraft|Factory:floodGateBlock>, [[<ore:ingotIron>, <ore:gearIron>, <ore:ingotIron>], [<minecraft:iron_bars>, <BuildCraft|Factory:tankBlock:*>, <minecraft:iron_bars>], [<ore:ingotIron>, <minecraft:iron_bars>, <ore:ingotIron>]]);



# Mining Well
addEntry("buildcraft", "mwell", <BuildCraft|Factory:miningWellBlock>);

addTextPage("mwell", "mwell0", 0);
addCraftingPage("mwell", "mwell1", 1, <BuildCraft|Factory:miningWellBlock>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [<ore:ingotIron>, <ore:gearIron>, <ore:ingotIron>], [<ore:ingotIron>, <minecraft:iron_pickaxe:*>, <ore:ingotIron>]]);


# Wrench
addEntry("buildcraft", "wrench", <BuildCraft|Core:wrenchItem>);

addTextPage("wrench", "wrench0", 0);
addCraftingPage("wrench", "wrench1", 1, <BuildCraft|Core:wrenchItem>, [[<ore:ingotIron>, null, <ore:ingotIron>], [null, <ore:gearStone>, null], [null, <ore:ingotIron>, null]]);


#Chute
addEntry("buildcraft", "chute", <BuildCraft|Factory:blockHopper>);

addTextPage("chute", "chute0", 0);
addCraftingPage("chute", "chute1", 1, <BuildCraft|Factory:blockHopper>, [[<ore:ingotIron>, <ore:chestWood>, <ore:ingotIron>], [null, <ore:gearStone>, null]]);
addCraftingPageNoMapping("chute", "chute2", 2, <BuildCraft|Factory:blockHopper>, [[<minecraft:hopper>, <ore:gearStone>]]);



#Assembly Table
addEntry("buildcraft", "laser", <BuildCraft|Silicon:laserTableBlock>);

addTextPage("laser", "laser0", 0);
addCraftingPage("laser", "laser1", 1, <BuildCraft|Silicon:laserTableBlock>, [[<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>], [<minecraft:obsidian>, <ore:dustRedstone>, <minecraft:obsidian>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);
addCraftingPage("laser", "laser2", 2, <BuildCraft|Silicon:laserBlock>, [[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>], [<ore:dustRedstone>, <ore:gemDiamond>, <ore:dustRedstone>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);
addTextPage("laser", "laser5", 3);
addTextPage("laser", "laser4", 4);


# Gates
val gate = <BuildCraft|Transport:pipeGate>.withTag({mat: 0 as byte, logic: 0 as byte});

addEntry("buildcraft", "gates", gate);

addTextPage("gates", "gates0", 0);
addTextPage("gates", "gates1", 1);
addCraftingPage("gates", "gates2", 2, gate, [[<ore:chipsetRed>, <BuildCraft|Transport:pipeWire>]]);
addCraftingPage("gates", "gates3", 3, <BuildCraft|Transport:pipeWire>, [[<ore:dyeRed>, <ore:ingotRedAlloy>]]);
addCraftingPage("gates", "gates4", 4, <BuildCraft|Transport:pipeWire:1>, [[<ore:dyeBlue>, <ore:ingotRedAlloy>]]);
addCraftingPage("gates", "gates5", 5, <BuildCraft|Transport:pipeWire:2>, [[<ore:dyeGreen>, <ore:ingotRedAlloy>]]);
addCraftingPage("gates", "gates6", 6, <BuildCraft|Transport:pipeWire:3>, [[<ore:dyeYellow>, <ore:ingotRedAlloy>]]);

addTextPage("gates", "gatesX", 7);

addTextPage("gates", "gatesX2", 8);
addTextPage("gates", "gatesX3", 9);
addCraftingPage("gates", "gatesX4", 10, <BuildCraft|Silicon:laserTableBlock:2>, [[<minecraft:obsidian>, <ore:gemDiamond>, <minecraft:obsidian>], [<minecraft:obsidian>, <ore:chipsetGold>, <minecraft:obsidian>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);


# Redstone Torch
#addEntry("buildcraft", "bredstone", <minecraft:redstone>);

#addTextPage("bredstone", "bredstone0", 0);

#addTextPage("bredstone", "bredstone1", 1);
#addCraftingPage("bredstone", "bredstone2", 2, <minecraft:redstone_torch>, [[<minecraft:redstone:*>], [<minecraft:stick:*>]]);

#addTextPage("bredstone", "bredstone3", 3);
#addCraftingPage("bredstone", "bredstone4", 4, <minecraft:repeater>, [[<minecraft:redstone_torch:*>, <minecraft:redstone:*>], [<minecraft:redstone_torch:*>, <ore:stone>], [<ore:stone>, <ore:stone>]]);
#addCraftingPage("bredstone", "bredstone5", 5, <minecraft:comparator>, [[null, <minecraft:redstone_torch:*>, null], [<minecraft:redstone_torch:*>, <minecraft:quartz:*>, <minecraft:redstone_torch:*>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

#addTextPage("bredstone", "bredstone6", 6);


# Red Power
addEntry("buildcraft", "rpgate", <ProjRed|Core:projectred.core.part:5>);

addTextPage("rpgate", "rpgate0", 0);

addCraftingPage("rpgate", "rpgate1", 1, <ProjRed|Integration:projectred.integration.gate:3>, [[<ProjRed|Core:projectred.core.part:4>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:4>], [<ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:5>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part>]]);

addCraftingPage("rpgate", "rpgate2", 2, <ProjRed|Integration:projectred.integration.gate:7>, [[<ProjRed|Core:projectred.core.part:4>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:4>], [<ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:1>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part>]]);

addCraftingPage("rpgate", "rpgate3", 3, <ProjRed|Integration:projectred.integration.gate:13>, [[<ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part>], [<ProjRed|Core:projectred.core.part:1>, <minecraft:lever>, <ProjRed|Core:projectred.core.part:1>], [<ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part>]]);

addCraftingPage("rpgate", "rpgate4", 4, <ProjRed|Integration:projectred.integration.gate:9>, [[<ProjRed|Core:projectred.core.part:4>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:4>], [<ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:4>, <ProjRed|Core:projectred.core.part:5>], [<ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part>]]);

addCraftingPage("rpgate", "rpgate5", 5, <ProjRed|Integration:projectred.integration.gate:23>, [[<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:2>, <ProjRed|Core:projectred.core.part>], [<ProjRed|Core:projectred.core.part:2>, <ProjRed|Core:projectred.core.part:9>, <ProjRed|Core:projectred.core.part:2>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:2>, <ProjRed|Core:projectred.core.part>]]);

addCraftingPage("rpgate", "rpgate6", 6, <ProjRed|Integration:projectred.integration.gate:20>, [[<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:4>, <ProjRed|Core:projectred.core.part:5>], [<ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part:7>, <ProjRed|Core:projectred.core.part:6>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part>]]);

addCraftingPage("rpgate", "rpgate7", 7, <ProjRed|Integration:projectred.integration.gate:19>, [[<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part>], [<ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part:6>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part>]]);

addCraftingPage("rpgate", "rpgate8", 8, <ProjRed|Integration:projectred.integration.gate:11>, [[<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:8>, <ProjRed|Core:projectred.core.part>], [<ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part:1>], [<ProjRed|Core:projectred.core.part:8>, <ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part:8>]]);

addCraftingPage("rpgate", "rpgate9", 9, <ProjRed|Integration:projectred.integration.gate:18>, [[<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part>], [<ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:6>, <ProjRed|Core:projectred.core.part:5>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part>]]);

addCraftingPage("rpgate", "rpgate10", 10, <ProjRed|Integration:projectred.integration.gate:12>, [[<ProjRed|Core:projectred.core.part:4>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:1>], [<ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:1>], [<ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:4>]]);

addCraftingPage("rpgate", "rpgate11", 11, <ProjRed|Integration:projectred.integration.gate:10>, [[<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part:4>], [<ProjRed|Core:projectred.core.part:4>, <ProjRed|Core:projectred.core.part:5>, <ProjRed|Core:projectred.core.part>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part:1>, <ProjRed|Core:projectred.core.part>]]);

addTextPage("rpgate", "rpgate12", 12);


# Redstone Wires
addEntry("buildcraft", "rwires", <ProjRed|Core:projectred.core.part:10>);

# previously copper
addTextPage("rwires", "rwires0", 0);
addCraftingPage("rwires", "rwires1", 1, <ProjRed|Core:projectred.core.part:10>, [[<ore:ingotIron>, <ore:dustRedstone>]]);
addCraftingPage("rwires", "rwires2", 2, <ProjRed|Transmission:projectred.transmission.wire>, [[null, <ore:ingotRedAlloy>, null], [null, <ore:ingotRedAlloy>, null], [null, <ore:ingotRedAlloy>, null]]);
addCraftingPageNoMapping("rwires", "rwires3", 3, <ProjRed|Transmission:projectred.transmission.wire:1>, [[<minecraft:wool>, <ore:ingotRedAlloy>, <minecraft:wool>], [<minecraft:wool>, <ore:ingotRedAlloy>, <minecraft:wool>], [<minecraft:wool>, <ore:ingotRedAlloy>, <minecraft:wool>]]);
addCraftingPageNoMapping("rwires", "rwires4", 4, <ProjRed|Transmission:projectred.transmission.wire:1>, [[<ore:dyeWhite>, <ore:projredInsulatedWire>, <minecraft:string>]]);
addCraftingPage("rwires", "rwires5", 5, <ProjRed|Transmission:projectred.transmission.wire:17>, [[<minecraft:string:*>, <ore:projredInsulatedWire>, <minecraft:string:*>], [<ore:projredInsulatedWire>, <ore:projredInsulatedWire>, <ore:projredInsulatedWire>], [<minecraft:string:*>, <ore:projredInsulatedWire>, <minecraft:string:*>]]);
addCraftingPage("rwires", "rwires6", 6, <ProjRed|Transmission:projectred.transmission.framewire>, [[null, <minecraft:stick>, null], [<minecraft:stick>, <ProjRed|Transmission:projectred.transmission.wire>, <minecraft:stick>], [null, <minecraft:stick>, null]]);


#Railcraft
addEntry("buildcraft", "carts", <Railcraft:tool.crowbar>);

addTextPage("carts", "carts0", 0);
addCraftingPage("carts", "carts1", 1, <Railcraft:tool.crowbar>, [[null, <ore:dyeRed>, <ore:ingotIron>], [<ore:dyeRed>, <ore:ingotIron>, <ore:dyeRed>], [<ore:ingotIron>, <ore:dyeRed>, null]]);

addTextPage("carts", "carts2", 2);

addCraftingPage("carts", "carts3", 3, <Railcraft:cart.cargo>, [[<minecraft:trapped_chest:*>], [<minecraft:minecart:*>]]);
addCraftingPage("carts", "carts4", 4, <Railcraft:cart.work>, [[<ore:craftingTableWood>], [<minecraft:minecart:*>]]);
addCraftingPage("carts", "carts5", 5, <Railcraft:cart.tank>, [[<BuildCraft|Factory:tankBlock>], [<minecraft:minecart>]]);

addTextPage("carts", "cartsL0", 6);
addCraftingPage("carts", "cartsL1", 7, <Railcraft:machine.gamma>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:hopper>, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:stone_pressure_plate>, <ore:cobblestone>]]);
addCraftingPage("carts", "cartsL2", 8, <Railcraft:machine.gamma:1>, [[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:stone_pressure_plate>, <ore:cobblestone>], [<ore:cobblestone>, <minecraft:hopper>, <ore:cobblestone>]]);
addCraftingPage("carts", "cartsL5", 9, <Railcraft:machine.gamma:4>, [[<ore:blockGlassColorless>, <minecraft:hopper:*>, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, null, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, <minecraft:stone_pressure_plate>, <ore:blockGlassColorless>]]);
addCraftingPage("carts", "cartsL6", 10, <Railcraft:machine.gamma:5>, [[<ore:blockGlassColorless>, <minecraft:stone_pressure_plate>, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, null, <ore:blockGlassColorless>], [<ore:blockGlassColorless>, <minecraft:hopper:*>, <ore:blockGlassColorless>]]);


val locking = <Railcraft:track:20176>.withTag({track: "railcraft:track.locking"});
val disembark = <Railcraft:track:23575>.withTag({track: "railcraft:track.disembarking"});
val gated = <Railcraft:track:19746>.withTag({track: "railcraft:track.gated"});

val suspended = <Railcraft:track>.withTag({track: "railcraft:track.suspended"});
val detector = <Railcraft:track>.withTag({track: "railcraft:track.detector.direction"});
val control = <Railcraft:track>.withTag({track: "railcraft:track.control"});
val embarking = <Railcraft:track>.withTag({track: "railcraft:track.embarking"});
val junction = <Railcraft:track>.withTag({track: "railcraft:track.junction"});
val oneway = <Railcraft:track>.withTag({track: "railcraft:track.gated.oneway"});
val coupler = <Railcraft:track>.withTag({track: "railcraft:track.coupler"});

addTextPage("carts", "cartsT", 11);

addCraftingPage("carts", "cartsT0", 12, junction * 16, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

addCraftingPage("carts", "cartsT9", 13, suspended * 32, [[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>]]);

addCraftingPage("carts", "cartsT7", 14, detector * 16, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, <minecraft:stone_pressure_plate>, <ore:ingotIron>]]);

addCraftingPage("carts", "cartsT1", 15, control * 4, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

addCraftingPage("carts", "cartsT2", 16, locking * 16, [[<minecraft:gold_ingot>, <ore:dustRedstone>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <minecraft:stone_pressure_plate:*>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <ore:stickWood>, <minecraft:gold_ingot>]]);

addCraftingPage("carts", "cartsT8", 17, gated * 8, [[<minecraft:iron_ingot>, <minecraft:fence_gate:*>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <ore:stickWood>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:fence_gate:*>, <minecraft:iron_ingot>]]);

addCraftingPage("carts", "cartsT6", 18, oneway * 8, [[<ore:ingotIron>, <ore:fenceGateWood>, <ore:ingotIron>], [<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], [<ore:ingotIron>, <ore:fenceGateWood>, <ore:ingotIron>]]);

addCraftingPage("carts", "cartsT3", 19, disembark * 16, [[<minecraft:gold_ingot>, <minecraft:stone_pressure_plate:*>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <ore:stickWood>, <minecraft:gold_ingot>], [<minecraft:gold_ingot>, <ore:dustRedstone>, <minecraft:gold_ingot>]]);

addCraftingPage("carts", "cartsT4", 20, coupler * 16, [[<ore:ingotGold>, <Railcraft:tool.crowbar>, <ore:ingotGold>], [<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], [<ore:ingotGold>, <Railcraft:tool.crowbar>, <ore:ingotGold>]]);


# Steel
addEntry("buildcraft", "steel", <Railcraft:ingot>);

addTextPage("steel", "steel0", 0);


val disposal = <Railcraft:track:2264>.withTag({track: "railcraft:track.disposal"});
val priming = <Railcraft:track:8103>.withTag({track: "railcraft:track.priming"});

addCraftingPage("steel", "steel1", 1, <Railcraft:tool.crowbar.reinforced>, [[null, <ore:dyeRed>, <ore:ingotSteel>], [<ore:dyeRed>, <ore:ingotSteel>, <ore:dyeRed>], [<ore:ingotSteel>, <ore:dyeRed>, null]]);

addCraftingPage("steel", "steel2", 2, disposal * 8, [[<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotSteel>, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>]]);
addCraftingPage("steel", "steel3", 3, <Railcraft:track.elevator> * 8, [[<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotIron>, <ore:ingotGold>], [<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>]]);
addCraftingPage("steel", "steel4", 4, priming * 16, [[<ore:ingotSteel>, <minecraft:stone_pressure_plate:*>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:stone_slab:*>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:flint_and_steel:*>, <ore:ingotSteel>]]);

addCraftingPage("steel", "steel5", 5, <Railcraft:machine.gamma:2>, [[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], [<ore:dustRedstone>, <Railcraft:machine.gamma>, <ore:dustRedstone>], [<ore:ingotSteel>, <Railcraft:tool.steel.shovel>, <ore:ingotSteel>]]);
addCraftingPage("steel", "steel6", 6, <Railcraft:machine.gamma:3>, [[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], [<ore:dustRedstone>, <Railcraft:machine.gamma:1>, <ore:dustRedstone>], [<ore:ingotSteel>, <Railcraft:tool.steel.shovel>, <ore:ingotSteel>]]);

addCraftingPage("steel", "steel7", 7, <Railcraft:cart.track.layer>, [[<ore:dyeYellow>, <minecraft:redstone_torch>, <ore:dyeYellow>], [<BuildCraft|Core:stoneGearItem>, <minecraft:dispenser>, <BuildCraft|Core:stoneGearItem>], [<Railcraft:ingot>, <minecraft:minecart>, <Railcraft:ingot>]]);
addCraftingPage("steel", "steel8", 8, <Railcraft:cart.track.relayer>, [[<ore:dyeYellow>, <minecraft:redstone_torch>, <ore:dyeYellow>], [<BuildCraft|Core:stoneGearItem>, <minecraft:sticky_piston>, <BuildCraft|Core:stoneGearItem>], [<Railcraft:ingot>, <minecraft:minecart>, <Railcraft:ingot>]]);
addCraftingPage("steel", "steel9", 9, <Railcraft:cart.track.remover>, [[<ore:dyeYellow>, <minecraft:redstone_torch>, <ore:dyeYellow>], [<BuildCraft|Core:stoneGearItem>, <minecraft:stone_pickaxe>, <BuildCraft|Core:stoneGearItem>], [<Railcraft:ingot>, <minecraft:minecart>, <Railcraft:ingot>]]);


val reinforced = <Railcraft:track>.withTag({track: "railcraft:track.reinforced"});
val reboost = <Railcraft:track>.withTag({track: "railcraft:track.reinforced.boost"});
val rejunc = <Railcraft:track:764>.withTag({track: "railcraft:track.reinforced.junction"});
val hspeed = <Railcraft:track:816>.withTag({track: "railcraft:track.speed"});
val hstrans = <Railcraft:track:26865>.withTag({track: "railcraft:track.speed.transition"});
val hsboost = <Railcraft:track>.withTag({track: "railcraft:track.speed.boost"});

addTextPage("steel", "steel10", 10);
addCraftingPage("steel", "steel11", 11, reinforced, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:obsidian>, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
addCraftingPage("steel", "steel12", 12, reboost, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:obsidian>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>]]);
addCraftingPage("steel", "steel13", 13, rejunc, [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:obsidian>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
addCraftingPage("steel", "steel14", 14, hspeed, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:stone_slab:*>, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
addCraftingPage("steel", "steel15", 15, hstrans, [[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:stone_slab:*>, <ore:ingotSteel>]]);
addCraftingPage("steel", "steel16", 16, hsboost, [[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:stone_slab:*>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>]]);


# Steam Locomotive
addEntry("buildcraft", "steam", <Railcraft:cart.loco.steam.solid>);

val locomotive = <Railcraft:track:30516>.withTag({track: "railcraft:track.locomotive"});
val limiter = <Railcraft:track:16093>.withTag({track: "railcraft:track.limiter"});
val whistle = <Railcraft:track>.withTag({track: "railcraft:track.whistle"});

addTextPage("steam", "steam0", 0);
addCraftingPage("steam", "steam1", 1, <Railcraft:cart.loco.steam.solid>, [[<Railcraft:ingot>, <Railcraft:ingot>, <minecraft:furnace>], [<Railcraft:ingot>, <Railcraft:ingot>, <minecraft:furnace>], [<minecraft:iron_bars>, <minecraft:minecart:*>, <minecraft:minecart:*>]]);
addCraftingPageNoMapping("steam", "steam2", 2, <Railcraft:cart.loco.steam.solid>, [[null, <ore:dyeLightGray>, null], [null, <Railcraft:cart.loco.steam.solid>, null], [null, <ore:dyeGray>, null]]);
addCraftingPage("steam", "steam3", 3, locomotive, [[<minecraft:iron_ingot>, <Railcraft:part.signal.lamp:*>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <ore:stickWood>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <Railcraft:part.signal.lamp:*>, <minecraft:iron_ingot>]]);
addCraftingPage("steam", "steam4", 4, limiter, [[<minecraft:iron_ingot>, <minecraft:repeater:*>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <ore:stickWood>, <minecraft:iron_ingot>], [<minecraft:iron_ingot>, <minecraft:repeater:*>, <minecraft:iron_ingot>]]);
addCraftingPage("steam", "steam5", 5, whistle, [[<ore:ingotIron>, <ore:dyeYellow>, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, <ore:dyeBlack>, <ore:ingotIron>]]);


# Feed Station
addEntry("buildcraft", "feedstation", <Railcraft:machine.alpha:11>);

addTextPage("feedstation", "feedstation0", 0);
addCraftingPage("feedstation", "feedstation1", 1, <Railcraft:machine.alpha:11>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:stickWood>, <ore:runeLustB>, <ore:stickWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);


# World Anchors
addEntry("buildcraft", "anchor", <BuildCraft|Builders:builderBlock>);

addTextPage("anchor", "anchor0", 0);
addTextPage("anchor", "anchor1", 1);
addCraftingPage("anchor", "anchor2", 2, <Railcraft:machine.alpha>, [[<ore:ingotGold>, <minecraft:obsidian>, <ore:ingotGold>], [<ore:gemDiamond>, <minecraft:ender_pearl:*>, <ore:gemDiamond>], [<ore:ingotGold>, <minecraft:obsidian>, <ore:ingotGold>]]);
addCraftingPage("anchor", "anchor3", 3, <Railcraft:machine.alpha:2>, [[<ore:ingotGold>, <minecraft:obsidian>, <ore:ingotGold>], [<ore:dyeLime>, <minecraft:ender_pearl>, <ore:dyeLime>], [<ore:ingotGold>, <minecraft:obsidian>, <ore:ingotGold>]]);
addCraftingPage("anchor", "anchor4", 4, <Railcraft:machine.alpha:13>, [[<ore:ingotGold>, <minecraft:obsidian>, <ore:ingotGold>], [<ore:dyeCyan>, <minecraft:ender_pearl:*>, <ore:dyeCyan>], [<ore:ingotGold>, <minecraft:obsidian>, <ore:ingotGold>]]);
addCraftingPage("anchor", "anchor5", 5, <Railcraft:cart.anchor>, [[<Railcraft:machine.alpha>], [<minecraft:minecart:*>]]);


# Builder
addEntry("buildcraft", "builder", <BuildCraft|Builders:builderBlock>);

addTextPage("builder", "builder0", 0);

addTextPage("builder", "builder1", 1);

addImagePage("builder", "builderI", 2, "landmark.png");

addTextPage("builder", "builder2", 3);

addImagePage("builder", "builderI2", 4, "architect.png");

addCraftingPage("builder", "builder3", 5, <BuildCraft|Builders:builderBlock>, [[<ore:dyeBlack>, <BuildCraft|Core:markerBlock:*>, <ore:dyeBlack>], [<ore:dyeYellow>, <minecraft:crafting_table:*>, <ore:dyeYellow>], [<ore:gearDiamond>, <minecraft:chest:*>, <ore:gearDiamond>]]);
addCraftingPage("builder", "builder4", 6, <BuildCraft|Builders:architectBlock>, [[<ore:dyeBlack>, <BuildCraft|Core:markerBlock>, <ore:dyeBlack>], [<ore:dyeYellow>, <ore:craftingTableWood>, <ore:dyeYellow>], [<ore:gearIron>, <BuildCraft|Builders:blueprintItem>, <ore:gearIron>]]);
addCraftingPage("builder", "builder5", 7, <BuildCraft|Core:markerBlock>, [[<minecraft:dye:4>, null], [<minecraft:redstone_torch:*>, null]]);
addCraftingPage("builder", "builder6", 8, <BuildCraft|Builders:templateItem>, [[<minecraft:paper:*>, <minecraft:paper:*>, <minecraft:paper:*>], [<minecraft:paper:*>, <ore:dyeBlack>, <minecraft:paper:*>], [<minecraft:paper:*>, <minecraft:paper:*>, <minecraft:paper:*>]]);
addCraftingPage("builder", "builder7", 9, <BuildCraft|Builders:blueprintItem>, [[<minecraft:paper:*>, <minecraft:paper:*>, <minecraft:paper:*>], [<minecraft:paper:*>, <ore:gemLapis>, <minecraft:paper:*>], [<minecraft:paper:*>, <minecraft:paper:*>, <minecraft:paper:*>]]);

addTextPage("builder", "builder8", 10);

addCraftingPage("builder", "builder9", 11, <BuildCraft|Builders:libraryBlock>, [[<ore:ingotIron>, <ore:gearIron>, <ore:ingotIron>], [<minecraft:bookshelf:*>, <BuildCraft|Builders:blueprintItem>, <minecraft:bookshelf:*>], [<ore:ingotIron>, <minecraft:redstone:*>, <ore:ingotIron>]]);


# Filler
addEntry("buildcraft", "filler", <BuildCraft|Builders:fillerBlock>);

addTextPage("filler", "filler0", 0);

addCraftingPage("filler", "filler1", 1, <BuildCraft|Builders:fillerBlock>, [[<ore:dyeBlack>, <BuildCraft|Core:markerBlock:*>, <ore:dyeBlack>], [<ore:dyeYellow>, <minecraft:crafting_table:*>, <ore:dyeYellow>], [<ore:gearGold>, <minecraft:chest:*>, <ore:gearGold>]]);


# Quarry
addEntry("buildcraft", "quarry", <BuildCraft|Builders:machineBlock>);

addTextPage("quarry", "quarry0", 0);

addCraftingPage("quarry", "quarry1", 1, <BuildCraft|Builders:machineBlock>, [[<ore:runeGreedB>, <ore:gearDiamond>, <ore:runeWrathB>], [<ore:gearIron>, <Thaumcraft:ItemShovelElemental>, <ore:gearIron>], [<ore:gearGold>, <Thaumcraft:ItemPickaxeElemental>, <ore:gearGold>]]);


# Auto Workbench
addEntry("buildcraft", "autoCraft", <BuildCraft|Factory:autoWorkbenchBlock>);

addTextPage("autoCraft", "autoCraft0", 0);

addCraftingPage("autoCraft", "autoCraft1", 1, <BuildCraft|Factory:autoWorkbenchBlock>, [[<ore:gearStone>, <ore:craftingTableWood>, <ore:gearStone>]]);


# Chisel
addEntry("buildcraft", "chisel", <chisel:chisel>);
addTextPage("chisel", "chisel0", 0);
addCraftingPage("chisel", "chisel1", 1, <chisel:chisel>, [[<minecraft:stained_hardened_clay:1>, <ore:ingotIron>]]);
addCraftingPage("chisel", "chisel2", 2, <chisel:diamondChisel>, [[<minecraft:stained_hardened_clay:1>, <ore:gemDiamond>]]);


# Ships
addEntry("buildcraft", "ships", <ArchimedesShipsPlus:seat>);

addTextPage("ships", "ships0", 0);
addCraftingPage("ships", "ships1", 1, <ArchimedesShipsPlus:marker>, [[<ore:plankWood>, <minecraft:stick>, <ore:plankWood>], [<minecraft:stick>, <ore:ingotIron>, <minecraft:stick>], [<ore:plankWood>, <minecraft:stick>, <ore:plankWood>]]);
addCraftingPage("ships", "ships2", 2, <ArchimedesShipsPlus:seat>, [[<minecraft:wool:*>, null], [<minecraft:wool:*>, <minecraft:wool:*>]]);
addCraftingPage("ships", "ships3", 3, <ArchimedesShipsPlus:floater>, [[<ore:logWood>, <minecraft:wool:*>]]);

addTextPage("ships", "ships4", 4);
addCraftingPage("ships", "ships5", 5, <ArchimedesShipsPlus:balloon>, [[<ore:cloud>, <minecraft:wool>, <minecraft:string>]]);

addCraftingPage("ships", "ships6", 6, <ArchimedesShipsPlus:engine>,[[<minecraft:iron_ingot:*>, <minecraft:water_bucket:*>, <minecraft:iron_ingot:*>], [<minecraft:iron_ingot:*>, <minecraft:furnace:*>, <minecraft:iron_ingot:*>], [<minecraft:iron_ingot:*>, <minecraft:iron_ingot:*>, <minecraft:iron_ingot:*>]]);


# Carpentry
addEntry("buildcraft", "carpenter", <CarpentersBlocks:itemCarpentersHammer>);

addTextPage("carpenter", "carpenter0", 0);
addCraftingPage("carpenter", "carpenter1", 1, <CarpentersBlocks:blockCarpentersBlock>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
addTextPage("carpenter", "carpenter2", 2);
addCraftingPage("carpenter", "carpenter3", 3, <CarpentersBlocks:itemCarpentersHammer>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
addCraftingPage("carpenter", "carpenter4", 4, <CarpentersBlocks:itemCarpentersChisel>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);


# ComputerCraft
addEntry("buildcraft", "computers", <ComputerCraft:CC-Computer:16384>);

addTextPage("computers", "computers0", 0);
addCraftingPage("computers", "computers1", 1, <ComputerCraft:CC-Computer>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:chipsetIron>, <ore:stone>], [<ore:stone>, <ore:paneGlassColorless>, <ore:stone>]]);
addCraftingPage("computers", "computers2", 2, <ComputerCraft:CC-Computer:16384>, [[<ore:ingotGold>, <ore:chipsetGold>, <ore:ingotGold>], [<ore:ingotGold>, <ComputerCraft:CC-Computer>, <ore:ingotGold>], [<BuildCraft|Transport:pipeWire>, <BuildCraft|Transport:pipeWire:2>, <BuildCraft|Transport:pipeWire:1>]]);

addTextPage("computers", "computers3", 3);
addCraftingPage("computers", "computers4", 4, <ComputerCraft:CC-Turtle>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<ore:chipsetDiamond>, <ComputerCraft:CC-Computer>, <ore:chipsetDiamond>], [<ore:gearIron>, <ore:chestWood>, <ore:gearIron>]]);
addCraftingPage("computers", "computers5", 5, <ComputerCraft:CC-TurtleAdvanced>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:chipsetDiamond>, <ComputerCraft:CC-Computer:16384>, <ore:chipsetDiamond>], [<ore:gearGold>, <ore:chestWood>, <ore:gearGold>]]);

addTextPage("computers", "computers6", 6);
addCraftingPage("computers", "computers7", 7, <ComputerCraft:CC-Peripheral:2>, [[<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>], [<minecraft:stone:*>, <minecraft:glass_pane:*>, <minecraft:stone:*>], [<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>]]);
addCraftingPage("computers", "computers8", 8, <ComputerCraft:CC-Peripheral:4>, [[<minecraft:gold_ingot:*>, <minecraft:gold_ingot:*>, <minecraft:gold_ingot:*>], [<minecraft:gold_ingot:*>, <minecraft:glass_pane:*>, <minecraft:gold_ingot:*>], [<minecraft:gold_ingot:*>, <minecraft:gold_ingot:*>, <minecraft:gold_ingot:*>]]);
addCraftingPage("computers", "computers9", 9, <ComputerCraft:CC-Peripheral>, [[<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>], [<minecraft:stone:*>, <minecraft:redstone:*>, <minecraft:stone:*>], [<minecraft:stone:*>, <minecraft:redstone:*>, <minecraft:stone:*>]]);
addCraftingPage("computers", "computers10", 10, <ComputerCraft:disk>, [[<minecraft:redstone>, <minecraft:paper>]]);
addCraftingPage("computers", "computers11", 11, <ComputerCraft:CC-Peripheral:3>, [[<minecraft:stone:*>, <minecraft:stone:*>, <minecraft:stone:*>], [<minecraft:stone:*>, <minecraft:redstone:*>, <minecraft:stone:*>], [<minecraft:stone:*>, <minecraft:dye>, <minecraft:stone:*>]]);


# Iron Chests
addEntry("buildcraft", "ironchests", <IronChest:BlockIronChest:5>);

addTextPage("ironchests", "ironchests0", 0);
addCraftingPage("ironchests", "ironchests1", 1, <IronChest:BlockIronChest>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <ore:chestWood>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
addCraftingPage("ironchests", "ironchests2", 2, <IronChest:BlockIronChest:1>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], [<ore:ingotGold>, <IronChest:BlockIronChest>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
addCraftingPage("ironchests", "ironchests3", 3, <IronChest:BlockIronChest:2>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:gemDiamond>, <IronChest:BlockIronChest:1>, <ore:gemDiamond>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);
addCraftingPage("ironchests", "ironchests4", 4, <IronChest:BlockIronChest:5>, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:blockGlass>, <IronChest:BlockIronChest:2>, <ore:blockGlass>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);
addCraftingPage("ironchests", "ironchests5", 5, <IronChest:BlockIronChest:6>, [[<minecraft:obsidian:*>, <minecraft:obsidian:*>, <minecraft:obsidian:*>], [<minecraft:obsidian:*>, <IronChest:BlockIronChest:2>, <minecraft:obsidian:*>], [<minecraft:obsidian:*>, <minecraft:obsidian:*>, <minecraft:obsidian:*>]]);


# Cardboard Box
addEntry("buildcraft", "box", <cardboardboxes:cbCardboardBox>);

addTextPage("box", "box0", 0);
addCraftingPage("box", "box1", 1, <cardboardboxes:cbCardboardBox>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>], [<ore:slimeball>, <ore:logWood>, <ore:slimeball>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);


# Satchel
addEntry("buildcraft", "satchel", <satchels:pouch>);

addTextPage("satchel", "satchel0", 0);
addCraftingPage("satchel", "satchel1", 1, <satchels:pouch>, [[<minecraft:string:*>, <minecraft:leather:*>, <minecraft:string:*>], [<minecraft:leather:*>, null, <minecraft:leather:*>], [<minecraft:string:*>, <minecraft:leather:*>, <minecraft:string:*>]]);
#addCraftingPage("satchel", "satchel2", 2, <satchels:pouch_upgrade>, [[null, <ore:clothManaweave>, null], [<ore:clothManaweave>, <minecraft:leather>, <ore:clothManaweave>], [null, <aether_legacy:swet_ball>, null]]);
addCraftingPage("satchel", "satchel3", 2, <satchels:satchel>, [[<minecraft:string:*>, null, <minecraft:string:*>], [<minecraft:slime_ball:*>, <minecraft:leather:*>, <minecraft:slime_ball:*>], [<minecraft:leather:*>, <minecraft:diamond:*>, <minecraft:leather:*>]]);


# Storage Drawers
addEntry("buildcraft", "drawers", <StorageDrawers:upgradeTemplate>);

addTextPage("drawers", "drawers0", 0);
addTextPage("drawers", "drawers1", 1);

addCraftingPage("drawers", "drawers2", 2, <StorageDrawers:fullDrawers1>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [null, <ore:chestWood>, null], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);
addCraftingPage("drawers", "drawers3", 3, <StorageDrawers:fullDrawers2>, [[<ore:plankWood>, <ore:chestWood>, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>]]);
addCraftingPage("drawers", "drawers4", 4, <StorageDrawers:fullDrawers4>, [[<ore:chestWood>, <ore:plankWood>, <ore:chestWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:chestWood>, <ore:plankWood>, <ore:chestWood>]]);
addCraftingPage("drawers", "drawers5", 5, <StorageDrawers:halfDrawers2>, [[<ore:slabWood>, <ore:chestWood>, <ore:slabWood>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:slabWood>, <ore:chestWood>, <ore:slabWood>]]);
addCraftingPage("drawers", "drawers6", 6, <StorageDrawers:halfDrawers4>, [[<ore:chestWood>, <ore:slabWood>, <ore:chestWood>], [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>], [<ore:chestWood>, <ore:slabWood>, <ore:chestWood>]]);

addTextPage("drawers", "drawers7", 7);
addCraftingPage("drawers", "drawers8", 8, <StorageDrawers:compDrawers>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:piston>, <ore:drawerBasic>, <minecraft:piston>], [<minecraft:stone>, <ore:ingotIron>, <minecraft:stone>]]);
addCraftingPage("drawers", "drawers9", 9, <StorageDrawers:controller>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:comparator:*>, <ore:drawerBasic>, <minecraft:comparator:*>], [<minecraft:stone>, <ore:gemDiamond>, <minecraft:stone>]]);
addCraftingPage("drawers", "drawers10", 10, <StorageDrawers:controllerSlave>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>], [<minecraft:comparator:*>, <ore:drawerBasic>, <minecraft:comparator:*>], [<minecraft:stone>, <ore:ingotGold>, <minecraft:stone>]]);

addTextPage("drawers", "drawers11", 11);
addCraftingPage("drawers", "drawers12", 12, <StorageDrawers:framingTable>, [[<StorageDrawers:trim:*>, <StorageDrawers:trim:*>, <StorageDrawers:trim:*>], [<StorageDrawers:trim:*>, null, <StorageDrawers:trim:*>]]);
addCraftingPage("drawers", "drawers13", 13, <StorageDrawers:fullCustom1>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>], [null, <ore:chestWood>, null], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
addCraftingPage("drawers", "drawers14", 14, <StorageDrawers:fullCustom2>, [[<ore:stickWood>, <ore:chestWood>, <ore:stickWood>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:stickWood>, <ore:chestWood>, <ore:stickWood>]]);
addCraftingPage("drawers", "drawers15", 15, <StorageDrawers:fullCustom4>, [[<ore:chestWood>, <ore:stickWood>, <ore:chestWood>], [<ore:stickWood>, <ore:plankWood>, <ore:stickWood>], [<ore:chestWood>, <ore:stickWood>, <ore:chestWood>]]);
addCraftingPage("drawers", "drawers16", 16, <StorageDrawers:halfCustom2>, [[<ore:stickWood>, <ore:chestWood>, <ore:stickWood>], [<ore:stickWood>, <ore:slabWood>, <ore:stickWood>], [<ore:stickWood>, <ore:chestWood>, <ore:stickWood>]]);
addCraftingPage("drawers", "drawers17", 17, <StorageDrawers:halfCustom4>, [[<ore:chestWood>, <ore:stickWood>, <ore:chestWood>], [<ore:stickWood>, <ore:slabWood>, <ore:stickWood>], [<ore:chestWood>, <ore:stickWood>, <ore:chestWood>]]);

val otherDrawers = [<StorageDrawers:fullDrawers1:1>, <StorageDrawers:fullDrawers1:2>, <StorageDrawers:fullDrawers1:3>, <StorageDrawers:fullDrawers1:4>, <StorageDrawers:fullDrawers1:5>, <StorageDrawers:fullDrawers2:1>, <StorageDrawers:fullDrawers2:2>, <StorageDrawers:fullDrawers2:3>, <StorageDrawers:fullDrawers2:4>, <StorageDrawers:fullDrawers2:5>, <StorageDrawers:fullDrawers4:1>, <StorageDrawers:fullDrawers4:2>, <StorageDrawers:fullDrawers4:3>, <StorageDrawers:fullDrawers4:4>, <StorageDrawers:fullDrawers4:5>, <StorageDrawers:halfDrawers2:1>, <StorageDrawers:halfDrawers2:2>, <StorageDrawers:halfDrawers2:3>, <StorageDrawers:halfDrawers2:4>, <StorageDrawers:halfDrawers2:5>, <StorageDrawers:halfDrawers4:1>, <StorageDrawers:halfDrawers4:2>, <StorageDrawers:halfDrawers4:3>, <StorageDrawers:halfDrawers4:4>, <StorageDrawers:halfDrawers4:5>] as IItemStack[];
for drawer in otherDrawers {
	mods.botania.Lexicon.addRecipeMapping(drawer, "botania.entry.drawers", 2);
}


# Robots
addEntry("buildcraft", "robots", <BuildCraft|Robotics:redstone_board>);

addTextPage("robots", "robots0", 0);
addCraftingPage("robots", "robots1", 1, <BuildCraft|Robotics:robot>, [[<ore:gearStone>, <ore:ingotIron>, <ore:gearStone>], [<ore:ingotIron>, <ore:crystalRedstone>, <ore:ingotIron>], [<ore:gearStone>, <ore:ingotIron>, <ore:gearStone>]]);
addTextPage("robots", "robots2", 2);
addCraftingPage("robots", "robots3", 3, <BuildCraft|Silicon:laserTableBlock:4>, [[<minecraft:obsidian:*>, <ore:gemEmerald>, <minecraft:obsidian:*>], [<minecraft:obsidian:*>, <BuildCraft|Silicon:redstoneChipset>, <minecraft:obsidian:*>], [<minecraft:obsidian:*>, <ore:gearDiamond>, <minecraft:obsidian:*>]]);
addCraftingPage("robots", "robots4", 4, <BuildCraft|Robotics:redstone_board>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>], [<minecraft:paper>, <ore:dustRedstone>, <minecraft:paper>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
addTextPage("robots", "robots5", 5);
addTextPage("robots", "robots6", 6);
addCraftingPage("robots", "robots7", 7, <BuildCraft|Robotics:robotStation>, [[null, null, null], [null, <ore:ingotIron>, null], [<ore:ingotIron>, <BuildCraft|Silicon:redstoneChipset:2>, <ore:ingotIron>]]);
addCraftingPage("robots", "robots8", 8, <BuildCraft|Core:mapLocation>, [[<minecraft:paper>, <minecraft:paper>, <minecraft:paper>], [<minecraft:paper>, <ore:dyeYellow>, <minecraft:paper>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);
addCraftingPage("robots", "robots9", 9, <BuildCraft|Robotics:zonePlan>, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [<ore:gearGold>, <minecraft:map>, <ore:gearGold>], [<ore:ingotIron>, <ore:gearDiamond>, <ore:ingotIron>]]);

# Pipes: Lenses and Filters
#addEntry("buildcraft", "lensfilters", <BuildCraft|Transport:pipeLens:10>);

#addTextPage("lensfilters", "lensfilters0", 0);
#addCraftingPage("lensfilters", "lensfilters0", 0);
#addCraftingPage("lensfilters", "lensfilters0", 0);
