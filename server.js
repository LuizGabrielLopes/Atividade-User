require("dotenv").config();
const express = require("express");
const cors = require("cors");

const app = express();
app.use(cors());
app.use(express.json());
setupSwagger(app); // Ativa o Swagger

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});

const usersRoutes = require("./src/routes/usersRoutes");
const postRoutes = require("./src/routes/postRoutes");
const setupSwagger = require('./src/config/swagger'); // Swagger aqui
app.use("/api", usersRoutes);
app.use("/api", postRoutes);