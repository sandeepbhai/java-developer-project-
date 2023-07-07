/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.dao;
import com.tech.blog.entites.Category;
import com.tech.blog.entites.Post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author HELLO
 */
public class PostDao {
    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }
    
    public ArrayList<Category> getallCategory(){
    
        ArrayList<Category> list= new ArrayList<>();
    
      try{
      
     String q = "select * from categories";
     Statement st = this.con.createStatement();
     ResultSet set = st.executeQuery(q);
          while(set.next()){
          
          int cid = set.getInt("cid");
          String name =set.getString("name");
          String description = set.getString("description");
          Category c = new Category(cid,name,description);
          list.add(c);
          }
          
      }catch(Exception e){
      
         e.printStackTrace();
          
      }
        
        
        
        
        return list;
    }
    
    public boolean savepost(Post p){
    
     boolean f = false;
    
        try{
        
        String q="insert into post(ptitle,pcontent,pcode,ppic,catid,userid) values(?,?,?,?,?,?)";
        PreparedStatement pstm = con.prepareStatement(q);
        pstm.setString(1, p.getPtitle());
        pstm.setString(2, p.getPcontent());
        pstm.setString(3, p.getPcode());
        pstm.setString(4, p.getPpic());
        pstm.setInt(5, p.getCatid());
        pstm.setInt(6, p.getUserid());
        
        pstm.executeUpdate();
        f = true;
        
        
        
        }catch(Exception e){
        
        
            e.printStackTrace();
            
        }
     
     
     
     
     
    return f;
    }
   
    
    
    public List<Post> getallPost(){
    
        List<Post> list = new ArrayList<>();
    try{
    
        PreparedStatement p = con.prepareStatement("select * from  post");
        
        ResultSet set = p.executeQuery();
        
        while(set.next()){
        
        int pid = set.getInt("pid");
        String ptitle = set.getString("ptitle");
        String pcontent = set.getString("pcontent");
        String pcode= set.getString("pcode");
        String ppic = set.getString("ppic");
        Timestamp date = set.getTimestamp("pdate");
        
        int catid = set.getInt("catid");
        int  userid = set.getInt("userid");
        
        Post pp = new Post(pid,ptitle,pcontent,pcode,ppic,date,catid,userid);
        
        list.add(pp);
        
        }
        
        
    
    
    }catch(Exception e){
    
        e.printStackTrace();
    
    }
    
        return list;
    }
    
    
   public List<Post> getpostbycid(int catid) {
   
   
    List<Post> list = new ArrayList<>();
    
    
     try{
    
        PreparedStatement p = con.prepareStatement("select * from  post where catid=?");
        p.setInt(1, catid);
        ResultSet set = p.executeQuery();
        
        while(set.next()){
        
        int pid = set.getInt("pid");
        String ptitle = set.getString("ptitle");
        String pcontent = set.getString("pcontent");
        String pcode= set.getString("pcode");
        String ppic = set.getString("ppic");
        Timestamp date = set.getTimestamp("pdate");
        
     
        int  userid = set.getInt("userid");
        
        Post pp = new Post(pid,ptitle,pcontent,pcode,ppic,date,catid,userid);
        
        list.add(pp);
        
        }
        
        
    
    
    }catch(Exception e){
    
        e.printStackTrace();
    
    }
    
    
    
    
    
    
    
    
        return list;
   }
    
    
   public Post getpostbypostid(int postid){
   Post post=null;
   
   String q = "select * from post where pid=?";
   try {
   PreparedStatement p = this.con.prepareStatement(q);
   p.setInt(1, postid);
   ResultSet set = p.executeQuery();
   
   if(set.next()){
   
       
       
       
       
        int pid = set.getInt("pid");
        String ptitle = set.getString("ptitle");
        String pcontent = set.getString("pcontent");
        String pcode= set.getString("pcode");
        String ppic = set.getString("ppic");
        Timestamp date = set.getTimestamp("pdate");
        int cid = set.getInt("catid");
       
        int  userid = set.getInt("userid");
        
         post = new Post(pid,ptitle,pcontent,pcode,ppic,date,cid,userid);
       
       
       
       
       
       
       
       

   
   }
   
   
   
   }catch(Exception e){
   
   e.printStackTrace();
   }
   
   return post;
   }
    
    
}
