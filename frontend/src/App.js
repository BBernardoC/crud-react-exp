import "./styles/App.css";
import DataList from "./pages/DataList";
import { useState } from "react";
import TemporaryDrawer from "./navigation";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import { formatartelefone, formatarCPF, formatarData } from "./formatacao";

 

// Importando as páginas
import AddPage from "./pages/Add";
import SearchPage from "./pages/search";



function HomePage({ clicked, modalIsOpen, itemClicked, closeModal }) {
  return (
    <>
      <div style={{ marginTop: "80px" }}>
        <DataList clicked={clicked} />
      </div>

      {modalIsOpen && itemClicked && (
        <div className="modal">
          <div className="modal-content">
            <h1>Detalhes do Usuário</h1>
            <p><strong>Nome:</strong> {itemClicked.nome}</p> 
            <p><strong>Email:</strong> {itemClicked.email}</p>
            <p><strong>Telefone:</strong> {formatartelefone(itemClicked.telefone)}</p>
            <p><strong>CPF:</strong> {formatarCPF(itemClicked.cpf)}</p> 
            <p><strong>Nascimento:</strong> {formatarData(itemClicked.dtaNascimento)}</p>
            <button onClick={closeModal}>Fechar</button>
          </div>
        </div>
      )}
    </>
  );
}

function App() {
  const [modalIsOpen, setModalIsOpen] = useState(false);
  const [itemClicked, setItemClicked] = useState(null);

  function clicked(item) {
    console.log("Clicou no item", item.id);
    setModalIsOpen(true);
    setItemClicked(item);
  }

  function closeModal() {
    setModalIsOpen(false);
    setItemClicked(null);
  }

  return (
    <BrowserRouter>
      <TemporaryDrawer /> {/* Fica visível em todas as rotas */}

      <Routes>
        <Route
          path="/"
          element={
            <HomePage
              clicked={clicked}
              modalIsOpen={modalIsOpen}
              itemClicked={itemClicked}
              closeModal={closeModal}
            />
          }
        />
        <Route path="/add" element={<AddPage />} />
        <Route path="/search" element={<SearchPage />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
