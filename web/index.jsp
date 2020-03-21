<%-- 
    Document   : index
    Created on : 21-mar-2020, 14:11:35
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Esto va bien</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form>
                        <div class="form-group">
                            <label >Escribe tu nombre</label>
                            <input type="text" class="form-control" name="nombrePersona"  placeholder="Nombre">
                        </div>

                        <div class="form-group">
                            <label >Escribe tu edad</label>
                            <input type="text" class="form-control" name="edadPersona"  placeholder="Edad">
                        </div>

                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                </div>
            </div>

            <div class="row">
                <div class="col-sm">
                    <div class="alert alert-primary" role="alert">
                        <%
                            String nombre = request.getParameter("nombrePersona");
                            String edad = request.getParameter("edadPersona");
                            if((nombre!="" && edad!="")&&(nombre!=null && edad!=null)){
                            
                            String saludar = "Hola " + nombre + " tienes " + edad + " años";
                            out.println(saludar);
                            }
                            else{
                            String saludar = "No hay datos";
                            out.println(saludar);
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>

        <div class="container mt-5">
            <table class="table ">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Edad</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td><%out.println(nombre);%></td>
                        <td><%out.println(edad);%></td>
                    </tr>
                    
                </tbody>
            </table>
        </div>
    </body>

</html>
