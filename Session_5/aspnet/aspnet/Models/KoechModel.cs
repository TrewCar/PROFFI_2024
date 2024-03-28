namespace aspnet.Models
{
    public class KoechModel
    {
        public KoechModel() { }

        public List<List<string>> GetListKomnat()
        {
            return new DataBase().GetData("SELECT * FROM room_control");
        }
        public void SaveComnat(string set_koika)
        {
            var db = new DataBase();
            db.SendData($"INSERT INTO room_control VALUES ('{set_koika}')");
        }
        public void RemoveComnat(string unset_koika)
        {
            var db = new DataBase();
            db.SendData($"DELETE FROM room_control WHERE name = '{unset_koika}'");
        }
        public void ReplaceComnat(string unset_koika, string set_koika)
        {
            RemoveComnat(unset_koika);
            SaveComnat(set_koika);
        }
    }
}
