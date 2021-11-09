
package com.todo.Dao;

import com.todo.entity.NoteEntity;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class NoteDao {
    
    private SessionFactory factory;
    public NoteDao(SessionFactory factory)
    {
        this.factory=factory;
    }
    //save note 
    public boolean saveNote(NoteEntity note)
    {
        boolean f=false;
        
      
       Session s=factory.openSession();
        Transaction tx=s.beginTransaction();
        
        s.save(note);
        f=true;
       
        
       tx.commit(); 
       s.close();
        
        
        return f;
    }
    //fetch all Notes
    public List<NoteEntity> allNotes()
    {
        String q="from NoteEntity";
        Session s=factory.openSession();
   Query q1=s.createQuery(q);
   List<NoteEntity> note=q1.list();
    s.close();
    return note;
    }
//    delete by id
    public boolean deleteNoteById(int n)
    {
        boolean f=false;
       Session s=factory.openSession();
      Transaction tx=s.beginTransaction();
       
    NoteEntity  note=s.get(NoteEntity.class, n);
      s.delete(note);
      f=true;
       tx.commit();
       s.close();
        return f;
    }
    
    //update data into current note
    public boolean editNote(int id,String title,String content)
    {
     boolean f=false;
    Session s=factory.openSession();
    Transaction tx=s.beginTransaction();
    
    //now update data in note
    NoteEntity note=s.get(NoteEntity.class, id);
    note.setTitle(title);
    note.setContent(content);
    note.setaddDate(new Date());
    f=true;
    tx.commit();
    s.close();
    return f;
    }
}
