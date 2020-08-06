
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
       						String state=request.getParameter("state");
                             String weather=request.getParameter("weather");
         					
                 try
                   {
        String sql="insert into addstate1(state,weather)values(?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
							 ps.setString(1,state);
                            ps.setString(2,weather);                       
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>
                            window.location="addstateinfo.jsp";
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
