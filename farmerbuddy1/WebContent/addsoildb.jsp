
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
       							
                             String soilname=request.getParameter("soilname");        					
                 try
                   {
        String sql="insert into soiltype(soilname)values(?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
							
                            ps.setString(1,soilname);
                           
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>
                            window.location="addsoilinfo.jsp";
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
