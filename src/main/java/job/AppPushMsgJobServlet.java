package job;

import filter.Log;
import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

/**
 * Created by randy on 17-9-15.
 */

public class AppPushMsgJobServlet extends AppBasePushJobTaskServlet {

    public static void startJob() {

        Log.debug(" AppPushMsgJobServlet start Job");
        /* 注册定时任务 */
        try {
            // 获取Scheduler实例
            scheduler = StdSchedulerFactory.getDefaultScheduler();
            scheduler.start();

            // 具体任务
            JobDetail job = JobBuilder.newJob(AppPushMsgJob.class).withIdentity("job1", "group1").build();
            job.getJobDataMap().put("taskId", "push App time task");
            // 触发时间点
            Trigger trigger = TriggerBuilder.newTrigger().withIdentity("trigger1", "group1")
                    .startNow().withSchedule(CronScheduleBuilder.cronSchedule(CRON_APPPUSHMSGJOB)).build();

            // 交由Scheduler安排触发
            scheduler.scheduleJob(job, trigger);

            Log.info(" AppPushMsgJobServlet scheduler start");
        } catch (Exception e) {
            Log.error(e.getMessage(), e);
        }
    }

    public static void stopJob() {
        Log.info(" AppPushMsgJobServlet stop Job");
        /* 注销定时任务 */
        try {
            // 关闭Scheduler
            scheduler.shutdown();
            Log.info(" AppPushMsgJobServlet scheduler shutdown");
        } catch (SchedulerException e) {
            Log.error(e.getMessage(), e);
        }
    }
}
