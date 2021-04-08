package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBController {
    private static final String JDBCURL = "jdbc:mysql://localhost:3306/CZ3002WebApp";
    private static final String USERNAME = "admin";
    private static final String PASSWORD = "1234@asdf";

    public static Connection connect() throws SQLException {
        return DriverManager.getConnection(JDBCURL, USERNAME, PASSWORD);
    }
}
