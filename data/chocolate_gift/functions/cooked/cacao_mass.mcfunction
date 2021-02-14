### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

advancement revoke @s only chocolate_gift:cooked/cacao_mass
recipe take @s chocolate_gift:cacao_mass

# 生成数取得
data modify storage chocolate_gift: count set value []
execute as @e[type=experience_orb,distance=..6,nbt={Age:0s}] run data modify storage chocolate_gift: count append from entity @s Value
kill @e[type=experience_orb,distance=..6,nbt={Age:0s}]

# 生成数分渡す
execute if data storage chocolate_gift: count[-1] run function chocolate_gift:give_cacao
