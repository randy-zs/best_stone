package appServlet;

import bean.Gym;
import bean.User;
import bean.UserGym;
import com.alibaba.fastjson.JSONObject;
import filter.Log;
import org.apache.commons.lang3.StringUtils;
import service.GymService;
import service.UserGymService;
import service.UserService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/*
 * Created by randy on 17-9-14.
 * msg : 收藏门店接口
 */
@WebServlet(urlPatterns = "/appGetDataCollectGymServlet")
public class AppGetDataCollectGymServlet extends AppBaseGetDataServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) {
        JSONObject jsonObject = new JSONObject();
        try {
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            response.setHeader("content-type", "text/html;charset=UTF-8");

            String id = request.getParameter("id");
            String lat = request.getParameter("lat");   // 纬度 lat
            String lon = request.getParameter("lon");   // 经度 lon
            String url = request.getParameter("url");
            String name = request.getParameter("name");
            String tele = request.getParameter("tele");
            String uuid = request.getParameter("uuid");
            String price = request.getParameter("price");
            String address = request.getParameter("address");

            Log.debug("params {\"id\"=" + id + ", \"lat\"=" + lat + ", \"lon\"= " + lon + ", \"url\"=" + url + ", \"tele\"=" + tele + ", \"name\"=" + name + ", \"price\"=" + price + ", \"address\"=" + address + ", \"uuid\"=" + uuid + "}");
            jsonObject = getJSONObject(lat, lon, uuid);
            List<String> uuidList = new ArrayList<>();
            List<User> list = UserService.findData();
            for (User user : list) {
                uuidList.add(user.getUser_uuid());
            }
            if (StringUtils.isBlank(uuid) || !uuidList.contains(uuid)) {
                jsonObject.put("result", 100);
                jsonObject.put("msg", "没有查到该用户的信息:" + uuid);
            }
            if (StringUtils.isBlank(lat) || Double.parseDouble(lat) == 0) {
                jsonObject.put("result", 100);
                jsonObject.put("msg", "纬度定位失败:" + lat);
            }
            if (StringUtils.isBlank(lon) || Double.parseDouble(lon) == 0) {
                jsonObject.put("result", 100);
                jsonObject.put("msg", "经度定位失败:" + lon);
            }

            if (jsonObject.getInteger("result") != 100) {
                List<String> gymIdList = new ArrayList<>();
                List<Gym> gymList = GymService.findData();
                for (Gym gym : gymList) {
                    gymIdList.add(gym.getId());
                }
                Gym gym = Gym.getGym(id, lat, lon, url, tele, name, Double.parseDouble(price), address);
                UserGym userGym = UserGym.getUserGym(id, uuid);
                if (!gymIdList.contains(id)) {
                    GymService.createData(gym);
                    jsonObject.put("msg", "create data success");
                }
                UserGymService.createData(userGym);
            }
            Log.debug("return " + jsonObject.toJSONString());
            response.getWriter().append(jsonObject.toJSONString());
            response.getWriter().close();
        } catch (Exception e) {
            Log.error(e.getMessage(), e);
            jsonObject.put("result", 500);
            jsonObject.put("msg", e.getMessage());
            try {
                Log.debug("return " + jsonObject.toJSONString());
                response.getWriter().append(jsonObject.toJSONString());
                response.getWriter().close();
            } catch (IOException a) {
                Log.error(a.getMessage(), a);
            }
        }
    }

}
