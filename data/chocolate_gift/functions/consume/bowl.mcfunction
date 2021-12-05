### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# チョコ食べた後に呼ばれるはず？
tag @s remove ChocolateGift
advancement revoke @s only chocolate_gift:consume/bowl

## もし両手で食べていて、右手がボウルに変わっていたら、左手で食べてるタグを消す
execute if entity @s[tag=ChocolateGiftMainhand,tag=ChocolateGiftOffhand] if data entity @s SelectedItem{id:"minecraft:bowl"} run tag @s remove ChocolateGiftOffhand
## もし両手で食べていて、右手がボウルに変わっていなかったら、右手で食べてるタグを消す
execute if entity @s[tag=ChocolateGiftMainhand,tag=ChocolateGiftOffhand] unless data entity @s SelectedItem{id:"minecraft:bowl"} run tag @s remove ChocolateGiftMainhand

# ボウルを消す
item replace entity @s[tag=ChocolateGiftOffhand] weapon.offhand with minecraft:air
item replace entity @s[tag=!ChocolateGiftOffhand] weapon.mainhand with minecraft:air
tag @s remove ChocolateGiftMainhand
tag @s remove ChocolateGiftOffhand

# 通常チョコなら演出
execute if entity @s[tag=!ChocolateGiftSpicy] run function chocolate_gift:consume/perform
# スパイシーなら爆ぜる
execute if entity @s[tag=ChocolateGiftSpicy] run function chocolate_gift:consume/with_spice
