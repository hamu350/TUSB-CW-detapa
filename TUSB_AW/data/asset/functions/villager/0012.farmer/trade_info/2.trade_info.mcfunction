#> asset:villager/0012.farmer/trade_info/2.trade_info

# まずデータを初期化します(これは消さないでね)
data remove storage asset: villager

# # まずアイテムを持たせる防具立てを召喚します
# summon armor_stand 0.0 0.0 0.0 {Tags:["ItemHolder"]}

# # 交易品となるアイテムを持たせます(Mainhand→buy、Offhand→buyB、Head→sell)
# item replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand with diamond 5
# item replace entity @e[tag=ItemHolder,limit=1] weapon.offhand with emerald 64
# item replace entity @e[tag=ItemHolder,limit=1] armor.head with diamond_block 1
# # /loot版も用意しておきますね
# # /lootでやる場合、個数を別コマンドで設定してあげる必要があります
# # loot replace entity @e[tag=ItemHolder,limit=1] weapon.mainhand loot <path>
# # data modify entity @e[tag=ItemHolder,limit=1] HandItems[0].Count set value 1
# # loot replace entity @e[tag=ItemHolder,limit=1] weapon.offhand loot <path>
# # data modify entity @e[tag=ItemHolder,limit=1] HandItems[1].Count set value 1
# # loot replace entity @e[tag=ItemHolder,limit=1] armor.head loot <path>
# # data modify entity @e[tag=ItemHolder,limit=1] ArmorItems[0].Count set value 1

# # 持たせたアイテムを元にstorage上の取引を追加します
# data modify storage _: _ set from entity @e[tag=ItemHolder,limit=1]
# data modify storage asset: villager.Offers.Recipes set value {buy:{},buyB:{},sell:{}}
# data modify storage asset: villager.Offers.Recipes[-1].buy set from storage _: _.HandItems[0]
# data modify storage asset: villager.Offers.Recipes[-1].buyB set from storage _: _.HandItems[1]
# data modify storage asset: villager.Offers.Recipes[-1].sell set from storage _: _.ArmorItems[0]
# data remove storage _: _
# # 他にも入れたい上方(xpや使用上限など)があれば各自設定します
# data modify storage asset: villager.Offers.Recipes[-1] merge value {xp:0,MaxUses:2147483637}

# # 交易品を持たせるところから繰り返します。オフハンドを消したりするのは忘れずに

# # 取引情報を設定し終わったら防具立てを処理する
# kill @e[tag=ItemHolder,limit=1]

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 1b}, sell: {id: "minecraft:wheat_seeds", Count: 4b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:hay_block", Count: 4b}, sell: {id: "minecraft:pumpkin_seeds", Count: 4b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:pumpkin", Count: 16b}, sell: {id: "minecraft:melon_seeds", Count: 4b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:melon", Count: 16b}, sell: {id: "minecraft:beetroot_seeds", Count: 4b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:vine", Count: 8b}, sell: {id: "minecraft:sugar_cane", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:sugar_cane", Count: 8b}, sell: {id: "minecraft:cactus", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:cactus", Count: 8b}, sell: {id: "minecraft:bone_meal", Count: 64b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald_block", Count: 1b}, sell: {id: "minecraft:carrot", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:carrot", Count: 16b}, sell: {id: "minecraft:potato", Count: 4b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:potato", Count: 16b}, sell: {id: "minecraft:nether_wart", Count: 4b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:nether_wart", Count: 16b}, sell: {id: "minecraft:chorus_flower", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:snow_block", Count: 16b}, sell: {id: "minecraft:soul_sand", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:cobblestone", Count: 16b}, sell: {id: "minecraft:end_stone", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:tnt", Count: 1b}, sell: {id: "minecraft:sand", Count: 4b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:hay_block", Count: 1b}, sell: {id: "minecraft:emerald", Count: 5b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:pumpkin", Count: 1b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:melon", Count: 1b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:carrot", Count: 4b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:potato", Count: 4b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:beetroot", Count: 4b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:nether_wart", Count: 4b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:chorus_fruit", Count: 4b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:cactus", Count: 4b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:sugar_cane", Count: 4b}, sell: {id: "minecraft:emerald", Count: 2b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:wheat_seeds", Count: 64b}, sell: {id: "minecraft:emerald", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:pumpkin_seeds", Count: 64b}, sell: {id: "minecraft:emerald", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:melon_seeds", Count: 64b}, sell: {id: "minecraft:emerald", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:beetroot_seeds", Count: 64b}, sell: {id: "minecraft:emerald", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:chorus_flower", Count: 1b}, buy: {id: "minecraft:wheat", Count: 64b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§r§e設置して使用すると、看板から"}', '{"text":"§c§lけっこうな§e範囲にある§2§l麦作物§eを"}', '{"text":"§a収穫§eできる。看板が壊れない限り"}', '{"text":"§d§n半永久的§eに使用できる。"}', '{"text":"§e§o※§c§oネザー§e§oや§5§oエンド§e§oでは使用出来ない。"}'], Name: '{"text":"§r§a§l収穫の印板：§2§l麦"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "PermanentStand", "WheatBreaker", "OverOnly", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:chorus_flower", Count: 1b}, buy: {id: "minecraft:carrot", Count: 64b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§r§e設置して使用すると、看板から"}', '{"text":"§c§lけっこうな§e範囲にある§c§l人参作物§eを"}', '{"text":"§a収穫§eできる。看板が壊れない限り"}', '{"text":"§d§n半永久的§eに使用できる。"}', '{"text":"§e§o※§c§oネザー§e§oや§5§oエンド§e§oでは使用出来ない。"}'], Name: '{"text":"§r§a§l収穫の印板：§c§l人参"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "PermanentStand", "CarrotBreaker", "OverOnly", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:chorus_flower", Count: 1b}, buy: {id: "minecraft:potato", Count: 64b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§r§e設置して使用すると、看板から"}', '{"text":"§c§lけっこうな§e範囲にある§6§l芋作物§eを"}', '{"text":"§a収穫§eできる。看板が壊れない限り"}', '{"text":"§d§n半永久的§eに使用できる。"}', '{"text":"§e§o※§c§oネザー§e§oや§5§oエンド§e§oでは使用出来ない。"}'], Name: '{"text":"§r§a§l収穫の印板：§6§l芋"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "PermanentStand", "PotatoBreaker", "OverOnly", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:chorus_flower", Count: 1b}, buy: {id: "minecraft:beetroot", Count: 64b}, sell: {id: "minecraft:armor_stand", Count: 1b, tag: {NoGravity: 1b, RepairCost: 1000000000, display: {Lore: ['{"text":"§r§e設置して使用すると、看板から"}', '{"text":"§c§lけっこうな§e範囲にある§c§4ビートルート作物§eを"}', '{"text":"§a収穫§eできる。看板が壊れない限り"}', '{"text":"§d§n半永久的§eに使用できる。"}', '{"text":"§e§o※§c§oネザー§e§oや§5§oエンド§e§oでは使用出来ない。"}'], Name: '{"text":"§r§a§l収穫の印板：§c§4ビートルート"}'}, Enchantments: [], EntityTag: {Tags: ["SignStand", "PermanentStand", "BeetBreaker", "OverOnly", "TypeChecked"], id: "minecraft:armor_stand"}, Invulnerable: 1b, Invisible: 1b}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:flower_pot", Count: 1b}, sell: {id: "minecraft:emerald", Count: 16b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:poisonous_potato", Count: 1b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 5, Id: 19b, Amplifier: 99b, ShowParticles: 1b}, {Duration: 120, Id: 9b, Amplifier: 99b, ShowParticles: 1b}, {Duration: 120, Id: 9b, Amplifier: -99b, ShowParticles: 1b}, {Duration: 1, Id: 23b, Amplifier: 2b, ShowParticles: 1b}, {Duration: 120, Id: 8b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 0, Id: 26b, Amplifier: 0b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:empty", display: {Lore: ['{"text":"§e飲むと§2毒状態等§eになるが、"}', '{"text":"§a体内の毒§eを中和し、"}', '{"text":"§eわずかに§c腹が満たされる"}', '{"text":"§eケンコー飲料である。"}', '{"text":"§7尚、味は薄い。"}'], Name: '{"text":"§2§lドクダヨ茶"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 4b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 5, Id: 19b, Amplifier: 99b, ShowParticles: 1b}, {Duration: 120, Id: 9b, Amplifier: 99b, ShowParticles: 1b}, {Duration: 120, Id: 9b, Amplifier: -99b, ShowParticles: 1b}, {Duration: 1, Id: 23b, Amplifier: 2b, ShowParticles: 1b}, {Duration: 120, Id: 8b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 0, Id: 26b, Amplifier: 0b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:empty", display: {Lore: ['{"text":"§e飲むと§2毒状態等§eになるが、"}', '{"text":"§a体内の毒§eを中和し、"}', '{"text":"§eわずかに§c腹が満たされる"}', '{"text":"§eケンコー飲料である。"}', '{"text":"§7尚、味は薄い。"}'], Name: '{"text":"§2§lドクダヨ茶"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:sugar", Count: 16b}, buy: {id: "minecraft:melon_slice", Count: 32b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 0, Id: 25b, Amplifier: -128b, ShowParticles: 1b}, {Duration: 0, Id: 26b, Amplifier: 105b, ShowParticles: 1b}, {Duration: 1, Id: 17b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 600, Id: 23b, Amplifier: 0b, ShowParticles: 0b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§c§lスイカ§dの成分を凝縮したジュース。"}', '{"text":"§6腹を満たす§d他、"}', '{"text":"§b空腹を治す§d効能がある。"}'], Name: '{"text":"§c§lスイカジュース"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:beetroot", Count: 3b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 4820, Id: 11b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 100, Id: 16b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 4820, Id: 22b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: 0b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§c滋養強壮に効くお薬。"}', '{"text":"§c飲むと体が丈夫になる。"}'], Name: '{"text":"§4§lレッドビート"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:apple", Count: 1b}, buy: {id: "minecraft:beetroot", Count: 3b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 2420, Id: 11b, Amplifier: 1b, ShowParticles: 1b}, {Duration: 100, Id: 16b, Amplifier: 0b, ShowParticles: 1b}, {Duration: 2420, Id: 22b, Amplifier: 3b, ShowParticles: 1b}, {Duration: 0, Id: 5b, Amplifier: -128b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§cレッドビートに果汁を加え、"}', '{"text":"§c吸収を早めたもの。"}'], Name: '{"text":"§4§lレッドビート§6§lカオス"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 10b}, sell: {id: "minecraft:bread", Count: 2b, tag: {display: {Lore: ['{"text":"§f腹が減ったらお互い様。"}', '{"text":"§aお金§fは頂きますが、"}', '{"text":"§fお裾分けします。"}'], Name: '{"text":"§f今日の昼食"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]

# # nbtなどはsummon側で設定します。ということで終了