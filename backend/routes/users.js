import express from "express";
import { getUsers, updateUser, deleteUser, addUser } from "../controllers/users.js"; 

const router = express.Router();

// Rota para buscar todos os usuários
router.get("/", getUsers);

// Rota para atualizar um usuário específico
router.put("/:id", updateUser);

// Rota para deletar um usuário
router.delete("/:id", deleteUser);

// Rota para adicionar um novo usuário
router.post("/", addUser);  

export default router;
