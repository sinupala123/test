
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
 <%@include file="HBD.jsp"%>
         <%
                             String market=request.getParameter("market");
         					String commedity=request.getParameter("commedity");
                             String arrival=request.getParameter("arrival");
                             String uoa=request.getParameter("uoa");
                             String arrivald=request.getParameter("arrivald");
                             String variety=request.getParameter("variety");
                             String grade=request.getParameter("grade");
                             String maximumprice=request.getParameter("maximumprice");
                             String minimumprice=request.getParameter("minimumprice");
                             String modelprice=request.getParameter("modelprice");
                             String uop=request.getParameter("uop");
                 try
                   {
String sql="insert into marketreport(market,commedity,arrival,uoa,arrivald,variety,grade,maximumprice,minimumprice,modelprice,uop)values(?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
	ps=con.prepareStatement(sql);
                            ps.setString(1,market);
                            ps.setString(2,commedity);
                            ps.setString(3,arrival);
                            ps.setString(4,uoa);
                            ps.setString(5,arrivald);
                            ps.setString(6,variety);
                            ps.setString(7,grade);
                            ps.setString(8,maximumprice);
                            ps.setString(9,minimumprice);
                            ps.setString(10,modelprice);
                            ps.setString(11,uop);
                    
                            int i=ps.executeUpdate();
                            
                            if(i>0)
                            {
                       %>
                                <Script>                        
                            window.location="addmarketreport2.jsp";
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
