package com.example.main.service.impl;

import com.example.main.entity.PicFile;
import com.example.main.entity.User;
import com.example.main.service.FileService;
import com.example.main.util.ContextUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
@Service
public class FileServiceImpl implements FileService{

    @Override
    public String uploadFile(MultipartFile file) {
        User user=(User) ContextUtils.getBean(User.class);
        System.out.println(user.getUsername());
        if (!file.isEmpty()) {
            String saveFileName = file.getOriginalFilename();//原文件名
            String fileFormat = file.getContentType();//文件类型

            File saveFile = new File(("/template/upload/") + saveFileName);
            if (!saveFile.getParentFile().exists()) {
                saveFile.getParentFile().mkdirs();
            }
            try {
                BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(saveFile));
                out.write(file.getBytes());
                out.flush();
                out.close();
                return (" 上传成功");
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return ("上传失败," + e.getMessage());
            } catch (IOException e) {
                e.printStackTrace();
                return ("上传失败," + e.getMessage());
            }
        } else {
            return ("文件为空！请选择文件后再进行操作！");
        }
    }

    @Override
    public String uploadFiles(MultipartFile picFile) {
        return null;
    }
}
