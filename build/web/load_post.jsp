
<%@page import="com.tech.blog.entites.User"%>
<%@page import="com.tech.blog.dao.LikeDao"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.entites.Post"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>


<div class="row">
<%    
 User uu = (User)session.getAttribute("currentuser");
PostDao d = new PostDao(ConnectionProvider.getConnection());

int cid = Integer.parseInt(request.getParameter("cid"));
List<Post> post=null;
if(cid==0){
     post = d.getallPost();
    } 
    else{
    
    post=d.getpostbycid(cid);
    
    }
    if(post.size()==0){
    
    
    out.println("<h3 class='display-3 text-center'> No post in this category.... </h3>");
    return;
    }


for(Post p:post){
    
 %>   
    
 <div class="col-md-6 mt-2">
     <div class="card">
        
         <img src="blog_pics/<%= p.getPpic() %>" class="card-img-top" alt="card body">
         
         <div class="card-body">
             
             <b> <%=  p.getPtitle() %></b>
             <p><%= p.getPcontent() %></p>
             <pre>   <%= p.getPcode() %></pre>
                     
         </div>
             <div class="card-footer text-center primary-background">
                 <%      
                 LikeDao id = new LikeDao(ConnectionProvider.getConnection());
                 %>
                 <a href="show_page.jsp?post_id=<%= p.getPid() %>" class = "btn btn btn btn-warning btn-sm">Read More..</a>
                 <a href="#!" onclick="doLike(<%= p.getPid() %>,<%= uu.getId() %>)"   class = "btn btn btn btn-warning btn-sm"><i class="fa fa-thumbs-o-up"></i> <span class="like-counter"><%= id.countLikeonpost(p.getPid())  %></span></a>
                  
                  <a href="#!" class = "btn btn btn btn-warning btn-sm"><i class="fa fa-commenting-o"></i> <span>200</span></a>
                 
             </div>
     </div>
     
     
     
 </div>
 
 
 
 <%
     
     
     
    }




%>
</div>