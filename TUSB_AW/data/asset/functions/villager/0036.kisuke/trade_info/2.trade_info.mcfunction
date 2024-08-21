#> asset:villager/0036.kisuke/trade_info/2.trade_info

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

data modify storage asset: villager set value [{maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 8b}, sell: {id: "minecraft:bread", Count: 8b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 8b}, sell: {id: "minecraft:cooked_cod", Count: 8b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 8b}, sell: {id: "minecraft:cooked_chicken", Count: 3b, tag: {display: {Name: '{"text":"§eキスケ"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 8b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 1, Id: 6b, Amplifier: 0b, ShowParticles: 0b}, {Duration: 0, Id: 12b, Amplifier: 0b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§6心が温まるスープ。"}', '{"text":"§6飲むとHPが回復する。"}'], Name: '{"text":"§e§lコーンスープ"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 4b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 5, Id: 19b, Amplifier: 99b, ShowParticles: 1b}, {Duration: 120, Id: 9b, Amplifier: 99b, ShowParticles: 1b}, {Duration: 120, Id: 9b, Amplifier: -99b, ShowParticles: 1b}, {Duration: 1, Id: 23b, Amplifier: 2b, ShowParticles: 1b}, {Duration: 120, Id: 8b, Amplifier: -10b, ShowParticles: 1b}, {Duration: 0, Id: 26b, Amplifier: 0b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:empty", display: {Lore: ['{"text":"§e飲むと§2毒状態等§eになるが、"}', '{"text":"§a体内の毒§eを中和し、"}', '{"text":"§eわずかに§c腹が満たされる"}', '{"text":"§eケンコー飲料である。"}', '{"text":"§7尚、味は薄い。"}'], Name: '{"text":"§2§lドクダヨ茶"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 2b}, sell: {id: "minecraft:potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 0, Id: 1b, Amplifier: -2b, ShowParticles: 1b}, {Duration: 0, Id: 2b, Amplifier: -3b, ShowParticles: 0b}, {Duration: 3, Id: 14b, Amplifier: 6b, ShowParticles: 0b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§f祈りの込められた聖なる水。"}', '{"text":"§f飲むと死の宣告から回復する。"}', '{"text":""}', '{"text":"§7スプラッシュ化不可"}'], Name: '{"text":"§f§l聖水"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 4b}, sell: {id: "minecraft:lingering_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 0, Id: 1b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 2b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 3b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 4b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 5b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 8b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 9b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 10b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 11b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 12b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 13b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 15b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 16b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 17b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 18b, Amplifier: 127b, ShowParticles: 1b}, {Duration: 0, Id: 19b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 20b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 22b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 24b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 25b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 26b, Amplifier: 127b, ShowParticles: 0b}, {Duration: 0, Id: 27b, Amplifier: 127b, ShowParticles: 0b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§3毒を以て毒を制すというコンセプトで"}', '{"text":"§3作られたポーション。"}'], Name: '{"text":"§f解毒薬"}'}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}, {maxUses: 2147483647, buyB: {id: "minecraft:air", Count: 0b}, buy: {id: "minecraft:emerald", Count: 8b}, sell: {id: "minecraft:lapis_lazuli", Count: 1b}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]