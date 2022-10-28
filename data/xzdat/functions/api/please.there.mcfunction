### Copyright © 2022 txkodo
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定した位置の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# @input storage xzdat:io x (int)
# @input storage xzdat:io z (int)
# @input storage xzdat:io Dimension (string) default to "minecraft:overworld"

data modify storage anywhere: at set value {Pos:[0d,0d,0d],Rotation:[10f,20f],Dimension:"minecraft:the_nether"}

data modify storage anywhere: at.Dimension set from storage xzdat:io Dimension

execute store result storage anywhere: at.Pos[0] double 1 run data get storage xzdat:io x
execute store result storage anywhere: at.Pos[2] double 1 run data get storage xzdat:io z

data modify storage anywhere: function set value "xzdat:core/please.there"

execute store success storage xzdat anywhere_installed byte 1 run function #anywhere:run

execute if data storage xzdat {anywhere_installed:0b} run tellraw @a "please install AnywhereFunction@AiAkaishi to run 'function xzdat:api/please.there'"

data modify storage anywhere: at.Dimension set value "minecraft:overworld"
