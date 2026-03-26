function removeThaumium(loot as string) {
	vanilla.loot.removeChestLoot(loot, <Thaumcraft:ItemResource>);
	vanilla.loot.removeChestLoot(loot, <Thaumcraft:ItemThaumonomicon>);
	vanilla.loot.removeChestLoot(loot, <Thaumcraft:ItemSwordThaumium:0>);
	vanilla.loot.removeChestLoot(loot, <Thaumcraft:ItemPickThaumium:0>);
	vanilla.loot.removeChestLoot(loot, <Thaumcraft:ItemAxeThaumium:0>);
	vanilla.loot.removeChestLoot(loot, <Thaumcraft:ItemHoeThaumium:0>);
}

function removeSteel(loot as string) {
	vanilla.loot.removeChestLoot(loot, <Railcraft:armor.steel.helmet>);
	vanilla.loot.removeChestLoot(loot, <Railcraft:armor.steel.plate>);
	vanilla.loot.removeChestLoot(loot, <Railcraft:armor.steel.legs>);
	vanilla.loot.removeChestLoot(loot, <Railcraft:armor.steel.boots>);
	vanilla.loot.removeChestLoot(loot, <Railcraft:tool.steel.sword>);
}

function removeHorseArmor(loot as string) {
	vanilla.loot.removeChestLoot(loot, <minecraft:iron_horse_armor>);
	vanilla.loot.removeChestLoot(loot, <minecraft:golden_horse_armor>);
	vanilla.loot.removeChestLoot(loot, <minecraft:diamond_horse_armor>);
	vanilla.loot.removeChestLoot(loot, <minecraft:saddle>);
}


removeThaumium("dungeonChest");
removeSteel("dungeonChest");
vanilla.loot.removeChestLoot("dungeonChest", <Thaumcraft:ItemResource:2>);
vanilla.loot.removeChestLoot("dungeonChest", <satchels:pouch_upgrade>);
vanilla.loot.removeChestLoot("dungeonChest", <Botania:lexicon>);
vanilla.loot.removeChestLoot("dungeonChest", <Railcraft:tool.steel.shears>);
vanilla.loot.removeChestLoot("dungeonChest", <Railcraft:tool.steel.shovel>);
vanilla.loot.removeChestLoot("dungeonChest", <Railcraft:tool.steel.pickaxe>);
vanilla.loot.removeChestLoot("dungeonChest", <Railcraft:tool.steel.axe>);

vanilla.loot.removeChestLoot("mineshaftCorridor", <Railcraft:part.tie>);
vanilla.loot.removeChestLoot("mineshaftCorridor", <Railcraft:part.gear:3>);
removeHorseArmor("mineshaftCorridor");
removeThaumium("mineshaftCorridor");
removeSteel("mineshaftCorridor");

removeThaumium("strongholdLibrary");
removeSteel("strongholdLibrary");
removeThaumium("strongholdCorridor");
removeSteel("strongholdCorridor");
removeThaumium("strongholdCrossing");
removeSteel("strongholdCrossing");

removeHorseArmor("netherFortress");

removeThaumium("pyramidDesertyChest");
removeSteel("pyramidDesertyChest");
vanilla.loot.removeChestLoot("pyramidDesertyChest", <Thaumcraft:ItemResource:2>);
vanilla.loot.removeChestLoot("pyramidDesertyChest", <minecraft:iron_horse_armor>);
vanilla.loot.removeChestLoot("pyramidDesertyChest", <minecraft:diamond_horse_armor>);
vanilla.loot.removeChestLoot("pyramidDesertyChest", <minecraft:enchanted_book>);
vanilla.loot.addChestLoot("pyramidDesertyChest", <minecraft:sandstone>.weight(18), 8, 32);
vanilla.loot.addChestLoot("pyramidDesertyChest", <minecraft:sandstone:1>.weight(18), 4, 16);

removeThaumium("pyramidJungleChest");
removeSteel("pyramidJungleChest");
vanilla.loot.removeChestLoot("pyramidJungleChest", <Thaumcraft:ItemResource:2>);

vanilla.loot.removeChestLoot("pyramidJungleChest", <Botania:blackLotus>);
vanilla.loot.addChestLoot("pyramidJungleChest", <Botania:blackLotus>.weight(15), 1, 1);
vanilla.loot.removeChestLoot("pyramidJungleChest", <Botania:overgrowthSeed>);
vanilla.loot.addChestLoot("pyramidJungleChest", <Botania:overgrowthSeed>.weight(15), 1, 1);

vanilla.loot.addChestLoot("pyramidJungleChest", <minecraft:mossy_cobblestone>.weight(18), 8, 32);
vanilla.loot.addChestLoot("pyramidJungleChest", <minecraft:stonebrick:1>.weight(18), 8, 32);
vanilla.loot.addChestLoot("pyramidJungleChest", <Botania:lexicon>.weight(6), 1, 1);