#> tusb_remake:enemy/skill/warp/
# ワープだけのスキル
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute at @p[gamemode=!spectator,distance=..32] run title @a[distance=..32] actionbar [{"selector":"@s"}," はワープした！"]
execute at @p[gamemode=!spectator,distance=..32] run tp @s ~ ~1 ~
