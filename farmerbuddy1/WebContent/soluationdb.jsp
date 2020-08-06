
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
        				
                             String session1=request.getParameter("session");
         					String sessiond=request.getParameter("sessiond");
                             String sessions=request.getParameter("sessions");
                             String sessionc=request.getParameter("sessionc");
                             String message=request.getParameter("message");
                             String message1=request.getParameter("message1");
                             String fid=request.getParameter("fid");
                 try
                   {
        String sql="insert into soluation(session1,sessiond,sessions,sessionc,message,message1,fid)values(?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
                            ps.setString(1,session1);
                            ps.setString(2,sessiond);
                            ps.setString(3,sessions);
                            ps.setString(4,sessionc);
                            ps.setString(5,message);
                            ps.setString(6,message1);
                            ps.setString(7,fid);
                            
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>
                            alert("soluation sended");
                            window.location="farmerhome.jsp";
                                </script>                                    
                        <%  }
                            else
                            {
                            %>
         <script>
            alert("registration failed");
            window.location="soluation.jsp";    
        </script>
        <%
                            }
                    
                    }
                    catch(Exception e)
                          {
                    
                              out.println(e);
                          }
%>
