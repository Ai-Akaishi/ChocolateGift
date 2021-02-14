### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# カカオマスとココアバターを１つずつ渡す
loot give @s loot chocolate_gift:cacao_mass
loot give @s loot chocolate_gift:cocoa_butter

# カウントを１減らしながらループ
execute store result storage chocolate_gift: count[-1] short 1 run data get storage chocolate_gift: count[-1] 0.9999999999
execute if data storage chocolate_gift: {count:[0s]} run data remove storage chocolate_gift: count[-1]
execute if data storage chocolate_gift: count[-1] run function chocolate_gift:give_cacao
