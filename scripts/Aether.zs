import mods.nei.NEI;
import minetweaker.item.IItemStack;

<ore:plankWood>.add(<aether_legacy:skyroot_planks>);
<ore:cloud>.addItems([<aether_legacy:aercloud>, <aether_legacy:aercloud:1>, <aether_legacy:aercloud:2>]);

<aether_legacy:golden_amber>.displayName = "Golden Rosin";

#recipes.remove(<ArchimedesShipsPlus:marker>);
#recipes.addShaped(<ArchimedesShipsPlus:marker>, [[<ore:plankWood>, <minecraft:stick>, <ore:plankWood>], [<minecraft:stick>, <ore:cloud>, <minecraft:stick>], [<ore:plankWood>, <minecraft:stick>, <ore:plankWood>]]);

val wools = [<minecraft:wool:0>, <minecraft:wool:1>, <minecraft:wool:2>, <minecraft:wool:3>, <minecraft:wool:4>, <minecraft:wool:5>, <minecraft:wool:6>, <minecraft:wool:7>, <minecraft:wool:8>, <minecraft:wool:9>, <minecraft:wool:10>, <minecraft:wool:11>, <minecraft:wool:12>, <minecraft:wool:13>, <minecraft:wool:14>, <minecraft:wool:15>] as IItemStack[];
val balloons = [<ArchimedesShipsPlus:balloon>, <ArchimedesShipsPlus:balloon:1>, <ArchimedesShipsPlus:balloon:2>, <ArchimedesShipsPlus:balloon:3>, <ArchimedesShipsPlus:balloon:4>, <ArchimedesShipsPlus:balloon:5>, <ArchimedesShipsPlus:balloon:6>, <ArchimedesShipsPlus:balloon:7>, <ArchimedesShipsPlus:balloon:8>, <ArchimedesShipsPlus:balloon:9>, <ArchimedesShipsPlus:balloon:10>, <ArchimedesShipsPlus:balloon:11>, <ArchimedesShipsPlus:balloon:12>, <ArchimedesShipsPlus:balloon:13>, <ArchimedesShipsPlus:balloon:14>, <ArchimedesShipsPlus:balloon:15>] as IItemStack[];
for i, wool in wools {
	recipes.remove(balloons[i]);
	recipes.addShapeless(balloons[i], [<ore:cloud>, wool, <minecraft:string>]);
}

mods.botania.ManaInfusion.addInfusion(<aether_legacy:enchanted_gravitite>, <aether_legacy:gravitite_ore>, 2500);
mods.botania.ManaInfusion.addInfusion(<aether_legacy:dart_shooter:2>, <aether_legacy:dart_shooter>, 2500);
mods.botania.ManaInfusion.addInfusion(<aether_legacy:dart:2>, <aether_legacy:dart>, 100);

NEI.hide(<aether_legacy:freezer>);
NEI.hide(<aether_legacy:enchanter>);