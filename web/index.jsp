<%-- 
    Document   : index
    Created on : 21-mar-2020, 14:11:35
    Author     : alumno
--%>
<%@page import="pCalculos.*"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
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
                
                
                 <H1>Cuestionario inicial</H1>
        <BR> <P> 
        Te agradeceria que dedicases unos minutos a rellenar este cuestionario <BR>
        <FORM action="index.jsp" method="POST">
            1.- Indica tu lenguaje de programacion preferido
                <SELECT name="lengupref"
                <OPTION value="pascal"</OPTION>Pascal
                <OPTION value="c"</OPTION>C
                <OPTION value="c++"</OPTION>C++
                <OPTION value="delphi"</OPTION>Delphi
                <OPTION value="ada"</OPTION>Ada
                <OPTION value="java"</OPTION>Java
                <OPTION value="visual basic"</OPTION>Visual Basic
                <OPTION value="python"</OPTION>Python
                </SELECT>
                <P>
            2.- Indica tu Sistema Operativo preferido <BR>
                <INPUT type="radio" name="sopref" checked value="linux">Linux
                <INPUT type="radio" name="sopref"         value="windows">Windows
                <INPUT type="radio" name="sopref"         value="mac">MacOS
                <P>
            3.- Indica los lenguajes que has utilizado <BR>
                <INPUT type="checkbox" name="lengusa" value="pascal">Pascal
                <INPUT type="checkbox" name="lengusa" value="c">C
                <INPUT type="checkbox" name="lengusa" checked value="c++">C++
                <INPUT type="checkbox" name="lengusa" value="java">Java
                <INPUT type="checkbox" name="lengusa" value="ada">Ada
                <INPUT type="checkbox" name="lengusa" value="python">Python 
                <P>
            4.- Tecnologias que piensas utilizar en un futuro proximo <BR>
                <SELECT name="tecno" multiple size=3>
                <OPTION value="corba"</OPTION>Corba
                <OPTION value="rmi"</OPTION>RMI
                <OPTION value="ejb"</OPTION>EJB
                <OPTION value="com"</OPTION>COM
                <OPTION value="xml"</OPTION>XML
                <OPTION value="wap"</OPTION>WAP
                </SELECT>
                <P> <BR>
                <INPUT type="submit" value="envia">
        </FORM> 
        
        <%
            // obtiene los valores del formulario
            String lengupref  =request.getParameter("lengupref");
            String sopref     =request.getParameter("sopref");
            String[] lengusa  =request.getParameterValues("lengusa");
            String[] tecno    =request.getParameterValues("tecno");


        if (lengusa==null) lengusa= new String[0];
            if (tecno==null)  tecno = new String[0];

            // escribe los valores en un fichero
            try {
                PrintWriter fout= new PrintWriter(new FileWriter("\\tmp\\datos",true));
                fout.println(lengupref); fout.println(sopref);
                for (int i=0; i<lengusa.length; i++) {
                    if (i>0) fout.print(", ");
                    fout.print(lengusa[i]);
                }
                for (int i=0; i<tecno.length; i++) {
                    if (i>0) fout.print(", ");
                    fout.print(tecno[i]);
                }
                fout.println(); fout.println("----------");
                fout.close();
                %> 
                <H1>Gracias</H1>
                Gracias por participar en nuestra encuesta
                <%
            } catch (IOException e) {
                application.log("error al grabar resultados",e);
                %>
                <H1>Error</H1>   
                No se han podido grabar las respuestas debido a un error en el servidor
                <% 
            }
        %>
        
        <br>
        <h1>Ejemplo de expresiones</h1>
        Convirtiendo a mayusculas <%= new String("juan").toUpperCase() %>
        <br>
        La suma de 5+7 es: <%= 5+7%>
        <br>
        10 es mayor que 100?: <%= 10>100%>
        
        <br>
        <h1>Ejemplo de Scriplet</h1>
        <%
            for(int i=0;i<5;i++){
                out.println("Repeticion numero :"+i);
                 %>
                 <br>
                <%
       
            }
        %>
        
        <br>
        La suma de 8 y 9 es : <%= Calculo.suma(8,9)%>
         <br>
         EL navegador usado por el cliente es : <%= request.getHeader("User-Agent") %>
         
         <br>
         EL idioma usado por el cliente es : <%= request.getLocale() %>
                    
    </body>

</html>
