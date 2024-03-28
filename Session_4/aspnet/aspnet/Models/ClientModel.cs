namespace aspnet.Models
{
    /// <summary>
    /// Модель клиента
    /// </summary>
    public class ClientModel
    {
        public ClientModel() { }
        public ClientModel(int id) 
        {
            this.Id = id;
        }
        public int Id { get; set; }
        /// <summary>
        /// Получение списка всех пользователей из базы данных
        /// </summary>
        /// <returns></returns>
        public List<List<string>> GetClients()
        {
            var db = new DataBase();
            return db.GetData("SELECT * FROM client");
        }
        /// <summary>
        /// Получение конкретного пользователя по его ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<List<string>> GetClientBuyID(int id)
        {
            var db = new DataBase();
            return db.GetData($"SELECT * FROM client WHERE id = {id}");
        }
        /// <summary>
        /// Получение информации о мед карте определенного пользователя
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<List<string>> GetInfoMedCardByUser(int id)
        {
            var db = new DataBase();
            return db.GetData($"SELECT * FROM med_card WHERE id_client = {id}");
        }
    }
}
