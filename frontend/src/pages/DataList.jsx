import React, { useEffect, useState } from "react";

const DataList = ({ clicked }) => {
  const [data, setData] = useState([]);
 
  // Carregar os dados do usuário da API
  useEffect(() => {
    fetch("http://localhost:8800/users")  // Altere a URL para o endpoint correto
      .then((response) => response.json())
      .then((data) => {
        setData(data);
      })
      .catch((error) => {
        console.error("Erro ao carregar os dados dos usuários", error);
      });
  }, []);

  return (
    <div>
      <ul className="list">
        {data.map((item) => (
          <li key={item.cpf || item.telefone || item.email} className="li-list">
             {item.nome} <br />
            <button className="btn-list" onClick={() => clicked(item)}>
              Mais detalhes
            </button>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default DataList;
