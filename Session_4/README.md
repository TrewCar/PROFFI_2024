# Сессия 4 - Drag&Drop

В данной сессии реальзовано только первый пункт "Регистрация движения пациентов по стационару" присоеденив его ко второй сессии

## Начало работы

Для начала работы востановите базу данных которая находиться по пути "./aspnet/aspnet/DataBase/BackUp.sql" в СУБД PostgreSQL 16.X

В "./aspnet/aspnet/config.cs" заполнить конфиги для для бд
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
