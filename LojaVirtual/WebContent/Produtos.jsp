<%@ page import = "br.com.LojaVirtual.Entidades.ProdLoja" %>
<%@ page import = "br.com.LojaVirtual.DAO.PesquisaProd" %>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Loja UEMG</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
    <link href="front-end/jquery/jquery.min.js" rel="stylesheet">
	    <!-- Bootstrap Min  -->
    <link href="front-end/js/bootstrap.min.js" rel="stylesheet">
  
  
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #1abc9c;
      padding: 25px;
    }
  </style>
</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Loja Virtual UEMG</h1>      
    <p>Missao, Visao & Valores</p>
	
	<br>
		 <div class="input-group">
        <input type="text" class="form-control" placeholder="Procurar">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"> <br>
			<br></i>
          </button>
		 
        </div>
	
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	  
      <a class="navbar-brand" href=Index.jsp"#">LJ UEMG</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
         <li class="active"><a href=Index.jsp"#">Cadastro de Produtos</a></li>
          <li class="active"><a href=Produtos.jsp"#">Produtos</a></li>
      
      </ul>  
	  
	  <ul class="nav navbar-nav navbar-right">
	  
       
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"><a href=Carrinho.jsp "#" >Carrinho</a></li></span>
      </ul>
    </div>
  </div>
</nav>

</div><br>

 <table class="table table-striped table-hover">
        <thead>
        
        <h1 align="center">Produtos da Loja</h1>
          <tr>
          <th>Numero do Pedido</th>
          <th>Produto</th>
          <th>Quantidade</th>
          <th>Preco</th>
          </tr>
  
        </thead>
      <tbody>
         
        <%
        PesquisaProd dao1 = new PesquisaProd();
				ArrayList<ProdLoja> mostracarrinho = dao1.getLista();
		
					for (ProdLoja pedido : mostracarrinho) {					
			%>
			<tr >
		        <td><%=pedido.getId() %></td>
				<td><%=pedido.getProduto() %></td>
				<td><%=pedido.getQuantidade()%></td>
				<td><%=pedido.getPreco() %></td>

				
			</tr>
			<%
				} 			

			%>
      </tbody>
        </table>


<footer class="container-fluid text-center">
<p class="m-0 text-center text-white">Copyright &copy; Loja Virtual UEMG 2017</p>

  </form>
</footer>

<script src="front-end/js/angular.min.js"></script>
		   <script src="front-end/js/app.js"></script>
		    <script src="front-end/controller/cadastrocontroller.js"></script>

</body>
</html>