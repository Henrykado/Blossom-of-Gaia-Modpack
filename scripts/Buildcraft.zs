import mods.nei.NEI;


recipes.remove(<chisel:chisel>);
recipes.remove(<chisel:obsidianChisel>);
recipes.remove(<chisel:diamondChisel>);
NEI.hide(<chisel:obsidianChisel>);
NEI.hide(<chisel:netherStarChisel>);
mods.buildcraft.AssemblyTable.addRecipe(<chisel:chisel>, 250000, [<minecraft:stained_hardened_clay:1>, <ore:ingotIron>]);
mods.buildcraft.AssemblyTable.addRecipe(<chisel:diamondChisel>, 1000000, [<minecraft:stained_hardened_clay:1>, <ore:gemDiamond>]);

#mods.buildcraft.AssemblyTable.removeRecipe(<BuildCraft|Transport:pipeWire:0>);
#mods.buildcraft.AssemblyTable.removeRecipe(<BuildCraft|Transport:pipeWire:1>);
#mods.buildcraft.AssemblyTable.removeRecipe(<BuildCraft|Transport:pipeWire:2>);
#mods.buildcraft.AssemblyTable.removeRecipe(<BuildCraft|Transport:pipeWire:3>);
mods.buildcraft.AssemblyTable.removeRecipe(<additionalpipes:item.PipeItemsTeleport>);
mods.buildcraft.AssemblyTable.addRecipe(<BuildCraft|Transport:pipeWire> *8, 2500, [<ore:dyeRed>, <ore:ingotRedAlloy>]);
mods.buildcraft.AssemblyTable.addRecipe(<BuildCraft|Transport:pipeWire:1> *8, 2500, [<ore:dyeBlue>, <ore:ingotRedAlloy>]);
mods.buildcraft.AssemblyTable.addRecipe(<BuildCraft|Transport:pipeWire:2> *8, 2500, [<ore:dyeGreen>, <ore:ingotRedAlloy>]);
mods.buildcraft.AssemblyTable.addRecipe(<BuildCraft|Transport:pipeWire:3> *8, 2500, [<ore:dyeYellow>, <ore:ingotRedAlloy>]);