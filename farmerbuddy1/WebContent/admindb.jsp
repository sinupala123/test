<%
String aid=request.getParameter("aid");
String pas=request.getParameter("pass");
if(aid.equals("admin")&&pas.equals(("admin"))){
    %>
    <script>
        alert("admin logged in successfully");
        window.location="adminhome.jsp";
    </script>
    <%
}
else{
%>
    <script>
        alert("invalid credintitals plz enter a vlaid id or password");
        window.location="admin.jsp";
    </script>
    <%
}       
%>