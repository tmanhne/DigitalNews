/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 *
 * @author ADMIN
 */
public class Article {

    private int id;
    private String title;
    private String content;
    private String summary;
    private String writer;
    private String date;

    public Article() {
    }

    public Article(int id, String title, String content, String summary, String writer, String date) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.summary = summary;
        this.writer = writer;
        this.date = date;
    }

    public String getDatePublished() {
        SimpleDateFormat df = new SimpleDateFormat("MMM dd yyyy - h:mm");
        SimpleDateFormat df1 = new SimpleDateFormat("aaa");
        return df.format(Timestamp.valueOf(date)) + df1.format(Timestamp.valueOf(date)).toLowerCase();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
