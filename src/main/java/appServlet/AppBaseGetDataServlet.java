package appServlet;

import com.alibaba.fastjson.JSONObject;
import org.quartz.Scheduler;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/*
 * Created by randy on 17-9-12.
 */
@WebServlet
public abstract class AppBaseGetDataServlet extends HttpServlet {

    public static JSONObject getJSONObject(String lat, String lon, String uuid) {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("lat", lat);
        jsonObject.put("lon", lon);
        jsonObject.put("msg", "msg");
        jsonObject.put("uuid", uuid);
        jsonObject.put("result", 200);
        return jsonObject;
    }

}
