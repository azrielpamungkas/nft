func -SPA -o ./build/jetton-wallet.fif ../stdlib.fc params.fc op-codes.fc jetton-utils.fc jetton-wallet.fc
echo '"build/jetton-wallet.fif" include 2 boc+>B "build/jetton-wallet.boc" B>file' | fift -s
func -SPA -o ./build/jetton-minter.fif ../stdlib.fc params.fc op-codes.fc jetton-utils.fc jetton-minter.fc
echo '"build/jetton-minter.fif" include 2 boc+>B "build/jetton-minter.boc" B>file' | fift -s
func -SPA -o ./build/jetton-minter-ICO.fif ../stdlib.fc params.fc op-codes.fc jetton-utils.fc jetton-minter-ICO.fc

fift -s build/print-hex.fif
