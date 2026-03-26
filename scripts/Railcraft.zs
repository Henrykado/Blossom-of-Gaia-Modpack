import mods.nei.NEI;
import minetweaker.item.IItemStack;


recipes.remove(<minecraft:rail>);
recipes.addShaped(<minecraft:rail> * 64, [[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, null, <ore:ingotIron>]]);



val disposal = <Railcraft:track:2264>.withTag({track: "railcraft:track.disposal"});
val buffer = <Railcraft:track:32363>.withTag({track: "railcraft:track.buffer.stop"});

val suspended = <Railcraft:track>.withTag({track: "railcraft:track.suspended"});
val detector = <Railcraft:track>.withTag({track: "railcraft:track.detector.direction"});
val control = <Railcraft:track>.withTag({track: "railcraft:track.control"});
val embark = <Railcraft:track>.withTag({track: "railcraft:track.embarking"});
val junc = <Railcraft:track>.withTag({track: "railcraft:track.junction"});
val gated = <Railcraft:track>.withTag({track: "railcraft:track.gated.oneway"});
val coupler = <Railcraft:track>.withTag({track: "railcraft:track.coupler"});
val whistle = <Railcraft:track>.withTag({track: "railcraft:track.whistle"});

val hsboost = <Railcraft:track>.withTag({track: "railcraft:track.speed.boost"});

val reinforced = <Railcraft:track>.withTag({track: "railcraft:track.reinforced"});
val reboost = <Railcraft:track>.withTag({track: "railcraft:track.reinforced.boost"});

recipes.remove(disposal);
recipes.remove(buffer);
recipes.remove(<Railcraft:track>);

recipes.addShaped(disposal * 8, [[<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotSteel>, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>]]);
recipes.addShaped(suspended * 32, [[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>]]);
recipes.addShaped(control * 4, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.addShaped(junc * 16, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
#recipes.addShaped(embark * 16, [[<ore:ingotGold>, <minecraft:ender_pearl>, <ore:ingotGold>], [<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], [<ore:ingotGold>, <minecraft:ender_pearl>, <ore:ingotGold>]]);
recipes.addShaped(gated * 8, [[<ore:ingotIron>, <ore:fenceGateWood>, <ore:ingotIron>], [<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], [<ore:ingotIron>, <ore:fenceGateWood>, <ore:ingotIron>]]);
recipes.addShaped(detector * 6, [[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, <minecraft:stone_pressure_plate>, <ore:ingotIron>]]);
recipes.addShaped(hsboost * 16, [[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:stone_slab:*>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>]]);
recipes.addShaped(reinforced * 32, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:obsidian>, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
recipes.addShaped(reboost * 16, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <minecraft:obsidian>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>]]);
recipes.addShaped(coupler * 16, [[<ore:ingotGold>, <Railcraft:tool.crowbar>, <ore:ingotGold>], [<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], [<ore:ingotGold>, <Railcraft:tool.crowbar>, <ore:ingotGold>]]);
recipes.addShaped(whistle * 16, [[<ore:ingotIron>, <ore:dyeYellow>, <ore:ingotIron>], [<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], [<ore:ingotIron>, <ore:dyeBlack>, <ore:ingotIron>]]);



function remove(item as IItemStack) {
	recipes.remove(item);
	NEI.hide(item);
}

remove(<Railcraft:part.plate>);
remove(<Railcraft:part.plate:1>);
remove(<Railcraft:part.plate:2>);
remove(<Railcraft:part.plate:3>);
recipes.remove(<Railcraft:ingot:1>);
recipes.remove(<Railcraft:ingot:2>);
recipes.remove(<Railcraft:ingot:3>);
remove(<Railcraft:nugget:1>);
remove(<Railcraft:nugget:2>);
remove(<Railcraft:nugget:3>);
remove(<Railcraft:part.gear:3>);
remove(<Railcraft:part.gear:2>);
remove(<Railcraft:part.gear:1>);
remove(<Railcraft:part.gear>);
remove(<Railcraft:part.tie>);
remove(<Railcraft:part.tie:1>);
NEI.hide(<Railcraft:fluid.creosote>);
NEI.hide(<Railcraft:residual.heat>);
remove(<Railcraft:part.circuit>);
remove(<Railcraft:part.circuit:1>);
remove(<Railcraft:part.circuit:2>);

#furnace.addRecipe(<etfuturum:copper_ingot> * 2, <Thaumcraft:ItemNugget:17>, 0.5);

<ore:ingotCopper>.remove(<ProjRed|Core:projectred.core.part:52>);
<ore:ingotCopper>.remove(<Railcraft:ingot:1>);
<ore:ingotTin>.remove(<Railcraft:ingot:2>);
<ore:ingotTin>.remove(<ProjRed|Core:projectred.core.part:53>);
<ore:ingotLead>.remove(<Railcraft:ingot:3>);

<ore:gearIron>.remove(<Railcraft:part.gear:1>);
<ore:nuggetIron>.remove(<Railcraft:nugget>);


//Modifying Railcraft research
 //Thaumium Crowbar
 mods.thaumcraft.Research.moveResearch("RC_Crowbar", "ARTIFICE", 0, -5);
 mods.thaumcraft.Research.clearPrereqs("RC_Crowbar");
 mods.thaumcraft.Research.addPrereq("RC_Crowbar", "THAUMIUM", false);
 mods.thaumcraft.Research.setAutoUnlock("RC_Crowbar", true);
 //Tab Removal
 mods.thaumcraft.Research.removeTab("RAILCRAFT");