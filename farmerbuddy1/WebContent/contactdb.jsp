<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="HBD.jsp"%>
<%
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phno1=request.getParameter("phno1");
	String message=request.getParameter("message");
	try{
		String sql="insert into contact1(name,email,phno1,message) values(?,?,?,?)";
		PreparedStatement ps=null;
		ps=con.prepareStatement(sql);
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,phno1);
		ps.setString(4,message);
		int status=ps.executeUpdate();
		if(status>0)
		{
		%>
		      <Script>
                           
                            window.location="contact1.jsp";
                                </script>                                    
                        <%  }
                            else
                            {
                            %>
         <script>   
        </script>	
	}
	  <%
                            }
                    
                    }
                    catch(Exception e)
                          {
                    
                              out.println(e);
                          }
%>

