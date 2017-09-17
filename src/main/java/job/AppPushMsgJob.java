package job;

import filter.Log;
import jpush.JpushClient;
import org.quartz.Job;
import org.quartz.JobDataMap;
import org.quartz.JobExecutionContext;

/**
 * Created by randy on 17-9-15.
 */
public class AppPushMsgJob implements Job {

    @Override
    public void execute(JobExecutionContext context) {
        // 接受参数
        JobDataMap jobDataMap = context.getJobDetail().getJobDataMap();
        // 通过这种方式，传递参数
        String taskId = jobDataMap.getString("taskId");
        JpushClient.sendToAllIos("吃都吃的没滋没味，怎能活的有滋有味。", "吃都吃的没滋没味，怎能活的有滋有味。", "北京烤鸭", "透传参数");

        // 当前的appKey[eee7286d55479b61b58e24e6] 没有做 android SDK 集成.
        // JpushClient.sendToAllAndroid("吃都吃的没滋没味，怎能活的有滋有味。", "吃都吃的没滋没味，怎能活的有滋有味。", "北京烤鸭", "透传参数");

        // 此任务仅打印日志便于调试、观察
        Log.debug(this.getClass().getName() + taskId);
    }

}
