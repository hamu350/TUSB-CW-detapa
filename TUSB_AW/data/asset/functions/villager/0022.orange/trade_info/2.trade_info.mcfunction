#> asset:villager/0022.orange/trade_info/2.trade_info

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

data modify storage asset: villager.Offers.Recipes set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 65b}, buy: {id: "minecraft:emerald", Count: 16b}, sell: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:gravel", Count: 16b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "bri", Color: 8}, {Pattern: "bri", Color: 0}, {Pattern: "bri", Color: 8}], Base: 8, id: "minecraft:banner"}, display: {Name: '{"text":"§7§l砂利の壁"}'}, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.max_health", Operation: 0, UUID: [I; 0, 2, 0, 1], Amount: 2.0d, Name: "HP"}, {Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: 0.02d, Name: "HP"}, {Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 3], Amount: -0.15d, Name: "SPD"}, {Slot: "offhand", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 2, 0, 4], Amount: 2.0d, Name: "AMR"}, {Slot: "mainhand", AttributeName: "generic.max_health", Operation: 0, UUID: [I; 0, 1, 0, 5], Amount: 2.0d, Name: "HP"}, {Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 6], Amount: 0.02d, Name: "HP"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 7], Amount: -0.15d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 1, 0, 8], Amount: 2.0d, Name: "AMR"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:cobblestone", Count: 16b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "gra", Color: 15}, {Pattern: "sku", Color: 7}, {Pattern: "bo", Color: 7}, {Pattern: "bri", Color: 0}, {Pattern: "gra", Color: 8}, {Pattern: "gru", Color: 8}], Base: 7, id: "minecraft:banner"}, display: {Name: '{"text":"§8§l丸石の盾"}'}, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: -0.15d, Name: "SPD"}, {Slot: "offhand", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 2, 0, 2], Amount: 4.0d, Name: "AMR"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: -0.15d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 1, 0, 4], Amount: 4.0d, Name: "AMR"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:gold_ingot", Count: 16b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "tr", Color: 0}, {Pattern: "mr", Color: 4}, {Pattern: "bo", Color: 4}, {Pattern: "moj", Color: 4}, {Pattern: "flo", Color: 14}], Base: 4, id: "minecraft:banner"}, display: {Name: '{"text":"§e§l金装飾の盾"}'}, Enchantments: [{lvl: 3s, id: "minecraft:thorns"}, {lvl: 3s, id: "minecraft:knockback"}, {lvl: 3s, id: "minecraft:fire_aspect"}, {lvl: 3s, id: "minecraft:sharpness"}, {lvl: 3s, id: "minecraft:smite"}, {lvl: 3s, id: "minecraft:bane_of_arthropods"}], Damage: 0, AttributeModifiers: []}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:iron_ingot", Count: 16b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "cr", Color: 0}, {Pattern: "mr", Color: 8}, {Pattern: "tts", Color: 0}, {Pattern: "lud", Color: 7}, {Pattern: "bo", Color: 7}, {Pattern: "gra", Color: 0}, {Pattern: "gru", Color: 0}], Base: 8, id: "minecraft:banner"}, display: {Name: '{"text":"§7§lミラーシールド"}'}, Enchantments: [{lvl: 1s, id: "minecraft:unbreaking"}, {lvl: 10s, id: "minecraft:thorns"}], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: -0.15d, Name: "SPD"}, {Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 0, UUID: [I; 0, 2, 0, 2], Amount: 0.1d, Name: "KB"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: -0.15d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 0, UUID: [I; 0, 1, 0, 4], Amount: 0.1d, Name: "KB"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:diamond", Count: 16b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "bo", Color: 0}, {Pattern: "cr", Color: 0}, {Pattern: "flo", Color: 0}, {Pattern: "ms", Color: 0}, {Pattern: "cs", Color: 0}, {Pattern: "bt", Color: 0}, {Pattern: "sc", Color: 9}, {Pattern: "mr", Color: 3}, {Pattern: "cbo", Color: 9}, {Pattern: "mc", Color: 0}, {Pattern: "bo", Color: 0}, {Pattern: "gra", Color: 0}, {Pattern: "tts", Color: 0}], Base: 3, id: "minecraft:banner"}, display: {Name: '{"text":"§b§l金剛の盾"}'}, Enchantments: [{lvl: 3s, id: "minecraft:unbreaking"}, {lvl: 2s, id: "minecraft:knockback"}, {lvl: 10s, id: "minecraft:sharpness"}], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: -0.08d, Name: "SPD"}, {Slot: "offhand", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 2, 0, 2], Amount: 6.0d, Name: "AMR"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: -0.08d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.armor", Operation: 0, UUID: [I; 0, 1, 0, 4], Amount: 6.0d, Name: "AMR"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:cobweb", Count: 64b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "cr", Color: 0}, {Pattern: "ms", Color: 0}, {Pattern: "sc", Color: 8}, {Pattern: "flo", Color: 0}, {Pattern: "bo", Color: 0}], Base: 7, id: "minecraft:banner"}, display: {Lore: ['{"text":"§7蜘蛛の巣のように粘り強くなれる。"}'], Name: '{"text":"§f§l蜘蛛の巣の盾"}'}, Enchantments: [], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: -0.5d, Name: "SPD"}, {Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 0, UUID: [I; 0, 2, 0, 2], Amount: 0.5d, Name: "KB"}, {Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 2, 0, 3], Amount: -0.5d, Name: "ATS"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: -0.5d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 0, UUID: [I; 0, 1, 0, 5], Amount: 0.5d, Name: "KB"}, {Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 1, 0, 6], Amount: -0.5d, Name: "ATS"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:gold_ingot", Count: 64b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "bri", Color: 4}, {Pattern: "cbo", Color: 0}, {Pattern: "gra", Color: 4}, {Pattern: "gru", Color: 4}, {Pattern: "bo", Color: 4}], Base: 0, id: "minecraft:banner"}, display: {Lore: ['{"text":"§e金羊になれる盾。"}'], Name: '{"text":"§e§l金羊裘の盾"}'}, Enchantments: [{lvl: 100s, id: "minecraft:thorns"}], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: -0.9d, Name: "HP"}, {Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: -0.9d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: -0.9d, Name: "HP"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: -0.9d, Name: "SPD"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:netherrack", Count: 64b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "tts", Color: 13}, {Pattern: "bts", Color: 13}, {Pattern: "mr", Color: 5}, {Pattern: "ss", Color: 15}, {Pattern: "bri", Color: 15}, {Pattern: "cbo", Color: 15}, {Pattern: "mc", Color: 5}, {Pattern: "cr", Color: 15}], Base: 15, id: "minecraft:banner"}, display: {Name: '{"text":"§2§l不気味な盾"}'}, Enchantments: [{lvl: 2s, id: "minecraft:unbreaking"}, {lvl: 5s, id: "minecraft:thorns"}, {lvl: 2s, id: "minecraft:knockback"}, {lvl: 20s, id: "minecraft:sharpness"}], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: 0.1d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 2], Amount: 0.1d, Name: "SPD"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:quartz_block", Count: 64b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "bts", Color: 15}, {Pattern: "tts", Color: 15}, {Pattern: "mr", Color: 15}, {Pattern: "mc", Color: 9}, {Pattern: "flo", Color: 11}, {Pattern: "flo", Color: 15}], Base: 0, id: "minecraft:banner"}, display: {Name: '{"text":"§f§l聖なる盾"}'}, Enchantments: [{lvl: 2s, id: "minecraft:unbreaking"}, {lvl: 5s, id: "minecraft:thorns"}, {lvl: 2s, id: "minecraft:knockback"}, {lvl: 10s, id: "minecraft:smite"}], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: 0.1d, Name: "HP"}, {Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 2], Amount: 0.1d, Name: "HP"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:soul_sand", Count: 64b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "gru", Color: 13}, {Pattern: "mc", Color: 13}, {Pattern: "mc", Color: 5}, {Pattern: "flo", Color: 13}, {Pattern: "sku", Color: 15}], Base: 15, id: "minecraft:banner"}, display: {Name: '{"text":"§5§l禍々しい盾"}'}, Enchantments: [{lvl: 2s, id: "minecraft:unbreaking"}, {lvl: 5s, id: "minecraft:thorns"}, {lvl: 2s, id: "minecraft:knockback"}, {lvl: 10s, id: "minecraft:bane_of_arthropods"}], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: 0.1d, Name: "KB"}, {Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 2], Amount: 0.1d, Name: "KB"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:nether_quartz_ore", Count: 32b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "cbo", Color: 14}, {Pattern: "bri", Color: 15}, {Pattern: "sc", Color: 15}, {Pattern: "mr", Color: 14}, {Pattern: "mc", Color: 0}, {Pattern: "flo", Color: 14}], Base: 15, id: "minecraft:banner"}, display: {Name: '{"text":"§4§l外法の盾"}'}, Enchantments: [{lvl: 2s, id: "minecraft:unbreaking"}, {lvl: 5s, id: "minecraft:thorns"}, {lvl: 2s, id: "minecraft:knockback"}, {lvl: 20s, id: "minecraft:sharpness"}, {lvl: 10s, id: "minecraft:smite"}, {lvl: 10s, id: "minecraft:bane_of_arthropods"}], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: -0.15d, Name: "HP"}, {Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: -0.15d, Name: "SPD"}, {Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 2, 0, 3], Amount: -0.15d, Name: "KB"}, {Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: -0.15d, Name: "HP"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 5], Amount: -0.15d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 6], Amount: -0.15d, Name: "KB"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:shield", Count: 1b, tag: {Damage: 0}}, buy: {id: "minecraft:dragon_egg", Count: 16b}, sell: {id: "minecraft:shield", Count: 1b, tag: {RepairCost: -2147483648, HideFlags: 32, BlockEntityTag: {Patterns: [{Pattern: "lud", Color: 15}, {Pattern: "rd", Color: 15}, {Pattern: "mc", Color: 6}, {Pattern: "tt", Color: 2}, {Pattern: "bt", Color: 10}, {Pattern: "cbo", Color: 6}, {Pattern: "tts", Color: 15}, {Pattern: "bts", Color: 15}, {Pattern: "bo", Color: 15}, {Pattern: "cbo", Color: 15}], Base: 6, id: "minecraft:banner"}, display: {Lore: ['{"text":"§c自らの移動を縛ることで"}', '{"text":"§c潜在能力を引き出す盾。"}'], Name: '{"text":"§5§l呪縛の盾"}'}, Enchantments: [], Damage: 0, AttributeModifiers: [{Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 1], Amount: -1.0d, Name: "SPD"}, {Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 2, 0, 2], Amount: 1.0d, Name: "ATK"}, {Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 3], Amount: -1.0d, Name: "SPD"}, {Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 1, 0, 4], Amount: 1.0d, Name: "ATK"}]}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:blaze_rod", Count: 64b}, buy: {id: "minecraft:zombie_head", Count: 1b}, sell: {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Properties: {textures: [{Value: "eyJ0aW1lc3RhbXAiOjE0MTI1MDcxMTQ5NjYsInByb2ZpbGVJZCI6ImM5Yjc5MzIzZDdlODRlYWU4NmEyYjc0ZTBjOTQ2OWQ2IiwicHJvZmlsZU5hbWUiOiJzdXJhaW11bmFpdG8iLCJpc1B1YmxpYyI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2FiYTRhODIxNmRlM2ZkMjU1ZTMxYTExMzFhMjUxZTJkNGZiOGM4N2U2OGE5NzVjNGRhOTU3M2E2ODg3In19fQ==", Signature: "pgsKARD/UH/2ow/ClhbQVwVLXSisNIHvwKbUR7nkeLWplL2SRakaMsb6cGIh8M4yPdo4tV4a9YMkpRrshNoaEgqEMxWVyfYzw8wbwdeyHOoP0XjeFM/HjDi1pMxO7A3f1OR4BjBLcYBEZQFW+f6uN5VVGTskpkBwNobs0/slm7QDX6jfxDgkKcZI8JOlNMy/kwoy/mDTsk+ZSIjVOsUtsy77gTIlnbiHYGiHblquuyb/Br+VdGfFbBH5njCpNK5HTKI0qICVvttHXeiapflmMDqg0vtDmMcL3SiL4ttMV4eZdMM5APviWVd6tmDKBz8z1v4TViz2KjWLC9aqT3Zl4jKHRngy7wWJzCVhgSU3trGXGFg18JUYFO8JxJaonrNYGOVAP9lE+7iOvAuXYUVFOPUk6BMUIYjkKM++HddX1Zf6IdvvN2x9AINDbHqa5IQ9Zp5aUTngIi0zjxRn1MmWACzzhorSZyTan12jX2BSXQESplTGDOdgYill0KJO2XgfXopwhtJv88tYh2fAh92EQcZARzLtDpnP7EV9ncQpuv9zX0tQlFsmoc+iAJBu91fAC5iNfnOakB0fvlVeqh2biFfwW9fdfwL/ck8m2jItXe0gA8rDg3KDeDYtpqoSvYfJ1cBGgrs34bT9BCmxtzBfU1vyI0IwowswyeKM83Rx86A="}]}, Id: [I; -910716125, -672641362, -2036156594, 211053014], Name: "suraimunaito"}, display: {Name: '{"text":"§6§lオレンジ"}'}}}, xp: 1, uses: 1, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]