import minetweaker.item.IItemStack;

mods.thaumcraft.Research.removeTab("HAMMERZ");

function fullyRemove(research as string) {
	mods.thaumcraft.Research.orphanResearch(research);
	mods.thaumcraft.Research.removeResearch(research);
}

function addResearch(key as string, category as string, aspects as string, x as int, y as int, complexity as int, item as IItemStack) {
	mods.thaumcraft.Research.addResearch(key, category, aspects, x, y, complexity, item);
}

function addTextPage(key as string, page as string) {
	mods.thaumcraft.Research.addPage(key, "tc.research_page." + key + page);
}


// BASICS
addResearch("DIMDOORS", "BASICS", "", -6 as int, -3 as int, 0, <dimdoors:Dimensional Door Item>);
addTextPage("DIMDOORS", "0");
mods.thaumcraft.Research.setRound("DIMDOORS", true);
mods.thaumcraft.Research.setAutoUnlock("DIMDOORS", true);

addResearch("STABLEFABRIC", "BASICS", "alienis 5, ordo 10", -7 as int, -1 as int, 0, <dimdoors:Stable Fabric Item>);
addTextPage("STABLEFABRIC", "0");
mods.thaumcraft.Research.setSecondary("STABLEFABRIC", true);
mods.thaumcraft.Research.setSecondary("NITOR", true);
mods.thaumcraft.Research.setSecondary("ESSENTIACRYSTAL", true);
mods.thaumcraft.Research.addPrereq("STABLEFABRIC", "DIMDOORS", false);
mods.thaumcraft.Research.addPrereq("STABLEFABRIC", "INFUSION", false);

mods.thaumcraft.Infusion.addRecipe("STABLEFABRIC", <minecraft:ender_pearl>, [<dimdoors:World Thread>, <dimdoors:World Thread>, <dimdoors:World Thread>, <dimdoors:World Thread>, <dimdoors:World Thread>, <dimdoors:World Thread>], "alienis 5, ordo 10", <dimdoors:Stable Fabric Item>, 3);

mods.thaumcraft.Research.addInfusionPage("STABLEFABRIC", <dimdoors:Stable Fabric Item>);
mods.thaumcraft.Research.addCraftingPage("STABLEFABRIC", <dimdoors:Dimensional Door Item>);
mods.thaumcraft.Research.addCraftingPage("STABLEFABRIC", <dimdoors:Personal Dimensional Door Item>);
mods.thaumcraft.Research.addCraftingPage("STABLEFABRIC", <dimdoors:Golden Dimensional Door Item>);

// GOLEMANCY
mods.thaumcraft.Warp.addToResearch("CORELUMBER", 1);

// ARTIFICE
mods.thaumcraft.Research.removeResearch("LAMPFERTILITY");
mods.thaumcraft.Research.removeResearch("LAMPGROWTH");

mods.thaumcraft.Research.removeResearch("CAP_silver");
mods.thaumcraft.Research.removeResearch("CAP_copper");

mods.thaumcraft.Research.moveResearch("ARCANELAMP", "ARTIFICE", -3, 9);
mods.thaumcraft.Research.clearPrereqs("ARCANELAMP");
mods.thaumcraft.Research.addPrereq("ARCANELAMP", "ARCANEBORE", false);
mods.thaumcraft.Research.setConcealed("ARCANELAMP", true);

mods.thaumcraft.Research.moveResearch("INFERNALFURNACE", "ARTIFICE", -3, 0);
mods.thaumcraft.Research.moveResearch("BELLOWS", "ARTIFICE", -5, -1);
mods.thaumcraft.Research.moveResearch("FLUXSCRUB", "ARTIFICE", -7, -2);
mods.thaumcraft.Research.setConcealed("FLUXSCRUB", true);

mods.thaumcraft.Research.clearPages("ALCHGRATE");
mods.thaumcraft.Research.addPage("ALCHGRATE", "tc.research_page.ALCHGRATE.1");
//mods.thaumcraft.Research.addArcanePage("ALCHGRATE", <alchgrate:alchgrate>);

//mods.thaumcraft.Research.clearPages("JARSEAL");
//mods.thaumcraft.Research.addPage("JARSEAL", "1");
//game.setLocalization("te.text.JARSEAL.te.text.JARSEAL.te.text.JARSEAL.1", "By adjusting the mixture of aspects that you soak the tallow seal in to account for essentia's mystical properties, you have found that you are able to bind essentia containers, in particular, warded jars. Much like your previous binding seals, the jar binding seal can be dyed and an unlimited amount of networks can be created.");
//mods.thaumcraft.Research.addCruciblePage("JARSEAL", <ThaumicExploration:jarSeal:15>);
//mods.thaumcraft.Research.addPage("JARSEAL", "2");
//game.setLocalization("te.text.JARSEAL.2", "By right clicking on a jar with a jar binding seal, you can create a new network. Right clicking on a bound jar will link the seal to that network. Right clicking on an unbound jar with a linked seal will add that jar to the linked network. Note that only empty jars are able to be bound. You can not bind void jars or jars with labels.<BR><BR>Sealed jars have a higher suction than unlabeled jars but lower than labeled jars.");

mods.thaumcraft.Research.setSecondary("PRIMALARROW", true);


addResearch("ENCHTABLE", "ARTIFICE", "praecantatio 1, vacuos 1", -2 as int, 3 as int, 1, <minecraft:enchanting_table>);
mods.thaumcraft.Research.addPrereq("ENCHTABLE", "ENCHFABRIC", false);
addTextPage("ENCHTABLE", "0");
mods.thaumcraft.Arcane.addShaped("ENCHTABLE", <minecraft:enchanting_table>, "ordo 5", [[null, <minecraft:book>, null], [<minecraft:diamond>, <Thaumcraft:ItemResource:7>, <minecraft:diamond>], [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]]);
mods.thaumcraft.Research.addArcanePage("ENCHTABLE", <minecraft:enchanting_table>); 


addResearch("TWILIGHTFOREST", "ARTIFICE", "aer 1, ignis 1, aqua 1, terra 1", -4 as int, 2 as int, 2, <TwilightForest:item.twilightDiamond>);
addTextPage("TWILIGHTFOREST", "0");
addTextPage("TWILIGHTFOREST", "1");
mods.thaumcraft.Research.addInfusionPage("TWILIGHTFOREST", <TwilightForest:item.twilightDiamond>);
mods.thaumcraft.Research.addPrereq("TWILIGHTFOREST", "INFUSION", false);

//mods.thaumcraft.Research.addResearch("TERRABLADE", "ARTIFICE", "herba 1, sensus 1, praecantatio 1", -9 as int, 5 as int, 2, <Botania:terraSword>);
addResearch("TERRABLADE", "ARTIFICE", "lucrum 5, herba 5, praecantatio 10, telum 10", -9 as int, 5 as int, 2, <Botania:terraSword>);
addTextPage("TERRABLADE", "");
mods.thaumcraft.Research.addInfusionPage("TERRABLADE", <Botania:terraSword>); 

mods.thaumcraft.Research.setConcealed("TERRABLADE", true);
mods.thaumcraft.Research.setSecondary("TERRABLADE", true);
mods.thaumcraft.Research.addPrereq("TERRABLADE", "ELEMENTALSWORD", false);
mods.thaumcraft.Research.addPrereq("TERRABLADE", "TWILIGHTFOREST", true);


addResearch("TERRAAXE", "ARTIFICE", "lucrum 5, herba 5, praecantatio 10, instrumentum 10", -9 as int, 4 as int, 2, <Botania:terraAxe>);
addTextPage("TERRAAXE", "");
mods.thaumcraft.Research.addInfusionPage("TERRAAXE", <Botania:terraAxe>); 

mods.thaumcraft.Research.setConcealed("TERRAAXE", true);
mods.thaumcraft.Research.setSecondary("TERRAAXE", true);
mods.thaumcraft.Research.addPrereq("TERRAAXE", "ELEMENTALAXE", false);
mods.thaumcraft.Research.addPrereq("TERRAAXE", "TERRABLADE", true);
mods.thaumcraft.Research.addPrereq("TERRAAXE", "TWILIGHTFOREST", true);


game.setLocalization("en_US", "tc.research_page.JARBRAIN.1", "- Throw one zombie brain into a jar.<BR>- Add some spider eyes and water.<BR>- Stir gently with your wand while thinking dark thoughts.<BR>If you follow the recipe exactly you should now have a partially animated and fully malicious zombie brain.<BR>It retains some of the hunger it possessed as a zombie and while it cannot consume brains, it still enjoys eating the thoughts and experiences of those slain nearby. Giving its jar a good shake will make it surrender some of its ill-gotten gains for your own use.");


//addResearch("TERRAPICK", "Terra Shatterer", "Break thine world [Terrasteel Required]", "ARTIFICE", "lucrum 5, herba 5, praecantatio 10, perfodio 15", -9 as int, 3 as int, 2, <Botania:terraPick>);
//addTextPage("TERRAPICK", "", "The Terra Blade, crafted from Terrasteel Ingots, a powerful elven material, is a sword infused with natural strength.<BR>Not only does it par with a Diamond Sword in terms of strength and it uses Mana from the inventory like Manasteel Tools, but when swung, there's a chance for it to create a beam that will deal as much damage as a melee hit.");
//mods.thaumcraft.Research.addInfusionPage("TERRAPICK", <Botania:terraPick>);

//mods.thaumcraft.Research.setConcealed("TERRAAXE", true);
//mods.thaumcraft.Research.setSecondary("TERRAPICK", true);
//mods.thaumcraft.Research.addPrereq("TERRAPICK", "ELEMENTALPICK", false);
//mods.thaumcraft.Research.addPrereq("TERRAPICK", "TERRAAXE", true);


// ALCHEMY
mods.thaumcraft.Research.moveResearch("THAUMIUM_PIPE", "ALCHEMY", 6, 2);
mods.thaumcraft.Research.clearPrereqs("THAUMIUM_PIPE");
mods.thaumcraft.Research.addPrereq("THAUMIUM_PIPE", "THAUMIUM", true);
mods.thaumcraft.Research.addPrereq("THAUMIUM_PIPE", "TUBES", false);

mods.thaumcraft.Research.removeResearch("TRANSSILVER");
mods.thaumcraft.Research.removeResearch("TRANSCOPPER");
mods.thaumcraft.Research.removeResearch("TRANSTIN");
mods.thaumcraft.Research.removeResearch("TRANSLEAD");

//mods.thaumcraft.Crucible.addRecipe("ASPECTS", <Thaumcraft:ItemNugget:17>, <etfuturum:copper_ore>, "metallum 1, ordo 1");

//addResearch("PURECOPPER", "Copper Purification", "Purification of copper into native clusters", "ALCHEMY", "metallum 1, ordo 1, potentia 2", -4 as int, 5 as int, 2, <Thaumcraft:ItemNugget:17>);
//mods.thaumcraft.Research.setSecondary("PURECOPPER", true);
//mods.thaumcraft.Research.addPrereq("PURECOPPER", "PUREIRON", false);
//addTextPage("PURECOPPER", "", "You have found a way to purify and concentrate normal copper ore into a native copper cluster.");
//mods.thaumcraft.Research.addCruciblePage("PURECOPPER", <Thaumcraft:ItemNugget:17>);


// GADOMANCY
mods.thaumcraft.Research.moveResearch("GADOMANCY.GOLEMCOREBREAK", "GOLEMANCY", -1, 5);
mods.thaumcraft.Research.addPrereq("GADOMANCY.GOLEMCOREBREAK", "COREHARVEST", false);
mods.thaumcraft.Research.moveResearch("GADOMANCY.GOLEMCOREBODYGUARD", "GOLEMANCY", -5, 5);
mods.thaumcraft.Research.addPrereq("GADOMANCY.GOLEMCOREBODYGUARD", "COREGUARD", false);
mods.thaumcraft.Research.moveResearch("GADOMANCY.GOLEMRUNICSHIELD", "GOLEMANCY", -5, 7);
mods.thaumcraft.Research.clearPrereqs("GADOMANCY.GOLEMRUNICSHIELD");
mods.thaumcraft.Research.addPrereq("GADOMANCY.GOLEMRUNICSHIELD", "COREGUARD", false);

mods.thaumcraft.Research.moveResearch("GADOMANCY.GOLEMSILVERWOOD", "GOLEMANCY", 6, 6);
mods.thaumcraft.Research.addPrereq("GADOMANCY.GOLEMSILVERWOOD", "GOLEMTALLOW", false);

mods.thaumcraft.Research.moveResearch("TRAVELTRUNK", "GOLEMANCY", 3, 2);

fullyRemove("GADOMANCY.PSEUDO.INFUSIONENCHANTMENT");
fullyRemove("GADOMANCY.PSEUDO.GOLEMTALLOW");
fullyRemove("GADOMANCY.PSEUDO.COREHARVEST");
fullyRemove("GADOMANCY.PSEUDO.COREGUARD");
mods.thaumcraft.Research.removeResearch("GADOMANCY.ARMORDISGUISE");
mods.thaumcraft.Research.removeResearch("GADOMANCY.REVEALER");
mods.thaumcraft.Research.removeResearch("GADOMANCY.BLOCK_PROTECTOR");

mods.thaumcraft.Research.setSecondary("GADOMANCY.STICKYJAR", true);


// TX / THAUMIC EXPLORATION

game.setLocalization("en_US", "tc.research_category.TX", "Esoterica"); 

mods.thaumcraft.Research.clearPrereqs("BRAINCURE");
mods.thaumcraft.Research.addPrereq("BRAINCURE", "FLESHCURE", false);
mods.thaumcraft.Research.addPrereq("BRAINCURE", "TXINFUSION", false);

//mods.thaumcraft.Infusion.removeRecipe(<ThaumicExploration:talismanFood>);
//mods.thaumcraft.Research.clearPrereqs("TALISMANFOOD");
//mods.thaumcraft.Research.removeResearch("TALISMANFOOD");

fullyRemove("BURN");
//mods.thaumcraft.Research.moveResearch("URN", "ARTIFICE", -4, 3);
//mods.thaumcraft.Research.moveResearch("BURN", "ARTIFICE", -4, 2);
//mods.thaumcraft.Research.addPrereq("BURN", "INFERNALFURNACE", true);
//mods.thaumcraft.Research.addPrereq("BURN", "INFERNALFURNACE", true);
//mods.thaumcraft.Warp.addToResearch("BURN", 1);

mods.thaumcraft.Research.moveResearch("ENCHDISARM", "ARTIFICE", -4, 13);
mods.thaumcraft.Research.moveResearch("ENCHNIGHTVISION", "ARTIFICE", -6, 13);
mods.thaumcraft.Research.moveResearch("ENCHBINDING", "ARTIFICE", -8, 13);
mods.thaumcraft.Research.clearPrereqs("ENCHDISARM");
mods.thaumcraft.Research.clearPrereqs("ENCHNIGHTVISION");
mods.thaumcraft.Research.clearPrereqs("ENCHBINDING");
mods.thaumcraft.Research.addPrereq("ENCHDISARM", "INFUSIONENCHANTMENT", false);
mods.thaumcraft.Research.addPrereq("ENCHNIGHTVISION", "INFUSIONENCHANTMENT", false);
mods.thaumcraft.Research.addPrereq("ENCHBINDING", "INFUSIONENCHANTMENT", false);

//mods.thaumcraft.Research.moveResearch("FLOATCANDLE", "ALCHEMY", -3, 1);

mods.thaumcraft.Research.moveResearch("TRASHJAR", "ALCHEMY", 6, -6);
mods.thaumcraft.Research.clearPrereqs("TRASHJAR");
mods.thaumcraft.Research.addPrereq("TRASHJAR", "JARVOID", false);
//mods.thaumcraft.Research.setRound("TRASHJAR", true);
//mods.thaumcraft.Research.setConcealed("TRASHJAR", true);


//mods.thaumcraft.Research.moveResearch("ROD_quartz", "THAUMATURGY", -4, 5);

//mods.thaumcraft.Research.clearPrereqs("ROD_AMBER");
//mods.thaumcraft.Research.clearPrereqs("ROD_AMBER_staff");
//mods.thaumcraft.Research.addPrereq("ROD_AMBER", "ROD_silverwood");
//mods.thaumcraft.Research.addPrereq("ROD_AMBER_staff", "ROD_AMBER");
//mods.thaumcraft.Research.moveResearch("ROD_AMBER", "THAUMATURGY", -5, 6);
//mods.thaumcraft.Research.moveResearch("ROD_AMBER_staff", "THAUMATURGY", -5, 7);

//mods.thaumcraft.Research.moveResearch("ROD_TRANSMUTATION", "THAUMATURGY", -6, 5);
//mods.thaumcraft.Research.moveResearch("ROD_TRANSMUTATION_staff", "THAUMATURGY", -6, 6);


//mods.thaumcraft.Research.moveResearch("TXCAP_thaumium", "TX", -7, -5);
//mods.thaumcraft.Research.moveResearch("CAP_SOJOURNER", "TX", -5, -6);
//mods.thaumcraft.Research.moveResearch("CAP_MECHANIST", "TX", -9, -4);

//mods.thaumcraft.Research.moveResearch("SOULBRAZIER", "TX", 1, -9);
//mods.thaumcraft.Research.addPrereq("SOULBRAZIER", "TXINFUSION", false);


mods.thaumcraft.Research.orphanResearch("TXHOVERHARNESS");
mods.thaumcraft.Research.removeResearch("TXHOVERHARNESS");
mods.thaumcraft.Research.orphanResearch("TXJARVOID");
mods.thaumcraft.Research.removeResearch("TXJARVOID");
mods.thaumcraft.Research.orphanResearch("TXINFUSIONENCHANTMENT");
mods.thaumcraft.Research.removeResearch("TXINFUSIONENCHANTMENT");
mods.thaumcraft.Research.removeResearch("STABILIZERBELT");
mods.thaumcraft.Research.removeResearch("COMETBOOTS");
mods.thaumcraft.Research.removeResearch("JARSEAL");


mods.thaumcraft.Research.addResearch("VILLAGER", "TX", "victus 1, mortuus 1", -1 as int, -10 as int, 2, <minecraft:spawn_egg:120>);
mods.thaumcraft.Research.addPrereq("VILLAGER", "BRAINCURE", false);
mods.thaumcraft.Research.addPage("VILLAGER", "tc.research_page.VILLAGER"); 
mods.thaumcraft.Warp.addToResearch("VILLAGER", 1);

mods.thaumcraft.Infusion.addRecipe("VILLAGER", <minecraft:egg>, [<Thaumcraft:ItemZombieBrain>, <minecraft:rotten_flesh>, <minecraft:golden_apple>, <minecraft:red_flower>, <minecraft:potion:8200>, <minecraft:bone>], "spiritus 4, victus 8", <minecraft:spawn_egg:120>, 3);

mods.thaumcraft.Research.addInfusionPage("VILLAGER", <minecraft:spawn_egg:120>); 



//Page Changes
mods.thaumcraft.Research.refreshResearchRecipe("BOOTSTRAVELLER");
mods.thaumcraft.Research.refreshResearchRecipe("THAUMOMETER");
mods.thaumcraft.Research.refreshResearchRecipe("OCULUS");
mods.thaumcraft.Research.refreshResearchRecipe("LEVITATOR");
mods.thaumcraft.Research.refreshResearchRecipe("COREGATHER");
mods.thaumcraft.Research.refreshResearchRecipe("CORELUMBER");
mods.thaumcraft.Research.refreshResearchRecipe("DISTILESSENTIA");
mods.thaumcraft.Research.refreshResearchRecipe("BONEBOW");



//addResearch("ELEVATOR", "Elevator", "Teleporting between altitudes", "ARTIFICE", "alienis 1, ordo 5, perditio 5", -3 as int, -6 as int, 2, <OpenBlocks:elevator>);

//mods.thaumcraft.Arcane.addShaped("ELEVATOR", <OpenBlocks:elevator> * 2, "ordo 10, perditio 5", [[<minecraft:wool:*>, <minecraft:wool:*>, <minecraft:wool:*>], 	[<minecraft:wool:*>, <dimdoors:Stable Fabric Item>, <minecraft:wool:*>], [<minecraft:wool:*>, <minecraft:wool:*>, <minecraft:wool:*>]]);	


