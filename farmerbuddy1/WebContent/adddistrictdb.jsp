
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
         							
        							 String soilname=request.getParameter("soilname");
        							 String district=request.getParameter("district");
        							 String sport[]=request.getParameterValues("sport");       							 	
        							 for(String sports : sport) 
        							  
        							            
                 try
                   {
                	;
        String sql="insert into adddistrict(soilname,district,sports)values(?,?,?)";
        PreparedStatement ps=null;
				ps=con.prepareStatement(sql);
							int s=3;
	 						 ps.setString(1,soilname);
    						  ps.setString(2,district); 						
    						  ps.setString(s,sports); 
    						  s++;
                 
                            int i=ps.executeUpdate(); 
				 
                            if(i>0)
                            {
                       %>
                                <Script>
                            alert("");
                            window.location="adddistrict.jsp";
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
