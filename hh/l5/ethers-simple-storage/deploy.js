async function main() {
  await cookPopcorn(); // Promise-based function, don't move on until it is fulfilled
  await pourDrinks();
  startMovie();
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
