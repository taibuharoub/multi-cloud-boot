const express = require("express");

const server = express();
const PORT = process.env.PORT || 3000;

server.use(express.json());

server.get("/", (req, res, next) => {
  res.status(200).json({ message: "Docker on the Cloud" });
});

server.listen(PORT, () => {
  console.log(`Server Started`);
});
