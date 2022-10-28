
function xzdat:api/please.here
data modify storage xzdat _[-4][-4][-4][-4][-4][-4][-4][-4] set value {}
data modify storage xzdat free_id append from storage xzdat target_id

setblock ~ -64 ~ bedrock