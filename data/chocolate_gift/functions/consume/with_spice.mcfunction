### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 爆ぜる
tag @s remove ChocolateGiftSpicy
# 地形破壊ありならゲームルール復元をスケジュール
execute store result storage chocolate_gift: Griefing int 1 run gamerule mobGriefing
execute if data storage chocolate_gift: {Griefing:1} in minecraft:overworld run schedule function chocolate_gift:consume/enable_griefing 2t
# 地形破壊オフ
gamerule mobGriefing false
# 黒幕召喚
summon minecraft:creeper ~ ~ ~ {Fuse:0s,CustomName:'"チョコレート"'}
