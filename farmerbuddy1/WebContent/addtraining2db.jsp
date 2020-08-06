
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
         					String soilname=request.getParameter("soilname");
         					String status=request.getParameter("status");
                             String description=request.getParameter("description");
                             String schedule=request.getParameter("schedule");
                             String name=request.getParameter("name");
                             String role=request.getParameter("role");
                             String place=request.getParameter("place");
                 try
                   {
        String sql="insert into trainer(soilname,status,description,schedule,name,role,place)values(?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
                         
	 						 ps.setString(1,soilname);
                            ps.setString(2,status);
                            ps.setString(3,description);
                            ps.setString(4,schedule);
                            ps.setString(5,name);
                            ps.setString(6,role);
                            ps.setString(7,place);
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>                     
                            window.location="addtraining2.jsp";
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
