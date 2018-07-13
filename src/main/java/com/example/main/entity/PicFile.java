package com.example.main.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "pb_task")
public class PicFile {
    public int userid;
    public String filepath;
    public String filetype;
    public String filehash;//文件哈希值
    public int filesize;
    public int piccount;   //图片大小  默认0
    public int compresstype;
    public int state;
    public String createtime;
    public String starttime;
    public String finishtime;
    public String compressfileurl;
    public String uploadfilename; //默认0
    public String compressfilesize;//压缩后的文件大小 默认0
    public String compressrate;//压缩率 默认0

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public String getFiletype() {
        return filetype;
    }

    public void setFiletype(String filetype) {
        this.filetype = filetype;
    }

    public String getFilehash() {
        return filehash;
    }

    public void setFilehash(String filehash) {
        this.filehash = filehash;
    }

    public int getFilesize() {
        return filesize;
    }

    public void setFilesize(int filesize) {
        this.filesize = filesize;
    }

    public int getPiccount() {
        return piccount;
    }

    public void setPiccount(int piccount) {
        this.piccount = piccount;
    }

    public int getCompresstype() {
        return compresstype;
    }

    public void setCompresstype(int compresstype) {
        this.compresstype = compresstype;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getStarttime() {
        return starttime;
    }

    public void setStarttime(String starttime) {
        this.starttime = starttime;
    }

    public String getFinishtime() {
        return finishtime;
    }

    public void setFinishtime(String finishtime) {
        this.finishtime = finishtime;
    }

    public String getCompressfileurl() {
        return compressfileurl;
    }

    public void setCompressfileurl(String compressfileurl) {
        this.compressfileurl = compressfileurl;
    }

    public String getUploadfilename() {
        return uploadfilename;
    }

    public void setUploadfilename(String uploadfilename) {
        this.uploadfilename = uploadfilename;
    }

    public String getCompressfilesize() {
        return compressfilesize;
    }

    public void setCompressfilesize(String compressfilesize) {
        this.compressfilesize = compressfilesize;
    }

    public String getCompressrate() {
        return compressrate;
    }

    public void setCompressrate(String compressrate) {
        this.compressrate = compressrate;
    }
}
