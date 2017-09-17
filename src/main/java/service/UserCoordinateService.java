package service;

import bean.UserCoordinate;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by randy on 17-9-12.
 */
public class UserCoordinateService extends AppBaseService {

    public static void updateData(String column, UserCoordinate coordinate) {
        try {
            Connection connection = DBConnection.createConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_COORDINATE__DATA);
            preparedStatement.setString(1, coordinate.getLat());
            preparedStatement.setString(2, coordinate.getLon());
            preparedStatement.setString(3, column);
            preparedStatement.executeUpdate();
            DBConnection.closeConnection(preparedStatement, connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void createData(UserCoordinate coordinate) {
        try {
            Connection connection = DBConnection.createConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_COORDINATE__DATA);
            preparedStatement.setString(1, coordinate.getLat());
            preparedStatement.setString(2, coordinate.getLon());
            preparedStatement.setString(3, coordinate.getUser_uuid());
            preparedStatement.executeUpdate();
            DBConnection.closeConnection(preparedStatement, connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<UserCoordinate> findData() {
        List<UserCoordinate> list = new ArrayList<>();
        try {
            Connection connection = DBConnection.createConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_COORDINATE___ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                UserCoordinate userCoordinate = UserCoordinate.handleResultSet(resultSet);
                list.add(userCoordinate);
            }
            DBConnection.closeConnection(resultSet, preparedStatement, connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}
