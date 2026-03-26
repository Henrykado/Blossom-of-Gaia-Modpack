import mods.nei.NEI;
import minetweaker.item.IItemStack;


recipes.remove(<ProjRed|Core:projectred.core.part:7>);
recipes.addShaped(<ProjRed|Core:projectred.core.part:7>, [[<ore:gemQuartz>, <ore:blockRedstone>, <ore:gemQuartz>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part>]]);
recipes.remove(<ProjRed|Core:projectred.core.part:8>);
recipes.addShaped(<ProjRed|Core:projectred.core.part:8>, [[<ore:gemQuartz>, <ore:glowstone>, <ore:gemQuartz>], [<ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part>, <ProjRed|Core:projectred.core.part>]]);

NEI.hide(<ProjRed|Core:projectred.core.datacard>); 
NEI.hide(<ProjRed|Core:projectred.core.screwdriver>); 
NEI.hide(<ProjRed|Core:projectred.core.drawplate>);

recipes.remove(<ProjRed|Core:projectred.core.part:58>); recipes.remove(<ProjRed|Core:projectred.core.part:57>); recipes.remove(<ProjRed|Core:projectred.core.part:55>); recipes.remove(<ProjRed|Core:projectred.core.part:15>); recipes.remove(<ProjRed|Core:projectred.core.part:16>); recipes.remove(<ProjRed|Core:projectred.core.part:17>); recipes.remove(<ProjRed|Core:projectred.core.part:18>); recipes.remove(<ProjRed|Core:projectred.core.part:42>); recipes.remove(<ProjRed|Core:projectred.core.part:43>); recipes.remove(<ProjRed|Core:projectred.core.part:11>); recipes.remove(<ProjRed|Core:projectred.core.part:12>); recipes.remove(<ProjRed|Core:projectred.core.part:35>); recipes.remove(<ProjRed|Core:projectred.core.part:36>); recipes.remove(<ProjRed|Core:projectred.core.part:41>); recipes.remove(<ProjRed|Core:projectred.core.part:40>);
#furnace.remove(<ProjRed|Core:projectred.core.part:14>); furnace.remove(<ProjRed|Core:projectred.core.part:13>); furnace.remove(<ProjRed|Core:projectred.core.part:59>);

<ProjRed|Core:projectred.core.part:7>.displayName = "Redstone Chip";
<ProjRed|Core:projectred.core.part:8>.displayName = "Energized Glowstone Chip";
<aether_legacy:enchanter>.displayName = "Altar";

#recipes.remove(<ProjRed|Integration:projectred.integration.gate:17>);
#NEI.hide(<ProjRed|Integration:projectred.integration.gate:17>);

#mods.buildcraft.AssemblyTable.addRecipe(<ProjRed|Core:projectred.core.part:10>, 2500, [<ore:ingotCopper>, <ore:dustRedstone>]);
mods.buildcraft.AssemblyTable.addRecipe(<ProjRed|Core:projectred.core.part:10>, 5000, [<ore:ingotIron>, <ore:dustRedstone>]);


val wires = [<ProjRed|Transmission:projectred.transmission.wire:1>, <ProjRed|Transmission:projectred.transmission.wire:2>, <ProjRed|Transmission:projectred.transmission.wire:3>, <ProjRed|Transmission:projectred.transmission.wire:4>, <ProjRed|Transmission:projectred.transmission.wire:5>, <ProjRed|Transmission:projectred.transmission.wire:6>, <ProjRed|Transmission:projectred.transmission.wire:7>, <ProjRed|Transmission:projectred.transmission.wire:8>, <ProjRed|Transmission:projectred.transmission.wire:9>, <ProjRed|Transmission:projectred.transmission.wire:10>, <ProjRed|Transmission:projectred.transmission.wire:11>, <ProjRed|Transmission:projectred.transmission.wire:12>, <ProjRed|Transmission:projectred.transmission.wire:13>, <ProjRed|Transmission:projectred.transmission.wire:14>, <ProjRed|Transmission:projectred.transmission.wire:15>, <ProjRed|Transmission:projectred.transmission.wire:16>] as IItemStack[];
for i, item in <ore:projredInsFramedWire>.items {
	recipes.remove(item);
	recipes.addShaped(item, [[null, <ore:stickWood>, null], [<ore:stickWood>, wires[i], <ore:stickWood>], [null, <ore:stickWood>, null]]);
}