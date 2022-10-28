function xzdat:core/allocate

# IDを一時変数にコピー
execute store result storage xzdat target_id int 1 store result score _ xzdat store result score $ID xzdat run data get block ~ -64 ~ seed

# ストレージ提供
execute if data storage xzdat {update:true} run function xzdat:core/provide

# 座標情報をストレージに記録
data modify storage xzdat _[-4][-4][-4][-4][-4][-4][-4][-4].pos.x set from block ~ -64 ~ x
data modify storage xzdat _[-4][-4][-4][-4][-4][-4][-4][-4].pos.z set from block ~ -64 ~ z