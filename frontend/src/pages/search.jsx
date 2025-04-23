import * as React from 'react';
import {
  TextField, Autocomplete, CircularProgress, Box, Card,
  CardContent, Typography, Button, Dialog, DialogTitle,
  DialogContent, DialogActions, FormHelperText
} from '@mui/material';
import dayjs from 'dayjs';
import Cleave from 'cleave.js/react';
import 'cleave.js/dist/addons/cleave-phone.br';

const CleaveInput = React.forwardRef(function CleaveInput(props, ref) {
  const { onChange, options, ...other } = props;
  return (
    <Cleave
      {...other}
      onChange={onChange}
      options={options}
      htmlRef={ref}
    />
  );
});

export default function Search() {
  const [open, setOpen] = React.useState(false);
  const [users, setUsers] = React.useState([]);
  const [selectedUser, setSelectedUser] = React.useState(null);
  const [loading, setLoading] = React.useState(false);
  const [editData, setEditData] = React.useState(null);
  const [refresh, setRefresh] = React.useState(false);
  const [cpfMasked, setCpfMasked] = React.useState('');
  const [telefoneMasked, setTelefoneMasked] = React.useState('');
  const [errors, setErrors] = React.useState({ telefone: '', cpf: '' });

  React.useEffect(() => {
    setLoading(true);
    fetch('http://localhost:8800/users')
      .then(res => res.json())
      .then(data => {
        setUsers(data);
        setLoading(false);
      })
      .catch(err => {
        console.error("Erro ao carregar usuários:", err);
        setLoading(false);
      });
  }, [refresh]);

  const handleSelect = (event, value) => {
    setSelectedUser(value);
  };

  const handleDelete = () => {
    fetch(`http://localhost:8800/users/${selectedUser.ID}`, {
      method: 'DELETE',
    })
      .then(res => res.json())
      .then(() => {
        setSelectedUser(null);
        setRefresh(!refresh);
      });
  };

  const handleEditOpen = () => {
    setCpfMasked(
      selectedUser.cpf.replace(/(\d{3})(\d{3})(\d{3})(\d{2})/, '$1.$2.$3-$4')
    );
    setTelefoneMasked(
      selectedUser.telefone.replace(/(\d{2})(\d{5})(\d{4})/, '($1)$2-$3')
    );
    setEditData({ ...selectedUser });
  };

  const handleEditChange = (e) => {
    const { name, value } = e.target;
    setEditData({ ...editData, [name]: value });

    if (name === 'telefone' || name === 'cpf') {
      const isValidLength = value.replace(/\D/g, '').length >= 11;
      setErrors({
        ...errors,
        [name]: isValidLength ? '' : `${name === 'telefone' ? 'Telefone' : 'CPF'} deve ter no mínimo 11 caracteres.`,
      });
    }
  };
 
  const handleEditSave = () => {
    const cpfSemMascara = cpfMasked.replace(/\D/g, '');
    const telefoneSemMascara = telefoneMasked.replace(/\D/g, '');
    const formattedDate = dayjs(editData.dtaNascimento).format('YYYY-MM-DD');

    const updatedData = {
      ...editData,
      cpf: cpfSemMascara,
      telefone: telefoneSemMascara,
      dtaNascimento: formattedDate,
    };

    fetch(`http://localhost:8800/users/${editData.ID}`, {
      method: 'PUT',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(updatedData)
    })
      .then(res => res.json())
      .then(() => {
        setEditData(null);
        setSelectedUser(null);
        setRefresh(!refresh);
      });
  };

  return (
    <div>
      <h1 style={{ marginTop: '80px', textAlign: 'center' }}>Pesquisa de Usuário</h1>
      <p style={{ textAlign: 'center' }}>
        Utilize a barra de pesquisa abaixo para encontrar um usuário.
      </p>

      <Box sx={{ display: 'flex', flexDirection: 'column', alignItems: 'center', mt: 8 }}>
        <Autocomplete
          sx={{ width: 300 }}
          open={open}
          onOpen={() => setOpen(true)}
          onClose={() => setOpen(false)}
          onChange={handleSelect}
          options={users}
          getOptionLabel={(option) => option.nome}
          isOptionEqualToValue={(option, value) => option.ID === value.ID}
          loading={loading}
          renderInput={(params) => (
            <TextField
              {...params}
              label="Buscar usuário por nome"
              InputProps={{
                ...params.InputProps,
                endAdornment: (
                  <>
                    {loading ? <CircularProgress color="inherit" size={20} /> : null}
                    {params.InputProps.endAdornment}
                  </>
                ),
              }}
            />
          )}
        />

        {selectedUser && (
          <Card sx={{ mt: 4, width: 300 }}>
            <CardContent>
              <Typography variant="h6">{selectedUser.nome}</Typography>
              <Typography variant="body2">Email: {selectedUser.email}</Typography>
              <Typography variant="body2">Telefone: {selectedUser.telefone}</Typography>
              <Typography variant="body2">CPF: {selectedUser.cpf}</Typography>
              <Typography variant="body2">Nascimento: {dayjs(selectedUser.dtaNascimento).format('DD/MM/YYYY')}</Typography>

              <Box sx={{ mt: 2 }}>
                <Button variant="contained" color="error" onClick={handleDelete} sx={{ mr: 1 }}>
                  Deletar
                </Button>
                <Button variant="contained" onClick={handleEditOpen}>
                  Editar
                </Button>
              </Box>
            </CardContent>
          </Card>
        )}

        <Dialog open={!!editData} onClose={() => setEditData(null)}>
          <DialogTitle>Editar Usuário</DialogTitle>
          <DialogContent>
            <TextField
              margin="dense"
              label="Nome"
              name="nome"
              value={editData?.nome || ''}
              onChange={handleEditChange}
              inputProps={{ maxLength: 40 }}
              fullWidth
            />
            <TextField
              margin="dense"
              label="Email"
              name="email"
              value={editData?.email || ''}
              onChange={handleEditChange}
              inputProps={{ maxLength: 100 }}
              fullWidth
            />

            <TextField
              margin="dense"
              label="Telefone"
              value={telefoneMasked}
              onChange={(e) => setTelefoneMasked(e.target.value)}
              fullWidth
              InputProps={{
                inputComponent: CleaveInput,
                inputProps: {
                  options: {
                    phone: true,
                    phoneRegionCode: 'BR',
                  },
                },
              }}
            />
            {errors.telefone && <FormHelperText error>{errors.telefone}</FormHelperText>}

            <TextField
              margin="dense"
              label="CPF"
              value={cpfMasked}
              onChange={(e) => setCpfMasked(e.target.value)}
              fullWidth
              InputProps={{
                inputComponent: CleaveInput,
                inputProps: {
                  options: {
                    delimiters: ['.', '.', '-'],
                    blocks: [3, 3, 3, 2],
                    numericOnly: true,
                  },
                },
              }}
            />
            {errors.cpf && <FormHelperText error>{errors.cpf}</FormHelperText>}

            <TextField
              margin="dense"
              label="Nascimento"
              name="dtaNascimento"
              type="date"
              value={editData?.dtaNascimento?.split('T')[0] || ''}
              onChange={handleEditChange}
              fullWidth
              InputLabelProps={{ shrink: true }}
            />
          </DialogContent>
          <DialogActions>
            <Button onClick={() => setEditData(null)}>Cancelar</Button>
            <Button
              onClick={handleEditSave}
              variant="contained"
              disabled={errors.telefone || errors.cpf} // Desabilita se houver erro
            >
              Salvar
            </Button>
          </DialogActions>
        </Dialog>
      </Box>
    </div>
  );
}
