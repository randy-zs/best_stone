package util;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

/**
 * Created by randy on 17-9-12.
 */
public class DBConnection {
    private static InputStream in = DBConnection.class.getClassLoader().getResourceAsStream("jdbc.properties");
    private static Properties properties = new Properties();

    public static Connection createConnection() {
        Connection conn = null;
        try {
            properties.load(in);
            String url = properties.getProperty("jdbc.url");
            String driver = properties.getProperty("jdbc.driverClass");
            String username = properties.getProperty("jdbc.username");
            String password = properties.getProperty("jdbc.password");
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    // 释放资源
    public static void closeConnection(ResultSet resultSet, PreparedStatement preparedStatement, Connection connection) {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        closeConnection(preparedStatement, connection);
    }

    // 释放资源
    public static void closeConnection(PreparedStatement preparedStatement, Connection connection) {
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        closeConnection(connection);
    }

    // 释放资源
    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

}
