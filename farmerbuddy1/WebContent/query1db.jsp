
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
        					
                             String name=request.getParameter("name");
         					String problem=request.getParameter("problem");
                             String date=request.getParameter("date");
                 try
                   {
        String sql="insert into query5(name,problem,date)values(?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);							
                            ps.setString(1,name);
                            ps.setString(2,problem);
                            ps.setString(3,date);
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>                        
                            window.location="query1.jsp";
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
