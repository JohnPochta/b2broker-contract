RUN THE PROJECT

npm install

fill the .env file using the .env.example

npx hardhat lz:deploy --networks "ethereum-sepolia" --tags "B2BrokerToken"

npx @layerzerolabs/verify-contract --contracts B2BrokerToken --network ethereum-sepolia --api-key "743MEFP69QWWEJWKWGVUFVDXS1Q31ZI2CK" -u https://api-sepolia.etherscan.io/api



fill the .env file of the backend

./start.sh

http://localhost:3000/contract-call/0x01297e5b14004883CC77c0c5d3f42CA1000013C1/balance/0x2D0bf6D3BD0636eec331f7c2861F44D74a2dcaC3