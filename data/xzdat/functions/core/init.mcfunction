### Copyright © 2022 txkodo
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### このデータパックに必要なものを初期化する

# ストレージシフトに使うデータ
data modify storage xzdat two_empty_lists set value [[],[]]
data modify storage xzdat three_empty_lists set value [[],[],[]]
data modify storage xzdat two_empty_maps set value [{},{}]
data modify storage xzdat three_empty_maps set value [{},{},{}]
data modify storage xzdat initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]
# メインになるストレージ
data modify storage xzdat _ set from storage xzdat initial
# 解放済みID保存ストレージ
data modify storage xzdat free_id set value []
# IDを振るためのスコアボード
scoreboard objectives add xzdat dummy

# 現在の最大のIDの値
scoreboard players set $head xzdat -1
