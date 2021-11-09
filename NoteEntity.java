
package com.todo.entity;

import java.util.Date;
import java.util.Random;


import javax.persistence.Entity;


import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="notes")
public class NoteEntity {
    @Id
    private int id;
    private String title;
    private String content;
    private Date addDate;

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

    public void setaddDate(Date addDate)
    {
        this.addDate=addDate;
    }
    public Date getaddDate()
    {
        return addDate;
    }

    public NoteEntity(int id, String title, String content, Date addDate) {
        this.id = id=new Random().nextInt(1000);
        this.title = title;
        this.content = content;
        this.addDate = addDate;
    }

    public NoteEntity(String title, String content, Date addDate) {
        this.title = title;
        this.content = content;
        this.addDate = addDate;
    }

    public NoteEntity() {
    }

    @Override
    public String toString() {
        return "NoteEntity{" + "id=" + id + ", title=" + title + ", content=" + content + ", addDate=" + addDate + '}';
    }
    
    
    
    
}
