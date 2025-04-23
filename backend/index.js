import express from "express";
import cors from "cors";
import userRoutes from "./routes/users.js";  // Importando as rotas de usuários

const app = express();

app.use(express.json());
app.use(cors());

// Usando as rotas para usuários
app.use("/users", userRoutes);

app.listen(8800, () => {
  console.log("Servidor rodando na porta 8800");
});
