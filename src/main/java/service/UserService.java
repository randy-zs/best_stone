package service;

import bean.User;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by randy on 17-9-14.
 */
public class UserService extends AppBaseService {

    public static void createData(User user) {
        try {
            Connection connection = DBConnection.createConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER________DATA);
            preparedStatement.setString(1, user.getUser_uuid());
            preparedStatement.executeUpdate();
            DBConnection.closeConnection(preparedStatement, connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void createData(String user_uuid) {
        try {
            Connection connection = DBConnection.createConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER________DATA);
            preparedStatement.setString(1, user_uuid);
            preparedStatement.executeUpdate();
            DBConnection.closeConnection(preparedStatement, connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<User> findData() {
        List<User> list = new ArrayList<>();
        try {
            Connection connection = DBConnection.createConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_________ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                User user = User.handleResultSet(resultSet);
                list.add(user);
            }
            DBConnection.closeConnection(resultSet, preparedStatement, connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}
