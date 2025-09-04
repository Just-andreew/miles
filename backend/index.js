require("express");
require("epress-session");

//Set up the server
const app = express();
app.listen(process.env.PORT || 5000, () => {
  console.log("Server running on port 5000 on local host");
});

app.use(express.json()); //Convert incoming json to js objects
app.use(express.urlencoded({ extended: true })); //Handle url encoded data
