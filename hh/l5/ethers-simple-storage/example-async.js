// In order to start a movie, set up the main function as async
// use await keyword to ensure cookPopcorn() and
// pourDrinks() functions are fulfilled or rejected before
// startMovie() function begins

// The movie starts only when the two are completed

async function setUpMovieNight() {
  await cookPopcorn(); // Promise-based function, don't move on until it is fulfilled
  await pourDrinks();
  startMovie();
}

// Reason for using asyncronous functions:
// - Waiting for a contract to be deployed,
//   otherwise, it won't work.

setUpMovieNight()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
