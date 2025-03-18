<%-- 
    Document   : inventario
    Created on : 17/03/2025, 9:53:13 p. m.
    Author     : OSCAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inventario</title>
    <link
           
        <link rel="stylesheet" href="style.css" type="text/css"/>
    <style>
        .dropbtn {
          background-color: #315c61;
          color: white;
          padding: 16px;
          font-size: 16px;
          border: none;
          cursor: pointer;
        }
        
        .dropdown {
          position: relative;
          display: inline-block;
        }
        
        .dropdown-content {
          display: none;
          position: absolute;
          right: 0;
          background-color: #f9f9f9;
          min-width: 160px;
          box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
          z-index: 1;
        }
        
        .dropdown-content a {
          color: black;
          padding: 12px 16px;
          text-decoration: none;
          display: block;
        }
        
        .dropdown-content a:hover {background-color: #f1f1f1;}
        
        .dropdown:hover .dropdown-content {
          display: block;
        }
        
        .dropdown:hover .dropbtn {
          background-color: #3e8d8e;
        }
        </style>
        
</head>
<body>
    <header>
        
        <h1 style="text-align: center"> Gestion de bodega minimercado la 43</h1>
        
    <div>
        <div class="dropdown" style="float:left;">
            <button class="dropbtn">inventario</button>
            <div class="dropdown-content" style="left:0;">
                        <a href="inventario.jsp">registrar de producto</a>
                        <a href="listaInventario.jsp">Lista de productos</a>
                        <a href="inventario03.html">salida de productos</a>
                        <a href="inventario04.html">nuevo producto</a>
                    </div>
          </div>
         <div class="dropdown" style="float:left;">
            <button class="dropbtn">Compras</button>
            <div class="dropdown-content" style="left:0;">
            <a href="compras01.html">crear pedido</a>
            <a href="compras02.html">Recepcion de mercancia</a>
            
            </div>
        </div>
        <div class="dropdown" style="float:left;">
            <button class="dropbtn">informes</button>
            <div class="dropdown-content" style="left: 0;">
                <a href="informes01.html">informe inventario</a>
                <a href="informes02.html">informe compras</a>
                <a href="informe03.html">informe caducados</a>
            </div>
        </div>
       <div class="dropdown" style="float: left;">
        <button class="dropbtn">soporte</button>
        <div class="dropdown-content" style="left: 0;">
            <a href="soporte01.html">configuracion usuario</a>
            <a href="soporte02.html">Nuevo usuario</a>
            <a href="soporte03.html">Manual usuario</a>
        </div>
       </div> 
       
        <div>
            <button style="float: right;"> <a href="index.html">atras</a></button>
        </div>
    </div>
    </header>
    <br><br>
    
    <h2 style="text-align: center">Registrar producto</h2>

<div class="container">
    <form action="inventario" method="POST">
        <fieldset>
        <label>Nombre:<br>
        <input type="text" name="nombre">
        </label><br><br>
        <label>Categoria:<br>
        <input type="text" name="categoria">
        </label><br><br>
        <label>Cantidad:<br>
        <input type="text" name="cantidad">
        </label><br><br>
        <label>Ubicacion:<br>
        <input type="text" name="ubicacion">
        </label><br><br>
        <label>Proveedor:<br>
        <input type="text" name="proveedor">
        </label><br><br>
        </fieldset>
        <input type="submit" value="Guardar" />
        
  </form>
</div>

    
</body>
</html>

