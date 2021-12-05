### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# チョコ食べた時
execute if entity @s[advancements={chocolate_gift:consume/chocolate={spicy=true}}] run tag @s add ChocolateGiftSpicy
advancement revoke @s only chocolate_gift:consume/chocolate
tag @s add ChocolateGift
