
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
        							 String first=request.getParameter("first");
       							  	String lastname=request.getParameter("lastname");
       							 	 String dob=request.getParameter("dob");
       								 String phone1=request.getParameter("phone1");
       								 String qualification=request.getParameter("qualification");
       								 String designation=request.getParameter("designation");
       								 String city=request.getParameter("city");
       	                             String state=request.getParameter("state");
       	                             String country=request.getParameter("country");
       	                          String email=request.getParameter("email");
       	                         	String loginname=request.getParameter("loginname");
       	                         	String	password=request.getParameter("password");       	                     		
       	                     	 		String squest=request.getParameter("squest");
                                 		String sanswer=request.getParameter("sanswer");
                                 		
                             
                         
                 try
                   {
        String sql="insert into agoregistration(first,lastname,dob,phone1,qualification,designation,city,state,country,email,loginname,password,squest,sanswer)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
	 						 ps.setString(1,first);
    						  ps.setString(2,lastname);
    						  ps.setString(3,dob);
    						  ps.setString(4,phone1);    						
    						  ps.setString(5,qualification);
                              ps.setString(6, designation);
                              ps.setString(7,city);
                              ps.setString(8,state);
                            	ps.setString(9,country);
                            	ps.setString(10,email);
                            	ps.setString(11,loginname);      
                            	 ps.setString(12,password);
                            	 ps.setString(13,squest);
                                 ps.setString(14,sanswer);
                              
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
