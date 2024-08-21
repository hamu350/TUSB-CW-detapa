#> asset:villager/0038.bandai/trade_info/2.trade_info

# まずデータを初期化します(これは消さないでね)
data remove storage asset: villager

# まずアイテムを持たせる防具立てを召喚します
# summon armor_stand 0.0 0.0 0.0 {Tags:["ItemHolder"]}

# 交易品となるアイテムを持たせます(Mainhand→buy、Offhand→buyB、Head→sell)
# item replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand with diamond 5
# item replace entity @e[tag=ItemHolder,limit=1] weapon.offhand with emerald 64
# item replace entity @e[tag=ItemHolder,limit=1] armor.head with diamond_block 1
# /loot版も用意しておきますね
# /lootでやる場合、個数を別コマンドで設定してあげる必要があります
# loot replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand loot <path>
# data modify entity @e[tag=ItemHolder,limit=1] HandItems[0].Count set value 1
# loot replace entity @e[tag=ItemHolder,limit=1] weapon.offhand loot <path>
# data modify entity @e[tag=ItemHolder,limit=1] HandItems[1].Count set value 1
# loot replace entity @e[tag=ItemHolder,limit=1] armor.head loot <path>
# data modify entity @e[tag=ItemHolder,limit=1] ArmorItems[0].Count set value 1

# 持たせたアイテムを元にstorage上の取引を追加します
# data modify storage _: _ set from entity @e[tag=ItemHolder,limit=1]
# data modify storage asset: villager.Offers.Recipes set value {buy:{},buyB:{},sell:{}}
# data modify storage asset: villager.Offers.Recipes[-1].buy set from storage _: _.HandItems[0]
# data modify storage asset: villager.Offers.Recipes[-1].buyB set from storage _: _.HandItems[1]
# data modify storage asset: villager.Offers.Recipes[-1].sell set from storage _: _.ArmorItems[0]
# data remove storage _: _
# 他にも入れたい上方(xpや使用上限など)があれば各自設定します
# data modify storage asset: villager.Offers.Recipes[-1] merge value {xp:0,MaxUses:2147483637}

# 交易品を持たせるところから繰り返します。オフハンドを消したりするのは忘れずに

# 取引情報を設定し終わったら防具立てを処理する
# kill @e[tag=ItemHolder,limit=1]

# nbtなどはsummon側で設定します。ということで終了

data modify storage asset: villager set value [{maxUses: 7, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:guardian_spawn_egg", Count: 1b, tag: {EntityTag: {DeathTime: 19s, Silent: 1b, DeathLootTable: "usb:signs/skillegg", id: "minecraft:guardian", NoAI: 1b, Tags: ["RewardEgg", "TypeChecked"], ActiveEffects: [{Duration: 100, Id: 7b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id: 14b, Amplifier: 0b, ShowParticles: 0b}]}, RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["minecraft:stone", "minecraft:grass_block", "minecraft:dirt", "minecraft:cobblestone", "minecraft:oak_planks", "minecraft:oak_sapling", "minecraft:bedrock", "minecraft:water", "minecraft:water", "minecraft:lava", "minecraft:lava", "minecraft:sand", "minecraft:gravel", "minecraft:gold_ore", "minecraft:iron_ore", "minecraft:coal_ore", "minecraft:oak_log", "minecraft:oak_leaves", "minecraft:sponge", "minecraft:glass", "minecraft:lapis_ore", "minecraft:lapis_block", "minecraft:dispenser", "minecraft:sandstone", "minecraft:note_block", "minecraft:red_bed", "minecraft:powered_rail", "minecraft:detector_rail", "minecraft:sticky_piston", "minecraft:cobweb", "minecraft:dead_bush", "minecraft:dead_bush", "minecraft:piston", "minecraft:piston_head", "minecraft:white_wool", "minecraft:moving_piston", "minecraft:dandelion", "minecraft:poppy", "minecraft:brown_mushroom", "minecraft:red_mushroom", "minecraft:gold_block", "minecraft:iron_block", "minecraft:smooth_stone_slab", "minecraft:smooth_stone_slab", "minecraft:bricks", "minecraft:tnt", "minecraft:bookshelf", "minecraft:mossy_cobblestone", "minecraft:obsidian", "minecraft:wall_torch", "minecraft:fire", "minecraft:oak_stairs", "minecraft:chest", "minecraft:redstone_wire", "minecraft:diamond_ore", "minecraft:diamond_block", "minecraft:crafting_table", "minecraft:wheat", "minecraft:farmland", "minecraft:furnace", "minecraft:furnace", "minecraft:oak_sign", "minecraft:oak_door", "minecraft:ladder", "minecraft:rail", "minecraft:cobblestone_stairs", "minecraft:oak_wall_sign", "minecraft:lever", "minecraft:stone_pressure_plate", "minecraft:iron_door", "minecraft:oak_pressure_plate", "minecraft:redstone_ore", "minecraft:redstone_ore", "minecraft:redstone_wall_torch", "minecraft:redstone_wall_torch", "minecraft:stone_button", "minecraft:snow", "minecraft:ice", "minecraft:snow_block", "minecraft:cactus", "minecraft:clay", "minecraft:sugar_cane", "minecraft:jukebox", "minecraft:oak_fence", "minecraft:carved_pumpkin", "minecraft:netherrack", "minecraft:soul_sand", "minecraft:glowstone", "minecraft:nether_portal", "minecraft:jack_o_lantern", "minecraft:cake", "minecraft:repeater", "minecraft:repeater", "minecraft:white_stained_glass", "minecraft:oak_trapdoor", "minecraft:infested_stone", "minecraft:stone_bricks", "minecraft:brown_mushroom_block", "minecraft:red_mushroom_block", "minecraft:iron_bars", "minecraft:glass_pane", "minecraft:melon", "minecraft:pumpkin_stem", "minecraft:melon_stem", "minecraft:vine", "minecraft:oak_fence_gate", "minecraft:brick_stairs", "minecraft:stone_brick_stairs", "minecraft:mycelium", "minecraft:lily_pad", "minecraft:nether_bricks", "minecraft:nether_brick_fence", "minecraft:nether_brick_stairs", "minecraft:nether_wart", "minecraft:enchanting_table", "minecraft:brewing_stand", "minecraft:cauldron", "minecraft:end_portal", "minecraft:end_portal_frame", "minecraft:end_stone", "minecraft:dragon_egg", "minecraft:redstone_lamp", "minecraft:redstone_lamp", "minecraft:oak_slab", "minecraft:oak_slab", "minecraft:cocoa", "minecraft:sandstone_stairs", "minecraft:emerald_ore", "minecraft:ender_chest", "minecraft:tripwire_hook", "minecraft:tripwire", "minecraft:emerald_block", "minecraft:spruce_stairs", "minecraft:birch_stairs", "minecraft:jungle_stairs", "minecraft:command_block", "minecraft:beacon", "minecraft:cobblestone_wall", "minecraft:potted_cactus", "minecraft:carrots", "minecraft:potatoes", "minecraft:oak_button", "%%FILTER_ME%%", "minecraft:anvil", "minecraft:trapped_chest", "minecraft:light_weighted_pressure_plate", "minecraft:heavy_weighted_pressure_plate", "minecraft:comparator", "minecraft:comparator", "minecraft:daylight_detector", "minecraft:redstone_block", "minecraft:nether_quartz_ore", "minecraft:hopper", "minecraft:quartz_block", "minecraft:quartz_stairs", "minecraft:activator_rail", "minecraft:dropper", "minecraft:white_terracotta", "minecraft:white_stained_glass_pane", "minecraft:acacia_leaves", "minecraft:acacia_log", "minecraft:acacia_stairs", "minecraft:dark_oak_stairs", "minecraft:slime_block", "minecraft:barrier", "minecraft:iron_trapdoor", "minecraft:prismarine", "minecraft:sea_lantern", "minecraft:hay_block", "minecraft:white_carpet", "minecraft:terracotta", "minecraft:coal_block", "minecraft:packed_ice", "minecraft:sunflower", "minecraft:white_banner", "minecraft:white_wall_banner", "minecraft:daylight_detector", "minecraft:red_sandstone", "minecraft:red_sandstone_stairs", "minecraft:red_sandstone_slab", "minecraft:red_sandstone_slab", "minecraft:spruce_fence_gate", "minecraft:birch_fence_gate", "minecraft:jungle_fence_gate", "minecraft:dark_oak_fence_gate", "minecraft:acacia_fence_gate", "minecraft:spruce_fence", "minecraft:birch_fence", "minecraft:jungle_fence", "minecraft:dark_oak_fence", "minecraft:acacia_fence", "minecraft:spruce_door", "minecraft:birch_door", "minecraft:jungle_door", "minecraft:acacia_door", "minecraft:dark_oak_door", "minecraft:end_rod", "minecraft:chorus_plant", "minecraft:chorus_flower", "minecraft:purpur_block", "minecraft:purpur_pillar", "minecraft:purpur_stairs", "minecraft:purpur_slab", "minecraft:purpur_slab", "minecraft:end_stone_bricks", "minecraft:beetroots", "minecraft:dirt_path", "minecraft:end_gateway", "minecraft:repeating_command_block", "minecraft:chain_command_block", "minecraft:frosted_ice", "minecraft:magma_block", "minecraft:nether_wart_block", "minecraft:red_nether_bricks", "minecraft:bone_block", "minecraft:structure_void", "minecraft:observer", "minecraft:white_shulker_box", "minecraft:orange_shulker_box", "minecraft:magenta_shulker_box", "minecraft:light_blue_shulker_box", "minecraft:yellow_shulker_box", "minecraft:lime_shulker_box", "minecraft:pink_shulker_box", "minecraft:gray_shulker_box", "minecraft:light_gray_shulker_box", "minecraft:cyan_shulker_box", "minecraft:shulker_box", "minecraft:blue_shulker_box", "minecraft:brown_shulker_box", "minecraft:green_shulker_box", "minecraft:red_shulker_box", "minecraft:black_shulker_box", "minecraft:structure_block"], display: {Lore: ['{"text":"§rスキルエッグ一式が入っている。"}'], Name: '{"text":"§dスキルエッグセット"}'}, Enchantments: []}}, xp: 1, uses: -2000000000, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 7, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 2b}, sell: {id: "minecraft:endermite_spawn_egg", Count: 3b, tag: {EntityTag: {Lifetime: -8400, Attributes: [{Base: 0.1d, Name: "generic.max_health"}], Silent: 1b, Team: "Yellow", id: "minecraft:endermite", NoAI: 1b, Glowing: 1b, Tags: ["TypeChecked"], CustomNameVisible: 1b}, RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["minecraft:stone", "minecraft:grass_block", "minecraft:dirt", "minecraft:cobblestone", "minecraft:oak_planks", "minecraft:oak_sapling", "minecraft:bedrock", "minecraft:water", "minecraft:water", "minecraft:lava", "minecraft:lava", "minecraft:sand", "minecraft:gravel", "minecraft:gold_ore", "minecraft:iron_ore", "minecraft:coal_ore", "minecraft:oak_log", "minecraft:oak_leaves", "minecraft:sponge", "minecraft:glass", "minecraft:lapis_ore", "minecraft:lapis_block", "minecraft:dispenser", "minecraft:sandstone", "minecraft:note_block", "minecraft:red_bed", "minecraft:powered_rail", "minecraft:detector_rail", "minecraft:sticky_piston", "minecraft:cobweb", "minecraft:dead_bush", "minecraft:dead_bush", "minecraft:piston", "minecraft:piston_head", "minecraft:white_wool", "minecraft:moving_piston", "minecraft:dandelion", "minecraft:poppy", "minecraft:brown_mushroom", "minecraft:red_mushroom", "minecraft:gold_block", "minecraft:iron_block", "minecraft:smooth_stone_slab", "minecraft:smooth_stone_slab", "minecraft:bricks", "minecraft:tnt", "minecraft:bookshelf", "minecraft:mossy_cobblestone", "minecraft:obsidian", "minecraft:wall_torch", "minecraft:fire", "minecraft:oak_stairs", "minecraft:chest", "minecraft:redstone_wire", "minecraft:diamond_ore", "minecraft:diamond_block", "minecraft:crafting_table", "minecraft:wheat", "minecraft:farmland", "minecraft:furnace", "minecraft:furnace", "minecraft:oak_sign", "minecraft:oak_door", "minecraft:ladder", "minecraft:rail", "minecraft:cobblestone_stairs", "minecraft:oak_wall_sign", "minecraft:lever", "minecraft:stone_pressure_plate", "minecraft:iron_door", "minecraft:oak_pressure_plate", "minecraft:redstone_ore", "minecraft:redstone_ore", "minecraft:redstone_wall_torch", "minecraft:redstone_wall_torch", "minecraft:stone_button", "minecraft:snow", "minecraft:ice", "minecraft:snow_block", "minecraft:cactus", "minecraft:clay", "minecraft:sugar_cane", "minecraft:jukebox", "minecraft:oak_fence", "minecraft:carved_pumpkin", "minecraft:netherrack", "minecraft:soul_sand", "minecraft:glowstone", "minecraft:nether_portal", "minecraft:jack_o_lantern", "minecraft:cake", "minecraft:repeater", "minecraft:repeater", "minecraft:white_stained_glass", "minecraft:oak_trapdoor", "minecraft:infested_stone", "minecraft:stone_bricks", "minecraft:brown_mushroom_block", "minecraft:red_mushroom_block", "minecraft:iron_bars", "minecraft:glass_pane", "minecraft:melon", "minecraft:pumpkin_stem", "minecraft:melon_stem", "minecraft:vine", "minecraft:oak_fence_gate", "minecraft:brick_stairs", "minecraft:stone_brick_stairs", "minecraft:mycelium", "minecraft:lily_pad", "minecraft:nether_bricks", "minecraft:nether_brick_fence", "minecraft:nether_brick_stairs", "minecraft:nether_wart", "minecraft:enchanting_table", "minecraft:brewing_stand", "minecraft:cauldron", "minecraft:end_portal", "minecraft:end_portal_frame", "minecraft:end_stone", "minecraft:dragon_egg", "minecraft:redstone_lamp", "minecraft:redstone_lamp", "minecraft:oak_slab", "minecraft:oak_slab", "minecraft:cocoa", "minecraft:sandstone_stairs", "minecraft:emerald_ore", "minecraft:ender_chest", "minecraft:tripwire_hook", "minecraft:tripwire", "minecraft:emerald_block", "minecraft:spruce_stairs", "minecraft:birch_stairs", "minecraft:jungle_stairs", "minecraft:command_block", "minecraft:beacon", "minecraft:cobblestone_wall", "minecraft:potted_cactus", "minecraft:carrots", "minecraft:potatoes", "minecraft:oak_button", "%%FILTER_ME%%", "minecraft:anvil", "minecraft:trapped_chest", "minecraft:light_weighted_pressure_plate", "minecraft:heavy_weighted_pressure_plate", "minecraft:comparator", "minecraft:comparator", "minecraft:daylight_detector", "minecraft:redstone_block", "minecraft:nether_quartz_ore", "minecraft:hopper", "minecraft:quartz_block", "minecraft:quartz_stairs", "minecraft:activator_rail", "minecraft:dropper", "minecraft:white_terracotta", "minecraft:white_stained_glass_pane", "minecraft:acacia_leaves", "minecraft:acacia_log", "minecraft:acacia_stairs", "minecraft:dark_oak_stairs", "minecraft:slime_block", "minecraft:barrier", "minecraft:iron_trapdoor", "minecraft:prismarine", "minecraft:sea_lantern", "minecraft:hay_block", "minecraft:white_carpet", "minecraft:terracotta", "minecraft:coal_block", "minecraft:packed_ice", "minecraft:sunflower", "minecraft:white_banner", "minecraft:white_wall_banner", "minecraft:daylight_detector", "minecraft:red_sandstone", "minecraft:red_sandstone_stairs", "minecraft:red_sandstone_slab", "minecraft:red_sandstone_slab", "minecraft:spruce_fence_gate", "minecraft:birch_fence_gate", "minecraft:jungle_fence_gate", "minecraft:dark_oak_fence_gate", "minecraft:acacia_fence_gate", "minecraft:spruce_fence", "minecraft:birch_fence", "minecraft:jungle_fence", "minecraft:dark_oak_fence", "minecraft:acacia_fence", "minecraft:spruce_door", "minecraft:birch_door", "minecraft:jungle_door", "minecraft:acacia_door", "minecraft:dark_oak_door", "minecraft:end_rod", "minecraft:chorus_plant", "minecraft:chorus_flower", "minecraft:purpur_block", "minecraft:purpur_pillar", "minecraft:purpur_stairs", "minecraft:purpur_slab", "minecraft:purpur_slab", "minecraft:end_stone_bricks", "minecraft:beetroots", "minecraft:dirt_path", "minecraft:end_gateway", "minecraft:repeating_command_block", "minecraft:chain_command_block", "minecraft:frosted_ice", "minecraft:magma_block", "minecraft:nether_wart_block", "minecraft:red_nether_bricks", "minecraft:bone_block", "minecraft:structure_void", "minecraft:observer", "minecraft:white_shulker_box", "minecraft:orange_shulker_box", "minecraft:magenta_shulker_box", "minecraft:light_blue_shulker_box", "minecraft:yellow_shulker_box", "minecraft:lime_shulker_box", "minecraft:pink_shulker_box", "minecraft:gray_shulker_box", "minecraft:light_gray_shulker_box", "minecraft:cyan_shulker_box", "minecraft:shulker_box", "minecraft:blue_shulker_box", "minecraft:brown_shulker_box", "minecraft:green_shulker_box", "minecraft:red_shulker_box", "minecraft:black_shulker_box", "minecraft:structure_block"], display: {Lore: ['{"text":"§r仄かに光る不思議なキノコ。"}', '{"text":"§r10分ほどで枯れてしまう。"}', '{"text":"§r食用には適さない。"}'], Name: '{"text":"§eヒカリタケ"}'}, Enchantments: []}}, xp: 1, uses: -2000000000, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 7, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 4b}, sell: {id: "minecraft:skeleton_spawn_egg", Count: 1b, tag: {EntityTag: {DeathTime: 19s, ArmorItems: [], DeathLootTable: "usb:signs/arrow", id: "minecraft:skeleton", NoAI: 1b, ActiveEffects: [{Duration: 100, Id: 6b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id: 14b, Amplifier: 0b, ShowParticles: 0b}], Tags: ["RewardEgg", "TypeChecked"], HandItems: []}, RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["minecraft:stone", "minecraft:grass_block", "minecraft:dirt", "minecraft:cobblestone", "minecraft:oak_planks", "minecraft:oak_sapling", "minecraft:bedrock", "minecraft:water", "minecraft:water", "minecraft:lava", "minecraft:lava", "minecraft:sand", "minecraft:gravel", "minecraft:gold_ore", "minecraft:iron_ore", "minecraft:coal_ore", "minecraft:oak_log", "minecraft:oak_leaves", "minecraft:sponge", "minecraft:glass", "minecraft:lapis_ore", "minecraft:lapis_block", "minecraft:dispenser", "minecraft:sandstone", "minecraft:note_block", "minecraft:red_bed", "minecraft:powered_rail", "minecraft:detector_rail", "minecraft:sticky_piston", "minecraft:cobweb", "minecraft:dead_bush", "minecraft:dead_bush", "minecraft:piston", "minecraft:piston_head", "minecraft:white_wool", "minecraft:moving_piston", "minecraft:dandelion", "minecraft:poppy", "minecraft:brown_mushroom", "minecraft:red_mushroom", "minecraft:gold_block", "minecraft:iron_block", "minecraft:smooth_stone_slab", "minecraft:smooth_stone_slab", "minecraft:bricks", "minecraft:tnt", "minecraft:bookshelf", "minecraft:mossy_cobblestone", "minecraft:obsidian", "minecraft:wall_torch", "minecraft:fire", "minecraft:oak_stairs", "minecraft:chest", "minecraft:redstone_wire", "minecraft:diamond_ore", "minecraft:diamond_block", "minecraft:crafting_table", "minecraft:wheat", "minecraft:farmland", "minecraft:furnace", "minecraft:furnace", "minecraft:oak_sign", "minecraft:oak_door", "minecraft:ladder", "minecraft:rail", "minecraft:cobblestone_stairs", "minecraft:oak_wall_sign", "minecraft:lever", "minecraft:stone_pressure_plate", "minecraft:iron_door", "minecraft:oak_pressure_plate", "minecraft:redstone_ore", "minecraft:redstone_ore", "minecraft:redstone_wall_torch", "minecraft:redstone_wall_torch", "minecraft:stone_button", "minecraft:snow", "minecraft:ice", "minecraft:snow_block", "minecraft:cactus", "minecraft:clay", "minecraft:sugar_cane", "minecraft:jukebox", "minecraft:oak_fence", "minecraft:carved_pumpkin", "minecraft:netherrack", "minecraft:soul_sand", "minecraft:glowstone", "minecraft:nether_portal", "minecraft:jack_o_lantern", "minecraft:cake", "minecraft:repeater", "minecraft:repeater", "minecraft:white_stained_glass", "minecraft:oak_trapdoor", "minecraft:infested_stone", "minecraft:stone_bricks", "minecraft:brown_mushroom_block", "minecraft:red_mushroom_block", "minecraft:iron_bars", "minecraft:glass_pane", "minecraft:melon", "minecraft:pumpkin_stem", "minecraft:melon_stem", "minecraft:vine", "minecraft:oak_fence_gate", "minecraft:brick_stairs", "minecraft:stone_brick_stairs", "minecraft:mycelium", "minecraft:lily_pad", "minecraft:nether_bricks", "minecraft:nether_brick_fence", "minecraft:nether_brick_stairs", "minecraft:nether_wart", "minecraft:enchanting_table", "minecraft:brewing_stand", "minecraft:cauldron", "minecraft:end_portal", "minecraft:end_portal_frame", "minecraft:end_stone", "minecraft:dragon_egg", "minecraft:redstone_lamp", "minecraft:redstone_lamp", "minecraft:oak_slab", "minecraft:oak_slab", "minecraft:cocoa", "minecraft:sandstone_stairs", "minecraft:emerald_ore", "minecraft:ender_chest", "minecraft:tripwire_hook", "minecraft:tripwire", "minecraft:emerald_block", "minecraft:spruce_stairs", "minecraft:birch_stairs", "minecraft:jungle_stairs", "minecraft:command_block", "minecraft:beacon", "minecraft:cobblestone_wall", "minecraft:potted_cactus", "minecraft:carrots", "minecraft:potatoes", "minecraft:oak_button", "%%FILTER_ME%%", "minecraft:anvil", "minecraft:trapped_chest", "minecraft:light_weighted_pressure_plate", "minecraft:heavy_weighted_pressure_plate", "minecraft:comparator", "minecraft:comparator", "minecraft:daylight_detector", "minecraft:redstone_block", "minecraft:nether_quartz_ore", "minecraft:hopper", "minecraft:quartz_block", "minecraft:quartz_stairs", "minecraft:activator_rail", "minecraft:dropper", "minecraft:white_terracotta", "minecraft:white_stained_glass_pane", "minecraft:acacia_leaves", "minecraft:acacia_log", "minecraft:acacia_stairs", "minecraft:dark_oak_stairs", "minecraft:slime_block", "minecraft:barrier", "minecraft:iron_trapdoor", "minecraft:prismarine", "minecraft:sea_lantern", "minecraft:hay_block", "minecraft:white_carpet", "minecraft:terracotta", "minecraft:coal_block", "minecraft:packed_ice", "minecraft:sunflower", "minecraft:white_banner", "minecraft:white_wall_banner", "minecraft:daylight_detector", "minecraft:red_sandstone", "minecraft:red_sandstone_stairs", "minecraft:red_sandstone_slab", "minecraft:red_sandstone_slab", "minecraft:spruce_fence_gate", "minecraft:birch_fence_gate", "minecraft:jungle_fence_gate", "minecraft:dark_oak_fence_gate", "minecraft:acacia_fence_gate", "minecraft:spruce_fence", "minecraft:birch_fence", "minecraft:jungle_fence", "minecraft:dark_oak_fence", "minecraft:acacia_fence", "minecraft:spruce_door", "minecraft:birch_door", "minecraft:jungle_door", "minecraft:acacia_door", "minecraft:dark_oak_door", "minecraft:end_rod", "minecraft:chorus_plant", "minecraft:chorus_flower", "minecraft:purpur_block", "minecraft:purpur_pillar", "minecraft:purpur_stairs", "minecraft:purpur_slab", "minecraft:purpur_slab", "minecraft:end_stone_bricks", "minecraft:beetroots", "minecraft:dirt_path", "minecraft:end_gateway", "minecraft:repeating_command_block", "minecraft:chain_command_block", "minecraft:frosted_ice", "minecraft:magma_block", "minecraft:nether_wart_block", "minecraft:red_nether_bricks", "minecraft:bone_block", "minecraft:structure_void", "minecraft:observer", "minecraft:white_shulker_box", "minecraft:orange_shulker_box", "minecraft:magenta_shulker_box", "minecraft:light_blue_shulker_box", "minecraft:yellow_shulker_box", "minecraft:lime_shulker_box", "minecraft:pink_shulker_box", "minecraft:gray_shulker_box", "minecraft:light_gray_shulker_box", "minecraft:cyan_shulker_box", "minecraft:shulker_box", "minecraft:blue_shulker_box", "minecraft:brown_shulker_box", "minecraft:green_shulker_box", "minecraft:red_shulker_box", "minecraft:black_shulker_box", "minecraft:structure_block"], display: {Lore: ['{"text":"§f矢が64本収納された筒。"}'], Name: '{"text":"§f矢筒"}'}, Enchantments: []}}, xp: 1, uses: -2000000000, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 7, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:skeleton_spawn_egg", Count: 1b, tag: {EntityTag: {DeathTime: 19s, ArmorItems: [], DeathLootTable: "usb:signs/snowball", id: "minecraft:skeleton", NoAI: 1b, ActiveEffects: [{Duration: 100, Id: 6b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id: 14b, Amplifier: 0b, ShowParticles: 0b}], Tags: ["RewardEgg", "TypeChecked"], HandItems: []}, RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["minecraft:stone", "minecraft:grass_block", "minecraft:dirt", "minecraft:cobblestone", "minecraft:oak_planks", "minecraft:oak_sapling", "minecraft:bedrock", "minecraft:water", "minecraft:water", "minecraft:lava", "minecraft:lava", "minecraft:sand", "minecraft:gravel", "minecraft:gold_ore", "minecraft:iron_ore", "minecraft:coal_ore", "minecraft:oak_log", "minecraft:oak_leaves", "minecraft:sponge", "minecraft:glass", "minecraft:lapis_ore", "minecraft:lapis_block", "minecraft:dispenser", "minecraft:sandstone", "minecraft:note_block", "minecraft:red_bed", "minecraft:powered_rail", "minecraft:detector_rail", "minecraft:sticky_piston", "minecraft:cobweb", "minecraft:dead_bush", "minecraft:dead_bush", "minecraft:piston", "minecraft:piston_head", "minecraft:white_wool", "minecraft:moving_piston", "minecraft:dandelion", "minecraft:poppy", "minecraft:brown_mushroom", "minecraft:red_mushroom", "minecraft:gold_block", "minecraft:iron_block", "minecraft:smooth_stone_slab", "minecraft:smooth_stone_slab", "minecraft:bricks", "minecraft:tnt", "minecraft:bookshelf", "minecraft:mossy_cobblestone", "minecraft:obsidian", "minecraft:wall_torch", "minecraft:fire", "minecraft:oak_stairs", "minecraft:chest", "minecraft:redstone_wire", "minecraft:diamond_ore", "minecraft:diamond_block", "minecraft:crafting_table", "minecraft:wheat", "minecraft:farmland", "minecraft:furnace", "minecraft:furnace", "minecraft:oak_sign", "minecraft:oak_door", "minecraft:ladder", "minecraft:rail", "minecraft:cobblestone_stairs", "minecraft:oak_wall_sign", "minecraft:lever", "minecraft:stone_pressure_plate", "minecraft:iron_door", "minecraft:oak_pressure_plate", "minecraft:redstone_ore", "minecraft:redstone_ore", "minecraft:redstone_wall_torch", "minecraft:redstone_wall_torch", "minecraft:stone_button", "minecraft:snow", "minecraft:ice", "minecraft:snow_block", "minecraft:cactus", "minecraft:clay", "minecraft:sugar_cane", "minecraft:jukebox", "minecraft:oak_fence", "minecraft:carved_pumpkin", "minecraft:netherrack", "minecraft:soul_sand", "minecraft:glowstone", "minecraft:nether_portal", "minecraft:jack_o_lantern", "minecraft:cake", "minecraft:repeater", "minecraft:repeater", "minecraft:white_stained_glass", "minecraft:oak_trapdoor", "minecraft:infested_stone", "minecraft:stone_bricks", "minecraft:brown_mushroom_block", "minecraft:red_mushroom_block", "minecraft:iron_bars", "minecraft:glass_pane", "minecraft:melon", "minecraft:pumpkin_stem", "minecraft:melon_stem", "minecraft:vine", "minecraft:oak_fence_gate", "minecraft:brick_stairs", "minecraft:stone_brick_stairs", "minecraft:mycelium", "minecraft:lily_pad", "minecraft:nether_bricks", "minecraft:nether_brick_fence", "minecraft:nether_brick_stairs", "minecraft:nether_wart", "minecraft:enchanting_table", "minecraft:brewing_stand", "minecraft:cauldron", "minecraft:end_portal", "minecraft:end_portal_frame", "minecraft:end_stone", "minecraft:dragon_egg", "minecraft:redstone_lamp", "minecraft:redstone_lamp", "minecraft:oak_slab", "minecraft:oak_slab", "minecraft:cocoa", "minecraft:sandstone_stairs", "minecraft:emerald_ore", "minecraft:ender_chest", "minecraft:tripwire_hook", "minecraft:tripwire", "minecraft:emerald_block", "minecraft:spruce_stairs", "minecraft:birch_stairs", "minecraft:jungle_stairs", "minecraft:command_block", "minecraft:beacon", "minecraft:cobblestone_wall", "minecraft:potted_cactus", "minecraft:carrots", "minecraft:potatoes", "minecraft:oak_button", "%%FILTER_ME%%", "minecraft:anvil", "minecraft:trapped_chest", "minecraft:light_weighted_pressure_plate", "minecraft:heavy_weighted_pressure_plate", "minecraft:comparator", "minecraft:comparator", "minecraft:daylight_detector", "minecraft:redstone_block", "minecraft:nether_quartz_ore", "minecraft:hopper", "minecraft:quartz_block", "minecraft:quartz_stairs", "minecraft:activator_rail", "minecraft:dropper", "minecraft:white_terracotta", "minecraft:white_stained_glass_pane", "minecraft:acacia_leaves", "minecraft:acacia_log", "minecraft:acacia_stairs", "minecraft:dark_oak_stairs", "minecraft:slime_block", "minecraft:barrier", "minecraft:iron_trapdoor", "minecraft:prismarine", "minecraft:sea_lantern", "minecraft:hay_block", "minecraft:white_carpet", "minecraft:terracotta", "minecraft:coal_block", "minecraft:packed_ice", "minecraft:sunflower", "minecraft:white_banner", "minecraft:white_wall_banner", "minecraft:daylight_detector", "minecraft:red_sandstone", "minecraft:red_sandstone_stairs", "minecraft:red_sandstone_slab", "minecraft:red_sandstone_slab", "minecraft:spruce_fence_gate", "minecraft:birch_fence_gate", "minecraft:jungle_fence_gate", "minecraft:dark_oak_fence_gate", "minecraft:acacia_fence_gate", "minecraft:spruce_fence", "minecraft:birch_fence", "minecraft:jungle_fence", "minecraft:dark_oak_fence", "minecraft:acacia_fence", "minecraft:spruce_door", "minecraft:birch_door", "minecraft:jungle_door", "minecraft:acacia_door", "minecraft:dark_oak_door", "minecraft:end_rod", "minecraft:chorus_plant", "minecraft:chorus_flower", "minecraft:purpur_block", "minecraft:purpur_pillar", "minecraft:purpur_stairs", "minecraft:purpur_slab", "minecraft:purpur_slab", "minecraft:end_stone_bricks", "minecraft:beetroots", "minecraft:dirt_path", "minecraft:end_gateway", "minecraft:repeating_command_block", "minecraft:chain_command_block", "minecraft:frosted_ice", "minecraft:magma_block", "minecraft:nether_wart_block", "minecraft:red_nether_bricks", "minecraft:bone_block", "minecraft:structure_void", "minecraft:observer", "minecraft:white_shulker_box", "minecraft:orange_shulker_box", "minecraft:magenta_shulker_box", "minecraft:light_blue_shulker_box", "minecraft:yellow_shulker_box", "minecraft:lime_shulker_box", "minecraft:pink_shulker_box", "minecraft:gray_shulker_box", "minecraft:light_gray_shulker_box", "minecraft:cyan_shulker_box", "minecraft:shulker_box", "minecraft:blue_shulker_box", "minecraft:brown_shulker_box", "minecraft:green_shulker_box", "minecraft:red_shulker_box", "minecraft:black_shulker_box", "minecraft:structure_block"], display: {Lore: ['{"text":"§f雪が16個収納された筒。"}'], Name: '{"text":"§f雪筒"}'}, Enchantments: []}}, xp: 1, uses: -2000000000, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 7, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 15b}, sell: {id: "minecraft:witch_spawn_egg", Count: 1b, tag: {EntityTag: {DeathLootTable: "usb:signs/ether1", id: "minecraft:witch", DeathTime: 19s, ActiveEffects: [{Duration: 100, Id: 7b, Amplifier: 5b, ShowParticles: 0b}, {Duration: 100, Id: 14b, Amplifier: 0b, ShowParticles: 0b}], Tags: ["RewardEgg", "TypeChecked"]}, RepairCost: 1000000000, HideFlags: 16, CanPlaceOn: ["minecraft:stone", "minecraft:grass_block", "minecraft:dirt", "minecraft:cobblestone", "minecraft:oak_planks", "minecraft:oak_sapling", "minecraft:bedrock", "minecraft:water", "minecraft:water", "minecraft:lava", "minecraft:lava", "minecraft:sand", "minecraft:gravel", "minecraft:gold_ore", "minecraft:iron_ore", "minecraft:coal_ore", "minecraft:oak_log", "minecraft:oak_leaves", "minecraft:sponge", "minecraft:glass", "minecraft:lapis_ore", "minecraft:lapis_block", "minecraft:dispenser", "minecraft:sandstone", "minecraft:note_block", "minecraft:red_bed", "minecraft:powered_rail", "minecraft:detector_rail", "minecraft:sticky_piston", "minecraft:cobweb", "minecraft:dead_bush", "minecraft:dead_bush", "minecraft:piston", "minecraft:piston_head", "minecraft:white_wool", "minecraft:moving_piston", "minecraft:dandelion", "minecraft:poppy", "minecraft:brown_mushroom", "minecraft:red_mushroom", "minecraft:gold_block", "minecraft:iron_block", "minecraft:smooth_stone_slab", "minecraft:smooth_stone_slab", "minecraft:bricks", "minecraft:tnt", "minecraft:bookshelf", "minecraft:mossy_cobblestone", "minecraft:obsidian", "minecraft:wall_torch", "minecraft:fire", "minecraft:oak_stairs", "minecraft:chest", "minecraft:redstone_wire", "minecraft:diamond_ore", "minecraft:diamond_block", "minecraft:crafting_table", "minecraft:wheat", "minecraft:farmland", "minecraft:furnace", "minecraft:furnace", "minecraft:oak_sign", "minecraft:oak_door", "minecraft:ladder", "minecraft:rail", "minecraft:cobblestone_stairs", "minecraft:oak_wall_sign", "minecraft:lever", "minecraft:stone_pressure_plate", "minecraft:iron_door", "minecraft:oak_pressure_plate", "minecraft:redstone_ore", "minecraft:redstone_ore", "minecraft:redstone_wall_torch", "minecraft:redstone_wall_torch", "minecraft:stone_button", "minecraft:snow", "minecraft:ice", "minecraft:snow_block", "minecraft:cactus", "minecraft:clay", "minecraft:sugar_cane", "minecraft:jukebox", "minecraft:oak_fence", "minecraft:carved_pumpkin", "minecraft:netherrack", "minecraft:soul_sand", "minecraft:glowstone", "minecraft:nether_portal", "minecraft:jack_o_lantern", "minecraft:cake", "minecraft:repeater", "minecraft:repeater", "minecraft:white_stained_glass", "minecraft:oak_trapdoor", "minecraft:infested_stone", "minecraft:stone_bricks", "minecraft:brown_mushroom_block", "minecraft:red_mushroom_block", "minecraft:iron_bars", "minecraft:glass_pane", "minecraft:melon", "minecraft:pumpkin_stem", "minecraft:melon_stem", "minecraft:vine", "minecraft:oak_fence_gate", "minecraft:brick_stairs", "minecraft:stone_brick_stairs", "minecraft:mycelium", "minecraft:lily_pad", "minecraft:nether_bricks", "minecraft:nether_brick_fence", "minecraft:nether_brick_stairs", "minecraft:nether_wart", "minecraft:enchanting_table", "minecraft:brewing_stand", "minecraft:cauldron", "minecraft:end_portal", "minecraft:end_portal_frame", "minecraft:end_stone", "minecraft:dragon_egg", "minecraft:redstone_lamp", "minecraft:redstone_lamp", "minecraft:oak_slab", "minecraft:oak_slab", "minecraft:cocoa", "minecraft:sandstone_stairs", "minecraft:emerald_ore", "minecraft:ender_chest", "minecraft:tripwire_hook", "minecraft:tripwire", "minecraft:emerald_block", "minecraft:spruce_stairs", "minecraft:birch_stairs", "minecraft:jungle_stairs", "minecraft:command_block", "minecraft:beacon", "minecraft:cobblestone_wall", "minecraft:potted_cactus", "minecraft:carrots", "minecraft:potatoes", "minecraft:oak_button", "%%FILTER_ME%%", "minecraft:anvil", "minecraft:trapped_chest", "minecraft:light_weighted_pressure_plate", "minecraft:heavy_weighted_pressure_plate", "minecraft:comparator", "minecraft:comparator", "minecraft:daylight_detector", "minecraft:redstone_block", "minecraft:nether_quartz_ore", "minecraft:hopper", "minecraft:quartz_block", "minecraft:quartz_stairs", "minecraft:activator_rail", "minecraft:dropper", "minecraft:white_terracotta", "minecraft:white_stained_glass_pane", "minecraft:acacia_leaves", "minecraft:acacia_log", "minecraft:acacia_stairs", "minecraft:dark_oak_stairs", "minecraft:slime_block", "minecraft:barrier", "minecraft:iron_trapdoor", "minecraft:prismarine", "minecraft:sea_lantern", "minecraft:hay_block", "minecraft:white_carpet", "minecraft:terracotta", "minecraft:coal_block", "minecraft:packed_ice", "minecraft:sunflower", "minecraft:white_banner", "minecraft:white_wall_banner", "minecraft:daylight_detector", "minecraft:red_sandstone", "minecraft:red_sandstone_stairs", "minecraft:red_sandstone_slab", "minecraft:red_sandstone_slab", "minecraft:spruce_fence_gate", "minecraft:birch_fence_gate", "minecraft:jungle_fence_gate", "minecraft:dark_oak_fence_gate", "minecraft:acacia_fence_gate", "minecraft:spruce_fence", "minecraft:birch_fence", "minecraft:jungle_fence", "minecraft:dark_oak_fence", "minecraft:acacia_fence", "minecraft:spruce_door", "minecraft:birch_door", "minecraft:jungle_door", "minecraft:acacia_door", "minecraft:dark_oak_door", "minecraft:end_rod", "minecraft:chorus_plant", "minecraft:chorus_flower", "minecraft:purpur_block", "minecraft:purpur_pillar", "minecraft:purpur_stairs", "minecraft:purpur_slab", "minecraft:purpur_slab", "minecraft:end_stone_bricks", "minecraft:beetroots", "minecraft:dirt_path", "minecraft:end_gateway", "minecraft:repeating_command_block", "minecraft:chain_command_block", "minecraft:frosted_ice", "minecraft:magma_block", "minecraft:nether_wart_block", "minecraft:red_nether_bricks", "minecraft:bone_block", "minecraft:structure_void", "minecraft:observer", "minecraft:white_shulker_box", "minecraft:orange_shulker_box", "minecraft:magenta_shulker_box", "minecraft:light_blue_shulker_box", "minecraft:yellow_shulker_box", "minecraft:lime_shulker_box", "minecraft:pink_shulker_box", "minecraft:gray_shulker_box", "minecraft:light_gray_shulker_box", "minecraft:cyan_shulker_box", "minecraft:shulker_box", "minecraft:blue_shulker_box", "minecraft:brown_shulker_box", "minecraft:green_shulker_box", "minecraft:red_shulker_box", "minecraft:black_shulker_box", "minecraft:structure_block"], display: {Lore: ['{"text":"§rエーテルが入っている。"}'], Name: '{"text":"§2§lエーテルカプセル"}'}, Enchantments: []}}, xp: 1, uses: -2000000000, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 7, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 10b}, sell: {id: "minecraft:ender_eye", Count: 1b, tag: {RepairCost: 1000000000, CanPlaceOn: ["minecraft:end_portal_frame"], display: {Lore: ['{"text":"§rアドベンチャーエリアでも設置できる。"}'], Name: '{"text":"§4§lAdv.§f§lエンダーアイ"}'}, Enchantments: []}}, xp: 1, uses: -1999999999, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]