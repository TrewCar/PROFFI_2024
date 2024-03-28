## Начало работы

Для начала работы востановите базу данных которая находиться по пути "./DataBase/BackUp.sql" в СУБД PostgreSQL 16.X

В "./aspnet/config.cs" заполнить данные для бд
```
public static class Config
{
    public static string Host = "localhost";
    public static string Username = "postgres";
    public static string Password = "root";
    public static string DataBase = "med";
}
```
## Авторы

* **ws03** - *Initial work* - [PurpleBooth](http://itb.lrmk.ru:3000/ws03)
