package model;

import java.sql.*;

public class ConnectionFactory {
	
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection conn = null;
    	conn = DriverManager.getConnection("jdbc:mysql://localhost/db_projeto_java_web", "root", "");
        return conn;
	}
}
