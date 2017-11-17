package br.com.LojaVirtual.DAO;

import br.com.LojaVirtual.Conexao.Conexao;
import br.com.LojaVirtual.Entidades.ProdLoja;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class PesquisaProd {

public ArrayList<ProdLoja> getLista(){
        
        
        ArrayList<ProdLoja> listaprodutos = new ArrayList<ProdLoja>();
        Connection con = Conexao.getConnection();
         
        try {
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM cadastros");
             
            ResultSet rs = stmt.executeQuery();
             
            while(rs.next()){
                 
            	ProdLoja loja = new ProdLoja();
            	loja.setId(rs.getInt("id"));
            	loja.setProduto(rs.getString("produto"));
            	loja.setQuantidade(rs.getInt("quantidade"));
            	loja.setPreco(rs.getFloat("preco"));
 

                 
                listaprodutos.add(loja);             
            }   
             
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } 
         
        return listaprodutos;
         
    }
	
	
}
