import minetweaker.item.IItemStack;


<ore:ingotTin>.remove(<ProjRed|Core:projectred.core.part:53>);
<ore:ingotSilver>.remove(<ProjRed|Core:projectred.core.part:54>);

recipes.remove(<Thaumcraft:ItemThaumometer>);
recipes.addShaped(<Thaumcraft:ItemThaumometer>, [[null, <ore:ingotGold>, null], [<ore:ingotGold>, <minecraft:glass_pane>, <ore:ingotGold>], [null, <ore:ingotGold>, null]]);

recipes.remove(<Thaumcraft:WandCap>);
recipes.addShaped(<Thaumcraft:WandCap>, [[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>], [<ore:nuggetIron>, <minecraft:obsidian>, <ore:nuggetIron>]]);


mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockMetalDevice:9>);
mods.thaumcraft.Arcane.addShaped("DISTILESSENTIA", <Thaumcraft:blockMetalDevice:9>, "aqua 5", [[<Thaumcraft:blockTube>, <Thaumcraft:blockTube>, <Thaumcraft:blockTube>], [<Thaumcraft:blockTube:3>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockTube:1>], [<Thaumcraft:blockTube>, <Thaumcraft:blockTube>, <Thaumcraft:blockTube>]]);

mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockTube:3>);
mods.thaumcraft.Arcane.addShapeless("TUBEFILTER", <Thaumcraft:blockTube:3>, "aqua 5, ordo 10", [<Thaumcraft:blockTube>, <Thaumcraft:ItemResource:8>]);
mods.thaumcraft.Research.refreshResearchRecipe("TUBEFILTER");


mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:ItemGolemCore:100>);
mods.thaumcraft.Arcane.addShaped("COREGATHER", <Thaumcraft:ItemGolemCore:100>, "ordo 5, ignis 5", [[null, <Botania:rune:1>, null],
																						[<minecraft:brick>, <Thaumcraft:ItemResource:1>, <minecraft:brick>],
																						[null, <Botania:rune:2>, null]]);

mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:blockLifter>);
mods.thaumcraft.Arcane.addShaped("LEVITATOR", <Thaumcraft:blockLifter>, "aer 10, terra 5", [[<ore:plankGreatwood>, <ore:shardEarth>, <ore:plankGreatwood>],
																						[<ore:ingotIron>, <Botania:rune:3>, <ore:ingotIron>],
																						[<ore:plankGreatwood>, <ore:shardAir>, <ore:plankGreatwood>]]);			

mods.thaumcraft.Arcane.removeRecipe(<Thaumcraft:ItemBowBone>);
mods.thaumcraft.Arcane.addShaped("BONEBOW", <Thaumcraft:ItemBowBone>, "perditio 32, aer 16", [[<minecraft:string>, <minecraft:bone>, null],
																						[<minecraft:string>, <minecraft:skull:1>, <minecraft:bone>],
																						[<minecraft:string>, <minecraft:bone>, null]]);		


mods.thaumcraft.Infusion.removeRecipe(<gadomancy:ItemEtherealFamiliar>);


mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemEldritchObject>);
mods.thaumcraft.Infusion.addRecipe("OCULUS", <minecraft:ender_eye>, [<Thaumcraft:ItemResource:17>, <dimdoors:World Thread>, <minecraft:gold_ingot>, <dimdoors:World Thread>], "alienis 64, vacuos 16, tenebrae 16, iter 16", <Thaumcraft:ItemEldritchObject>, 5);

mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:ItemGolemCore:7>);
mods.thaumcraft.Infusion.addRecipe("CORELUMBER", <Thaumcraft:ItemGolemCore:3>, [<Thaumcraft:ItemAxeElemental>, <minecraft:iron_axe>, <Botania:manasteelAxe>, <Botania:elementiumAxe>], "instrumentum 16, arbor 16, meto 16", <Thaumcraft:ItemGolemCore:7>, 4);

// LAMPS
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:blockMetalDevice:8>);
mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:blockMetalDevice:13>);
#mods.thaumcraft.Infusion.addRecipe("LAMPGROWTH", <Thaumcraft:blockMetalDevice:7>, [<Botania:rune:2>, <minecraft:dye:15>, <Thaumcraft:ItemShard:3>, <Botania:rune:4>, <minecraft:dye:15>, <Thaumcraft:ItemShard:3>], "herba 16, victus 16, lux 8", <Thaumcraft:blockMetalDevice:8>, 3);
#mods.thaumcraft.Infusion.addRecipe("LAMPFERTILITY", <Thaumcraft:blockMetalDevice:7>, [<Botania:rune:1>, <minecraft:wheat>, <Thaumcraft:ItemShard:1>, <Botania:rune:9>, <minecraft:carrot>, <Thaumcraft:ItemShard:1>], "bestia 16, victus 16, lux 8", <Thaumcraft:blockMetalDevice:13>, 3);


mods.thaumcraft.Infusion.removeRecipe(<Thaumcraft:BootsTraveller>);
mods.thaumcraft.Infusion.addRecipe("BOOTSTRAVELLER", <minecraft:leather_boots>, [<aether_legacy:agility_cape>, <Thaumcraft:ItemShard:0>, <aether_legacy:enchanted_gravitite>, <aether_legacy:enchanted_gravitite>, <Thaumcraft:ItemShard:0>], "volatus 25, iter 25", <Thaumcraft:BootsTraveller>, 3);

mods.thaumcraft.Infusion.removeRecipe(<ThaumicExploration:bootsMeteor>);
mods.thaumcraft.Infusion.addRecipe("METEORBOOTS", <Thaumcraft:BootsTraveller>, [<Thaumcraft:FocusFire>, <Botania:manaResource:5>, <Thaumcraft:ItemShard:1>, <Botania:manaResource:5>, <Botania:rune:15>, <Botania:manaResource:5>, <Thaumcraft:ItemShard:1>, <Botania:manaResource:5>], "volatus 25, iter 25", <ThaumicExploration:bootsMeteor>, 6);


//mods.thaumcraft.Crucible.addRecipe("PURECOPPER", <etfuturum:copper_ore>, <Thaumcraft:ItemNugget:17>, "metallum 1, ordo 1");


val shards = [<Thaumcraft:ItemShard:0>, <Thaumcraft:ItemShard:1>, <Thaumcraft:ItemShard:2>, <Thaumcraft:ItemShard:3>, <Thaumcraft:ItemShard:4>, <Thaumcraft:ItemShard:5>] as IItemStack[];

mods.thaumcraft.Crucible.addRecipe("CRUCIBLE", <Thaumcraft:ItemShard:0>, <minecraft:quartz>, "aer 2");
mods.thaumcraft.Crucible.addRecipe("CRUCIBLE", <Thaumcraft:ItemShard:1>, <minecraft:quartz>, "ignis 2");
mods.thaumcraft.Crucible.addRecipe("CRUCIBLE", <Thaumcraft:ItemShard:2>, <minecraft:quartz>, "aqua 2");
mods.thaumcraft.Crucible.addRecipe("CRUCIBLE", <Thaumcraft:ItemShard:3>, <minecraft:quartz>, "terra 2");
mods.thaumcraft.Crucible.addRecipe("CRUCIBLE", <Thaumcraft:ItemShard:4>, <minecraft:quartz>, "ordo 2");
mods.thaumcraft.Crucible.addRecipe("CRUCIBLE", <Thaumcraft:ItemShard:5>, <minecraft:quartz>, "perditio 2");

mods.thaumcraft.Research.addPage("CRUCIBLE", "tc.research_page.CRUCIBLE.N");
mods.thaumcraft.Research.addCruciblePage("CRUCIBLE", <Thaumcraft:ItemShard:0>);
mods.thaumcraft.Research.addCruciblePage("CRUCIBLE", <Thaumcraft:ItemShard:1>);
mods.thaumcraft.Research.addCruciblePage("CRUCIBLE", <Thaumcraft:ItemShard:2>);
mods.thaumcraft.Research.addCruciblePage("CRUCIBLE", <Thaumcraft:ItemShard:3>);
mods.thaumcraft.Research.addCruciblePage("CRUCIBLE", <Thaumcraft:ItemShard:4>);
mods.thaumcraft.Research.addCruciblePage("CRUCIBLE", <Thaumcraft:ItemShard:5>);


val daybloom = <Botania:specialFlower>.withTag({type: "daybloom"});
val nightshade = <Botania:specialFlower>.withTag({type: "nightshade"});
mods.thaumcraft.Infusion.addRecipe("TWILIGHTFOREST", <Botania:manaResource:2>, [daybloom, <minecraft:packed_ice>, <minecraft:ghast_tear>, nightshade, <minecraft:blaze_powder>, <Thaumcraft:ItemResource:2>], "ignis 5, terra 5, praecantatio 5, aqua 5, aer 5", <TwilightForest:item.twilightDiamond>, 4);
