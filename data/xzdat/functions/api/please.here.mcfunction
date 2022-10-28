### Copyright © 2022 txkodo
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 実行位置の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# forceload
execute store result storage xzdat unforceloaded byte 1 run forceload add ~ ~

# IDを持っていれば呼び出す
execute if block ~ -64 ~ structure_block run function xzdat:core/please

# IDを持っていなければ、IDを割り当て
execute unless block ~ -64 ~ structure_block run function xzdat:core/please.new

# unforceload
execute if data storage xzdat {unforceloaded:1b} run forceload remove ~ ~