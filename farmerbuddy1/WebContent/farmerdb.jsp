<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@include file="HBD.jsp"%>
         <%
                             String loginname=request.getParameter("loginname");
         					String pass=request.getParameter("pass");
         					
                 try
                   {
        String sql="select * from farmerreg2 where loginname=? and pass=?";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
                            ps.setString(1,loginname);
                            ps.setString(2,pass);
                    
                            ResultSet rs=ps.executeQuery();
                            
                            if(rs.next())
                            {
                            	
                       %>
                       <%
                    session.setAttribute("loginnames", loginname);
                      
                       
                  
                       %>
                       <%=request.getParameter("loginname") %>
                                <Script>
                            alert("login complete");
                            window.location="farmerhome.jsp";
                                </script>                                    
                        <%  }
                            else
                            {
                            %>
         <script>
            alert("registration failed");
            window.location="farmer.jsp";    
        </script>
        <%
                            }
                    
                    }
                    catch(Exception e)
                          {
                    
                              out.println(e);
                          }
%>
