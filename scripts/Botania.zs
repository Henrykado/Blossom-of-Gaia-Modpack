import minetweaker.item.IItemStack;

#recipes.addShapeless(<Botania:fertilizer>, [<Botania:flower:*>, <Botania:flower:*>, <Botania:pestleAndMortar>, <minecraft:dye:15>]);
recipes.addShaped(<Botania:pool>, [[<Botania:livingrock0Slab>, <Botania:pool:2>, <Botania:livingrock0Slab>], [<Botania:livingrock0Slab>, <Botania:livingrock0Slab>, <Botania:livingrock0Slab>]]);

recipes.remove(<Botania:travelBelt>);

recipes.remove(<Botania:corporeaSpark>);
recipes.addShapeless(<Botania:corporeaSpark>, [<Botania:spark>, <ore:elvenPixieDust>]);

mods.botania.ManaInfusion.removeRecipe(<minecraft:leather>);
mods.botania.ManaInfusion.removeRecipe(<minecraft:slime_ball>);
mods.botania.ManaInfusion.addAlchemy(<minecraft:slime_ball>, <minecraft:dye:2>, 28000);
mods.botania.ManaInfusion.removeRecipe(<minecraft:cactus>);

mods.botania.ManaInfusion.addConjuration(<aether_legacy:aercloud> * 2, <aether_legacy:aercloud>, 2500);
mods.botania.ManaInfusion.addConjuration(<aether_legacy:aercloud:1> * 2, <aether_legacy:aercloud:1>, 2500);
mods.botania.ManaInfusion.addConjuration(<aether_legacy:aercloud:2> * 2, <aether_legacy:aercloud:2>, 2500);

#mods.botania.ManaInfusion.removeRecipe(<Botania:manaResource:10>);

mods.botania.Apothecary.removeRecipe("daybloom");
#mods.botania.Apothecary.removeRecipe("nightshade");
mods.botania.Apothecary.removeRecipe("hydroangeas");
mods.botania.Apothecary.removeRecipe("endoflame");
mods.botania.Apothecary.addRecipe("daybloom", [<ore:petalYellow>, <ore:petalYellow>, <ore:petalOrange>, <ore:petalOrange>]);
mods.botania.Apothecary.addRecipe("endoflame", [<ore:petalBrown>, <ore:petalBrown>, <ore:petalRed>, <ore:petalLightGray>]);
mods.botania.Apothecary.addRecipe("hydroangeas", [<ore:petalBlue>, <ore:petalBlue>, <ore:petalCyan>, <ore:petalCyan>]);

mods.botania.Lexicon.setEntryKnowledgeType("botania.entry.terraSword", "alfheim");
mods.botania.Lexicon.setEntryKnowledgeType("botania.entry.terraPick", "alfheim");
mods.botania.Lexicon.setEntryKnowledgeType("botania.entry.terraAxe", "alfheim");
mods.botania.Lexicon.setEntryKnowledgeType("botania.entry.terrasteelArmor", "alfheim");
mods.botania.Lexicon.setEntryKnowledgeType("botania.entry.temperanceStone", "alfheim");
mods.botania.Lexicon.setEntryKnowledgeType("botania.entry.thornChakram", "alfheim");

game.setLocalization("en_US", "botania.page.hopperhock2", "&oThis sucks&r.");
game.setLocalization("en_US", "achievement.botania:flowerPickup.desc", "Use a Floral Fertilizer to grow a Mystical Flower");

game.setLocalization("en_US", "botania.tagline.hammerz.lexicon.manasteelhammer", "3x3 block breaking");

mods.botania.Lexicon.removeEntry("botania.entry.wrap");
mods.botania.Lexicon.removeEntry("botania.entry.travelBelt");
mods.botania.Lexicon.removeEntry("botania.entry.superTravelBelt");
mods.botania.Lexicon.removeEntry("botania.entry.speedUpBelt");


mods.botania.Lexicon.removePage("botania.entry.endoflame", 3);
var endoflame = <Botania:specialFlower>.withTag({type: "endoflame"});
mods.botania.Lexicon.addPetalPage("botania.page.endoflame2","botania.entry.endoflame",3,[endoflame],[[<ore:petalBrown>, <ore:petalBrown>, <ore:petalRed>, <ore:petalLightGray>]]);

mods.botania.Lexicon.removePage("botania.entry.hydroangeas", 2);
var hydroangeas = <Botania:specialFlower>.withTag({type: "hydroangeas"});
mods.botania.Lexicon.addPetalPage("botania.page.hydroangeas1","botania.entry.hydroangeas",2,[hydroangeas],[[<ore:petalBlue>, <ore:petalBlue>, <ore:petalCyan>, <ore:petalCyan>]]);

mods.botania.Lexicon.removePage("botania.entry.daybloom", 2);
var daybloom = <Botania:specialFlower>.withTag({type: "daybloom"});
mods.botania.Lexicon.addPetalPage("botania.page.daybloom2","botania.entry.daybloom",2,[daybloom],[[<ore:petalYellow>, <ore:petalYellow>, <ore:petalOrange>, <ore:petalOrange>]]);


recipes.remove(<Botania:goldenLaurel>);
recipes.addShaped(<Botania:goldenLaurel>, [[<aether_legacy:ambrosium_shard>, null, <aether_legacy:ambrosium_shard>], [<aether_legacy:golden_oak_leaves>, <ore:eternalLifeEssence>, <aether_legacy:golden_oak_leaves>], [<aether_legacy:golden_oak_leaves>, <aether_legacy:golden_oak_leaves>, <aether_legacy:golden_oak_leaves>]]);

mods.botania.Lexicon.removePage("botania.entry.goldenLaurel", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.goldenLaurel1","botania.entry.goldenLaurel",1,[<Botania:goldenLaurel>],[[[<aether_legacy:ambrosium_shard>, null, <aether_legacy:ambrosium_shard>], [<aether_legacy:golden_oak_leaves>, <ore:eternalLifeEssence>, <aether_legacy:golden_oak_leaves>], [<aether_legacy:golden_oak_leaves>, <aether_legacy:golden_oak_leaves>, <aether_legacy:golden_oak_leaves>]]]);


mods.botania.Lexicon.removePage("botania.entry.exchangeRod", 3);
mods.botania.Lexicon.addCraftingPage("botania.page.exchangeRod3","botania.entry.exchangeRod",3,[<Botania:exchangeRod>], [[[null, <ore:stone>, <ore:runeSlothB>], [null, <Thaumcraft:FocusTrade>, <ore:stone>], [<ore:livingwoodTwig>, null, null]]]);


mods.botania.Lexicon.removePage("botania.entry.terrasteel", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.terrasteel1","botania.entry.terrasteel",1,[<Botania:terraPlate>],[[[<ore:blockLapis>, <ore:blockLapis>, <ore:blockLapis>], [<ore:runeWaterB>, <ore:shardEarth>, <ore:runeFireB>], [<ore:runeEarthB>, <ore:runeManaB>, <ore:runeAirB>]]]);

game.setLocalization("en_US", "botania.page.starSword0", "The &1Starcaller&0 is a blade with the power to call upon the wrath of the stars, when swung, there's a chance for the blade to summon a falling star heading towards where the wielder is looking, this star will deal damage upon impact with any entities. Creating this sword proves to be no easy task, as it requires a &1Fiery Tear&0 and a &1Terra Blade&0. Keep in mind that the process does wipe the enchantments on the sword used.");
mods.botania.Lexicon.removePage("botania.entry.starSword", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.starSword1","botania.entry.starSword",1,[<Botania:starSword>],[[[null, null, <ore:elvenDragonstone>], [<ore:ingotElvenElementium>, <TwilightForest:item.fieryTears>, null], [<Botania:terraSword>, <ore:ingotElvenElementium>, null]]]);

game.setLocalization("en_US", "botania.page.thunderSword0", "The &1Thundercaller&0 is a dual pronged sword with the ability to conjure lightning. Created using a &1Terra Blade&0 and some other materials, the &1Thundercaller&0 sacrifices the power of long range attacks to be able to zap multiple targets.<br>Attacks initiated with the &1Thundercaller&0 invoke upon chain lightning that homes on nearby hostile mobs, dealing decreasing damage per hit.");
mods.botania.Lexicon.removePage("botania.entry.thunderSword", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.thunderSword1","botania.entry.thunderSword",1,[<Botania:thunderSword>],[[[null, <TwilightForest:tile.WispyCloud>, null], [<ore:gemQuartz>, <ore:manaDiamond>, <TwilightForest:tile.WispyCloud>], [<Botania:terraSword>, <ore:gemQuartz>, null]]]);


mods.botania.Lexicon.removePage("botania.entry.runeAltar", 8);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar4", "botania.entry.runeAltar", 8, [<Botania:rune> * 2], [[<ore:powderMana>, <ore:ingotManasteel>, <minecraft:fishing_rod>, <minecraft:reeds>, <ore:shardPrismarine>]], [5200]);
mods.botania.Lexicon.removePage("botania.entry.runeAltar", 10);
mods.botania.Lexicon.addRunePage("botania.page.runeAltar6", "botania.entry.runeAltar", 10, [<Botania:rune:3> * 2], [[<ore:powderMana>, <ore:ingotManasteel>, <ore:cloud>, <minecraft:feather>, <minecraft:string>]], [5200]);

mods.botania.RuneAltar.removeRecipe(<Botania:rune>);
mods.botania.RuneAltar.addRecipe(<Botania:rune> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <minecraft:fishing_rod>, <minecraft:reeds>, <ore:shardPrismarine>], 5200);
mods.botania.RuneAltar.removeRecipe(<Botania:rune:3>);
mods.botania.RuneAltar.addRecipe(<Botania:rune:3> * 2, [<ore:powderMana>, <ore:ingotManasteel>, <ore:cloud>, <minecraft:feather>, <minecraft:string>], 5200);
//mods.botania.RuneAltar.removeRecipe(<Botania:rune:9>);
//mods.botania.RuneAltar.addRecipe(<Botania:rune:9>, [<aether_legacy:enchanted_gravitite>, <aether_legacy:enchanted_gravitite>, <ore:runeAirB>, <ore:runeSummerB>], 12000);

mods.botania.Lexicon.removePage("botania.entry.manaAlchemy", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.manaAlchemy1","botania.entry.manaAlchemy",1,[<Botania:alchemyCatalyst>],[[[<Botania:livingrock>, <ore:gemAmber>, <Botania:livingrock>], [<minecraft:blaze_rod>, <Thaumcraft:ItemResource:14>, <minecraft:blaze_rod>], [<Botania:livingrock>, <ore:gemAmber>, <Botania:livingrock>]]]);
mods.botania.Lexicon.removePage("botania.entry.manaAlchemy", 2);
mods.botania.Lexicon.removePage("botania.entry.manaAlchemy", 16);
mods.botania.Lexicon.addAlchemyPage("botania.page.manaAlchemyX","botania.entry.manaAlchemy", 16, [<minecraft:slime_ball>], [<minecraft:dye:2>], [28000]);
game.setLocalization("en_US", "botania.page.manaAlchemyX", "Conjuring &1Slimeballs&0");

recipes.remove(<Botania:alchemyCatalyst>);
recipes.addShaped(<Botania:alchemyCatalyst>, [[<Botania:livingrock>, <ore:gemAmber>, <Botania:livingrock>], [<minecraft:blaze_rod>, <Thaumcraft:ItemResource:14>, <minecraft:blaze_rod>], [<Botania:livingrock>, <ore:gemAmber>, <Botania:livingrock>]]);


mods.botania.Lexicon.removePage("botania.entry.swapRing", 1);
mods.botania.Lexicon.addCraftingPage("botania.page.swapRing1","botania.entry.swapRing",1,[<Botania:swapRing>],[[[<ore:quicksilver>, <ore:ingotManasteel>, null], [<ore:ingotManasteel>, null, <ore:ingotManasteel>], [null, <ore:ingotManasteel>, null]]]);

recipes.remove(<Botania:swapRing>);
recipes.addShaped(<Botania:swapRing>, [[<ore:quicksilver>, <ore:ingotManasteel>, null], [<ore:ingotManasteel>, null, <ore:ingotManasteel>], [null, <ore:ingotManasteel>, null]]);


mods.botania.Lexicon.removePage("botania.entry.brewery", 2);
mods.botania.Lexicon.addCraftingPage("botania.page.brewery2","botania.entry.brewery",2,[<Botania:brewery>],[[[<ore:livingrock>, <ore:rodBlaze>, <ore:livingrock>], [<ore:livingrock>, <ore:runeManaB>, <ore:livingrock>], [<ore:livingrock>, <ore:blockManasteel>, <ore:livingrock>]]]);

recipes.remove(<Botania:brewery>);
recipes.addShaped(<Botania:brewery>, [[<ore:livingrock>, <ore:rodBlaze>, <ore:livingrock>], [<ore:livingrock>, <ore:runeManaB>, <ore:livingrock>], [<ore:livingrock>, <ore:blockManasteel>, <ore:livingrock>]]);


mods.botania.Lexicon.removeEntry("botania.entry.terraSword");
mods.botania.Lexicon.removeEntry("botania.entry.terraAxe");
#mods.botania.Lexicon.removePage("botania.entry.terraSword", 1);
#mods.botania.Lexicon.addCraftingPage("botania.page.terraSword1","botania.entry.terraSword",1,[<Botania:terraSword>],[[[null, <ore:ingotTerrasteel>, null], [<aether_legacy:holy_sword>, <ore:ingotTerrasteel>, <Thaumcraft:ItemSwordElemental>], [null, <ore:livingwoodTwig>, null]]]);

recipes.remove(<Botania:terraSword>);
#recipes.addShaped(<Botania:terraSword>, [[null, <ore:ingotTerrasteel>, null], [<aether_legacy:holy_sword>, <ore:ingotTerrasteel>, <Thaumcraft:ItemSwordElemental>], [null, <ore:livingwoodTwig>, null]]);


// Mushroom Recipes
var mushrooms = [<Botania:mushroom>, <Botania:mushroom:1>, <Botania:mushroom:2>, <Botania:mushroom:3>, <Botania:mushroom:4>, <Botania:mushroom:5>, <Botania:mushroom:6>, <Botania:mushroom:7>, <Botania:mushroom:8>, <Botania:mushroom:9>, <Botania:mushroom:10>, <Botania:mushroom:11>, <Botania:mushroom:12>, <Botania:mushroom:13>, <Botania:mushroom:14>, <Botania:mushroom:15>] as IItemStack[];
var dyes = [<Botania:dye>, <Botania:dye:1>, <Botania:dye:2>, <Botania:dye:3>, <Botania:dye:4>, <Botania:dye:5>, <Botania:dye:6>, <Botania:dye:7>, <Botania:dye:8>, <Botania:dye:9>, <Botania:dye:10>, <Botania:dye:11>, <Botania:dye:12>, <Botania:dye:13>, <Botania:dye:14>, <Botania:dye:15>] as IItemStack[];	
for i, mush in mushrooms {
	recipes.addShapeless(dyes[i], [mush, <ore:pestleAndMortar>]);
}



mods.thaumcraft.Infusion.addRecipe("TERRABLADE", <TwilightForest:item.steeleafSword>, [<Botania:manaResource:4>, <aether_legacy:holy_sword>, <Botania:manaResource:4>, <Thaumcraft:ItemSwordElemental>], "praecantatio 16, herba 16, terra 8", <Botania:terraSword>, 6);
#mods.thaumcraft.Infusion.addRecipe("TERRAPICK", <TwilightForest:item.steeleafPick>, [<Thaumcraft:ItemPickaxeElemental:118>, <Botania:manaResource:4>, <Botania:manaResource:4>, <Botania:manaTablet>, <Botania:manaResource:4>, <Botania:manaResource:4>], "terra 32, praecantatio 32, herba 16", <Botania:terraPick>, 6);
mods.thaumcraft.Infusion.addRecipe("TERRAAXE", <Botania:manasteelAxe>, [<Thaumcraft:ItemAxeElemental>, <Botania:manaResource:4>, <Botania:manaResource:4>, <minecraft:glowstone>, <Botania:manaResource:4>, <Botania:manaResource:4>], "terra 8, praecantatio 16, herba 16", <Botania:terraAxe>, 6);