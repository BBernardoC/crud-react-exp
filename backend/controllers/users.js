import { db } from "../db.js";

// Função para obter todos os usuários
export const getUsers = (_, res) => {
  const q = "SELECT * FROM usuario";
  db.query(q, (err, data) => {
    if (err) return res.json(err);
    return res.status(200).json(data);
  });
};

// Função para atualizar um usuário
export const updateUser = (req, res) => {
  const userId = req.params.id;
  const { nome, email, telefone, cpf, dtaNascimento } = req.body;

  const q = "UPDATE usuario SET nome = ?, email = ?, telefone = ?, cpf = ?, dtaNascimento = ? WHERE ID = ?";

  db.query(q, [nome, email, telefone, cpf, dtaNascimento, userId], (err, data) => {
    if (err) return res.json(err);
    return res.status(200).json("Usuário atualizado com sucesso!");
  });
};

// Função para deletar um usuário
export const deleteUser = (req, res) => {
  const userId = req.params.id;
  const q = "DELETE FROM usuario WHERE ID = ?";

  db.query(q, [userId], (err, data) => {
    if (err) return res.json(err);
    return res.status(200).json("Usuário deletado com sucesso!");
  });
};

// Função para adicionar um novo usuário
export const addUser = (req, res) => {
  const { nome, cpf, telefone, email, dtaNascimento } = req.body;

  // Query para inserir um novo usuário no banco de dados
  const q = "INSERT INTO usuario (nome, cpf, telefone, email, dtaNascimento) VALUES (?, ?, ?, ?, ?)";

  db.query(q, [nome, cpf, telefone, email, dtaNascimento], (err, data) => {
    if (err) return res.status(500).json(err);
    return res.status(201).json("Usuário adicionado com sucesso!");
  });
};
