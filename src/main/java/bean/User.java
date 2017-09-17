package bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * Created by randy on 17-9-14.
 */
public class User {

    private static User user = null;

    private Long id;
    private String user_uuid;
    private Date create_time;

    public static User getUser() {
        return new User();
    }

    public static User getUser(Long id, String user_uuid, Date create_time) {
        return user = new User(id, user_uuid, create_time);
    }

    public User() {

    }

    public User(Long id, String user_uuid, Date create_time) {
        this.id = id;
        this.user_uuid = user_uuid;
        this.create_time = create_time;
    }

    public static void setUser(User user) {
        User.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUser_uuid() {
        return user_uuid;
    }

    public void setUser_uuid(String user_uuid) {
        this.user_uuid = user_uuid;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public static User handleResultSet(ResultSet resultSet) {
        try {
            user = getUser();
            user.setId(resultSet.getLong("id"));
            user.setUser_uuid(resultSet.getString("user_uuid"));
            user.setCreate_time(resultSet.getDate("create_time"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

}
