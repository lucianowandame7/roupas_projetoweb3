package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConn {
        
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
            Connection conn;
            
            String driver = "com.mysql.jdbc.Driver";
            Class.forName(driver);
            
            conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/roupa",
                    "root",
                    ""
            );
            
            System.out.println("Conexão bem sucedida!");
            
            return conn;
        }
}