package com.zhang.ssmschoolshop.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;


public class ImageUtil {

    public static String imagePath(MultipartFile file, String shopName) {
        if (file.isEmpty()) {
            return "false";
        }
        int size = (int) file.getSize();
        String path = "D:/upload";
        String os = System.getProperty("os.name");
        if(!os.toLowerCase().startsWith("windows")){

            path="/usr/upload";
        }
        String fileName=UUID.randomUUID().toString().substring(0,4)+shopName;
        File dest = new File(path + "/" +fileName);
        System.out.println(dest);
        if (!dest.getParentFile().exists()) { 
            dest.getParentFile().mkdir();
        }
        try {
     
            file.transferTo(dest);
            return fileName;
        } catch (IllegalStateException e) {
    
            e.printStackTrace();
            return "false";
        } catch (IOException e) {

            e.printStackTrace();
            return "false";
        }


    }
}
