### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# チョコ食べた後に呼ばれるはず？
tag @s remove ChocolateGift
advancement revoke @s only chocolate_gift:consume/bowl

# ボウルを消す
item replace entity @s[tag=ChocolateGiftOffhand] weapon.offhand with minecraft:air
item replace entity @s[tag=!ChocolateGiftOffhand] weapon.mainhand with minecraft:air
tag @s remove ChocolateGiftOffhand

# 通常チョコなら演出
execute if entity @s[tag=!ChocolateGiftSpicy] run function chocolate_gift:consume/perform
# スパイシーなら爆ぜる
execute if entity @s[tag=ChocolateGiftSpicy] run function chocolate_gift:consume/with_spice
