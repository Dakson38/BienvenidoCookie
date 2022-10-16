<%-- 
    Document   : index
    Created on : 16 oct. 2022, 12:10:30
    Author     : CJ
--%>
<%
            
        boolean nuevoUsuario = true;
        
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("visita") && cookie.getValue().equals("si")) {
                    nuevoUsuario = false;
                }
            }
        }
        
        String mensaje = null;
        if(nuevoUsuario){
            Cookie cookie = new Cookie("visita", "si");
            cookie.setMaxAge(30);
            response.addCookie(cookie);
            mensaje="Bienvenido a nuestro sitio Web.";
        }else{
            mensaje = "Gracias por visitarnos nuevamente.";
        }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookie Visitas</title>
    </head>
    <body>
        <h1><%=mensaje %></h1>
    </body>
</html>
