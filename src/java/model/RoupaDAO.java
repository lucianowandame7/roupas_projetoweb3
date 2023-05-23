package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RoupaDAO {
        private static Connection conn;
        
        public RoupaDAO() throws ClassNotFoundException, SQLException {
            conn = MyConn.getConnection();
        }
   
        public void insertRoupa(Roupa transp) {
            String sql = "INSERT INTO Roupas(tipo, cor, marca, material)"
                                + "VALUES(?, ?, ?, ?)";
            
            //Objeto para preparar o envio da query ao banco de dados
            try {
                PreparedStatement prep = conn.prepareStatement(sql);
                prep.setString(1, transp.getTipo());
                prep.setString(2, transp.getCor());
                prep.setString(3,  transp.getMarca());
                prep.setString(4,  transp.getMaterial());
                
                prep.execute();
                prep.close();
                
            } catch (SQLException erro) {
                System.out.println("Erro ao inserir..." + erro);
            }
        }//Fim do método inserir
        
        
        //Método para listar todos os registros
        public ArrayList<Roupa> listRoupa() throws SQLException{
            ArrayList<Roupa> list = new ArrayList<>();
            
            String sql = "select * from tbproduto";
            
            PreparedStatement prep = conn.prepareStatement(sql);
            ResultSet result = prep.executeQuery();
            
            while(result.next()){
              Roupa t = new Roupa();
              
              t.setCodRoupa(result.getInt("cod_Roupa"));
              t.setTipo(result.getString("tipo"));
              t.setCor(result.getString("cor"));
              t.setMarca(result.getString("marca"));
              t.setMaterial(result.getString("material"));
              
              list.add(t);
            }
            
            return list;
        }
        
        
        //Método para excluir
        public void deleteRoupa(int id) throws SQLException {
            String query = "DELETE FROM roupas WHERE "
                    + "id = " + id;
            
            PreparedStatement prep = conn.prepareStatement(query);
            
            prep.execute();
            prep.close();
        }
        
        
        //Método para listar pelo ID (um registro)
        public Roupa listRoupaById(int id) throws SQLException {
            String query = "SELECT * FROM tbproduto WHERE "
                    + "id = " + id;
            
            PreparedStatement prep = conn.prepareStatement(query);
            ResultSet result = prep.executeQuery();
            
            Roupa tr = new Roupa();
            
            if(result.next()){
                tr.set(result.getInt("id"));
                tr.setTipo(result.getString("tipo"));
                tr.setCor(result.getString("cor"));
                tr.setMarca(result.getString("marca"));
                tr.setMaterial(result.getString("material"));
            }
            
            return tr;
        }
        
        
        //Método para atualizar um registro
        public void updateRoupa(Roupa t) throws SQLException {
            String sql = "UPDATE roupas SET tipo = ?,"
                    + "cor = ?, marca = ?, material = ?,"
                    + "WHERE id = ?";
            
            PreparedStatement prep = conn.prepareStatement(sql);
            
            prep.setString(1, t.getTipo());
            prep.setString(2, t.getCor);
            prep.setString(3, t.getMarca());
            prep.setString(4, t.getMarca());
            prep.setInt(5, t.getCodRoupa());
            
            prep.execute();
            prep.close();
        }
        
}//Fim da classe