package br.com.LojaVirtual.DAO;

import br.com.LojaVirtual.Conexao.Conexao;
import br.com.LojaVirtual.Entidades.Produtos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class Pesquisa {

public ArrayList<Produtos> getLista(){
        
        
        ArrayList<Produtos> listaprodutos = new ArrayList<Produtos>();
        Connection con = Conexao.getConnection();
         
        try {
            PreparedStatement stmt = con.prepareStatement("SELECT * FROM loja");
             
            ResultSet rs = stmt.executeQuery();
             
            while(rs.next()){
                 
                Produtos produto = new Produtos();
                produto.setId(rs.getInt("id"));
                produto.setProduto(rs.getString("produto"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setTotal(rs.getFloat("total"));

                 
                listaprodutos.add(produto);             
            }   
             
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } 
         
        return listaprodutos;
         
    }
	
	
}
