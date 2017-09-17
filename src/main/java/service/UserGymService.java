package service;

import bean.UserGym;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 * Created by randy on 17-9-14.
 */
public class UserGymService extends AppBaseService {

    public static void createData(UserGym userGym) {
        try {
            Connection connection = DBConnection.createConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_GYM____DATA);
            preparedStatement.setString(1, userGym.getGym_id());
            preparedStatement.setString(2, userGym.getUser_uuid());
            preparedStatement.executeUpdate();
            DBConnection.closeConnection(preparedStatement, connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
