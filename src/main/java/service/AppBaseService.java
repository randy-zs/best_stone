package service;

/**
 * Created by randy on 17-9-14.
 */
public abstract class AppBaseService {

    public static final String SELECT_GYM__________ALL = "select * from gym ";
    public static final String SELECT_USER_________ALL = "select * from user ";
    public static final String SELECT_COORDINATE___ALL = "select * from user_coordinate ";
    public static final String DELETE_COORDINATE___ALL = "delete * from user_coordinate ";
    public static final String SELECT_COORDINATE_LIMIT = "select * from user_coordinate limit ?, ? ";
    public static final String INSERT_USER________DATA = "insert into user (user_uuid, create_time) values(?, now()) ";
    public static final String INSERT_USER_GYM____DATA = "insert into user_gym (gym_id, user_uuid, create_time) values(?, ?, now()) ";
    public static final String UPDATE_COORDINATE__DATA = "update user_coordinate set lat = ?, lon = ?, last_time = now() where user_uuid = ? ";
    public static final String INSERT_COORDINATE__DATA = "insert into user_coordinate (lat, lon ,last_time, user_uuid) values(?, ?, now(), ?) ";
    public static final String INSERT_GYM_________DATA = "insert into gym (id, lat, lon, url, tele, name, price, address, create_time) values(?, ?, ?, ?, ?, ?, ?, ?, now()) ";

}
