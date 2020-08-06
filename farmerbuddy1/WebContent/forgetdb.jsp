<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@include file="HBD.jsp"%>
         <%
                             String email=request.getParameter("email");                          
                 try
                   {
        String sql="select password  from farmerreg1 where email=?";
        PreparedStatement ps=null;
        String password=null;
	ps=con.prepareStatement(sql);
                            ps.setString(1,email);
                    
                            ResultSet rs=ps.executeQuery();
                            
                            if(rs.next())
                            {
                            	password=rs.getString(1);
                      
                       if(password!=null)
				{
					sendPassword.sendPassword(email,password);
			%>
                                <Script>
                            alert("login complete");
                            window.location="farmer.jsp";
                                </script>                                    
                        <%  }
                            else
                            {
                            %>
        				 <script>
            		alert("registration failed");
            			{
            			window.location="forgetpage.jsp";   
            			}
        			</script>
      					  <%
                            }
                            }
                    
                    
                    catch(Exception e)
                          {
                    
                              out.println(e);
                          }
%>
