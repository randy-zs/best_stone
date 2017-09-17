package appServlet;

import bean.User;
import bean.UserCoordinate;
import com.alibaba.fastjson.JSONObject;
import filter.Log;
import service.UserCoordinateService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/*
 * Created by randy on 17-9-12.
 * msg : 上传坐标接口
 */
@WebServlet(urlPatterns = "/appGetDataInitCoordinateServlet")
public class AppGetDataInitCoordinateServlet extends AppBaseGetDataServlet {

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) {
        JSONObject jsonObject = new JSONObject();
        try {

            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            response.setHeader("content-type", "text/html;charset=UTF-8");

            String lat = request.getParameter("lat");     // 纬度 lat
            String lon = request.getParameter("lon");     // 经度 lon
            String uuid = request.getParameter("uuid");   // 编号
            Log.debug("params {\"lat\"=" + lat + ", \"lon\"= " + lon + ", \"uuid\"=" + uuid + "}");
            jsonObject = getJSONObject(lat, lon, uuid);
            List<String> uuidList = new ArrayList<>();
            List<User> list = UserService.findData();
            for (User user : list) {
                uuidList.add(user.getUser_uuid());
            }
            UserCoordinate userCoordinate = UserCoordinate.getUserCoordinate(lat, lon, uuid);
            if (uuidList.contains(uuid)) {
                UserCoordinateService.updateData(uuid, userCoordinate);
                jsonObject.put("msg", "update data success");
            } else {
                UserService.createData(uuid);
                UserCoordinateService.createData(userCoordinate);
                jsonObject.put("msg", "create data success");
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
            } catch (Exception a) {
                Log.error(a.getMessage(), a);
            }
        }
    }

}
