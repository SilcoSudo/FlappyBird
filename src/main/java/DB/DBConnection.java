/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Qi
 */
public class DBConnection {

    public static Connection getConnection() {
        Connection conn;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://LAPTOP-AHF1EMO4:1433;databaseName=FlappyBird;user=sa;password=L692003;encrypt=true;trustServerCertificate=true;";
            conn = DriverManager.getConnection(url);
        } catch (Exception e) {
            conn = null;
        }
        return conn;
    }
}
