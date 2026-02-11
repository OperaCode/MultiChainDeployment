import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

require("dotenv").config({ path: "../.env" });

const { PRIVATE_KEY, SEPOLIA_URL } = process.env;

const config: HardhatUserConfig = {
  solidity: "0.8.28",
  networks: {
    hardhat: {
    },
    sepolia: {
      url: SEPOLIA_URL,
      accounts: [`0x${PRIVATE_KEY}`]
    }
  },
  
  etherscan: {
    apiKey: `${PRIVATE_KEY}`,
  },
  
};

export default config;
