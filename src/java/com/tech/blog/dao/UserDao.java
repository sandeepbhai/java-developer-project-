/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.dao;
import com.tech.blog.entites.User;
import java.sql.*;


/**
 *
 * @author HELLO
 */
public class UserDao {
    
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    public boolean saveUser(User user){
     boolean f= false;  
        try{
           
            String query = "insert into user(name,email,password,gender)values(?,?,?,?)";
     PreparedStatement pstm = this.con.prepareStatement(query);
            pstm.setString(1,user.getName());
            pstm.setString(2,user.getEmail());
            pstm.setString(3,user.getPassword());
            pstm.setString(4,user.getGender());
            
            pstm.executeUpdate();
             f= true;
        }catch(Exception e){
        
        e.printStackTrace();}
       
        return f;
    }
    
    
    public User getUserbynameandPassword(String email,String password){
    
        User user = null;
        
        try{
            
            String query = "select * from user where email =? and password=?";
            PreparedStatement pstm = con.prepareStatement(query);
            pstm.setString(1, email);
              pstm.setString(2, password);
           ResultSet set =  pstm.executeQuery();
            
           if(set.next()){
           user = new User();
           String name = set.getString("name");
           user.setName(name);
           
           user.setId(set.getInt("id"));
           user.setEmail(set.getString("email"));
           user.setPassword(set.getString("password"));
           user.setGender(set.getString("gender"));
           user.setProfile(set.getString("profile"));
           
           }
           
           
        }catch(Exception e){
        
        e.printStackTrace();
        
        }
        
        
    
        
        return user;
    
    
    
    }
    
    public boolean upadateUser( User user){
    
        boolean f = false;
        
    try{
        
        String q = "update user set name=? , email=?, password=? ,gender=? ,profile=? where id=?";
    
        PreparedStatement p = con.prepareStatement(q);
             p.setString(1, user.getName());
             p.setString(2, user.getEmail());
             p.setString(3, user.getPassword());
             p.setString(4, user.getGender());
             p.setString(5, user.getProfile());
             p.setInt(6,user.getId());
        
             p.executeUpdate();
             
             f= true;
             
    }catch(Exception e)
    {
    e.printStackTrace();
    
    }
    
     return f;   
    
    }
    
    public User getusernamebyuserid(int userid){
    
    User user = null;
    try{
    String q= "select * from user where id=?";
    PreparedStatement ps = this.con.prepareStatement(q);
    ps.setInt(1, userid);
    ResultSet set = ps.executeQuery();
    if(set.next()){
    
    
    
          user = new User();
           String name = set.getString("name");
           user.setName(name);
           
           user.setId(set.getInt("id"));
           user.setEmail(set.getString("email"));
           user.setPassword(set.getString("password"));
           user.setGender(set.getString("gender"));
           user.setProfile(set.getString("profile"));
    
    
    
    }
    
    
    }
    catch(Exception e){
    e.printStackTrace();
    
    }
    
    return user;
    }
    
}
