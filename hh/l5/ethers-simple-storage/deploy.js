const ethers = require("ethers");
const fs = require("fs-extra");

async function main() {
  // compile contracts in our code
  // compile our contracts seperately using solcjs command
  // solcjs --bin --abi --include-path node_modules/ --base-path . -o . SimpleStorage.sol
  // http://0.0.0.0:8545
  // How the script connects too the local blockchain
  const provider = new ethers.providers.JsonRpcProvider(
    "http://127.0.0.1:7545"
  );
  const wallet = new ethers.Wallet("Enter private-key", provider);
  const abi = fs.readFileSync("./SimpleStorage_sol_SimpleStorage.abi", "utf8");
  const binary = fs.readFileSync(
    "./SimpleStorage_sol_SimpleStorage.bin",
    "utf8"
  );
  // Object used in ethers to deploy contracts
  const contractFactory = new ethers.ContractFactory(abi, binary, wallet);
  console.log("Deploying, please wait...");
  const contract = await contractFactory.deploy(); // wait for contract to deploy hence resolving the promise contract
  console.log(contract);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
