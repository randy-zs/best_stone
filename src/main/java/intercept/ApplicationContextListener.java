package intercept;

import job.AppPushMsgJobServlet;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


/**
 * Created by randy on 17-9-15.
 * <p>
 * 项目启动时监听任务, 定时执行job.
 */

public class ApplicationContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent arg0) {
        // AppPushMsgJobServlet.startJob();
    }

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
       // AppPushMsgJobServlet.stopJob();
    }

}