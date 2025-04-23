import dayjs from 'dayjs';



export function formatarCPF(cpf) {
    return cpf.replace(/^(\d{3})(\d{3})(\d{3})(\d{2})$/, '$1.$2.$3-$4');
  }
    
export function formatartelefone(telefone) {
    return telefone.replace(/^(\d{2})(\d{4})(\d{4})$/, '($1) $2-$3');
  }



export function formatarData(dtaNascimento) {
    return dayjs(dtaNascimento).format('DD/MM/YYYY');
  }
   