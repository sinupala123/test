
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
       						int aid=Integer.parseInt(request.getParameter("aid"));
                             String problem=request.getParameter("problem");
                             String name=request.getParameter("name");
                             String answer=request.getParameter("answer");
         					
                 try
                   {
        String sql="insert into answer(aid,problem,name,answer)values(?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
							ps.setInt(1,aid);
							 ps.setString(2,problem);
                            ps.setString(3,name); 
                            ps.setString(4,answer);    
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>
                            window.location="answer.jsp";
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
