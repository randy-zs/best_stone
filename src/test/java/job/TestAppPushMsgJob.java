package job;

import filter.Log;
import org.junit.Test;
import org.quartz.*;
import org.quartz.impl.StdSchedulerFactory;

import java.util.concurrent.TimeUnit;

import static job.AppBasePushJobTaskServlet.CRON_APPPUSHMSGJOB;

/**
 * Created by randy on 17-9-15.
 */

public class TestAppPushMsgJob {

    @Test
    public void execute() {
        try {
            // 获取Scheduler实例
            Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();

            // 具体任务
            JobDetail job = JobBuilder.newJob(AppPushMsgJob.class).withIdentity("job1", "group1").build();
            // 在任务回调的时候,获取传递的参数,在任务回调的时候,完成想要的操作
            job.getJobDataMap().put("taskId", "push App time task");

            // 触发时间点 5s执行一次
            // SimpleScheduleBuilder simpleScheduleBuilder = SimpleScheduleBuilder.simpleSchedule().withIntervalInSeconds(5).repeatForever();
            // Trigger trigger = TriggerBuilder.newTrigger().withIdentity("trigger1", "group1").withSchedule(simpleScheduleBuilder).build();

            // 触发时间点 30s执行一次
            Trigger trigger = TriggerBuilder.newTrigger().withIdentity("trigger1", "group1")
                    .startNow().withSchedule(CronScheduleBuilder.cronSchedule(CRON_APPPUSHMSGJOB)).build();

            // 交由Scheduler安排触发
            scheduler.scheduleJob(job, trigger);
            // 启动调度器
            scheduler.start();

            /* 为观察程序运行，此设置主程序睡眠3分钟才继续往下运行（因下一个步骤是“关闭Scheduler”） */
            try {
                TimeUnit.MINUTES.sleep(3);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }

            // 关闭Scheduler
            scheduler.shutdown();

        } catch (SchedulerException se) {
            Log.error(se.getMessage(), se);
        }
    }

}