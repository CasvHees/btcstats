#!/bin/sh
logo='
   ▄█▀▀▀▀▀█▄▄
▄█▀░░▄░▄░░░░▀█▄
█░░░▀█▀▀▀▀▄░░░█
█░░░░█▄▄▄▄▀░░░█
█░░░░█░░░░█░░░█
▀█▄░▀▀█▀█▀░░▄█▀
  ▀▀█▄▄▄▄▄█▀▀'
btc_price=$(curl -sSL "https://mempool.space/api/v1/prices" | jq -r '.USD')
block_height=$(curl -sSL "https://mempool.space/api/blocks/tip/height")
block_tip_hash=$(curl -sSL "https://mempool.space/api/blocks/tip/hash")
diff_adjustment=$(curl -sSL "https://mempool.space/api/v1/difficulty-adjustment" | jq -r '.difficultyChange')

echo "$logo"
echo "BTC PRICE: $btc_price"
echo "BLOCK HEIGHT: $block_height"
echo "BLOCK TIP HASH: $block_tip_hash"
echo "DIFF ADJUSTMENT: $diff_adjustment"
