### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## メインハンド
tag @s remove ChocolateGiftMainhand
execute if data entity @s SelectedItem{tag:{ChocolateGift:true}} run tag @s add ChocolateGiftMainhand

## オフハンド
tag @s remove ChocolateGiftOffhand
execute if data entity @s Inventory[{Slot:-106b,tag:{ChocolateGift:true}}] run tag @s add ChocolateGiftOffhand

advancement revoke @s only chocolate_gift:consume/eating
