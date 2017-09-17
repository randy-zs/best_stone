package bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 * Created by randy on 17-9-14.
 */
public class Gym {

    private static Gym gym = null;

    private String id;
    private String lat;
    private String lon;
    private String url;
    private String tele;
    private String name;
    private Double price;
    private String address;
    private Date create_time;

    public static Gym getGym() {
        return new Gym();
    }

    public static Gym getGym(String id, String lat, String lon, String url, String tele, String name, Double price, String address) {
        return gym = new Gym(id, lat, lon, url, tele, name, price, address);
    }

    public Gym() {

    }

    public Gym(String id, String lat, String lon, String url, String tele, String name, Double price, String address) {
        this.id = id;
        this.lat = lat;
        this.lon = lon;
        this.url = url;
        this.tele = tele;
        this.name = name;
        this.price = price;
        this.address = address;
    }

    public Gym(String id, String lat, String lon, String url, String tele, String name, Double price, String address, Date create_time) {
        this.id = id;
        this.lat = lat;
        this.lon = lon;
        this.url = url;
        this.tele = tele;
        this.name = name;
        this.price = price;
        this.address = address;
        this.create_time = create_time;
    }

    public static void setGym(Gym gym) {
        Gym.gym = gym;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTele() {
        return tele;
    }

    public void setTele(String tele) {
        this.tele = tele;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public static Gym handleResultSet(ResultSet resultSet) {
        try {
            gym = getGym();
            gym.setId(resultSet.getString("id"));
            gym.setLat(resultSet.getString("lat"));
            gym.setLon(resultSet.getString("lon"));
            gym.setUrl(resultSet.getString("url"));
            gym.setTele(resultSet.getString("tele"));
            gym.setName(resultSet.getString("name"));
            gym.setPrice(resultSet.getDouble("price"));
            gym.setAddress(resultSet.getString("address"));
            gym.setCreate_time(resultSet.getDate("create_time"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return gym;
    }

}
