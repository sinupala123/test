<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
						String loginname = request.getParameter("loginname");
						String driver = "com.mysql.jdbc.Driver";
						String url = "jdbc:mysql://localhost:3306/lit";
						try {
							Class.forName(driver);
							Connection con = null;
							PreparedStatement ps = null;
							ResultSet rs = null;
						} catch (Exception e) {
							e.printStackTrace();
						}
					%>

					<%
						try {
							Connection con = DriverManager.getConnection(url, "root", "sinu");
							String sql = "select * from farmerreg2 where loginname=?";
							PreparedStatement ps = con.prepareStatement(sql);
							ps.setString(1, loginname);
							ResultSet rs = ps.executeQuery();
							int i = 0;
							while (rs.next()) {
								
								
					%>
					 <table width="300" border="0" align="right" bordercolor="808080" bgcolor="FFFFFF">
					 <center>
					 <tr><td><center><img src="man.png" width="140" height="140"/></td></tr>
						<tr>
							
								<td><center>FirstName::<font color="red" size="4"><%=rs.getString("fn")%></td></tr>
								<tr>
								<td><center>LastName::<font color="red" size="4"><%=rs.getString("ln")%></td></tr>
								<tr>
									<td><center>EmailId::<font color="red" size="4"><%=rs.getString("email")%></td></tr>
							<tr>
									<td><center>D.O.B::<font color="red" size="4"><%=rs.getString("dob")%></td></tr>
									<tr>
								
										<td><center>City::<font color="red" size="4"><%=rs.getString("city")%></td></tr>
										<tr>
									
											<td><center>State::<font color="red" size="4"><%=rs.getString("state")%></td></tr>
										<tr>
												<td><center>Country::<font color="red" size="4"><%=rs.getString("country")%></td></tr>
											<tr>
													<td><center>Phno::<font color="red" size="4"><%=rs.getString("phno1")%></td>
												</tr><tr>
														<td><center>Education::<font color="red" size="4"><%=rs.getString("education")%></td>
													
						</tr>
						<tr>
														<td><center>Crops::<font color="red" size="4"><%=rs.getString("gender")%></td>
													
						</tr>
						</center>

						<% 
						RequestDispatcher rd=request.getRequestDispatcher("/farmerhome.jsp");  
						rd.include(request, response);  
}

con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
					</table>

					</center>
					</body>
</html>
</body>
</html>