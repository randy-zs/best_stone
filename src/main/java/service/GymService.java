package service;

import bean.Gym;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by randy on 17-9-14.
 */
public class GymService extends AppBaseService {

    public static void createData(Gym gym) {
        try {
            Connection connection = DBConnection.createConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_GYM_________DATA);
            preparedStatement.setString(1, gym.getId());
            preparedStatement.setString(2, gym.getLat());
            preparedStatement.setString(3, gym.getLon());
            preparedStatement.setString(4, gym.getUrl());
            preparedStatement.setString(5, gym.getTele());
            preparedStatement.setString(6, gym.getName());
            preparedStatement.setDouble(7, gym.getPrice());
            preparedStatement.setString(8, gym.getAddress());
            preparedStatement.executeUpdate();
            DBConnection.closeConnection(preparedStatement, connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<Gym> findData() {
        List<Gym> list = new ArrayList<>();
        try {
            Connection connection = DBConnection.createConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_GYM__________ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                Gym gym = Gym.handleResultSet(resultSet);
                list.add(gym);
            }
            DBConnection.closeConnection(resultSet, preparedStatement, connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

}
