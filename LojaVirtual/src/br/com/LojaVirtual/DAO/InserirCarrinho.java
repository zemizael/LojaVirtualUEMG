package br.com.LojaVirtual.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import br.com.LojaVirtual.Conexao.Conexao;
import br.com.LojaVirtual.Entidades.Produtos;

public class InserirCarrinho {
	        
        Connection con = Conexao.getConnection();
            
            public void adiciona(Produtos produto) throws SQLException{  
            	 PreparedStatement stmt = con.prepareStatement("INSERT INTO cadastros (produto, quantidade, preco) values(?,?, ?)");
                 
                try {  
                   
                    stmt.setString(1, produto.getProduto());  
                    stmt.setInt(2, produto.getQuantidade());  
                    stmt.setFloat(3, produto.getPreco());  
                    stmt.setFloat(4, produto.getTotal());  
                     stmt.execute();  
                    stmt.close();  
                }  catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace(); 
            }         
        }
                }
    	