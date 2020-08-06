
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
        					 String fid=request.getParameter("qid");
                             String name=request.getParameter("name");
         					String problem=request.getParameter("problem");
                             String date=request.getParameter("date");
                 try
                   {
        String sql="insert into query5(qid,name,problem,date)values(?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
							ps.setString(1,fid);
                            ps.setString(2,name);
                            ps.setString(3,problem);
                            ps.setString(4,date);
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>
                            alert("query sended");
                            window.location="query.jsp";
                                </script>                                    
                        <%  }
                            else
                            {
                            %>
         <script>
            alert("registration failed");
            window.location="";    
        </script>
        <%
                            }
                    
                    }
                    catch(Exception e)
                          {
                    
                              out.println(e);
                          }
%>
