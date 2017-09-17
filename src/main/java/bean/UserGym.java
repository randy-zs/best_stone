package bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * Created by randy on 17-9-14.
 */
public class UserGym {

    private static UserGym userGym = null;

    private Long id;
    private String gym_id;
    private Date create_time;
    private String user_uuid;

    public static UserGym getUserGym() {
        return new UserGym();
    }

    public static UserGym getUserGym(String gym_id, String user_uuid) {
        return new UserGym(gym_id, user_uuid);
    }

    public UserGym() {

    }

    public UserGym(String gym_id, String user_uuid) {
        this.gym_id = gym_id;
        this.user_uuid = user_uuid;
    }

    public UserGym(Long id, String gym_id, Date create_time, String user_uuid) {
        this.id = id;
        this.gym_id = gym_id;
        this.user_uuid = user_uuid;
        this.create_time = create_time;
    }

    public static void setUserGym(UserGym userGym) {
        UserGym.userGym = userGym;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getGym_id() {
        return gym_id;
    }

    public void setGym_id(String gym_id) {
        this.gym_id = gym_id;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public String getUser_uuid() {
        return user_uuid;
    }

    public void setUser_uuid(String user_uuid) {
        this.user_uuid = user_uuid;
    }

    public static UserGym handleResultSet(ResultSet resultSet) {
        try {
            userGym = getUserGym();
            userGym.setId(resultSet.getLong("id"));
            userGym.setGym_id(resultSet.getString("gym_id"));
            userGym.setUser_uuid(resultSet.getString("user_uuid"));
            userGym.setCreate_time(resultSet.getDate("create_time"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userGym;
    }

}
