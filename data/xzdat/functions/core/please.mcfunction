# IDを一時変数にコピー
execute store result storage xzdat target_id int 1 store result score _ xzdat store result score $ID xzdat run data get block ~ -64 ~ seed

# 取得するIDに変化があるかどうか確認
execute store result storage xzdat update byte 1 run data modify storage xzdat last_id set from storage xzdat target_id
# ストレージ提供
execute if data storage xzdat {update:true} run function xzdat:core/provide
