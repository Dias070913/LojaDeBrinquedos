namespace LojaDeBrinquedos.Repositorio
{
    public class ProdutoRepositorio
    {
        // Declarando uma string
        private readonly string _connectionString;


        //Declarando um construtor que verifica a conexão
        public ProdutoRepositorio(string connectionString)
        {
            _connectionString = connectionString;
        }
    }
}
