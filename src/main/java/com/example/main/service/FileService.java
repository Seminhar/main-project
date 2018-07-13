package com.example.main.service;

import com.example.main.entity.PicFile;
import org.springframework.web.multipart.MultipartFile;

public interface FileService {
    public String uploadFile(MultipartFile picFile);
    public String uploadFiles(MultipartFile picFile);
}
