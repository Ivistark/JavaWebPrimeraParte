<%-- 
    Document   : index
    Created on : 21-mar-2020, 14:11:35
    Author     : alumno
--%>

<%@page import="javax.swing.text.AbstractDocument.AttributeContext"%>
<%@page import="javax.lang.model.element.Element"%>
<%@page import="org.w3c.dom.Document"%>
<%@page import="oracle.jrockit.jfr.parser.Parser"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-latest.js"></script>
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
                            if ((nombre != "" && edad != "") && (nombre != null && edad != null)) {

                                String saludar = "Hola " + nombre + " tienes " + edad + " años";
                                out.println(saludar);
                            } else {
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
                        <td name="FilaNombre" id="Fn"><%= nombre  %></td>
                        <td  name="FilaEdad" id="Fe"><%= edad%></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="container mt-5">
            <div  class="btn-group">
                <button type="submit"class="btn btn-danger">Limpiar tabla</button>
                <% request.setAttribute("FilaNombre", new String(""));
                %>
                <button type="submit"class="btn btn-danger">Limpiar formulario</button>
            </div>
        </div>

        <div class="container mt-5">
            <img src="Chrysanthemum.jpg" alt="" class="img-circle" width="100px" height="100px"/>
        </div> 
                    
        <div style="width: 300px ; background: green" class="bg-succes container mt-5">
            Esta prueba es muy simple pero vale pare enterder los conceptos básicos respecto a bootstrap.
            Pero dado que no tenemos instalado un internet explorer superior a 7 no podemos realizar bien la prueba. 
        </div>
                    
        <aside style="background: orangered" class="hidden-xs">
            Esta prueba es muy simple pero vale pare enterder los conceptos básicos respecto a bootstrap.
            Pero dado que no tenemos instalado un internet explorer superior a 7 no podemos realizar bien la prueba.
        </aside>    
                    
        <div class="container mt-5">
            <div class="btn-group">
                <button type="button" class="btn btn-success">Action</button>
                <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <div class="dropdown-menu">
                    <p class="dropdown-header">Header</p>
                    <a class="dropdown-item" href="#">Rock</a>
                    <a class="dropdown-item" href="#">Heavy</a>
                    <a class="dropdown-item" href="#">Classic</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Separated link</a>
                </div>
            </div>
            <h1><span class="glyphicon glyphicon-asterisk"></span>Musica</h1>
        </div>
                    
    </body>

</html>
