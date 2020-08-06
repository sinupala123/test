
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
         					String soilname=request.getParameter("soilname");
         					String status=request.getParameter("status");
                             String description=request.getParameter("description");
                             String schedule=request.getParameter("schedule");
                 try
                   {
        String sql="insert into trainer(soilname,status,description,schedule)values(?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
                         
	 						 ps.setString(1,soilname);
                            ps.setString(2,status);
                            ps.setString(3,description);
                            ps.setString(4,schedule);
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>                     
                            window.location="addtraining.jsp";
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
