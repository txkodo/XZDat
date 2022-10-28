### Copyright © 2022 txkodo
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### IDを新規割り当て

setblock ~ -64 ~ structure_block

# free_id[-1]を割り当てIDに
execute store result score $ID xzdat run data get storage xzdat free_id[-1]
# free_id[-1]が無ければ過去の最大ID+1を割り当てIDに
execute unless data storage xzdat free_id[-1] store result score $ID xzdat run scoreboard players add $head xzdat 1
data remove storage xzdat free_id[-1]

execute store result block ~ -64 ~ seed long 1 run scoreboard players get $ID xzdat