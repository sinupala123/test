
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
                             String session1=request.getParameter("session");
         					String sessiond=request.getParameter("sessiond");
                             String sessions=request.getParameter("sessions");
                             String sessionc=request.getParameter("sessionc");
                             String message=request.getParameter("message");
                             String fid=request.getParameter("fid");
                 try
                   {
        String sql="insert into query1(session1,sessiond,sessions,sessionc,message,fid)values(?,?,?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
                            ps.setString(1,session1);
                            ps.setString(2,sessiond);
                            ps.setString(3,sessions);
                            ps.setString(4,sessionc);
                            ps.setString(5,message);
                            ps.setString(6,fid);
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>
                            alert("");
                            window.location="sendquary.jsp";
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
