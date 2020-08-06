
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.servlet.http.Part"%>
<%@include file="HBD.jsp"%>
<%
        							 String fn=request.getParameter("fn");
       							  	String ln=request.getParameter("ln");
       							 	String email=request.getParameter("email");      							 
       								 String dob=request.getParameter("dob");
       								 String city=request.getParameter("city");
       	                             String state=request.getParameter("state");
       	                             String country=request.getParameter("country");
       	                          	String address=request.getParameter("address");      	                         	
       	                         	String	pass=request.getParameter("pass");
       	                     		 String education=request.getParameter("education");
       	                     	 		String sq=request.getParameter("sq");
                                 		String sa=request.getParameter("sa");
                                 		 String crops=request.getParameter("crops");
                                 		 String gender=request.getParameter("gender"); 
                                 		InputStream identity1 =null;
                                 		InputStream photo=null;
                                 		 Part identity=request.getPart("identity");
                                 		 
                                 		 if(identity!=null){
                                 			identity1=identity.getInputStream();
                                 		 }
                                 		Part image=request.getPart("image");
                                 		
                                 		if(identity!=null){
                                 		photo=image.getInputStream();
                                 		 }
                                          String proof=request.getParameter("proof");
                                          String loginname=request.getParameter("loginname");
                                     	 String phno1=request.getParameter("phno1");
                         
                 try
                   {
        String sql="insert into farmerreg2(fn,ln,email,dob,city,state,country,address,pass,education,sa,sq,crops,gender,identity1,photo,proof,loginname,phno1)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
	 						 ps.setString(1,fn);
    						  ps.setString(2,ln);
    						  ps.setString(3,email);   						 
    						  ps.setString(4,dob);
    						  ps.setString(5,city);
                              ps.setString(6, state);
                              ps.setString(7,country);
                              ps.setString(8,address);
                            	ps.setString(9,pass);
                            	ps.setString(10,education);      
                            	 ps.setString(11,sq);
                            	 ps.setString(12,sa);
                                 ps.setString(13,crops);
                                 ps.setString(14,gender);
                                 ps.setBlob(15,identity1);
                                ps.setBlob(16, photo);
                              	 ps.setString(17,proof);
                                 ps.setString(18,loginname);
                                 ps.setString(19,phno1);
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
<Script>
                            alert("Registration complete");
                            window.location="farmer.jsp";
                                </script>
<%  }
                            else
                            {
                            %>
<script>
            alert("registration failed");
            window.location="Registration.jsp";    
        </script>
<%
                            }
                    
                    }
                    catch(Exception e)
                          {
                    
                              out.println(e);
                          }
%>
