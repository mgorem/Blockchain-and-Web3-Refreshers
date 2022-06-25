async function main() {
  // compile contracts in our code
  // compile our contracts seperately using solcjs command
  // solcjs --bin --abi --include-path node_modules/ --base-path . -o . SimpleStorage.sol
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
