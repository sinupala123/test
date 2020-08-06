
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
                             String state=request.getParameter("state");
         					String countrya=request.getParameter("countrya");
                             String district=request.getParameter("district");
                             String marketarea=request.getParameter("marketarea");
                 try
                   {
        String sql="insert into addmarket(state,countrya,district,marketarea)values(?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
                            ps.setString(1,state);
                            ps.setString(2,countrya);
                            ps.setString(3,district);    
                            ps.setString(4,marketarea); 
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>
                                alert("data is insert successfully");
                            window.location="addmarket.jsp";
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
