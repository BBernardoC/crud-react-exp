import React, { useState } from 'react';
import Cleave from 'cleave.js/react';
import { TextField, Button } from '@mui/material';
import SendIcon from '@mui/icons-material/Send';
import { DatePicker } from '@mui/x-date-pickers/DatePicker';
import { LocalizationProvider } from '@mui/x-date-pickers/LocalizationProvider';
import { AdapterDayjs } from '@mui/x-date-pickers/AdapterDayjs';
import 'cleave.js/dist/addons/cleave-phone.br';
 
const CleaveInput = React.forwardRef(function CleaveInput(props, ref) {
  const { onChange, options, ...other } = props;
  return (
    <Cleave
      {...other}
      htmlRef={ref}
      options={options}
      onChange={onChange}
    />
  );
});

export default function AddPage() {
  const [cpf, setCpf] = useState('');
  const [nome, setNome] = useState('');
  const [telefone, setTelefone] = useState('');
  const [email, setEmail] = useState('');
  const [dataNascimento, setDataNascimento] = useState(null);
  const [successMessage, setSuccessMessage] = useState('');
  const [errorMessage, setErrorMessage] = useState('');

  const handleSubmit = async (e) => {
    e.preventDefault();

    if (!cpf || !nome || !telefone || !email || !dataNascimento) {
      setErrorMessage('Por favor, preencha todos os campos.');
      return;
    }

    if (cpf.replace(/\D/g, '').length !== 11) {
      setErrorMessage('CPF deve ter 11 dígitos.');
      return;
    }

    if (telefone.replace(/\D/g, '').length !== 11) {
      setErrorMessage('Telefone deve ter 11 dígitos.');
      return;
    }

    const userData = {
      nome,
      cpf: cpf.replace(/\D/g, ''),
      telefone: telefone.replace(/\D/g, ''),
      email,
      dtaNascimento: dataNascimento.toISOString().split('T')[0],
    };

    try {
      const response = await fetch('http://localhost:8800/users', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(userData),
      });

      if (response.ok) {
        setSuccessMessage('Usuário adicionado com sucesso!');
        setErrorMessage('');
      } else {
        setErrorMessage('Erro ao adicionar o usuário. Tente novamente.');
        setSuccessMessage('');
      }
    } catch (error) {
      setErrorMessage('Erro ao enviar os dados. Tente novamente.');
      setSuccessMessage('');
    }
  };

  const inputStyle = { width: '300px' };

  return (
    <div style={{
      display: 'flex',
      justifyContent: 'center',
      alignItems: 'center',
      flexDirection: 'column',
      marginTop: '80px',
    }}>
      <h1 style={{ marginBottom: '40px' }}>Página de Adicionar Usuário</h1>

      {successMessage && <div style={{ color: 'green' }}>{successMessage}</div>}
      {errorMessage && <div style={{ color: 'red' }}>{errorMessage}</div>}

      <form onSubmit={handleSubmit} style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
        <div style={{ display: 'flex', gap: '20px' }}>
          <TextField
            label="CPF"
            variant="outlined"
            style={inputStyle}
            value={cpf}
            onChange={(e) => setCpf(e.target.value)}
            InputProps={{
              inputComponent: CleaveInput,
              inputProps: {
                options: {
                  delimiters: ['.', '.', '-'],
                  blocks: [3, 3, 3, 2],
                  numericOnly: true,
                }
              }
            }}
          />

          <TextField
            id="nome"
            label="Nome"
            variant="outlined"
            style={inputStyle}
            value={nome}
            onChange={(e) => setNome(e.target.value)}
            inputProps={{ maxLength: 40 }}
          />
        </div>

        <div style={{ display: 'flex', gap: '20px' }}>
          <TextField
            label="Telefone"
            variant="outlined"
            style={inputStyle}
            value={telefone}
            onChange={(e) => setTelefone(e.target.value)}
            InputProps={{
              inputComponent: CleaveInput,
              inputProps: {
                options: {
                  phone: true,
                  phoneRegionCode: 'BR',
                }
              }
            }}
          />

          <TextField
            id="email"
            label="Email"
            variant="outlined"
            style={inputStyle}
            value={email}
            inputProps={{ maxLength: 100 }}
            onChange={(e) => setEmail(e.target.value)}
          />
        </div>

        <div style={{ display: 'flex', gap: '20px' }}>
          <div style={inputStyle}>
            <LocalizationProvider dateAdapter={AdapterDayjs}>
              <DatePicker
                label="Data de Nascimento"
                value={dataNascimento}
                onChange={(newValue) => setDataNascimento(newValue)}
                slotProps={{ textField: { fullWidth: true } }}
              />
            </LocalizationProvider>
          </div>

          <Button
            variant="contained"
            endIcon={<SendIcon />}
            style={inputStyle}
            type="submit"
          >
            Enviar
          </Button>
        </div>
      </form>
    </div>
  );
}
