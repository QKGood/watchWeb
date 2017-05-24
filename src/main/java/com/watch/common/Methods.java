package com.watch.common;

import com.watch.common.util.UUIDUtil;
import org.springframework.web.context.ContextLoader;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.SimpleFormatter;

/**
 * 公用的方法
 * Created by Administrator on 2017/2/27.
 */
public class Methods {

    /**
     * 上传图片的路径
     * @param
     * @return
     */
    public static String uploadPath(String type) {
        String folder = createNewFolder();
        String rootPath = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/");
        String path = rootPath;
        if (type.equals("img")) {
            path += Constants.UPLOAD_IMAGES + folder;
        } else if (type.equals("video")) {
            path += Constants.UPLOAD_VIDEO + folder;
        } else if (type.equals("logo")){
            path += Constants.UPLOAD_LOGO + folder;
        } else if (type.equals("head")){
            path += Constants.UPLOAD_HEAD + folder;
        }
        path += "/";
        File file = new File(path);
        if (file.mkdirs()) {
            file.mkdirs();
        }
        return path;
    }

    /**
     * 根据当前日期自动创建存放文件的文件夹
     * @return
     */
    public static String createNewFolder() {
        return new  SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    /**
     * 截取文件后缀
     * @param fileName
     * @return
     */
    public static String interceptFileSuffix(String fileName) {
        return "." + fileName.substring(fileName.lastIndexOf(".")+1);
    }

    /**
     * 给文件取新名字
     * @return
     */
    public static String createName(String fileName) {
        return  UUIDUtil.uuid() + interceptFileSuffix(fileName);
    }


    /**
     * 删除单个文件
     * @param   sPath	被删除文件的文件名
     * @return 单个文件删除成功返回true，否则返回false
     */
    public static boolean deleteFile(String sPath) {
        boolean flag = false;
        File file = new File(sPath);
        // 路径为文件且不为空则进行删除
        if (file.isFile() && file.exists()) {
            file.delete();
            flag = true;
        }
        return flag;
    }


}
