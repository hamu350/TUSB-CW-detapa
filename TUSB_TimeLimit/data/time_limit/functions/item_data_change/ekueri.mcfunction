#> time_limit:item_data_change/cthulhu_lure

# 入れ食い8を5にする
data modify storage player_item_tuner: condition.if set value {id: "minecraft:lingering_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 3, Id: 6b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 3, Id: 14b, Amplifier: 3b, ShowParticles: 1b}, {Duration: 0, Id: 25b, Amplifier: -127b, ShowParticles: 1b}, {Duration: 0, Id: 12b, Amplifier: -55b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_purple","text":"神秘の液体が詰まっている。"}],"text":""}', '{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_purple","text":"中身に触れるとMPとHPが"}],"text":""}', '{"extra":[{"bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_purple","text":"異常な速度で回復する。"}],"text":""}'], Name: '{"extra":[{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"red","text":"エ"},{"bold":true,"italic":false,"color":"gold","text":"ク"},{"bold":true,"italic":false,"color":"yellow","text":"ス"},{"bold":true,"italic":false,"color":"green","text":"エ"},{"bold":true,"italic":false,"color":"dark_aqua","text":"リ"},{"bold":true,"italic":false,"color":"blue","text":"ク"},{"bold":true,"italic":false,"color":"light_purple","text":"サ"},{"bold":true,"italic":false,"color":"dark_purple","text":"ー"}],"text":""}'}}}
data modify storage player_item_tuner: result.merge set value {id: "minecraft:lingering_potion", Count: 1b, tag: {CustomPotionEffects: [{Duration: 3, Id: 6b, Amplifier: 10b, ShowParticles: 1b}, {Duration: 3, Id: 14b, Amplifier: 3b, ShowParticles: 1b}, {Duration: 0, Id: 25b, Amplifier: -127b, ShowParticles: 1b}, {Duration: 0, Id: 12b, Amplifier: -55b, ShowParticles: 1b}], HideFlags: 32, Potion: "minecraft:water", display: {Lore: ['{"text":"§5神秘の液体が詰まっている。"}', '{"text":"§5中身に触れるとMPとHPが"}', '{"text":"§5異常な速度で回復する。"}'], Name: '{"text":"§c§lエ§6§lク§e§lス§a§lエ§3§lリ§9§lク§d§lサ§5§lー"}'}}}
function #player_item_tuner:modify/inventory

# 進捗戻す
advancement revoke @s only time_limit:time_limit/ekueri