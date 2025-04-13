# B2BrokerToken Deployment Guide

This guide provides a step-by-step walkthrough for deploying the `B2BrokerToken` — a LayerZero-enabled, Ownable ERC-20 token — to the Ethereum Sepolia testnet.

## ⚙️ Prerequisites

- Node.js >= 18.x
- NPM >= 8.x
- Hardhat
- LayerZero SDK
- Ethereum wallet with Sepolia ETH (e.g., MetaMask)
- Etherscan API Key (for contract verification)

---

## 📦 Installation

```bash
npm install
```

```
cp .env.example .env

Fill in your .env file with the required environment variables. These include private keys, RPC URLs, and other sensitive config values.
```

🚀 Deployment
Use the following command to deploy the token contract to Ethereum Sepolia:

```
npx hardhat lz:deploy --networks "ethereum-sepolia" --tags "B2BrokerToken"
```

Contract Verification (Etherscan)
After deployment, verify your contract on Etherscan:

```
npx @layerzerolabs/verify-contract --contracts B2BrokerToken --network ethereum-sepolia --api-key "your-api-key" -u https://api-sepolia.etherscan.io/api
```

🔐 Replace <YOUR_ETHERSCAN_API_KEY> with your actual API key from Etherscan.

Notes
The lz:deploy command uses Hardhat's task system to deploy contracts with LayerZero configuration.

Make sure your Sepolia wallet address has enough ETH for gas fees.

For production deployments, use the ethereum network and adjust your .env accordingly.