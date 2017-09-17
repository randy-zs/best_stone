package bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * Created by randy on 17-9-12.
 */
public class UserCoordinate {

    private static UserCoordinate userCoordinate = null;

    private Long id;
    private String lat;
    private String lon;
    private Date last_time;
    private String user_uuid;

    public static UserCoordinate getUserCoordinate() {
        return new UserCoordinate();
    }

    public static UserCoordinate getUserCoordinate(String lat, String lon, String user_uuid) {
        return new UserCoordinate(lat, lon, user_uuid);
    }

    public UserCoordinate() {

    }

    public UserCoordinate(String lat, String lon, String user_uuid) {
        this.lat = lat;
        this.lon = lon;
        this.user_uuid = user_uuid;
    }

    public UserCoordinate(Long id, String lat, String lon, String user_uuid, Date last_time) {
        this.id = id;
        this.lat = lat;
        this.lon = lon;
        this.user_uuid = user_uuid;
        this.last_time = last_time;
    }

    public static void setUserCoordinate(UserCoordinate userCoordinate) {
        UserCoordinate.userCoordinate = userCoordinate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public String getLon() {
        return lon;
    }

    public void setLon(String lon) {
        this.lon = lon;
    }

    public String getUser_uuid() {
        return user_uuid;
    }

    public void setUser_uuid(String user_uuid) {
        this.user_uuid = user_uuid;
    }

    public Date getLast_time() {
        return last_time;
    }

    public void setLast_time(Date last_time) {
        this.last_time = last_time;
    }

    public static UserCoordinate handleResultSet(ResultSet resultSet) {
        try {
            userCoordinate = getUserCoordinate();
            userCoordinate.setId(resultSet.getLong("id"));
            userCoordinate.setLat(resultSet.getString("lat"));
            userCoordinate.setLon(resultSet.getString("lon"));
            userCoordinate.setUser_uuid(resultSet.getString("uuid"));
            userCoordinate.setLast_time(resultSet.getDate("last_time"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userCoordinate;
    }
}