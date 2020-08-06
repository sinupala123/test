
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
       							  String state=request.getParameter("state");
                             String soilname=request.getParameter("soilname");
         					String type=request.getParameter("type");
                             String cropname=request.getParameter("cropname");
                             String season=request.getParameter("season");
                         	String from1=request.getParameter("from1");
                            String to1=request.getParameter("to1");
                            String peroid=request.getParameter("peroid");
                 try
                   {
        String sql="insert into crops(state,soilname,type,cropname,season,from1,to1,peroid)values(?,?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
							 ps.setString(1,state);
                            ps.setString(2,soilname);
                            ps.setString(3,type);
                            ps.setString(4,cropname);
                            ps.setString(5,season);
                            ps.setString(6,from1);
                            ps.setString(7,to1);
                            ps.setString(8,peroid);
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>
                            window.location="addcrops.jsp";
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
