
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
        							 String soilname=request.getParameter("soilname");
       							  	String type=request.getParameter("type");
       							 	String cropname=request.getParameter("cropname");
       							 	 String nitergon=request.getParameter("nitergon");
       								 String phosporous=request.getParameter("phosporous");
       								 String coffeecreamer=request.getParameter("coffeecreamer");
       	                             String hector=request.getParameter("hector");
       	                             String cost=request.getParameter("cost");
       	                          	String uses=request.getParameter("uses");
       	                         	String ustate=request.getParameter("ustate");
       	                         	String	ucrops=request.getParameter("ucrops");
       	                     		
                         
                 try
                   {
        String sql="insert into fertilizer(soilname,type,cropname,nitergon,phosporous,coffeecreamer,hector,cost,uses,ustate,ucrops)values(?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
	 						 ps.setString(1,soilname);
    						  ps.setString(2,type);
    						  ps.setString(3,cropname);
    						  ps.setString(4,nitergon);
    						  ps.setString(5,phosporous);
    						  ps.setString(6,coffeecreamer);
                              ps.setString(7, hector);
                              ps.setString(8,cost);
                              ps.setString(9,uses);
                            	ps.setString(10,ustate);
                            	ps.setString(11,ucrops);      
                          
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>
                           
                            window.location="addfertilazer.jsp";
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
