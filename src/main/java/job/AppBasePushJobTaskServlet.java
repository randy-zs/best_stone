package job;

import org.quartz.Scheduler;
import util.DBConnection;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by randy on 17-9-15.
 */
public abstract class AppBasePushJobTaskServlet {

    public static Scheduler scheduler = null;

    public static InputStream in = DBConnection.class.getClassLoader().getResourceAsStream("quartz.properties");
    public static Properties properties = new Properties();
    public static String CRON_APPPUSHMSGJOB = null;

    static {
        try {
            properties.load(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
        CRON_APPPUSHMSGJOB =  properties.getProperty("push.appPushMsgJob");
    }

}
