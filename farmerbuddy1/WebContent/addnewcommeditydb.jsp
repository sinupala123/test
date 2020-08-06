
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
                           
         					String commedity=request.getParameter("commedity");
                 try
                   {
        String sql="insert into addcommedity(commedity)values(?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
                          
                            ps.setString(1,commedity);
                           
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>                          
                            window.location="addcommedity.jsp";
                                </script>                                    
                        <%  }
                            else
                            {
                            %>
         <script>  
        </script>
        <%
                            }
                    
                    }
                    catch(Exception e)
                          {
                    
                              out.println(e);
                          }
%>
