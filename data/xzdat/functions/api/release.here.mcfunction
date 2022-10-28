### Copyright © 2022 txkodo
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 座標ストレージを放棄

# forceload
execute store result storage xzdat unforceloaded byte 1 run forceload add ~ ~

# データを削除
execute if block ~ -64 ~ structure_block run function xzdat:core/release

# unforceload
execute if data storage xzdat {unforceloaded:1b} run forceload remove ~ ~