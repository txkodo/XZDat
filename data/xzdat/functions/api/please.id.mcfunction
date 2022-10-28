### Copyright © 2022 txkodo
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定された値(_ xzdat)の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# IDを一時変数にコピー
execute store result storage xzdat target_id int 1 run scoreboard players get _ xzdat
# 取得するIDに変化があるかどうか確認
execute store result storage xzdat update byte 1 run data modify storage xzdat last_id set from storage xzdat target_id
# ストレージ提供
execute if data storage xzdat {update:true} run function xzdat:core/provide
